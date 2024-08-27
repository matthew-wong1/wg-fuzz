struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<f32, 25> = array<f32, 25>(-1027f, -708f, 604f, 2053f, 205f, -432f, -1495f, -272f, 703f, 462f, -1390f, 120f, -588f, -1450f, -835f, -1038f, 886f, -807f, -1000f, 1809f, -232f, 1486f, -741f, 1886f, -1000f);

var<private> global2: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<bool>) -> u32 {
    var var_0 = 0i;
    var var_1 = Struct_1(!(false | !(false & arg_3.x)));
    var_0 = firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, reverseBits(select(u_input.a.x ^ u_input.a.x, 23320i, true))));
    var var_2 = abs(abs(0i));
    global0 = array<bool, 13>();
    return ~0u;
}

fn func_2() -> vec2<u32> {
    let var_0 = 8769u;
    var var_1 = Struct_2(1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 25u)]) * 1431f)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, var_0 >> (4294967295u % 32u)), 25u)]));
    global2 = _wgslsmith_mod_u32(20772u, _wgslsmith_mod_u32(~func_3(Struct_1(false), true, !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 13u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 13u)])), 9361u));
    global1 = array<f32, 25>();
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, var_1.a), _wgslsmith_mult_vec2_i32(u_input.a.zx, -countOneBits(select(vec2<i32>(4111i, var_1.a), vec2<i32>(-2641i, 2147483647i), vec2<bool>(global0[_wgslsmith_index_u32(68583u, 13u)], global0[_wgslsmith_index_u32(32124u, 13u)])))));
    return vec2<u32>(countOneBits(reverseBits(4294967295u)), u_input.d.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    var var_0 = arg_2;
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(u_input.a.xy, -vec2<i32>(0i, u_input.a.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 25u)] - global1[_wgslsmith_index_u32(~reverseBits(arg_0.x), 25u)]));
    global0 = array<bool, 13>();
    return Struct_1(13241u != arg_0.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_4(func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1227f, arg_1)), -202f), global1[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(296f * global1[_wgslsmith_index_u32(0u, 25u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, global1[_wgslsmith_index_u32(u_input.d.x, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -425f)))), arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 25u)]) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1, 1629f))))), -1951f));
    return var_0;
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-294f * global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.c.x >> (7345u % 32u), _wgslsmith_sub_u32(u_input.c.x, 4294967295u))), 25u)]);
    let var_1 = reverseBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(u_input.a.x, ~u_input.a.x)), _wgslsmith_add_i32(30424i, ~0i)));
    global1 = array<f32, 25>();
    let var_2 = Struct_2(1i, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 42427u, u_input.d.x, u_input.d.x)), ~firstTrailingBit(vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.c.x))), 25u)]);
    var var_3 = firstLeadingBit(-u_input.a);
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_sub_u32(0u, 0u), u_input.b), vec3<u32>(11601u, max(u_input.b, 4294967295u), u_input.b)), abs(u_input.d.yyx & ~u_input.d.yyy)), u_input.b), 13u)];
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = true;
    global2 = firstLeadingBit(u_input.d.x) & reverseBits(u_input.c.x);
    let var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 13u)];
    var_0 = true;
    global0 = array<bool, 13>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-13412i, 949f);
    global0 = array<bool, 13>();
    let var_1 = ~func_6(Struct_1(func_5(func_1(vec4<bool>(false, true, false, false), -157f, vec3<bool>(global0[_wgslsmith_index_u32(38713u, 13u)], true, true), Struct_1(true)))), global1[_wgslsmith_index_u32(u_input.b, 25u)], Struct_2(-60327i, _wgslsmith_f_op_f32(min(-359f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 25u)] - 345f)))));
    let var_2 = vec3<bool>(global0[_wgslsmith_index_u32(~var_1, 13u)], true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~20834u, u_input.b), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.d.x, var_1, ~12267u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_1), u_input.d.wx), var_1)), 13u)]);
    let var_3 = func_1(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1, 13u)], var_2.x, false, var_2.x), vec4<bool>(true, true, var_2.x, true), vec4<bool>(var_2.x, true, false, true)), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 407f)) + global1[_wgslsmith_index_u32(u_input.d.x, 25u)])))), var_2, func_4(vec2<u32>(71850u, var_1), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(799f - 1588f)), -273f, 1173f, _wgslsmith_f_op_f32(f32(-1f) * -731f)), Struct_1(true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -120f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.b, 216f)))))));
    var var_4 = func_1(vec4<bool>(all(var_2), true, global0[_wgslsmith_index_u32(4294967295u, 13u)], all(vec2<bool>(true, !global0[_wgslsmith_index_u32(var_1, 13u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.c.x, 25u)])))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(53776u, 25u)]))))), var_2, Struct_1(global0[_wgslsmith_index_u32(u_input.b, 13u)]));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

