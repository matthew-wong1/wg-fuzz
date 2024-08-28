struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(28102u), Struct_1(44897u), Struct_1(4294967295u), Struct_1(43863u), Struct_1(0u), Struct_1(0u), Struct_1(42457u), Struct_1(24547u), Struct_1(4294967295u), Struct_1(77753u), Struct_1(4294967295u));

var<private> global1: u32;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec4<f32>(388f, -1610f, -113f, 601f)), Struct_2(vec4<f32>(1129f, 911f, 841f, 662f)), Struct_2(vec4<f32>(1039f, -322f, -171f, -1476f)), Struct_2(vec4<f32>(957f, -1000f, -567f, -1446f)), Struct_2(vec4<f32>(1000f, -966f, -3041f, -798f)), Struct_2(vec4<f32>(-640f, 2473f, -1143f, 378f)), Struct_2(vec4<f32>(-1178f, 451f, -472f, 1699f)), Struct_2(vec4<f32>(457f, -359f, -315f, -2085f)), Struct_2(vec4<f32>(1000f, -723f, -453f, -100f)), Struct_2(vec4<f32>(-1000f, 1004f, -572f, 1047f)), Struct_2(vec4<f32>(-679f, -2078f, -856f, 165f)), Struct_2(vec4<f32>(-184f, -2284f, 1032f, 1000f)), Struct_2(vec4<f32>(-355f, -568f, -523f, -666f)), Struct_2(vec4<f32>(588f, 368f, 1141f, -676f)), Struct_2(vec4<f32>(1006f, 422f, -160f, 1032f)), Struct_2(vec4<f32>(-1026f, -1440f, -1720f, 559f)), Struct_2(vec4<f32>(415f, 228f, 1536f, -547f)), Struct_2(vec4<f32>(-1278f, -1045f, 875f, -963f)), Struct_2(vec4<f32>(-1000f, 1000f, -725f, -125f)), Struct_2(vec4<f32>(462f, -347f, -1575f, -1547f)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1280f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.e.x)), arg_0.c.e.x))));
    var var_1 = ~abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_0.a.a, 47796u), select(vec3<u32>(arg_0.c.c.x, arg_0.c.c.x, 25329u), vec3<u32>(arg_0.a.a, arg_0.a.a, u_input.a.x), arg_0.c.d.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1334f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.e.x) - _wgslsmith_f_op_f32(sign(1218f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c.e.zwz, var_0.xyx)) - arg_0.c.e.yzy)) - _wgslsmith_f_op_vec3_f32(var_0.zyx - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1038f, var_0.x, 399f), arg_0.c.e.yxw, arg_0.c.d))))));
    var var_3 = Struct_1(_wgslsmith_div_u32(~70038u, firstTrailingBit(_wgslsmith_clamp_u32(arg_0.b.a, 17368u, _wgslsmith_dot_vec3_u32(vec3<u32>(28879u, 0u, arg_0.e.a), vec3<u32>(60954u, 17811u, u_input.a.x))))));
    var var_4 = arg_0.c;
    return true;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32) -> i32 {
    var var_0 = Struct_4(Struct_1(arg_1), Struct_1(u_input.a.x | arg_1), Struct_3(arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2251i, arg_2), vec2<i32>(arg_2, arg_2)), ~vec2<i32>(2147483647i, arg_2)) > ~(~arg_2), u_input.a, !vec3<bool>(!arg_0, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, -248f, 583f, -2020f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1538f, -1210f, -1146f, 171f) * vec4<f32>(-247f, 192f, 396f, 152f))))), all(vec4<bool>(func_3(Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(arg_1, 11u)], Struct_3(false, arg_0, vec2<u32>(4294967295u, arg_1), vec3<bool>(arg_0, arg_0, arg_0), vec4<f32>(276f, 721f, -1964f, 657f)), arg_0, Struct_1(21594u))) != (arg_0 & arg_0), true, true, true)), global0[_wgslsmith_index_u32(abs(arg_1), 11u)]);
    let var_1 = Struct_4(Struct_1(~(~4294967295u)), var_0.e, var_0.c, any(select(vec2<bool>(true, true), !select(var_0.c.d.zy, var_0.c.d.xx, vec2<bool>(var_0.c.a, var_0.c.a)), true | (arg_0 || true))), var_0.a);
    var var_2 = var_1.c.e;
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 955f) + 256f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1821f)), -336f))), var_2.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.c.e, _wgslsmith_f_op_vec4_f32(var_1.c.e - vec4<f32>(var_1.c.e.x, var_2.x, -727f, var_1.c.e.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.c.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.e.x, 1659f, -1380f, var_0.c.e.x) * vec4<f32>(var_2.x, 1827f, 623f, -436f)))))));
    var var_3 = var_1;
    return (_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -12885i, 0i, arg_2), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_2, 5988i, arg_2), vec4<i32>(1i, arg_2, arg_2, arg_2))), i32(-1i) * -2147483647i) << (_wgslsmith_clamp_u32(u_input.a.x, 1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_3.e.a, arg_1), min(887u, arg_1))) % 32u)) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(abs(vec4<u32>(35036u, u_input.a.x, 859u, u_input.a.x))), select(vec4<u32>(0u, var_0.e.a, 34421u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_3.b.a, 11594u, u_input.a.x), vec4<u32>(var_1.e.a, 1u, var_0.e.a, var_0.c.c.x)), false & var_0.d)), vec4<u32>(60628u, _wgslsmith_mod_u32(var_0.a.a, var_0.a.a << (46322u % 32u)), _wgslsmith_mult_u32(reverseBits(arg_1), ~6259u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.c.x, arg_1), vec2<u32>(var_0.e.a, var_3.e.a)))) % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_sub_u32(~(~select(u_input.a.x, 4614u, false) >> (1u % 32u)), 0u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(559f, 570f, -249f, 868f), arg_1.a), arg_1.a, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-arg_1.a))));
    let var_3 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_mult_u32(~(~19259u), ~countOneBits(u_input.a.x))), 11u)];
    let var_4 = ~var_3.a;
    return Struct_3(any(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)))), !all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false))), firstLeadingBit(~(~u_input.a)), vec3<bool>(select(true, (var_0 ^ 4294967295u) > (4294967295u | u_input.a.x), true), func_3(Struct_4(Struct_1(1u), global0[_wgslsmith_index_u32(1u, 11u)], Struct_3(true, true, u_input.a, vec3<bool>(true, true, true), vec4<f32>(var_2.a.x, arg_1.a.x, arg_1.a.x, 1260f)), arg_0 == -5095i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4, var_4, var_4, var_0), vec4<u32>(var_4, var_0, 7707u, var_0)), 11u)])), false), var_2.a);
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, 4294967295u, _wgslsmith_clamp_u32(24788u, 1u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), u_input.a.x), select(select(vec4<u32>(u_input.a.x, u_input.a.x, 33885u, u_input.a.x), vec4<u32>(1u, 19477u, 19953u, u_input.a.x), false), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4350u), true) >> (vec4<u32>(_wgslsmith_add_u32(22915u, 0u), u_input.a.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 74143u, 17506u), vec3<u32>(27499u, u_input.a.x, 4294967295u))) % vec4<u32>(32u))) | u_input.a.x, 11u)];
    global1 = min(u_input.a.x, u_input.a.x);
    var var_1 = func_4((arg_0 & (2362i | func_2(true, 77379u, -4232i))) ^ ~arg_0, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 39096u, 44184u)), ~vec3<u32>(var_0.a, 28633u, var_0.a))), 20u)]);
    var var_2 = ~countOneBits(0u);
    var_0 = global0[_wgslsmith_index_u32(var_0.a, 11u)];
    return Struct_3(var_1.c.x >= var_0.a, true, ~(~(~vec2<u32>(1850u, 0u) | ~vec2<u32>(u_input.a.x, var_0.a))), select(select(select(vec3<bool>(var_1.b, var_1.b, false), !vec3<bool>(var_1.b, false, var_1.a), true), vec3<bool>(true, true, true), any(vec3<bool>(var_1.d.x, var_1.a, var_1.a))), !var_1.d, func_4(arg_0, global2[_wgslsmith_index_u32(14532u, 20u)]).d), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(~abs(abs(firstTrailingBit(vec3<i32>(45i, -2147483647i, 1i)))), vec3<i32>(20080i, _wgslsmith_add_i32(28001i, -9975i) | _wgslsmith_clamp_i32(9464i, 0i, 2147483647i), 46540i) | -vec3<i32>(1i, 1i, 1i));
    var var_1 = abs(vec2<i32>(abs(1i), 0i) >> (_wgslsmith_mult_vec2_u32(u_input.a, min(vec2<u32>(0u, 13339u), vec2<u32>(26297u, u_input.a.x) >> (u_input.a % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_2 = Struct_1(0u);
    let var_3 = func_1(1i >> (~abs(u_input.a.x ^ 16792u) % 32u));
    let var_4 = ~(var_3.c.x << (func_4(func_2(var_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(84076u, var_2.a, 1u, 0u), vec4<u32>(4294967295u, 96517u, u_input.a.x, u_input.a.x)), var_1.x), Struct_2(func_1(var_1.x).e)).c.x % 32u));
    var var_5 = func_1(1i);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~(~vec3<u32>(var_5.c.x, var_4, 55960u))), _wgslsmith_clamp_vec3_u32(reverseBits((vec3<u32>(u_input.a.x, 92180u, var_5.c.x) & vec3<u32>(var_3.c.x, u_input.a.x, var_2.a)) >> (select(vec3<u32>(var_4, 4294967295u, 7604u), vec3<u32>(3563u, 29092u, 1u), vec3<bool>(false, false, var_3.b)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(0u, var_5.c.x, 58380u), 1u), ~abs(vec3<u32>(var_5.c.x, 20040u, var_4))), reverseBits(vec3<u32>(1u, var_3.c.x, var_2.a) & vec3<u32>(0u, 23232u, 20483u)) << (vec3<u32>(var_3.c.x, 1u, var_2.a) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f * -1428f)) + var_3.e.x), 721f), var_5.c, firstTrailingBit(~(~vec3<u32>(var_4, 7651u, var_5.c.x) << (~vec3<u32>(10941u, var_2.a, var_2.a) % vec3<u32>(32u)))));
}

