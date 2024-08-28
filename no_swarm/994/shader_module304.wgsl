struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: array<Struct_4, 13>;

var<private> global3: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec4<f32>(425f, 1515f, 205f, 1832f), Struct_1(i32(-2147483648))), Struct_5(vec4<f32>(-901f, -2276f, -695f, 1230f), Struct_1(0i)), Struct_5(vec4<f32>(319f, -143f, 802f, 2697f), Struct_1(-46200i)), Struct_5(vec4<f32>(-2281f, -212f, -2153f, -446f), Struct_1(-60316i)), Struct_5(vec4<f32>(982f, 227f, 1352f, -1105f), Struct_1(58487i)), Struct_5(vec4<f32>(-998f, -1718f, -373f, 565f), Struct_1(-19627i)), Struct_5(vec4<f32>(-2457f, 577f, 904f, -677f), Struct_1(-27009i)), Struct_5(vec4<f32>(452f, 368f, 481f, 583f), Struct_1(-12526i)), Struct_5(vec4<f32>(1000f, -552f, 419f, -368f), Struct_1(i32(-2147483648))), Struct_5(vec4<f32>(177f, -1335f, -753f, 483f), Struct_1(20908i)), Struct_5(vec4<f32>(1000f, -1276f, 1313f, 747f), Struct_1(0i)), Struct_5(vec4<f32>(-189f, 579f, 137f, -460f), Struct_1(-1i)), Struct_5(vec4<f32>(-288f, 342f, -1331f, -1804f), Struct_1(-1i)), Struct_5(vec4<f32>(-1145f, -109f, -727f, 1299f), Struct_1(1i)), Struct_5(vec4<f32>(-333f, -479f, -264f, 372f), Struct_1(2147483647i)), Struct_5(vec4<f32>(-1083f, 1135f, 756f, -303f), Struct_1(37593i)), Struct_5(vec4<f32>(-478f, 346f, -906f, -1013f), Struct_1(1i)), Struct_5(vec4<f32>(818f, -1655f, -307f, -688f), Struct_1(0i)), Struct_5(vec4<f32>(-2235f, -853f, 438f, 561f), Struct_1(1i)), Struct_5(vec4<f32>(1000f, -1246f, 1566f, 651f), Struct_1(1i)), Struct_5(vec4<f32>(-1000f, 1591f, -1063f, 887f), Struct_1(18693i)), Struct_5(vec4<f32>(1581f, 234f, -371f, -195f), Struct_1(i32(-2147483648))));

var<private> global4: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: u32, arg_3: u32) -> vec4<bool> {
    global3 = array<Struct_5, 22>();
    global2 = array<Struct_4, 13>();
    var var_0 = 77838i;
    var var_1 = _wgslsmith_dot_vec2_i32(select(u_input.a.yw ^ u_input.a.yw, -u_input.a.xz, arg_1.x), u_input.a.zw);
    var var_2 = -374f;
    return !select(select(vec4<bool>(all(vec3<bool>(true, arg_1.x, arg_1.x)), true, true, arg_1.x), select(select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), false), select(vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, false), vec4<bool>(true, true, false, arg_1.x)), !vec4<bool>(arg_1.x, true, false, arg_1.x)), arg_1.x), select(!select(vec4<bool>(true, false, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), false), select(!vec4<bool>(arg_1.x, true, false, false), vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(false, false, false, arg_1.x)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x), true), true)), true);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = arg_3.c.a;
    var var_1 = -(arg_3.b >> (_wgslsmith_div_u32(50408u, arg_3.c.d.x) % 32u));
    let var_2 = u_input.a.wwz;
    let var_3 = arg_0.b.a;
    var var_4 = arg_1;
    return arg_3.a.yx;
}

fn func_2(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = func_4(Struct_5(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -761f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 364f) - 980f), _wgslsmith_f_op_f32(-arg_0)), Struct_1(-579i)), Struct_1(u_input.a.x), arg_0, Struct_4(select(!func_3(vec3<u32>(0u, 0u, u_input.c.x), vec2<bool>(true, true), u_input.c.x, u_input.c.x), vec4<bool>(false, true, true, arg_0 > arg_0), vec4<bool>(true, all(vec2<bool>(false, false)), true, true)), min(arg_1, ~arg_1), Struct_2(vec4<bool>(u_input.a.x == u_input.a.x, any(vec2<bool>(false, false)), true, select(false, true, false)), true, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-175f, 849f, 1686f), vec3<f32>(1157f, arg_0, arg_0))), ~select(vec2<u32>(0u, u_input.b), u_input.c, vec2<bool>(true, true)))));
    let var_1 = all(!(!vec4<bool>(var_0.x, any(vec2<bool>(false, var_0.x)), var_0.x || false, true)));
    global3 = array<Struct_5, 22>();
    var var_2 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(39976u, u_input.b, u_input.c.x), vec3<u32>(u_input.b, 25468u, u_input.c.x)))) << ((~countOneBits(~vec3<u32>(0u, u_input.b, u_input.b)) | countOneBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(7859u, 4294967295u, u_input.b), vec3<u32>(u_input.c.x, 28712u, u_input.c.x), vec3<u32>(18279u, 23654u, 14247u)))) % vec3<u32>(32u));
    global3 = array<Struct_5, 22>();
    return true;
}

fn func_1() -> Struct_5 {
    var var_0 = true;
    global1 = array<vec2<u32>, 23>();
    var_0 = !select(!(func_2(1491f, u_input.a.x) && true), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f - -1644f)), -29101i), true);
    global4 = 4294967295u | ~firstLeadingBit(u_input.b);
    global3 = array<Struct_5, 22>();
    return Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-262f, -840f, -1000f, 219f))) - vec4<f32>(_wgslsmith_f_op_f32(step(-1561f, 123f)), _wgslsmith_f_op_f32(abs(371f)), _wgslsmith_f_op_f32(-1073f * -1073f), -1340f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-457f, _wgslsmith_f_op_f32(207f * -252f), _wgslsmith_f_op_f32(step(760f, -969f)), _wgslsmith_f_op_f32(step(-728f, 1345f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(930f, -805f, 478f, -2496f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2030f, 257f, 1013f, 1000f))))))), Struct_1(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec2<u32>, 23>();
    var var_1 = countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(71278u, u_input.c.x, 3030u, 38818u), vec4<u32>(1111u, u_input.b, 39111u, u_input.c.x), vec4<bool>(true, false, false, true)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 38544u, 0u, u_input.c.x) | vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b), ~vec4<u32>(u_input.b, 74140u, 1u, 35571u))), ~vec4<u32>(abs(27994u), u_input.b << (29468u % 32u), ~113422u, ~27262u)));
    var_1 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(var_1.zx)), vec2<u32>(25278u & u_input.b, u_input.b))), _wgslsmith_mult_u32(~var_1.x, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.zz), ~u_input.c)), u_input.c.x, u_input.b);
    var var_2 = func_1().b;
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xw, vec2<u32>(1u, var_1.x), firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(var_1.yww, select(var_1.xzz, var_1.xwx, vec3<bool>(true, true, true))), var_1.zyw));
}

