struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true));

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, vec3<u32>(0u, 104620u, 0u), vec3<bool>(true, true, false), vec2<u32>(4294967295u, 1u)), Struct_1(false, vec3<u32>(35699u, 58072u, 7229u), vec3<bool>(true, false, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(true, vec3<u32>(1u, 0u, 9637u), vec3<bool>(true, false, false), vec2<u32>(45034u, 62665u)), Struct_1(true, vec3<u32>(4294967295u, 32757u, 19236u), vec3<bool>(true, false, false), vec2<u32>(0u, 4294967295u)), Struct_1(false, vec3<u32>(58144u, 6185u, 1u), vec3<bool>(false, true, true), vec2<u32>(4294967295u, 0u)), Struct_1(false, vec3<u32>(4294967295u, 1u, 2467u), vec3<bool>(false, false, false), vec2<u32>(887u, 10065u)), Struct_1(false, vec3<u32>(4294967295u, 0u, 51441u), vec3<bool>(true, true, false), vec2<u32>(5640u, 1u)), Struct_1(true, vec3<u32>(38055u, 1u, 49762u), vec3<bool>(false, true, false), vec2<u32>(0u, 1u)), Struct_1(true, vec3<u32>(0u, 54247u, 101509u), vec3<bool>(false, false, true), vec2<u32>(3674u, 1u)), Struct_1(true, vec3<u32>(36019u, 4294967295u, 4294967295u), vec3<bool>(true, true, true), vec2<u32>(35966u, 0u)), Struct_1(true, vec3<u32>(3716u, 21847u, 1u), vec3<bool>(true, false, false), vec2<u32>(59983u, 27265u)), Struct_1(false, vec3<u32>(5573u, 0u, 46146u), vec3<bool>(true, true, false), vec2<u32>(4294967295u, 0u)), Struct_1(true, vec3<u32>(0u, 51643u, 37565u), vec3<bool>(true, true, false), vec2<u32>(0u, 19452u)), Struct_1(true, vec3<u32>(1u, 133751u, 74118u), vec3<bool>(true, true, true), vec2<u32>(0u, 0u)), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 46723u), vec3<bool>(true, false, false), vec2<u32>(1u, 4294967295u)), Struct_1(true, vec3<u32>(0u, 4294967295u, 44002u), vec3<bool>(false, false, false), vec2<u32>(51312u, 34113u)), Struct_1(false, vec3<u32>(1u, 4294967295u, 0u), vec3<bool>(true, true, false), vec2<u32>(71493u, 4294967295u)), Struct_1(false, vec3<u32>(144843u, 16192u, 0u), vec3<bool>(true, true, false), vec2<u32>(0u, 0u)), Struct_1(true, vec3<u32>(73243u, 1u, 0u), vec3<bool>(false, true, false), vec2<u32>(1u, 4294967295u)), Struct_1(true, vec3<u32>(0u, 10433u, 54769u), vec3<bool>(false, true, true), vec2<u32>(29081u, 0u)), Struct_1(true, vec3<u32>(6591u, 0u, 1u), vec3<bool>(true, false, true), vec2<u32>(0u, 35185u)), Struct_1(false, vec3<u32>(1u, 0u, 0u), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(true, vec3<u32>(1u, 6333u, 30026u), vec3<bool>(false, false, false), vec2<u32>(1u, 1u)), Struct_1(false, vec3<u32>(4294967295u, 1u, 19220u), vec3<bool>(false, true, false), vec2<u32>(0u, 0u)), Struct_1(true, vec3<u32>(4294967295u, 0u, 11740u), vec3<bool>(false, true, true), vec2<u32>(4294967295u, 1u)), Struct_1(false, vec3<u32>(2425u, 4294967295u, 1u), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 54294u)), Struct_1(false, vec3<u32>(70987u, 20450u, 52628u), vec3<bool>(false, false, true), vec2<u32>(66049u, 77845u)), Struct_1(true, vec3<u32>(32912u, 42473u, 14081u), vec3<bool>(false, true, true), vec2<u32>(25340u, 4294967295u)), Struct_1(false, vec3<u32>(129569u, 1u, 11745u), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u)), Struct_1(true, vec3<u32>(14085u, 40982u, 31729u), vec3<bool>(false, false, true), vec2<u32>(109583u, 4294967295u)), Struct_1(false, vec3<u32>(8919u, 10117u, 43915u), vec3<bool>(true, true, true), vec2<u32>(0u, 0u)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1368f, -759f)), -1279f, true)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1153f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(255f, -748f)) + _wgslsmith_f_op_f32(-1032f - 567f))))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 1u) | vec2<u32>(4294967295u, arg_1.d.x), arg_1.d), vec2<u32>(~min(u_input.a, 4294967295u), ~arg_1.b.x)), ~vec2<u32>(reverseBits(u_input.a | 0u), ~firstTrailingBit(4294967295u))), 31u)];
    var var_2 = ~(_wgslsmith_add_u32(min(arg_1.b.x, 40225u), u_input.a) ^ (_wgslsmith_add_u32(1u, arg_1.b.x) ^ abs(u_input.a))) | 0u;
    let var_3 = global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~arg_1.b, var_1.b), abs(vec3<u32>(40197u, 102572u, 4294967295u))) >> ((_wgslsmith_mult_u32(abs(0u), ~u_input.a) ^ (0u >> (_wgslsmith_mult_u32(29324u, var_1.b.x) % 32u))) % 32u)), 31u)];
    var_1 = arg_1;
    return i32(-1i) * -41303i;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_div_u32(11739u, _wgslsmith_div_u32(~u_input.a, ~(~u_input.a)));
    global0 = array<vec4<bool>, 9>();
    let var_2 = true;
    let var_3 = vec2<i32>(func_3(var_2, global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 31u)]), 1i) << (~abs(vec2<u32>(8359u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 36106u))) % vec2<u32>(32u));
    return select(select(vec3<bool>(var_2, false, ~var_3.x == 1i), select(select(select(vec3<bool>(true, true, false), vec3<bool>(arg_0, true, var_2), arg_0), vec3<bool>(false, true, false), arg_0), select(vec3<bool>(var_2, false, arg_0), select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0, arg_0), vec3<bool>(var_2, var_2, var_2)), var_2 && false), vec3<bool>(true, true, true)), arg_0), select(vec3<bool>(true, true, !any(vec2<bool>(false, arg_0))), select(select(!vec3<bool>(true, arg_0, false), !vec3<bool>(var_2, false, arg_0), !var_2), !vec3<bool>(true, arg_0, true), true), !vec3<bool>(all(vec2<bool>(true, var_2)), !var_2, var_2)), !vec3<bool>(var_2, true, var_2));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = Struct_1(false, ~firstTrailingBit(~vec3<u32>(u_input.a, u_input.a, u_input.a)), select(vec3<bool>(false, select(arg_0, all(vec4<bool>(false, false, arg_0, true)), arg_0), u_input.a == max(4294967295u, 34837u)), !(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, arg_0), arg_0)), func_2(all(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), arg_0)))), vec2<u32>(~56754u, u_input.a));
    global0 = array<vec4<bool>, 9>();
    let var_1 = var_0;
    let var_2 = vec2<i32>(32516i, 0i);
    let var_3 = var_1.b.x;
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!(!func_2(select(arg_3.c.x, true, false)).x), abs(vec3<u32>(~0u, 1u, ~5996u)), arg_1.c, arg_1.b.zy);
    let var_1 = vec4<i32>(21293i, ~(-2147483647i), _wgslsmith_mod_i32(~select(-2147483647i, -2147483647i, arg_1.a) | -(i32(-1i) * -55429i), 2147483647i), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, 1i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2466f, _wgslsmith_f_op_f32(f32(-1f) * -308f)) - _wgslsmith_f_op_f32(trunc(2039f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1324f), _wgslsmith_f_op_f32(-680f - -1434f))))));
    var var_3 = select(!(!select(!global0[_wgslsmith_index_u32(1u, 9u)], !vec4<bool>(var_0.a, arg_3.c.x, false, false), select(vec4<bool>(true, false, arg_3.c.x, true), vec4<bool>(arg_0, false, false, true), false))), global0[_wgslsmith_index_u32(~firstTrailingBit(abs(u_input.a) >> (~var_0.b.x % 32u)), 9u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(select(1u, arg_3.b.x, false != arg_1.c.x), arg_3.d.x), arg_3.b.xz), 9u)]);
    var_3 = vec4<bool>(!arg_2.x, all(select(func_2(true), vec3<bool>(var_0.c.x, !var_0.c.x, any(vec3<bool>(var_3.x, true, arg_3.c.x))), var_0.c)), arg_2.x, !arg_3.a);
    return Struct_1(2147483647i > max(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), var_1.wxy), min(var_1.x, var_1.x)), 3795i), arg_1.b << ((~arg_1.b ^ var_0.b) % vec3<u32>(32u)), !var_0.c, ~(~min(vec2<u32>(arg_3.b.x, 89185u), vec2<u32>(20322u, 25800u)) & ~select(arg_3.d, var_0.b.zx, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~u_input.a), 31u)], select(vec3<bool>(false, true, true), select(vec3<bool>(all(vec2<bool>(true, true)), true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), func_1(true)), vec3<bool>(!any(vec2<bool>(true, false)), true, true)), Struct_1(true, _wgslsmith_div_vec3_u32(~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), countOneBits(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u)), firstLeadingBit(vec2<u32>(6723u, 3258u))))));
    global1 = array<Struct_1, 31>();
    var_0 = Struct_1(!select(true, func_2(true).x, all(vec2<bool>(var_0.a, false))), ~abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), var_0.b, var_0.b)), var_0.c, max(var_0.b.zy, select(~var_0.b.yy, abs(vec2<u32>(4294967295u, u_input.a)), false & select(true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-978f, -367f, 882f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1125f, 865f, 1347f), vec3<f32>(-640f, 802f, -1161f), vec3<bool>(var_0.a, true, var_0.c.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(239f, -283f, -693f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-315f, -271f, 2023f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1672f, -1000f, -1000f))))));
}

