struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec3<f32>(162f, -671f, -588f), vec4<f32>(513f, 846f, -856f, -433f), vec2<u32>(31064u, 4830u), true, vec4<f32>(-999f, -649f, 259f, 608f))), Struct_2(Struct_1(vec3<f32>(1749f, -605f, 126f), vec4<f32>(-468f, -284f, 305f, -599f), vec2<u32>(13157u, 4294967295u), true, vec4<f32>(653f, 1127f, 1541f, 446f))), Struct_2(Struct_1(vec3<f32>(-1970f, 1059f, -275f), vec4<f32>(1770f, -261f, -706f, -1052f), vec2<u32>(36990u, 0u), false, vec4<f32>(-1871f, -1318f, 2559f, -184f))), Struct_2(Struct_1(vec3<f32>(-963f, -1456f, 228f), vec4<f32>(1000f, 1926f, -1912f, 1392f), vec2<u32>(0u, 8282u), false, vec4<f32>(-505f, -1443f, -1393f, -209f))), Struct_2(Struct_1(vec3<f32>(679f, 307f, -179f), vec4<f32>(-784f, 672f, 428f, -1716f), vec2<u32>(29282u, 4974u), false, vec4<f32>(-967f, -2487f, 1122f, 1032f))));

var<private> global1: array<i32, 23>;

var<private> global2: array<i32, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    global1 = array<i32, 23>();
    global0 = array<Struct_2, 5>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1143f, 204f, -552f) + vec3<f32>(-1213f, 270f, 958f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -844f), -921f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-282f, -1213f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f + -402f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -178f, 184f, -670f))))))), u_input.a, (all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)) | false) & all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1196f, 661f, -1175f, 275f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, -1152f, 1258f, -1000f)), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1170f, 420f, 659f, -498f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-828f, -1323f, -1030f, -1000f))))))));
    let var_1 = var_0;
    let var_2 = Struct_2(Struct_1(var_1.b.xzw, vec4<f32>(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_f_op_f32(-1470f + 252f)), -179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.b.x) - _wgslsmith_f_op_f32(-var_0.a.x))), firstLeadingBit(vec2<u32>(var_1.c.x, abs(20388u))), all(!select(vec3<bool>(var_1.d, true, var_1.d), vec3<bool>(true, var_0.d, var_0.d), true)), vec4<f32>(var_0.b.x, -1185f, _wgslsmith_f_op_f32(f32(-1f) * -1130f), var_0.e.x)));
    return -366f;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_2, 5>();
    var var_0 = Struct_3(arg_1.a);
    let var_1 = _wgslsmith_div_f32(-1236f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x) - _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(1u, 11u)], reverseBits(vec4<u32>(4294967295u, 87u, var_0.a.c.x, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-953f)), 231f)))));
    var var_2 = var_0.a.a.x;
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.e.x, arg_1.a.e.x, 700f))))), var_0.a.e, _wgslsmith_sub_vec2_u32(select(max(var_0.a.c, arg_0), vec2<u32>(4294967295u, 9398u), true), reverseBits(var_0.a.c)), arg_1.a.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(2075f)), -1452f, _wgslsmith_f_op_f32(f32(-1f) * -1120f), -1000f) + _wgslsmith_f_op_vec4_f32(var_0.a.b * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1051f, 588f, 571f, var_1), vec4<f32>(-332f, var_1, -1000f, 712f)))))));
    return arg_0.x;
}

fn func_1() -> vec2<f32> {
    var var_0 = vec4<u32>(~u_input.a.x, func_2(u_input.a, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-571f, 807f, 1000f) + vec3<f32>(-1000f, -204f, 1000f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(756f, 1890f, 658f, -919f))), firstLeadingBit(vec2<u32>(u_input.a.x, 4294967295u)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -604f, -854f, -1000f) + vec4<f32>(-510f, 671f, -939f, 812f))))), _wgslsmith_mod_u32(u_input.a.x, ~func_2(vec2<u32>(58284u, 62741u) ^ u_input.a, Struct_2(Struct_1(vec3<f32>(590f, 460f, -731f), vec4<f32>(-602f, -997f, -792f, -536f), u_input.a, true, vec4<f32>(-189f, -1000f, 701f, 620f))))), ~_wgslsmith_sub_u32(~u_input.c >> (u_input.c % 32u), u_input.a.x));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-696f, 332f))), vec2<f32>(_wgslsmith_f_op_f32(min(598f, -493f)), _wgslsmith_f_op_f32(round(1476f))))));
    let var_3 = ~(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 10197u), ~var_1), vec2<u32>(var_0.x, var_0.x)) ^ ~(vec2<u32>(u_input.c, 4294967295u) | (u_input.a & vec2<u32>(var_1.x, 1u))));
    var_0 = _wgslsmith_clamp_vec4_u32(min(vec4<u32>(var_1.x, 1u, var_1.x ^ ~var_3.x, u_input.c), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_3.x, var_1.x, u_input.a.x), vec4<u32>(43035u, 1u, var_3.x, var_0.x)) ^ ~0u, ~_wgslsmith_sub_u32(1u, 0u), _wgslsmith_add_u32(0u, var_0.x), ~(~47864u))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.x, ~95198u), var_3.x << (_wgslsmith_div_u32(1u, var_1.x) % 32u)), 1u, 0u, abs(3650u)), abs(~vec4<u32>(~var_0.x, ~u_input.a.x, func_2(var_0.yw, global0[_wgslsmith_index_u32(4294967295u, 5u)]), ~6731u)));
    return _wgslsmith_f_op_vec2_f32(round(var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1458f + -345f), -1121f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + vec2<f32>(725f, _wgslsmith_f_op_f32(-1050f * 106f))), select(all(vec4<bool>(true, false, true, all(vec3<bool>(true, true, false)))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))))));
    var var_1 = _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, max(-2318i, firstLeadingBit(0i))), ~(~_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], -33990i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(77001u, 11u)]), vec2<i32>(40021i, u_input.b)), reverseBits(vec2<i32>(global2[_wgslsmith_index_u32(0u, 11u)], -30823i)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1775f, var_0.x) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -232f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(f32(-1f) * -771f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(2100f + 1000f)))), select(~select(u_input.a, vec2<u32>(u_input.c, u_input.c), false), vec2<u32>(u_input.c | u_input.c, _wgslsmith_add_u32(38766u, 32819u)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false), true)) >> (u_input.a % vec2<u32>(32u)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, var_0.x, -1527f, -257f)))));
    var_2 = Struct_1(var_2.b.zwy, _wgslsmith_f_op_vec4_f32(var_2.b * var_2.e), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-1332f, var_0.x), _wgslsmith_f_op_f32(-var_0.x)))) < var_0.x, _wgslsmith_f_op_vec4_f32(var_2.b + _wgslsmith_f_op_vec4_f32(-var_2.b)));
    global1 = array<i32, 23>();
    global2 = array<i32, 11>();
    let var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(460f + var_0.x), _wgslsmith_f_op_f32(sign(var_2.e.x))))))) + var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~1i, _wgslsmith_add_i32(-u_input.b ^ -29102i, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 11u)])), _wgslsmith_add_u32(var_2.c.x, var_2.c.x));
}

