struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3) -> i32 {
    var var_0 = !vec2<bool>(true, !(abs(0u) <= u_input.a));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-129f * arg_2.d.c.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.e.d.a.x))), arg_1);
    var var_2 = Struct_2(abs(vec3<i32>(u_input.c, min(25238i, max(-59520i, arg_2.e.c.b.x)), firstTrailingBit(arg_2.e.c.b.x))), !(all(!arg_2.e.d.c) && (_wgslsmith_f_op_f32(f32(-1f) * -298f) <= _wgslsmith_f_op_f32(round(-1000f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.e.d.a), ~vec2<i32>(arg_2.c.x, i32(-1i) * -18150i), vec3<bool>(any(select(vec2<bool>(var_0.x, true), vec2<bool>(true, false), true)), true, (arg_2.a.x ^ 1u) != ~23946u)), Struct_1(arg_2.d.c.a, arg_2.c, select(arg_2.e.c.c, vec3<bool>(any(vec2<bool>(true, var_0.x)), var_0.x, false), !vec3<bool>(true, arg_2.b, false))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_2.d.c.a.xyw, var_2.d.a.yxz)))) * var_2.c.a.wzx));
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 135f, arg_2.d.c.a.x) * vec3<f32>(var_1.x, var_1.x, -1210f)), vec3<f32>(var_1.x, arg_2.d.c.a.x, -529f))) * arg_2.e.c.a.zwz)), _wgslsmith_div_vec3_f32(var_2.c.a.yzx, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_2.d.d.a.yww, vec3<f32>(var_2.d.a.x, -140f, -283f))))), arg_2.e.d.c.x || true));
    return _wgslsmith_dot_vec2_i32((var_2.a.zy ^ vec2<i32>(-36274i, 2147483647i)) & select(vec2<i32>(-23365i, var_2.a.x) ^ select(vec2<i32>(arg_2.c.x, arg_2.e.a.x), vec2<i32>(u_input.b, u_input.c), false), vec2<i32>(~arg_2.c.x, -43884i), false), var_2.c.b);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    global0 = array<bool, 23>();
    var var_0 = ~u_input.b;
    var var_1 = 4294967295u;
    let var_2 = vec2<i32>(arg_1, -4657i);
    var var_3 = ~vec3<u32>(~reverseBits(0u), ~4294967295u >> (0u % 32u), ~u_input.a) >> (~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)) & _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, u_input.a, 1u)))) % vec3<u32>(32u));
    return Struct_2(vec3<i32>(var_2.x, -func_3(vec2<u32>(var_3.x, 0u), _wgslsmith_f_op_f32(step(1000f, -362f)), Struct_3(vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d), arg_0, var_2, Struct_2(vec3<i32>(arg_1, arg_1, arg_1), true, Struct_1(vec4<f32>(419f, 227f, -962f, 1299f), vec2<i32>(1i, -41315i), vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], true)), Struct_1(vec4<f32>(-277f, 118f, 187f, -536f), var_2, vec3<bool>(true, arg_0, false))), Struct_2(vec3<i32>(u_input.b, u_input.b, u_input.c), false, Struct_1(vec4<f32>(-1122f, -437f, 972f, 293f), vec2<i32>(-2147483647i, 6701i), vec3<bool>(false, true, arg_0)), Struct_1(vec4<f32>(581f, 106f, 946f, -438f), vec2<i32>(arg_1, -58300i), vec3<bool>(false, false, true))))), ~(var_2.x >> (1u % 32u))), (_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, 10846i), abs(var_2.x)) | -8576i) <= -2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-264f, 760f, 204f, -1171f) + vec4<f32>(-788f, -114f, 823f, -1519f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-128f, -422f, 1805f, 776f) - vec4<f32>(1448f, -981f, 555f, 1355f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2107f, -1117f, -376f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-658f, 899f, -1786f, -1829f) + vec4<f32>(-419f, 717f, -926f, 126f))))), var_2, vec3<bool>(true, true, global0[_wgslsmith_index_u32(21616u, 23u)])), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-515f, 670f, -2193f, -1000f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-404f, 343f, -792f, -154f))))), var_2 >> (~var_3.yx % vec2<u32>(32u)), vec3<bool>(select(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], false, arg_0, false)), true, true), any(!vec3<bool>(arg_0, false, true)), global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(0u, u_input.a), select(0u, var_3.x, true), 28940i <= arg_1), 23u)])));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = !arg_0.b.c.c.x & global0[_wgslsmith_index_u32(u_input.d, 23u)];
    let var_1 = reverseBits(firstTrailingBit(u_input.d));
    global0 = array<bool, 23>();
    var var_2 = Struct_1(vec4<f32>(arg_0.b.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(max(arg_0.b.d.a.x, arg_0.a)))) * 244f), 606f, arg_0.a), ~vec2<i32>(firstTrailingBit(u_input.c), 1i >> (u_input.d % 32u)) & arg_0.b.a.yx, !(!vec3<bool>(select(false, false, arg_0.b.d.c.x), false, global0[_wgslsmith_index_u32(32235u, 23u)])));
    global0 = array<bool, 23>();
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> vec4<bool> {
    global0 = array<bool, 23>();
    let var_0 = ~firstLeadingBit(1u);
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_1 = _wgslsmith_dot_vec2_i32(abs(arg_1.b.d.b), -arg_1.b.a.yx);
    return vec4<bool>((select(true, var_0 < arg_2, true || arg_1.b.b) && global0[_wgslsmith_index_u32(var_0, 23u)]) & arg_1.b.b, arg_1.b.c.c.x, func_2(all(select(vec4<bool>(arg_1.b.c.c.x, arg_1.b.d.c.x, global0[_wgslsmith_index_u32(0u, 23u)], arg_1.b.d.c.x), vec4<bool>(global0[_wgslsmith_index_u32(2393u, 23u)], arg_1.b.b, arg_1.b.c.c.x, arg_1.b.b), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2, 23u)], global0[_wgslsmith_index_u32(5684u, 23u)], false))), arg_1.b.d.b.x).c.c.x || (all(!vec4<bool>(arg_1.b.b, global0[_wgslsmith_index_u32(0u, 23u)], false, false)) | false), false);
}

fn func_6(arg_0: bool, arg_1: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_4(-1222f, func_4(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1965f, -1000f, true)) - _wgslsmith_f_op_f32(1041f * -920f)), Struct_2(vec3<i32>(u_input.c, -2147483647i, -56990i), true, func_2(false, u_input.b).c, func_4(Struct_4(1154f, Struct_2(vec3<i32>(22474i, u_input.c, -2641i), true, Struct_1(vec4<f32>(-1277f, -1000f, -587f, 326f), vec2<i32>(33946i, u_input.c), arg_1.wxz), Struct_1(vec4<f32>(-1920f, -650f, 662f, 965f), vec2<i32>(u_input.b, u_input.c), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(1303u, 23u)]))))).b.c))).b);
    var var_1 = arg_1.x;
    var_1 = true;
    return var_0;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, 126f, _wgslsmith_f_op_f32(1182f * arg_1), arg_1)));
    global0 = array<bool, 23>();
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(926f))), 107f, _wgslsmith_f_op_f32(max(176f, _wgslsmith_f_op_f32(f32(-1f) * -319f))), 1577f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1152f, 421f, 1911f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, var_1.x, arg_1, var_1.x), vec4<f32>(arg_1, 854f, var_1.x, arg_1), global0[_wgslsmith_index_u32(u_input.d, 23u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1891f, -561f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 698f, -712f, -572f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-869f, 724f, arg_0)), 3205f, arg_1, arg_1))));
    let var_2 = func_6(arg_0 == arg_0, func_5(-2147483647i, func_4(Struct_4(-540f, func_2(true, 51419i))), _wgslsmith_mod_u32(0u ^ arg_2.x, arg_2.x) >> (~arg_2.x % 32u)));
    return func_4(func_4(var_2));
}

fn func_7(arg_0: u32, arg_1: Struct_4) -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 0u, 1u, 65110u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 22179u, u_input.d, u_input.d), vec4<u32>(17415u, 0u, arg_0, u_input.d))) ^ vec4<u32>(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(40845u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(21528u, 1u, 44302u, 1u)), 0u, arg_0), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 1u, 0u, 4294967295u), vec4<u32>(u_input.a, arg_0, u_input.d, 26396u)) << (~vec4<u32>(28190u, 0u, 4294967295u, arg_0) % vec4<u32>(32u)))), ~_wgslsmith_add_u32(~arg_0, arg_0), select(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.d, u_input.d)), vec3<u32>(0u, 1u, u_input.a) << (~vec3<u32>(u_input.a, arg_0, arg_0) % vec3<u32>(32u))), u_input.a ^ 0u, arg_1.b.d.c.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d, 12615u >> ((4294967295u | arg_0) % 32u)), ~u_input.a));
    global0 = array<bool, 23>();
    var var_1 = var_0;
    let var_2 = abs(arg_1.b.a) << (~(~vec3<u32>(_wgslsmith_mod_u32(0u, var_0.x), _wgslsmith_mod_u32(var_1.x, var_1.x), reverseBits(arg_0))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, 472f, _wgslsmith_f_op_f32(sign(arg_1.a)), _wgslsmith_f_op_f32(step(-1486f, arg_1.b.d.a.x))) * vec4<f32>(_wgslsmith_div_f32(arg_1.a, arg_1.b.d.a.x), arg_1.a, _wgslsmith_f_op_f32(1000f + arg_1.b.d.a.x), arg_1.a)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-612f + -611f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f + -638f)), 191f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1321f, 160f, 1200f, -104f)) * vec4<f32>(-113f, -371f, 2249f, 443f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(670f, -1296f, 1324f, 201f)))))), _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(u_input.b, 50018i), abs(u_input.b)), vec2<i32>(1i, -reverseBits(0i))), vec3<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(~1u, 23u)], false, true)), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_7(u_input.a, func_1(false, -1748f, vec3<u32>(69665u, 1u, u_input.d))), ~u_input.a), 23u)]));
    var_0 = func_4(Struct_4(func_1(true, var_0.a.x, select(vec3<u32>(66423u, u_input.a, u_input.a), vec3<u32>(4294967295u, 1u, u_input.a), var_0.c)).a, func_1(all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 23u)])), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d, u_input.a, 6986u), max(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(47702u, 4294967295u, u_input.a)))).b)).b.c;
    global0 = array<bool, 23>();
    let var_1 = -(-select(var_0.b, var_0.b >> (vec2<u32>(91334u, u_input.d) % vec2<u32>(32u)), select(false, var_0.c.x, true)) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)));
    var var_2 = -vec2<i32>(var_0.b.x, u_input.c);
    global0 = array<bool, 23>();
    let var_3 = func_2(all(func_5(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -60404i, -54103i, -2147483647i), vec4<i32>(0i, -2147483647i, 11457i, var_2.x)), Struct_4(-682f, func_4(Struct_4(var_0.a.x, Struct_2(vec3<i32>(1i, -41730i, 95574i), var_0.c.x, Struct_1(var_0.a, vec2<i32>(u_input.b, -2147483647i), var_0.c), Struct_1(vec4<f32>(var_0.a.x, 1207f, 379f, -270f), var_1, vec3<bool>(false, var_0.c.x, true))))).b), 42242u)), var_0.b.x).c;
    var var_4 = ~(~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.d, u_input.d))) ^ ~(~abs(vec2<u32>(u_input.d, u_input.d))));
    let var_5 = Struct_3(vec4<u32>(func_7(min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, u_input.a), vec2<u32>(u_input.d, 34083u)), var_4.x), func_4(func_1(var_0.c.x, var_3.a.x, vec3<u32>(var_4.x, 84921u, 22932u)))), 91174u, 20491u, u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(330f)) * 1149f) * var_0.a.x) >= func_6(false && !var_0.c.x, vec4<bool>(select(true, true, var_0.c.x), var_3.c.x && true, !var_3.c.x, !global0[_wgslsmith_index_u32(1u, 23u)])).a, func_1(all(var_0.c), -632f, max(~vec3<u32>(var_4.x, u_input.d, 1u), abs(select(vec3<u32>(1u, u_input.d, 1u), vec3<u32>(4294967295u, u_input.a, 35237u), var_3.c)))).b.a.zy, func_1(1u > ~_wgslsmith_mod_u32(var_4.x, var_4.x), _wgslsmith_div_f32(-103f, var_0.a.x), vec3<u32>(abs(32022u), 48490u, _wgslsmith_mult_u32(var_4.x, ~var_4.x))).b, func_6(!(4294967295u >= min(var_4.x, 13767u)), vec4<bool>(true, func_5(func_6(false, vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], true, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(19238u, 23u)])).b.c.b.x, func_1(var_3.c.x, -1375f, vec3<u32>(var_4.x, var_4.x, u_input.d)), ~13650u).x, true, _wgslsmith_mod_i32(u_input.b, u_input.b) != -var_1.x)).b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_5.a)) << (_wgslsmith_div_vec4_u32(~(~var_5.a), select(_wgslsmith_add_vec4_u32(vec4<u32>(var_5.a.x, var_4.x, 9767u, 23579u), var_5.a), var_5.a, true)) % vec4<u32>(32u)), ~var_5.a.xyx);
}

