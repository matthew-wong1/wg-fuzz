struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<u32>(18530u, 72676u)));

var<private> global1: u32 = 36997u;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(5028u, 42412u)), Struct_1(vec2<u32>(4294967295u, 20676u)), -1i, Struct_1(vec2<u32>(5933u, 29301u)));

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(vec2<u32>(5735u, 46915u)), 1298f, i32(-2147483648), vec3<u32>(22242u, 37121u, 1u)), Struct_3(Struct_1(vec2<u32>(1u, 4294967295u)), 200f, 13669i, vec3<u32>(1u, 83799u, 45307u)), Struct_3(Struct_1(vec2<u32>(23832u, 1u)), -1206f, 15323i, vec3<u32>(0u, 4294967295u, 82461u)), Struct_3(Struct_1(vec2<u32>(4294967295u, 0u)), -1276f, 1i, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_3(Struct_1(vec2<u32>(33953u, 24954u)), -2699f, -168i, vec3<u32>(22790u, 1u, 1u)), Struct_3(Struct_1(vec2<u32>(1667u, 0u)), -650f, -33630i, vec3<u32>(0u, 4294967295u, 9222u)), Struct_3(Struct_1(vec2<u32>(1u, 4294967295u)), 917f, 2147483647i, vec3<u32>(40927u, 4294967295u, 0u)), Struct_3(Struct_1(vec2<u32>(86257u, 1u)), 832f, i32(-2147483648), vec3<u32>(1u, 0u, 25749u)), Struct_3(Struct_1(vec2<u32>(0u, 14476u)), -328f, 0i, vec3<u32>(85881u, 59385u, 0u)), Struct_3(Struct_1(vec2<u32>(102307u, 38165u)), 1200f, -5525i, vec3<u32>(1u, 4294967295u, 21072u)), Struct_3(Struct_1(vec2<u32>(7724u, 4294967295u)), 779f, 16030i, vec3<u32>(52645u, 6823u, 136u)), Struct_3(Struct_1(vec2<u32>(1u, 1u)), -851f, -38975i, vec3<u32>(6488u, 31546u, 0u)), Struct_3(Struct_1(vec2<u32>(113949u, 1u)), 511f, 43087i, vec3<u32>(170u, 64755u, 66820u)), Struct_3(Struct_1(vec2<u32>(0u, 0u)), 1005f, 0i, vec3<u32>(74253u, 18769u, 0u)), Struct_3(Struct_1(vec2<u32>(56119u, 4294967295u)), 1184f, -12269i, vec3<u32>(1u, 7771u, 33923u)), Struct_3(Struct_1(vec2<u32>(53497u, 585u)), -1576f, 33908i, vec3<u32>(92311u, 0u, 20282u)), Struct_3(Struct_1(vec2<u32>(9098u, 40619u)), 651f, 0i, vec3<u32>(17965u, 1u, 71547u)), Struct_3(Struct_1(vec2<u32>(1u, 1u)), 947f, -16916i, vec3<u32>(3803u, 1u, 42374u)), Struct_3(Struct_1(vec2<u32>(53268u, 27808u)), -333f, i32(-2147483648), vec3<u32>(6982u, 68967u, 4294967295u)), Struct_3(Struct_1(vec2<u32>(5990u, 4294967295u)), 1374f, 1i, vec3<u32>(0u, 1u, 4294967295u)), Struct_3(Struct_1(vec2<u32>(21570u, 13324u)), 1746f, 1052i, vec3<u32>(0u, 38827u, 1u)));

var<private> global4: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec4<bool>) -> f32 {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(global2.c, -51193i, global2.c), vec3<i32>(1i, global2.c, -5894i)), reverseBits(vec3<i32>(global2.c, 1755i, global2.c))), ~(~u_input.c)), vec3<i32>(global2.c, abs(2963i), 4976i)), global2.c);
    var var_2 = _wgslsmith_clamp_u32(max(_wgslsmith_mult_u32(1u, 4773u), arg_0.a.x), 30756u, ~arg_0.a.x);
    var var_3 = 1u;
    var var_4 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.d.a.x, abs(0u)), arg_0.a)), Struct_1(global2.a.a), _wgslsmith_sub_i32(1i >> (~arg_0.a.x % 32u), firstLeadingBit(u_input.d)), Struct_1(vec2<u32>(arg_0.a.x, 4294967295u)));
    return -686f;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1.xyx;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(arg_1.x + -961f)))) - -1000f);
    let var_2 = _wgslsmith_f_op_f32(-1406f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(global2.b.a.x, 1u)], ~vec3<u32>(global2.d.a.x, global2.b.a.x, 32680u), Struct_4(vec4<bool>(arg_2.x, true, false, arg_2.x), false), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, true, false, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))) - _wgslsmith_div_f32(var_0.x, var_1)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(355f, var_0.x))))))));
    var var_3 = Struct_4(!(!select(vec4<bool>(arg_2.x, true, true, arg_2.x), select(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), vec4<bool>(false, false, arg_2.x, false), false), vec4<bool>(arg_2.x, arg_2.x, false, true))), arg_2.x);
    var var_4 = global3[_wgslsmith_index_u32(~(global2.a.a.x << ((firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global2.d.a.x, 39091u), vec3<u32>(4294967295u, 43224u, u_input.b))) | 18372u) % 32u)), 21u)];
    return Struct_1(abs(vec2<u32>(1u, _wgslsmith_clamp_u32(var_4.d.x >> (var_4.a.a.x % 32u), var_4.a.a.x, global2.d.a.x << (32475u % 32u)))));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(296f + _wgslsmith_f_op_f32(f32(-1f) * -518f)));
    global2 = Struct_2(func_2(~min(-40136i, 17362i | global2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - -1685f), 1000f, 737f, 1294f)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), false)), global0[_wgslsmith_index_u32(firstLeadingBit(31928u), 1u)], -2147483647i, Struct_1(~_wgslsmith_div_vec2_u32(global2.a.a, vec2<u32>(u_input.b, u_input.b)) | ~(global2.a.a >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)))));
    var var_1 = vec2<bool>(false, true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2(0i, vec4<f32>(690f, -919f, -508f, -143f), vec2<bool>(var_1.x, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(13710u, 1u, u_input.b), vec3<u32>(global2.a.a.x, u_input.b, global2.a.a.x)), Struct_4(vec4<bool>(true, var_1.x, false, false), var_1.x), vec4<bool>(true, var_1.x, false, var_1.x))) - -989f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f + 248f)))));
    var var_3 = select(select(!select(!vec4<bool>(true, true, var_1.x, false), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, false), false), vec4<bool>(var_1.x, var_1.x, true, true)), !select(select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(false, false, var_1.x, var_1.x), true), !vec4<bool>(var_1.x, var_1.x, true, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x), !vec4<bool>(var_1.x, true, var_1.x, !var_1.x), vec4<bool>(!var_1.x, all(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)), select(min(u_input.d, -905i) != ~10529i, var_1.x, any(select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true)))), var_1.x));
    return StorageBuffer(vec4<i32>(~global2.c, ~(-global2.c >> (u_input.b % 32u)), (u_input.c >> ((global2.d.a.x << (u_input.b % 32u)) % 32u)) ^ min(0i, i32(-1i) * -2147483647i), ~(-10238i << (_wgslsmith_mod_u32(global2.b.a.x, 19885u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>((global2.a.a.x << (31396u % 32u)) ^ ~4294967295u, 104017u), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(30509u, global2.b.a.x), vec2<u32>(global2.d.a.x, 4294967295u)), global2.a.a, ~vec2<u32>(0u, 1u))) & reverseBits(global2.d.a);
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = func_1(global2.a);
}

