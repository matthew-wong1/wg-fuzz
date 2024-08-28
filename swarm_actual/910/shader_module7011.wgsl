struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(388f, -760f, 589f, -353f), i32(-2147483648), i32(-2147483648), 12928i), Struct_1(vec4<f32>(180f, 474f, 1000f, -634f), 9671i, 45099i, 1i), Struct_1(vec4<f32>(-971f, 289f, -355f, 1412f), -56364i, 1i, 0i), Struct_1(vec4<f32>(2034f, 845f, 686f, -1107f), 0i, 195i, 16198i), Struct_1(vec4<f32>(521f, -1574f, -228f, 1019f), -2993i, 49994i, -14740i), Struct_1(vec4<f32>(-854f, 1807f, 246f, -615f), 1i, 99976i, 2147483647i), Struct_1(vec4<f32>(-379f, -838f, 736f, 708f), -16470i, 36083i, 0i), Struct_1(vec4<f32>(-982f, 522f, 1202f, 826f), 2147483647i, -12067i, 14263i), Struct_1(vec4<f32>(547f, -203f, -882f, -134f), -9764i, -30421i, 0i), Struct_1(vec4<f32>(-337f, -1541f, 865f, 913f), 1i, 0i, 0i), Struct_1(vec4<f32>(1150f, 1235f, -577f, 1839f), 2147483647i, -16327i, -21999i), Struct_1(vec4<f32>(-1264f, -1000f, -606f, -728f), 1i, 1i, i32(-2147483648)), Struct_1(vec4<f32>(-373f, -1759f, -2722f, -1498f), 1i, 10560i, -23353i), Struct_1(vec4<f32>(-539f, 958f, 1000f, -689f), 1i, -1i, 15394i), Struct_1(vec4<f32>(825f, -719f, 2221f, 1000f), -37530i, 2147483647i, 1i), Struct_1(vec4<f32>(235f, -338f, -662f, 111f), -1i, -12589i, -18528i), Struct_1(vec4<f32>(648f, -818f, -118f, -556f), 15412i, 1i, -16625i), Struct_1(vec4<f32>(-1802f, -1725f, -453f, -437f), -11148i, -1i, 8464i), Struct_1(vec4<f32>(-3336f, -681f, 715f, -1662f), i32(-2147483648), 27117i, i32(-2147483648)), Struct_1(vec4<f32>(-806f, 1861f, -578f, -1229f), -11741i, -1i, 3749i), Struct_1(vec4<f32>(-2574f, -1328f, 227f, -137f), 35855i, -21260i, -23479i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-685f, _wgslsmith_f_op_f32(1311f + -782f), _wgslsmith_f_op_f32(454f + -457f), -1369f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(469f, 1406f, -1000f, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(628f, -469f, -1289f, 936f), vec4<f32>(-1000f, 879f, -320f, -1155f)))))), u_input.d.x, -25152i, 0i);
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.zy, abs(u_input.b)), _wgslsmith_sub_u32(u_input.b.x, u_input.a.x), _wgslsmith_div_u32(u_input.b.x, 4294967295u >> (1u % 32u)), 0u), _wgslsmith_sub_vec4_u32(~min(~vec4<u32>(u_input.a.x, 57974u, 60169u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x)), vec4<u32>(u_input.a.x, 12473u, ~4294967295u & min(u_input.a.x, 2127u), u_input.b.x)), vec4<u32>(select(0u, _wgslsmith_div_u32(1u, u_input.b.x), any(vec2<bool>(true, true))), 4294967295u, u_input.a.x << (1u % 32u), ~0u));
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(49674i, u_input.d.x), u_input.c.yw);
    let var_3 = min(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-52023i, var_2.x) ^ ~2147483647i, -1i, firstLeadingBit(var_0.b)), 11985i), var_0.c);
    let var_4 = vec4<u32>(~(var_1.x | ~(u_input.a.x << (0u % 32u))), var_1.x, ~abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 32878u, u_input.a.x), vec3<u32>(var_1.x, 4294967295u, 97430u))), _wgslsmith_mult_u32(max(abs(_wgslsmith_add_u32(var_1.x, var_1.x)), u_input.b.x << (~4294967295u % 32u)), var_1.x));
    return vec2<i32>(2168i, -38230i);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = 4294967295u;
    var var_1 = all(vec3<bool>(!(!(arg_0.x & arg_0.x)), true, arg_0.x));
    var var_2 = abs(~select(func_3() ^ _wgslsmith_mult_vec2_i32(u_input.d.yx, u_input.d.xz), func_3(), false));
    let var_3 = -1i;
    var_1 = all(select(vec2<bool>(true, false), select(arg_0, vec2<bool>(true, arg_1 > 25738u), vec2<bool>(true, arg_0.x)), select(arg_0.x, arg_0.x, !any(vec3<bool>(arg_0.x, arg_0.x, false)))));
    return u_input.a.x >= _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(56539u, arg_1, u_input.a.x, 1u) | vec4<u32>(u_input.a.x, u_input.a.x, arg_1, 4294967295u), ~vec4<u32>(u_input.a.x, arg_1, 1u, 4294967295u)), vec4<u32>(~27241u, 63003u << (arg_1 % 32u), _wgslsmith_mod_u32(u_input.a.x, 0u), ~u_input.b.x)), _wgslsmith_dot_vec2_u32(~firstTrailingBit(u_input.b), u_input.b));
}

fn func_1() -> f32 {
    var var_0 = !(!func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 34221u, u_input.a.x, 1u)), ~vec4<u32>(36006u, u_input.a.x, u_input.a.x, u_input.b.x)), max(_wgslsmith_clamp_i32(u_input.d.x, -16331i, u_input.d.x), u_input.c.x), Struct_1(vec4<f32>(-120f, -286f, -258f, -1000f), -26724i, u_input.c.x, -1i)));
    global0 = array<Struct_1, 21>();
    var var_1 = -_wgslsmith_mult_i32(-35478i, -1i);
    let var_2 = global0[_wgslsmith_index_u32(min(abs(u_input.a.x ^ _wgslsmith_mod_u32(u_input.a.x | u_input.b.x, u_input.b.x)), u_input.b.x), 21u)];
    var var_3 = ~select(u_input.a, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, 1u, u_input.a.x) ^ u_input.a), vec3<u32>(firstLeadingBit(u_input.b.x), 3668u, abs(u_input.b.x))), !(firstLeadingBit(19280u) <= ~u_input.a.x));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(-229f));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1262f);
    let var_3 = Struct_1(vec4<f32>(-793f, var_1, _wgslsmith_f_op_f32(floor(var_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(func_1())))), u_input.c.x, u_input.c.x, u_input.c.x);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_0, var_3.a.x) - _wgslsmith_f_op_vec4_f32(step(var_3.a, var_3.a)))) * _wgslsmith_f_op_vec4_f32(-var_3.a)), 1i, u_input.c.x >> (112897u % 32u), ~(var_3.d | -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), vec2<i32>(u_input.d.x, var_3.b))));
    let var_5 = _wgslsmith_f_op_vec2_f32(-var_3.a.ww);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(max(u_input.a.x, 37924u))) ^ u_input.b.x);
}

