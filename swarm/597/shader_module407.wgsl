struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(false, vec4<f32>(1474f, -159f, 634f, -1000f), vec3<i32>(-1i, i32(-2147483648), 2147483647i), 2425f), 19104u, Struct_1(false, vec4<f32>(-1000f, 418f, -823f, 2481f), vec3<i32>(0i, 2147483647i, 0i), -1019f)), Struct_2(Struct_1(true, vec4<f32>(-1099f, 185f, -1177f, -236f), vec3<i32>(11680i, -8168i, -30608i), -709f), 1u, Struct_1(true, vec4<f32>(701f, -484f, 136f, 196f), vec3<i32>(2147483647i, 37888i, 0i), 439f)), Struct_2(Struct_1(false, vec4<f32>(230f, -707f, 904f, -1000f), vec3<i32>(0i, 24349i, 21733i), -632f), 1u, Struct_1(true, vec4<f32>(504f, 493f, -1000f, -1184f), vec3<i32>(-1i, 23507i, 0i), -134f)), Struct_2(Struct_1(false, vec4<f32>(1439f, -229f, 1051f, 1583f), vec3<i32>(1i, 1i, 33284i), -1233f), 18864u, Struct_1(true, vec4<f32>(-1495f, -628f, -146f, 340f), vec3<i32>(-1534i, -49711i, -1i), 1370f)), Struct_2(Struct_1(false, vec4<f32>(565f, 638f, -2532f, 668f), vec3<i32>(44199i, -40782i, 2147483647i), -798f), 1u, Struct_1(true, vec4<f32>(-546f, -604f, -1000f, -310f), vec3<i32>(6066i, 1i, -16344i), -232f)), Struct_2(Struct_1(true, vec4<f32>(1564f, -1000f, 1069f, -507f), vec3<i32>(-1i, 2147483647i, 31779i), -254f), 4294967295u, Struct_1(true, vec4<f32>(-312f, -513f, 364f, 1000f), vec3<i32>(1i, 1i, -51268i), -2042f)));

var<private> global1: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(974f, 508f, 1043f), vec3<f32>(1347f, 697f, 822f), vec3<f32>(1218f, -784f, 631f), vec3<f32>(-1303f, -915f, 103f), vec3<f32>(-693f, -1077f, -346f), vec3<f32>(1727f, 175f, 1395f), vec3<f32>(1384f, -322f, -1000f), vec3<f32>(1183f, -1053f, 1291f), vec3<f32>(-616f, 314f, -245f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)) + _wgslsmith_div_f32(-684f, _wgslsmith_f_op_f32(trunc(1384f)))))));
    let var_1 = (-481f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))) == true;
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global1 = array<vec3<f32>, 9>();
    return _wgslsmith_f_op_f32(-1649f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1340f)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = !vec3<bool>(true, select(true, 200f == _wgslsmith_f_op_f32(trunc(-366f)), any(vec2<bool>(true, true))), true);
    let var_1 = Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, 845f, 1159f, 1096f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1326f, 1820f, -199f, -283f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, -3043f, 477f, -567f))))), firstTrailingBit(vec3<i32>(u_input.c, abs(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a), vec4<i32>(u_input.c, -29406i, -34140i, 1i)))) >> (reverseBits(~vec3<u32>(48491u, u_input.b.x, 0u) ^ ~vec3<u32>(u_input.d, 1u, u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(func_3()));
    var var_2 = var_1;
    var_0 = vec3<bool>(!var_1.a, true, var_2.a);
    let var_3 = u_input.b;
    return var_1;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    global0 = array<Struct_2, 6>();
    var var_0 = arg_1;
    global1 = array<vec3<f32>, 9>();
    let var_1 = min(u_input.b, ~u_input.b);
    global1 = array<vec3<f32>, 9>();
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_2(arg_0.a, 4294967295u, Struct_1(true | (_wgslsmith_f_op_f32(select(arg_0.a.d, arg_0.a.d, true)) != -395f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.a.b * arg_0.a.b))), arg_0.a.c, -112f));
    let var_1 = arg_0;
    var var_2 = u_input.b;
    global0 = array<Struct_2, 6>();
    var var_3 = var_0;
    return ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~min(1u, var_2.x), ~1u), 4849u);
}

fn func_5(arg_0: u32, arg_1: vec2<bool>) -> StorageBuffer {
    global0 = array<Struct_2, 6>();
    let var_0 = Struct_1(!any(!vec2<bool>(arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, func_2().b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(f32(-1f) * -587f)), _wgslsmith_f_op_f32(f32(-1f) * -569f)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, 1303f), func_2().d, _wgslsmith_f_op_f32(ceil(120f)), -1618f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2002f, 577f, 887f, -209f) - vec4<f32>(-1099f, -992f, -1000f, -190f)), func_2().b, vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))))), select(~(~countOneBits(vec3<i32>(-1866i, -1i, 25199i))), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.a) & vec3<i32>(2147483647i, u_input.c, u_input.a), vec3<i32>(u_input.c, 0i, u_input.a) | vec3<i32>(u_input.a, u_input.a, 29738i)) << (vec3<u32>(u_input.b.x, 135u, 1u) % vec3<u32>(32u)), !vec3<bool>(!arg_1.x, true, true)), func_1(all(!(!vec2<bool>(false, arg_1.x))), Struct_3(Struct_1(!arg_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, 903f, 964f, 546f)), -vec3<i32>(-1i, 27602i, 55893i), -125f))).d);
    global0 = array<Struct_2, 6>();
    let var_1 = -5062i;
    return StorageBuffer(_wgslsmith_f_op_f32(-653f * var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global1 = array<vec3<f32>, 9>();
    global0 = array<Struct_2, 6>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1684f, 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -2945f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1029f, 1775f)), _wgslsmith_f_op_f32(914f + 1252f)))))));
    let x = u_input.a;
    s_output = func_5(u_input.d << (func_4(Struct_3(func_1(true, Struct_3(Struct_1(true, vec4<f32>(-985f, 489f, -107f, 1000f), vec3<i32>(-2147483647i, u_input.a, -2147483647i), 1637f)))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), func_2().a)) % 32u), !select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), !any(vec4<bool>(true, false, false, false))));
}

