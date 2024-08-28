struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: u32) -> vec3<bool> {
    global0 = arg_0.zy;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    let var_1 = _wgslsmith_div_f32(393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1765f * global0.x))) * _wgslsmith_f_op_f32(round(global0.x))));
    let var_2 = arg_2;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, global0.x, true))) - var_1), _wgslsmith_f_op_f32(998f + -186f))), var_2.a, -29485i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(470f))), 249f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -369f, var_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 * arg_0) * vec3<f32>(-1160f, -1520f, global0.x))))));
    return vec3<bool>(var_3.b, false, any(!select(select(vec3<bool>(var_2.a, arg_2.a, false), vec3<bool>(true, var_2.a, true), false), select(vec3<bool>(false, true, arg_2.a), vec3<bool>(var_3.b, arg_2.a, arg_2.a), var_2.a), vec3<bool>(false, false, true))));
}

fn func_2() -> f32 {
    var var_0 = select(u_input.b.zxz, u_input.b.www, select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(18717i, -71923i, -42047i), vec3<i32>(-18286i, 21299i, -10250i)), vec3<i32>(1i, 1i, 1i)), Struct_4(true), 126681u), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-986f * 1000f)))), 213f);
    var var_1 = Struct_1(-919f, false, abs(_wgslsmith_sub_i32(-16053i, _wgslsmith_mod_i32(reverseBits(-6457i), _wgslsmith_mod_i32(-17611i, 2147483647i)))), vec3<f32>(-1148f, _wgslsmith_f_op_f32(round(global0.x)), -716f));
    var var_2 = Struct_5(true, !(!vec3<bool>(var_1.b || true, var_1.b, any(vec4<bool>(var_1.b, false, true, var_1.b)))));
    return 1000f;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-481f, 1000f, 430f, arg_1.d.x), vec4<f32>(var_0, 549f, var_0, global0.x), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 925f, global0.x, var_0)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1091f)), _wgslsmith_f_op_f32(global0.x * arg_1.a), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_div_f32(-1400f, -2024f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, global0.x, 1000f, -2023f)) - vec4<f32>(1412f, -459f, 997f, -221f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1516f))), _wgslsmith_f_op_f32(max(-1074f, _wgslsmith_f_op_f32(f32(-1f) * -622f))), global0.x, 1000f)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(755f + _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-global0.x))), arg_1.b, arg_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, arg_1.a, -365f), vec3<f32>(global0.x, var_0, var_0)))))))));
    var var_3 = Struct_3(~arg_1.c, -_wgslsmith_mult_i32(-var_2.c, firstLeadingBit(arg_1.c >> (u_input.b.x % 32u))));
    var var_4 = Struct_5(arg_1.b, select(vec3<bool>(false, !var_2.b, all(select(vec4<bool>(true, arg_1.b, true, true), vec4<bool>(arg_1.b, true, var_2.b, true), vec4<bool>(var_2.b, arg_1.b, false, false)))), select(select(select(vec3<bool>(true, true, var_2.b), vec3<bool>(true, arg_1.b, arg_1.b), false), select(vec3<bool>(true, true, arg_1.b), vec3<bool>(true, arg_1.b, false), arg_1.b), vec3<bool>(arg_1.b, false, arg_1.b)), !(!vec3<bool>(arg_1.b, var_2.b, true)), arg_1.b), false));
    return u_input.a;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> Struct_2 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-939f - -476f) + global0.x)), -2742f));
    let var_0 = (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.x)), -1133f)) != _wgslsmith_f_op_f32(-global0.x)) & (_wgslsmith_f_op_f32(func_2()) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-113f, arg_1.x)) - 141f));
    global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * global0.x))))));
    var var_1 = Struct_2(u_input.b.xx & ~_wgslsmith_sub_vec2_u32(u_input.b.yx, ~u_input.b.zw), !(!select(!vec4<bool>(false, false, var_0, false), vec4<bool>(var_0, var_0, false, false), var_0)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(21777i, abs(-16759i)), vec2<i32>(-1i) * -vec2<i32>(-1i, -2147483647i))), abs(-1i), u_input.b.x);
    var var_2 = Struct_1(global0.x, var_0, _wgslsmith_dot_vec2_i32(var_1.c, var_1.c), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-175f, _wgslsmith_f_op_f32(122f + global0.x), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1579f, -1164f)))))));
    return Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(var_1.a.x), ~u_input.b.x), abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(0u, 0u)))), u_input.b.zx), vec4<bool>(false, true, true, true), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_1.c >> (countOneBits(var_1.a) % vec2<u32>(32u)), select(_wgslsmith_clamp_vec2_i32(var_1.c, vec2<i32>(91678i, 1i), var_1.c), var_1.c, var_1.b.yz)), var_1.c), _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.c, arg_0, var_2.c, arg_0), vec4<i32>(-48144i, var_1.d, 1i, -35161i) ^ vec4<i32>(var_2.c, arg_0, -2147483647i, 2147483647i)), vec4<i32>(abs(2147483647i), 2147483647i, _wgslsmith_div_i32(min(-19766i, arg_0), var_1.c.x), -(~(-2147483647i)))), var_1.e ^ (u_input.b.x ^ u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(690f * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, 322f))) * global0.x) + global0.x)));
    var var_1 = func_4(36920i >> (func_1(u_input.a, Struct_1(global0.x, false, -11511i, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(554f, -2563f, 1027f))))) % 32u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 248f)))))));
    var var_2 = i32(-1i) * -(~reverseBits(-7474i));
    var var_3 = func_4(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, -20481i | var_1.c.x, _wgslsmith_div_i32(2147483647i, 31177i), reverseBits(48846i)), ~(~vec4<i32>(35026i, 2147483647i, 0i, var_1.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-103f, global0.x)), vec2<f32>(1307f, -480f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))));
    var var_4 = !var_1.b;
    var_2 = -var_1.c.x;
    var var_5 = _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.e, min(_wgslsmith_dot_vec4_u32(vec4<u32>(12161u, u_input.b.x, 9016u, u_input.a), u_input.b), ~(~54450u)), 19266u), vec3<u32>(4522u, 12156u, 4294967295u), select(reverseBits(u_input.b.xzx) | countOneBits(u_input.b.wwy & u_input.b.xwy), vec3<u32>(abs(var_3.e), 3601u, 0u) & u_input.b.zwz, !var_3.b.x));
    let var_6 = min(vec3<i32>(firstLeadingBit(-var_3.c.x ^ ~var_1.c.x), _wgslsmith_sub_i32(-2147483647i, ~_wgslsmith_mult_i32(var_1.d, var_1.c.x)), var_1.c.x), vec3<i32>(-(~(-39631i)), ~(firstTrailingBit(4881i) >> ((0u >> (var_5.x % 32u)) % 32u)), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(var_3.d << (26007u % 32u), var_3.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1104f, global0.x, 1256f, -631f), vec4<f32>(global0.x, global0.x, global0.x, global0.x), var_1.b.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1823f, global0.x, -259f, 1000f)))))), 17042i, select(vec3<i32>(-var_6.x, var_1.d, var_3.c.x), select(vec3<i32>(1i, -7159i, var_1.c.x >> (652u % 32u)), var_6, ~var_1.a.x <= var_3.e), !(!var_1.b.wyz)));
}

