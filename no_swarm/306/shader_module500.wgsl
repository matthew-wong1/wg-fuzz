struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1i, vec3<bool>(false, true, false), vec2<f32>(297f, -916f)));

var<private> global1: i32 = -8230i;

var<private> global2: Struct_1;

var<private> global3: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec4<i32> {
    global2 = global0[_wgslsmith_index_u32(16386u, 1u)];
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u, 1u)];
    global0 = array<Struct_1, 1>();
    var var_1 = ~(~_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(0u, 13874u, u_input.a.x, u_input.a.x)), u_input.a));
    let var_2 = global2.b;
    return vec4<i32>(-1104i, var_0.a, global2.a, ~countOneBits(~(-1i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<bool>) -> i32 {
    global3 = global2.c.x;
    return max(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~(~arg_0), arg_0), firstLeadingBit(u_input.b) << (select(~u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), true) % 32u)), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(41968i, u_input.c, u_input.d), min(arg_0, vec3<i32>(-2147483647i, 16781i, 1i)))), vec3<i32>(~(~arg_0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a, 2147483647i, 13819i, -37050i), vec4<i32>(-17711i, arg_0.x, global2.a, u_input.c), vec4<i32>(global2.a, arg_0.x, arg_0.x, 25800i)), vec4<i32>(0i, -1i, 2147483647i, 1i)), ~select(2147483647i, -13427i, arg_2.x))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = func_2();
    global1 = _wgslsmith_sub_i32(global2.a, arg_1.a ^ func_3(-vec3<i32>(arg_1.a, var_0.x, arg_3.a), _wgslsmith_f_op_f32(135f + 1000f), !vec3<bool>(false, global2.b.x, true)));
    let var_1 = vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x << (abs(_wgslsmith_add_u32(u_input.a.x, 15816u)) % 32u)) ^ u_input.a;
    global3 = _wgslsmith_f_op_f32(arg_0.x * -1199f);
    global2 = Struct_1(-global2.a, arg_1.b, arg_3.c);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c;
    let var_0 = Struct_1(i32(-1i) * -_wgslsmith_add_i32(i32(-1i) * -27394i, func_1(vec4<f32>(global2.c.x, -312f, global2.c.x, 1168f), global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec3<i32>(26208i, u_input.c, global2.a), Struct_1(u_input.c, global2.b, vec2<f32>(global2.c.x, global2.c.x)))), vec3<bool>(-197f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c.x))), any(global2.b), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global2.c.x)));
    global0 = array<Struct_1, 1>();
    var var_1 = u_input.a.yx;
    global2 = Struct_1(i32(-1i) * -1i, vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -1000f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)), true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-643f, var_0.c.x) * _wgslsmith_f_op_vec2_f32(-global2.c)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1458f, var_0.c.x), global2.c)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(84377u) | abs(var_1.x), 0u, ~46834u, _wgslsmith_dot_vec3_u32(u_input.a.zyz, vec3<u32>(54776u, u_input.a.x, var_1.x))), vec4<u32>(59706u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.wx)), countOneBits(firstTrailingBit(1u)), ~var_1.x)), ~func_2().zw);
}

