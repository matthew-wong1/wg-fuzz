struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<Struct_2, 9>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = u_input.b;
    global0 = array<f32, 7>();
    let var_1 = vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x ^ 1u, abs(50659u), 7511u), vec4<u32>(arg_0.a, arg_0.c, global2.a, _wgslsmith_clamp_u32(u_input.b.x, 85301u, global2.a)))), _wgslsmith_div_u32(max(_wgslsmith_dot_vec2_u32(~var_0.zy, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.a, 37893u, global2.c), vec4<u32>(1u, 4294967295u, global2.c, u_input.a.x))), u_input.a.x));
    var var_2 = ~vec3<i32>(_wgslsmith_sub_i32(global2.d, firstLeadingBit(~global2.b)), _wgslsmith_add_i32(1i, firstTrailingBit(-2147483647i)), firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.d, arg_0.d, arg_0.b), vec3<i32>(global2.b, arg_0.b, global2.d)), ~vec3<i32>(arg_0.b, 13980i, 25879i))));
    global0 = array<f32, 7>();
    return abs(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, _wgslsmith_mult_vec2_u32(var_1 << (var_1 % vec2<u32>(32u)), vec2<u32>(arg_0.c, 56668u)), vec2<u32>(5220u, 12464u)), ~var_0.yx));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 61770u), ~u_input.b.zx >> ((func_3(Struct_1(global2.c, 25921i, 4294967295u, arg_1.a.x)) ^ ~(vec2<u32>(global2.a, 4294967295u) << (vec2<u32>(arg_0, global2.c) % vec2<u32>(32u)))) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = (((u_input.b.x & ~68165u) >> (_wgslsmith_mult_u32(func_2(u_input.b.x, arg_0, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 7352u)) % 32u)) | u_input.b.x) | max(1u, 15466u);
    var var_1 = arg_0;
    let var_2 = u_input.b;
    global0 = array<f32, 7>();
    var var_3 = global0[_wgslsmith_index_u32(var_2.x, 7u)];
    return var_1.a;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = Struct_2(all(vec3<bool>(all(vec2<bool>(arg_2, arg_2)), select(false, true, arg_2), true)) || true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(46235u, 7u)], -1792f, global0[_wgslsmith_index_u32(24656u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) - vec4<f32>(global0[_wgslsmith_index_u32(global2.a, 7u)], global0[_wgslsmith_index_u32(global2.a, 7u)], 1093f, -153f))))));
    var var_1 = select(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_0, -2147483647i, global2.d), vec4<i32>(arg_0, -4136i, 1i, arg_1.a.x)), -_wgslsmith_mod_vec4_i32(~vec4<i32>(51847i, arg_1.a.x, arg_1.a.x, -11151i), ~vec4<i32>(arg_1.a.x, arg_1.a.x, arg_0, 2147483647i)), select(!vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(!arg_2, select(false, false, false), arg_2, var_0.b.x < -246f), select(vec4<bool>(arg_2, true, arg_2, false), select(vec4<bool>(var_0.a, var_0.a, arg_2, var_0.a), vec4<bool>(false, arg_2, false, var_0.a), arg_2), all(vec3<bool>(arg_2, arg_2, var_0.a))))) ^ ((vec4<i32>(-1i) * -vec4<i32>(global2.b, 438i, arg_1.a.x, 1i)) >> (~((vec4<u32>(27961u, 54989u, global2.c, global2.a) | vec4<u32>(u_input.b.x, 1u, global2.a, 20839u)) | vec4<u32>(u_input.b.x, global2.c, 20483u, 11545u)) % vec4<u32>(32u)));
    global0 = array<f32, 7>();
    let var_2 = Struct_1(global2.c, abs(global2.d), 0u << (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(var_1.xz, select(min(vec2<i32>(1i, arg_0), vec2<i32>(1i, 2147483647i)), vec2<i32>(abs(global2.d), _wgslsmith_div_i32(global2.d, -1i)), true)));
    global1 = array<Struct_2, 9>();
    return _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, ~u_input.a.x, 21049u));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_mult_i32(0i << (_wgslsmith_clamp_u32(88970u, u_input.b.x, arg_1.a) % 32u), -arg_1.d) == -3724i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1297f, _wgslsmith_f_op_f32(-858f - global0[_wgslsmith_index_u32(20075u, 7u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 7u)]))), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~global2.c, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 7u)]))))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~arg_1.a), ~global2.a, 1u ^ arg_0), 7u)], _wgslsmith_div_f32(1000f, -1142f)));
    global1 = array<Struct_2, 9>();
    var var_1 = max(0u & u_input.a.x, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0, arg_1.c, u_input.a.x, arg_1.c) ^ vec4<u32>(u_input.b.x, arg_0, u_input.a.x, arg_0)), ~vec4<u32>(arg_1.a, 36097u, 44603u, global2.c)));
    global0 = array<f32, 7>();
    var var_2 = global1[_wgslsmith_index_u32(36829u, 9u)];
    return StorageBuffer(~vec2<i32>(~abs(-23967i), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(global2.d, Struct_3(~func_1(Struct_3(vec3<i32>(global2.d, global2.b, global2.b)), global1[_wgslsmith_index_u32(global2.a, 9u)], Struct_3(vec3<i32>(106i, -2569i, global2.b)))), firstTrailingBit(_wgslsmith_add_u32(global2.c, global2.a)) >= ~(~59830u)), Struct_1(0u, global2.b, 0u & func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(53472u, u_input.b.x, 6324u, 35085u), vec4<u32>(14424u, u_input.a.x, u_input.b.x, 1u)), Struct_3(vec3<i32>(global2.d, global2.b, -63293i)), 1u), 3422i));
}

