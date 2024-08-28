struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(1780f, 808f, -524f, 959f, -188f, 386f, 331f, -1467f, -1488f, 347f, -426f, -1000f, -328f, 1135f, -447f, 830f, 608f, 887f, -201f, 311f, -1032f, -737f, 273f, 482f, 995f, -167f, 1785f, -1000f, -182f, -294f);

var<private> global1: array<vec4<i32>, 25>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] - -1248f)), _wgslsmith_f_op_f32(min(1372f, _wgslsmith_f_op_f32(select(-133f, 701f, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 30u)]))))), Struct_1(firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 36102i, -1i), u_input.a.wxz)))), Struct_1(reverseBits(u_input.a.zyz << (~vec3<u32>(27091u, 114509u, u_input.b) % vec3<u32>(32u)))));
    global1 = array<vec4<i32>, 25>();
    let var_1 = ~(~(~12934u));
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(209f))))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(64118u, 30u)])) * arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-arg_2.x)))), Struct_1(-_wgslsmith_add_vec3_i32(arg_0.a, firstTrailingBit(vec3<i32>(arg_0.a.x, u_input.c, u_input.a.x)))), arg_0);
    global1 = array<vec4<i32>, 25>();
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    var var_1 = -412f;
    return Struct_1(-(~(arg_0.a & ~vec3<i32>(-1i, u_input.c, -1i))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    global1 = array<vec4<i32>, 25>();
    var var_0 = Struct_2(arg_0.a, Struct_1(~arg_2), func_2(arg_3, select(!(!vec4<bool>(false, true, arg_1, true)), vec4<bool>(false, arg_1, true, arg_1), select(select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, arg_1, arg_1, false), true), !vec4<bool>(false, arg_1, false, false), select(true, false, arg_1))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)) + vec3<f32>(arg_0.a.x, -1642f, -1335f))));
    var var_1 = vec2<u32>(firstTrailingBit(min(u_input.e, 4294967295u)), ~17035u);
    var var_2 = select(global1[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_mod_vec4_i32(-u_input.a, ~(-_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(69795u, 25u)], u_input.a))), arg_1);
    var_2 = (vec4<i32>(_wgslsmith_mult_i32(-10687i, var_0.c.a.x & -2147483647i), arg_0.b.a.x, 1i, ~(~2147483647i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 25346u, ~1u, var_1.x << (var_1.x % 32u)), vec4<u32>(var_1.x, select(27301u, var_1.x, arg_1), u_input.b, ~16635u)) % vec4<u32>(32u))) << (~(~vec4<u32>(abs(16549u), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(5269u, 70214u, u_input.d, u_input.d), vec4<u32>(1u, u_input.e, 4294967295u, var_1.x)), var_1.x)) % vec4<u32>(32u));
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 25>();
    global1 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 22665u, 82729u, 10100u), ~vec4<u32>(u_input.d, 29583u, u_input.e, u_input.e))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 30u)], -451f, 852f), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -15475i)), Struct_1(u_input.a.xyx)), true, u_input.a.xyz, Struct_1(u_input.a.yyx)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 30u)] - _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)], true))), _wgslsmith_f_op_f32(floor(-870f)), false)), -151f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 30u)] + global0[_wgslsmith_index_u32(u_input.e, 30u)]), _wgslsmith_f_op_f32(select(-473f, -1044f, true)), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-267f * -1222f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26956u, 30u)] + -423f), false))))), firstTrailingBit(vec4<u32>(1u, u_input.e, reverseBits(~u_input.e), ~(u_input.b ^ 84567u))), ~u_input.d);
}

