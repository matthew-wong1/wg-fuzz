struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = abs(arg_0);
    var var_1 = Struct_2(Struct_1(~1u, any(arg_1.yz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1739f - arg_3.b.x), -424f, _wgslsmith_f_op_f32(-arg_2.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.x, 1692f, !any(arg_1.wxz))), -757f, 481f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-2643f))))));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 * arg_2) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.c.x, arg_2.x, 681f, arg_3.a.c.x)))));
    let var_2 = Struct_2(Struct_1(1u, any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1673f, -226f, var_1.a.c.x)))))), _wgslsmith_div_vec4_f32(arg_3.b, _wgslsmith_f_op_vec4_f32(trunc(arg_2))));
    let var_3 = ~_wgslsmith_mult_vec3_u32(u_input.b.www, _wgslsmith_mult_vec3_u32(u_input.b.xxx, ~vec3<u32>(56168u, u_input.b.x, var_2.a.a)));
    return ~9612i;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -240f);
    let var_1 = true && ((func_3(min(-21560i, -1i), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, -177f, -337f, -1026f)), Struct_2(Struct_1(1u, false, vec3<f32>(-205f, -1661f, -645f)), vec4<f32>(347f, -1444f, 359f, -449f))) < _wgslsmith_mod_i32(-82i, -16042i)) | true);
    let var_2 = Struct_2(Struct_1(4294967295u, var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(522f, -1086f, 510f), vec3<f32>(1191f, -1505f, 1390f)))) * vec3<f32>(-741f, _wgslsmith_f_op_f32(f32(-1f) * -2427f), _wgslsmith_f_op_f32(-549f - -666f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1262f, 1368f, 2289f, -2771f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(336f, -608f, -529f, -1000f), vec4<f32>(645f, -358f, 224f, -572f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(183f, 113f, -133f, 1219f))))))));
    return 4294967295u >> (0u % 32u);
}

fn func_1() -> i32 {
    let var_0 = ~u_input.b.x;
    var var_1 = Struct_1(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(~func_2()), _wgslsmith_add_u32(_wgslsmith_add_u32(abs(0u), ~u_input.b.x), firstTrailingBit(u_input.a.x))), select(true, true, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(401f, 749f, _wgslsmith_f_op_f32(trunc(-1000f))) + vec3<f32>(-519f, -2129f, _wgslsmith_f_op_f32(select(-587f, -463f, false))))));
    let var_2 = select(vec2<bool>(true, any(vec2<bool>(var_1.b, var_1.b))), select(vec2<bool>(false, ~var_0 > u_input.a.x), vec2<bool>(all(!vec3<bool>(var_1.b, false, false)), all(select(vec4<bool>(var_1.b, true, false, false), vec4<bool>(false, false, true, var_1.b), vec4<bool>(true, var_1.b, true, true)))), var_1.b && true), any(select(select(vec2<bool>(true, true), !vec2<bool>(var_1.b, var_1.b), !var_1.b), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(var_1.b, any(vec3<bool>(true, var_1.b, var_1.b))))));
    var_1 = Struct_1(4294967295u, any(select(select(var_2, var_2, var_2), select(select(vec2<bool>(var_1.b, false), vec2<bool>(var_2.x, true), var_2), var_2, any(vec4<bool>(true, true, true, var_1.b))), var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c, var_1.c), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-687f, 1779f, -1997f)))))) + var_1.c));
    var_1 = Struct_1(_wgslsmith_sub_u32(46476u, ~u_input.a.x) & _wgslsmith_add_u32(var_1.a, _wgslsmith_div_u32(0u ^ var_1.a, _wgslsmith_sub_u32(20510u, var_0))), var_2.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-139f, var_1.c.x, -124f))))));
    return 35036i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(u_input.a.x, ~_wgslsmith_div_u32(countOneBits(u_input.a.x), ~u_input.a.x));
    var var_1 = 2147483647i;
    var var_2 = !any(!vec3<bool>(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(false, true, true, true))));
    var_1 = abs(max(0i, (1i << (var_0.x % 32u)) ^ firstLeadingBit(~(-4359i))));
    var_0 = vec2<u32>(77940u, var_0.x);
    let var_3 = vec3<i32>(func_1(), ~(~(~_wgslsmith_clamp_i32(-13566i, 2989i, 0i))), firstLeadingBit(-1i));
    let var_4 = true;
    let var_5 = _wgslsmith_sub_vec3_u32(u_input.b.wxx, ~vec3<u32>(var_0.x, ~26010u, 1u)) ^ ~(~u_input.b.wyz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1960f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1830f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -345f, !(var_0.x == 5237u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-310f, -657f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_clamp_vec3_u32(abs(var_5), u_input.b.zyz, ~min(~vec3<u32>(var_5.x, 1u, 56828u), ~var_5)));
}

