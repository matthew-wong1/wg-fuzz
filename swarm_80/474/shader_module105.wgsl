struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(-2057f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-987f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1668f))))), _wgslsmith_f_op_f32(-889f + _wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(sign(-1134f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1609f, 299f, true)), _wgslsmith_f_op_f32(floor(-788f)))))));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -8195i), vec2<i32>(-1i, 61014i)), vec2<i32>(-24157i, -2147483647i)), 20832i, _wgslsmith_div_i32(36494i, ~(-2147483647i))), select(vec4<i32>(~(i32(-1i) * -1i), 2147483647i, -firstLeadingBit(1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-9676i, 2147483647i), vec2<i32>(1i, 0i))), vec4<i32>(0i, 7389i, -2147483647i, -24015i), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), 1789f) + var_0.zx) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1102f, 617f), vec2<f32>(1741f, 1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zz * _wgslsmith_f_op_vec2_f32(-var_0.xz)) - _wgslsmith_f_op_vec2_f32(ceil(var_0.xy))), _wgslsmith_f_op_vec2_f32(var_0.yz - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, var_0.x)))))), vec2<bool>(false & all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))) || true)));
    var var_3 = countOneBits(_wgslsmith_sub_i32(~(-1395i), 2147483647i));
    let var_4 = _wgslsmith_mod_vec3_i32(var_1.yww << (~(firstTrailingBit(vec3<u32>(arg_0.x, arg_1, arg_1)) | (vec3<u32>(arg_1, u_input.a.x, 4294967295u) >> (vec3<u32>(u_input.a.x, 1u, 39031u) % vec3<u32>(32u)))) % vec3<u32>(32u)), var_1.www);
    return arg_0.x;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(~(~(~vec4<u32>(4294967295u, u_input.a.x, 17627u, 6321u))), Struct_1(select(true, true, false), vec2<bool>(false, all(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(889f, 2200f, -1095f, -786f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1543f, -125f, 1204f, -665f))))), Struct_2(~(~select(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1111u), vec4<u32>(1u, 6418u, u_input.a.x, u_input.a.x), vec4<bool>(false, false, true, false))), Struct_1(true, select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(919f, 1261f, 1395f, 1800f) * vec4<f32>(1286f, -575f, 799f, 1297f))))), vec4<u32>(1019u, ~(~(~0u)), min(~func_3(vec2<u32>(1u, u_input.a.x), 0u), ~countOneBits(4294967295u)), _wgslsmith_mult_u32(~35021u, u_input.a.x)));
    var var_1 = var_0;
    let var_2 = vec2<u32>(u_input.a.x, ~max(var_1.a.a.x, var_0.c.x));
    var_1 = Struct_3(Struct_2(~vec4<u32>(12585u, u_input.a.x | var_0.a.a.x, ~1u, 36999u), Struct_1(_wgslsmith_f_op_f32(1270f * var_1.a.b.c.x) >= 644f, var_0.a.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.c.x, var_1.a.b.c.x, var_0.b.b.c.x, var_0.a.b.c.x)) + var_1.a.b.c))), Struct_2(abs(var_1.b.a), Struct_1(all(vec2<bool>(var_0.a.b.a, var_1.a.b.b.x)), select(var_0.a.b.b, vec2<bool>(var_0.a.b.a, false), var_1.b.b.b), vec4<f32>(_wgslsmith_f_op_f32(var_1.b.b.c.x + var_0.a.b.c.x), 373f, -1892f, 865f))), vec4<u32>(~(~4294967295u), ~min(4660u, var_2.x) & _wgslsmith_sub_u32(~62262u, var_1.b.a.x), func_3(var_1.c.yy, ~u_input.a.x), ~1u));
    let var_3 = vec3<i32>(~(-1i), 72561i, _wgslsmith_add_i32(1i, -1i));
    return select(select(vec2<bool>(!(!var_0.b.b.a), false), select(!(!var_0.b.b.b), var_1.a.b.b, all(vec2<bool>(var_0.a.b.b.x, false))), vec2<bool>(true, true && (-2147483647i < var_3.x))), select(vec2<bool>(var_1.a.b.a, true), var_0.a.b.b, var_3.x != select(abs(var_3.x), ~var_3.x, false)), !(!vec2<bool>(!var_0.b.b.b.x, true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_5) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_2.e.a.a;
    let var_2 = -697f;
    let var_3 = func_2();
    let var_4 = min(vec4<i32>(arg_2.b.x, ~(-1i), 2147483647i, -(~arg_2.b.x) << (var_1.x % 32u)), -(~((vec4<i32>(2147483647i, -2147483647i, arg_2.b.x, -26693i) | vec4<i32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, -1i)) & ~vec4<i32>(19595i, arg_2.b.x, arg_2.b.x, arg_2.b.x))));
    return var_0;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4) -> i32 {
    let var_0 = vec4<bool>(true, arg_1.b.b.x, true, max(arg_0.x, 44807i) >= -1i);
    return _wgslsmith_dot_vec2_i32(select(arg_0.xy, ~vec2<i32>(_wgslsmith_add_i32(10094i, -1i), 48943i & arg_0.x), arg_2.a.b.b), vec2<i32>(52026i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(func_4(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, 975i), vec3<i32>(0i, -2147483647i, 35580i)), Struct_2(~vec4<u32>(1u, u_input.a.x, 0u, 0u), func_1(vec3<bool>(false, false, true), Struct_1(true, vec2<bool>(false, true), vec4<f32>(-879f, 625f, 475f, -887f)), Struct_5(Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 30940u, u_input.a.x), Struct_1(false, vec2<bool>(false, true), vec4<f32>(-476f, 252f, 1236f, 636f))), Struct_2(vec4<u32>(u_input.a.x, 26391u, 0u, 56982u), Struct_1(false, vec2<bool>(false, false), vec4<f32>(304f, 140f, -186f, 1000f))), vec4<u32>(u_input.a.x, 35872u, u_input.a.x, 60525u)), vec2<i32>(1i, -1i), true, vec3<bool>(true, false, false), Struct_4(Struct_2(vec4<u32>(u_input.a.x, 4294967295u, 79865u, 0u), Struct_1(false, vec2<bool>(true, false), vec4<f32>(3762f, 1513f, -103f, -366f))))))), Struct_4(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 6977u, u_input.a.x), Struct_1(true, vec2<bool>(false, false), vec4<f32>(402f, -221f, 724f, 1970f))))), 1i, any(vec2<bool>(true, func_1(vec3<bool>(true, true, false), Struct_1(true, vec2<bool>(false, false), vec4<f32>(-713f, -708f, -1400f, 2364f)), Struct_5(Struct_3(Struct_2(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(false, vec2<bool>(false, true), vec4<f32>(-879f, -1407f, -1000f, -1000f))), Struct_2(vec4<u32>(39723u, 39346u, 25906u, u_input.a.x), Struct_1(true, vec2<bool>(true, false), vec4<f32>(912f, 487f, -1000f, -1000f))), vec4<u32>(u_input.a.x, 36320u, u_input.a.x, 24670u)), vec2<i32>(1i, 106590i), true, vec3<bool>(true, false, false), Struct_4(Struct_2(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x), Struct_1(false, vec2<bool>(false, true), vec4<f32>(1501f, -1256f, 490f, 275f)))))).a)));
    let var_1 = Struct_1(!(true && (true & all(vec2<bool>(true, true)))), select(!func_1(vec3<bool>(true, false, true), Struct_1(false, vec2<bool>(true, false), vec4<f32>(424f, -574f, -607f, 662f)), Struct_5(Struct_3(Struct_2(vec4<u32>(42299u, 4294967295u, 1u, 0u), Struct_1(true, vec2<bool>(true, false), vec4<f32>(-956f, 832f, -1000f, 1218f))), Struct_2(vec4<u32>(1u, u_input.a.x, 0u, 44441u), Struct_1(true, vec2<bool>(false, false), vec4<f32>(564f, 273f, 1566f, -1156f))), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<i32>(0i, 14472i), true, vec3<bool>(true, false, true), Struct_4(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(true, vec2<bool>(true, true), vec4<f32>(-2998f, 206f, -877f, -1493f)))))).b, !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, true)), func_1(vec3<bool>(true, true, true), func_1(vec3<bool>(false, false, false), Struct_1(true, vec2<bool>(false, false), vec4<f32>(-1037f, 1760f, -272f, 1012f)), Struct_5(Struct_3(Struct_2(vec4<u32>(24156u, u_input.a.x, 27757u, 10408u), Struct_1(false, vec2<bool>(false, false), vec4<f32>(642f, -1000f, 1188f, -1110f))), Struct_2(vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x), Struct_1(true, vec2<bool>(false, false), vec4<f32>(1000f, -805f, -1903f, 1000f))), vec4<u32>(u_input.a.x, 1u, 72956u, u_input.a.x)), -vec2<i32>(0i, 2147483647i), true, vec3<bool>(false, false, false), Struct_4(Struct_2(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), Struct_1(false, vec2<bool>(false, false), vec4<f32>(1332f, -376f, -1654f, -461f)))))), Struct_5(Struct_3(Struct_2(vec4<u32>(u_input.a.x, 28390u, 24651u, 4294967295u), Struct_1(false, vec2<bool>(false, true), vec4<f32>(716f, 400f, 2062f, 1902f))), Struct_2(vec4<u32>(1u, 0u, 32752u, 6319u), Struct_1(true, vec2<bool>(true, true), vec4<f32>(683f, -1421f, -1335f, 1149f))), vec4<u32>(u_input.a.x, 13233u, 0u, 93635u)), vec2<i32>(firstTrailingBit(-1i), 1i << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(ceil(-508f)) <= -719f, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), Struct_4(Struct_2(vec4<u32>(26236u, 514u, 0u, u_input.a.x), Struct_1(false, vec2<bool>(true, true), vec4<f32>(1127f, 1556f, 334f, 804f)))))).c);
    let var_2 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x << (49360u % 32u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u), 55666u, ~0u), vec4<u32>(0u | u_input.a.x, ~u_input.a.x, 0u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, u_input.a.x, abs(1u), 4294967295u), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 61935u, 22132u), vec4<u32>(19156u, 4294967295u, 11u, u_input.a.x))))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-660i, i32(-1i) * -2147483647i, _wgslsmith_div_i32(-(~448i), -2147483647i)), -vec4<i32>(func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(-294i, -1i, 0i), vec3<i32>(1i, -30527i, 69733i), vec3<i32>(-36273i, 1i, -49090i)), Struct_2(var_2.a, var_1), Struct_4(Struct_2(vec4<u32>(u_input.a.x, 0u, 1u, var_2.a.x), Struct_1(false, vec2<bool>(true, true), var_2.b.c)))), (-12799i >> (u_input.a.x % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-13171i, 7036i, 36448i)), func_4(vec3<i32>(1i, 1i, 1i), Struct_2(vec4<u32>(0u, 112647u, 1u, u_input.a.x), Struct_1(var_2.b.a, vec2<bool>(var_2.b.b.x, true), vec4<f32>(-178f, var_1.c.x, 107f, var_2.b.c.x))), Struct_4(var_2)), 1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b.c + _wgslsmith_f_op_vec4_f32(min(var_1.c, var_1.c)))), vec4<f32>(_wgslsmith_f_op_f32(var_2.b.c.x - _wgslsmith_f_op_f32(-461f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b.c.x, var_2.b.c.x, var_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.c.x + var_1.c.x), _wgslsmith_f_op_f32(max(var_1.c.x, 555f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -824f))), var_2.b.a)), _wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a.x & (23239u << (var_2.a.x % 32u)), _wgslsmith_add_u32(~u_input.a.x, 6238u)), ~_wgslsmith_sub_u32(select(4294967295u, u_input.a.x, var_2.b.b.x), 80124u << (0u % 32u))), 66230u);
}

