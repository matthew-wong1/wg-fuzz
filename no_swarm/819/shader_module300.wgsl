struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 5>;

var<private> global2: Struct_3;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec2<bool> {
    var var_0 = Struct_2(-1i, Struct_1(global0.b.a, any(select(!vec4<bool>(true, false, global0.b.b, false), select(vec4<bool>(global2.b.b, global0.b.b, true, global2.b.b), vec4<bool>(false, global2.a.x, true, true), true), all(vec3<bool>(global0.b.b, global0.b.b, global2.a.x))))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_div_u32(0u, global0.c.x), 40915u, 4294967295u), firstLeadingBit(global0.c)), min(vec4<u32>(35930u, ~global0.c.x, ~arg_0, 4294967295u), global0.c), select(~global0.c.x == global0.c.x, !(82747u == global0.c.x), true)));
    var var_1 = global0.b;
    var_1 = global2.b;
    let var_2 = ~(~_wgslsmith_div_vec3_i32(u_input.a, u_input.a << (~global0.c.wwx % vec3<u32>(32u))));
    global1 = array<i32, 5>();
    return select(vec2<bool>(select(all(select(vec3<bool>(global2.a.x, true, false), vec3<bool>(false, true, true), vec3<bool>(false, global0.b.b, global0.b.b))), 1u >= select(global0.c.x, 2212u, var_0.b.b), false), all(vec4<bool>(!global2.a.x, false, 4387i <= u_input.a.x, true))), !global2.a, !global2.a);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(67683i, reverseBits(u_input.a.x));
    let var_1 = _wgslsmith_mult_i32(-(~_wgslsmith_mult_i32(-34245i, _wgslsmith_clamp_i32(2147483647i, var_0, -15341i))), _wgslsmith_mult_i32(global0.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0, -23046i), vec3<i32>(3393i, 0i, global0.a)), select(abs(arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-26812i, global1[_wgslsmith_index_u32(4294967295u, 5u)], 0i, arg_0.x), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], 11842i, global1[_wgslsmith_index_u32(global0.c.x, 5u)], 2147483647i)), all(vec3<bool>(false, true, global2.a.x))))));
    var var_2 = ~(~_wgslsmith_mod_vec2_u32(firstTrailingBit(global0.c.xx), _wgslsmith_clamp_vec2_u32(global0.c.yy, vec2<u32>(34797u, global0.c.x), vec2<u32>(global0.c.x, 61793u)) | (vec2<u32>(1u, global0.c.x) & global0.c.zz)));
    var_2 = ~(min(global0.c.zy, vec2<u32>(~global0.c.x, global0.c.x)) >> (~global0.c.wy % vec2<u32>(32u)));
    var var_3 = Struct_3(select(func_3(var_2.x, -29980i), vec2<bool>(false, true & global0.b.b), vec2<bool>(func_3(select(global0.c.x, 0u, false), _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(2147483647i, var_0))).x, global0.b.b)), global2.b);
    return Struct_2(abs(0i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(var_3.b.a * 636f))), !global0.b.b & false), abs(global0.c ^ vec4<u32>(var_2.x, _wgslsmith_dot_vec3_u32(global0.c.xzz, vec3<u32>(var_2.x, 55503u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), global0.c.xw), reverseBits(40461u))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = Struct_3(global2.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1285f + 1337f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1109f)))), !(-27296i >= (global0.a ^ 20688i))));
    global0 = Struct_2(min(39595i, ~(-1i)), var_0.b, abs(~global0.c));
    global1 = array<i32, 5>();
    var var_1 = func_2(u_input.a.zy);
    var var_2 = func_2(u_input.a.zx).b;
    return true || (_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.a, max(37255i, 12590i)), var_1.a) != global0.a);
}

fn func_4(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = abs(~reverseBits(abs(1u)));
    let var_1 = true;
    var var_2 = ~global1[_wgslsmith_index_u32(global0.c.x, 5u)];
    global1 = array<i32, 5>();
    global2 = Struct_3(global2.a, func_2(vec2<i32>(-global0.a, _wgslsmith_dot_vec2_i32(u_input.a.yy & vec2<i32>(62563i, global1[_wgslsmith_index_u32(var_0, 5u)]), u_input.a.zz >> (global0.c.zw % vec2<u32>(32u))))).b);
    return -2448i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 5>();
    let var_0 = global0.b.b;
    global0 = Struct_2(~_wgslsmith_div_i32(func_4(func_1(global2.b.b), global0.b.a < -1000f), _wgslsmith_add_i32(5296i, firstTrailingBit(global0.a))), func_2(-(~(~u_input.a.xy))).b, max(global0.c, ~vec4<u32>(_wgslsmith_div_u32(0u, 21869u), 89065u, max(global0.c.x, 1u), ~4855u)));
    let var_1 = select(-min(u_input.a.xy, u_input.a.xx), u_input.a.yy, !global0.b.b && !any(vec4<bool>(false, true, true, false)));
    let var_2 = abs(abs(~vec4<i32>(~global0.a, ~1i, var_1.x, 1i)));
    global2 = Struct_3(global2.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b.a, global0.b.a))), global0.b.a), !(!global2.a.x)));
    let var_3 = func_2(select(-u_input.a.zx, ~abs(vec2<i32>(-2147483647i, var_1.x)) << (firstLeadingBit(~vec2<u32>(0u, global0.c.x)) % vec2<u32>(32u)), -1192f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.a, global0.b.a)))));
    let var_4 = -(~var_2);
    let x = u_input.a;
    s_output = StorageBuffer((~var_3.c.x & 30206u) | ~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.a, global0.b.a) * vec2<f32>(global0.b.a, var_3.b.a)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.b.a, global0.b.a), vec2<f32>(global0.b.a, global0.b.a)))) * vec2<f32>(1438f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.b.a, -1107f), vec2<f32>(global0.b.a, 432f)))))));
}

