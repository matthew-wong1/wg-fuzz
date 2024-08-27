struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(1493f, 676f, -473f), vec3<f32>(1000f, -1368f, 384f), vec3<f32>(-487f, -1078f, -1072f), vec3<f32>(904f, 322f, -1395f), vec3<f32>(1816f, 259f, 764f), vec3<f32>(-248f, 1000f, -1370f), vec3<f32>(570f, 783f, 365f), vec3<f32>(-1000f, 374f, 266f), vec3<f32>(-460f, 1158f, 1120f), vec3<f32>(-1756f, -652f, -508f), vec3<f32>(-324f, -1024f, -211f), vec3<f32>(-185f, -560f, 1762f), vec3<f32>(-1483f, 575f, 415f), vec3<f32>(2845f, 1611f, -332f), vec3<f32>(-1221f, -379f, 1673f), vec3<f32>(251f, -358f, 2112f), vec3<f32>(763f, 2020f, 280f), vec3<f32>(1148f, 344f, -849f), vec3<f32>(-371f, -914f, -993f), vec3<f32>(1433f, -357f, -541f), vec3<f32>(844f, 451f, -582f), vec3<f32>(287f, -811f, 702f), vec3<f32>(215f, 1172f, -824f), vec3<f32>(-400f, -2134f, 1173f), vec3<f32>(-1389f, -441f, 523f), vec3<f32>(-705f, -1000f, -476f), vec3<f32>(-1000f, 540f, 1429f), vec3<f32>(-938f, 880f, -960f), vec3<f32>(-347f, -649f, -2385f));

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(1000f, 494f, 883f, 1097f), vec4<f32>(1391f, 1073f, 1563f, 664f), vec4<f32>(929f, 565f, -1234f, 466f), vec4<f32>(200f, -1150f, 617f, -267f), vec4<f32>(-1000f, -178f, 1128f, 1290f), vec4<f32>(-506f, -1000f, -710f, 1705f), vec4<f32>(-494f, 196f, -2011f, -221f), vec4<f32>(792f, 123f, 897f, 1527f), vec4<f32>(-547f, 1000f, 155f, -1159f), vec4<f32>(1005f, -556f, -287f, 664f), vec4<f32>(1000f, 2141f, 2098f, 628f));

var<private> global3: vec4<u32> = vec4<u32>(21032u, 23465u, 24512u, 1u);

var<private> global4: array<vec4<u32>, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = vec3<u32>(~arg_0.x, ~32224u, global3.x | ~reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.d.x)));
    global4 = array<vec4<u32>, 7>();
    return ~((_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(var_0.x, arg_0.x)) | 1u) & reverseBits(max(_wgslsmith_mod_u32(var_0.x, arg_1.x), global3.x)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = min(vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32(~countOneBits(global3.x), global3.x, global3.x), 19496u, global3.x), vec4<u32>(abs(~5290u), ~_wgslsmith_dot_vec3_u32(global3.yxy, ~global3.xxy), ~global3.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, countOneBits(1u), 1u), ~(~23898u), u_input.d.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(407f, arg_1) - _wgslsmith_f_op_f32(1672f * -178f)) + arg_1), arg_1, arg_1) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(1000f * 698f)) - -153f), 126f));
    var var_2 = ~_wgslsmith_div_u32(min(var_0.x, ~u_input.d.x | _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(u_input.d.x, 7u)], global4[_wgslsmith_index_u32(global3.x, 7u)])), u_input.d.x);
    var_2 = firstLeadingBit(u_input.d.x);
    let var_3 = vec2<u32>(52198u & func_3(vec4<u32>(0u, 87247u, 8443u, global3.x) ^ global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3.wwx, global3.zxy), 7u)], _wgslsmith_mult_vec3_u32(vec3<u32>(18574u, var_0.x, global3.x), global3.zyx)), ~abs(min(4294967295u, 3033u)) >> (var_0.x % 32u));
    return Struct_1(select(vec4<bool>(!(arg_2 || true), false, all(vec3<bool>(arg_2, false, arg_2)) && false, (var_0.x | u_input.d.x) <= 15380u), arg_0.a, vec4<bool>(true, any(arg_0.a), arg_1 >= arg_1, max(var_3.x, global3.x) >= u_input.d.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = min(_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(0u, select(12141u, 4659u, arg_0.a.x))) & (0u >> (global3.x % 32u)), 7579u);
    global4 = array<vec4<u32>, 7>();
    var var_1 = 722f;
    var var_2 = func_2(func_2(func_2(arg_0, -401f, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2061f, -148f)), !(!any(vec2<bool>(true, false)))), 337f, all(arg_0.a));
    global3 = ~firstLeadingBit(~(~select(global4[_wgslsmith_index_u32(5399u, 7u)], global4[_wgslsmith_index_u32(1u, 7u)], arg_0.a.x)));
    return func_2(Struct_1(!vec4<bool>(select(true, true, true), false, !var_2.a.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, -1076f)))), select(!arg_0.a.x, false, !any(var_2.a.xx)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.a;
    var var_1 = any(arg_0.a.yzy);
    let var_2 = !func_2(arg_1, -1376f, false).a;
    global1 = array<vec3<f32>, 29>();
    var var_3 = func_4(arg_0);
    return Struct_1(!(!var_2));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_f_op_f32(sign(885f));
    return func_5(func_4(func_2(Struct_1(select(vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(false, false, false, var_0.a.x), vec4<bool>(var_0.a.x, false, true, false))), _wgslsmith_f_op_f32(sign(-410f)), var_0.a.x)), func_4(Struct_1(select(func_2(var_0, var_1, var_0.a.x).a, select(var_0.a, vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)), !var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 11>();
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.xz, _wgslsmith_add_vec2_i32(~u_input.b, u_input.c.zx));
    var var_1 = func_1(global3.x);
    global4 = array<vec4<u32>, 7>();
    var var_2 = countOneBits(-u_input.e.zw);
    let var_3 = ~1u;
    var_1 = Struct_1(var_1.a);
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(-210f)), -877f, 1000f), global1[_wgslsmith_index_u32(~(var_3 | var_3), 29u)], !var_1.a.wxy))), global1[_wgslsmith_index_u32(countOneBits(var_3), 29u)], func_2(func_5(Struct_1(!var_1.a), func_1(global3.x)), 1866f, false || all(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x))).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(global3.ywz, ~(~global3.wyw), vec3<u32>(u_input.d.x, u_input.d.x, 14125u) << (_wgslsmith_add_vec3_u32(global3.wzw, global3.xzw) % vec3<u32>(32u))));
}

