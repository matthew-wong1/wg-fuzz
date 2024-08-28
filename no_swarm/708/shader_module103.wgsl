struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> bool {
    return any(vec4<bool>(false, any(vec3<bool>(all(vec4<bool>(true, true, false, false)), true, all(vec2<bool>(true, true)))), true, all(vec4<bool>(true, true, false, true)) && false));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = abs(35755u);
    var_0 = arg_2.e;
    let var_1 = arg_1;
    var_0 = arg_2.c;
    return ~reverseBits(u_input.d.wx ^ vec2<u32>(35499u, 4294967295u)) ^ var_1.a.a.yz;
}

fn func_2() -> Struct_4 {
    var var_0 = -vec3<i32>(_wgslsmith_mod_i32(-2147483647i, select(u_input.a.x, u_input.a.x, true) >> ((1u ^ u_input.c) % 32u)), _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -69481i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -43771i)), -firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 5110i))), min(1i, u_input.a.x));
    var var_1 = ~vec4<i32>(max(i32(-1i) * -1824i, reverseBits(-var_0.x)), 19324i, -u_input.a.x, var_0.x);
    var var_2 = Struct_2(u_input.d, -1412f, Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.xz >> (u_input.b.yx % vec2<u32>(32u)), u_input.b.zx) != 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 721f, -1387f, -428f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-205f, 964f, 145f, -488f), vec4<f32>(2207f, 1904f, 115f, 727f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(524f, 1219f, 1000f, 624f))))), vec4<u32>(4294967295u, ~4294967295u, abs(u_input.c), ~u_input.d.x) >> (((u_input.d | vec4<u32>(0u, 1u, u_input.d.x, 0u)) & _wgslsmith_div_vec4_u32(u_input.d, u_input.d)) % vec4<u32>(32u)), ~func_3(var_0.x, Struct_3(Struct_2(u_input.d, 568f, Struct_1(false, vec4<f32>(-1078f, 686f, -120f, 511f), vec4<u32>(1u, u_input.d.x, u_input.b.x, 1u), u_input.b.zz), -1122f, Struct_1(false, vec4<f32>(-954f, -1458f, 1068f, -960f), u_input.d, u_input.b.yy)), 22437u, 4294967295u, true, u_input.c), Struct_3(Struct_2(u_input.d, -118f, Struct_1(true, vec4<f32>(-1171f, 1436f, -397f, 410f), vec4<u32>(u_input.c, 1u, 15327u, 25102u), u_input.d.yz), -1028f, Struct_1(true, vec4<f32>(587f, -126f, -492f, -227f), vec4<u32>(u_input.b.x, u_input.d.x, 0u, 65067u), vec2<u32>(0u, u_input.c))), 1u, u_input.d.x, true, u_input.d.x))), _wgslsmith_div_f32(-1708f, _wgslsmith_f_op_f32(f32(-1f) * -655f)), Struct_1((true && all(vec2<bool>(true, true))) && !any(vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1197f, 1911f, -350f, 181f)) - vec4<f32>(689f, 784f, -104f, 162f))), vec4<u32>(~abs(u_input.b.x), u_input.b.x, u_input.b.x, u_input.d.x), func_3(_wgslsmith_sub_i32(~var_0.x, _wgslsmith_mod_i32(var_1.x, var_0.x)), Struct_3(Struct_2(u_input.d, -540f, Struct_1(true, vec4<f32>(-535f, -2639f, 1107f, -1001f), vec4<u32>(u_input.c, u_input.b.x, 78240u, 1u), vec2<u32>(u_input.b.x, 51680u)), -1571f, Struct_1(true, vec4<f32>(-104f, 1467f, -154f, 410f), vec4<u32>(4294967295u, u_input.d.x, 1u, u_input.d.x), u_input.d.zz)), u_input.c, u_input.b.x, all(vec3<bool>(false, true, true)), u_input.d.x), Struct_3(Struct_2(u_input.d, -1109f, Struct_1(false, vec4<f32>(-1698f, -693f, -1714f, -1000f), vec4<u32>(u_input.c, 1u, u_input.d.x, 29633u), u_input.b.yz), 936f, Struct_1(false, vec4<f32>(143f, -237f, -1000f, -869f), vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, 1u), vec2<u32>(4294967295u, 81503u))), abs(u_input.d.x), ~62507u, func_1(u_input.d.x, u_input.d), 11845u))));
    return Struct_4(Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_2.c.b, var_2.c.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1251f, -287f, -1266f, 1152f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(-var_2.e.b.x), _wgslsmith_f_op_f32(-var_2.c.b.x), _wgslsmith_f_op_f32(1793f - var_2.e.b.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(69498u, u_input.c, u_input.c, 26145u), var_2.c.c), u_input.b.yx), ~(~min(min(vec3<u32>(u_input.d.x, u_input.d.x, 1u), u_input.b), reverseBits(vec3<u32>(var_2.a.x, 1u, 1u)))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = !arg_2.a.a;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a.b.x * arg_2.a.b.x)));
    var_1 = true;
    var_1 = !arg_0;
    return !(!select(!select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, arg_2.a.a, true), arg_2.a.a), !(!vec4<bool>(arg_2.a.a, false, false, arg_0)), any(select(vec2<bool>(false, false), vec2<bool>(false, arg_0), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = select(vec4<bool>(true, true, true || (_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) == -1i), all(vec3<bool>(true, true, true))), select(vec4<bool>(true, !all(vec4<bool>(false, true, true, false)), !func_1(u_input.c, u_input.d), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), vec4<bool>(true, !all(vec4<bool>(true, false, false, false)), !func_1(29328u, vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, u_input.d.x)), all(vec2<bool>(true, true))), !func_4(true, vec2<i32>(u_input.a.x, -16080i), func_2(), vec3<i32>(1i, u_input.a.x, u_input.a.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.yz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1214f, -1359f, 1604f) + vec3<f32>(923f, -1300f, -1567f)))))), ~(~(-2147483647i)), _wgslsmith_clamp_vec2_i32(~_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-1i, -21770i)), vec2<i32>(-2147483647i, 13778i)), vec2<i32>(u_input.a.x, 2147483647i), u_input.a.xy), u_input.c);
}

