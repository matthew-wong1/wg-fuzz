struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global1: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(1i, -1025i, 19533i), vec3<i32>(0i, -29073i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, -59036i), vec3<i32>(0i, 1i, 22343i), vec3<i32>(-31801i, 7803i, -26011i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(-67266i, -1i, -1i), vec3<i32>(-23452i, -27826i, 5200i), vec3<i32>(-19034i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 0i, -18078i), vec3<i32>(-1i, -3126i, -1i), vec3<i32>(i32(-2147483648), 1i, -33729i), vec3<i32>(17825i, -4833i, 8018i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(2147483647i, 12392i, -11169i), vec3<i32>(-1349i, -40421i, -1i), vec3<i32>(2147483647i, 1i, 12269i), vec3<i32>(-1i, 0i, 13238i), vec3<i32>(-1i, 15226i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 18631i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<i32>) -> vec3<u32> {
    global1 = array<vec3<i32>, 21>();
    global0 = array<vec3<bool>, 18>();
    var var_0 = -16624i;
    let var_1 = Struct_1(select(vec2<u32>(1u, _wgslsmith_div_u32(1u, u_input.b.x << (0u % 32u))), ~vec2<u32>(u_input.a.x, firstLeadingBit(u_input.a.x)), all(vec2<bool>(true, true))), 1088f, u_input.a.x);
    return vec3<u32>(min(u_input.b.x, ~min(firstLeadingBit(76072u), ~0u)), var_1.c, u_input.b.x);
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global1 = array<vec3<i32>, 21>();
    let var_0 = Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 54968u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(8824u, 9536u, 0u))), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(812f, -343f))), 1000f))), u_input.a.x);
    global0 = array<vec3<bool>, 18>();
    return -13167i;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool) -> vec4<bool> {
    global1 = array<vec3<i32>, 21>();
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~abs(u_input.a.x << (u_input.b.x % 32u)), 0u, ((u_input.b.x >> (u_input.b.x % 32u)) ^ ~0u) >> (abs(1u) % 32u)), 18u)];
    global0 = array<vec3<bool>, 18>();
    let var_1 = Struct_1(vec2<u32>(~u_input.b.x, _wgslsmith_div_u32(abs(4294967295u), 4294967295u) | u_input.a.x), -144f, ~u_input.a.x);
    var var_2 = select(vec4<bool>(!(select(1i, -1i, var_0.x) == (-1i | arg_0)), all(vec3<bool>(true, arg_2, var_0.x & var_0.x)), false, arg_2), select(!vec4<bool>(arg_2, arg_2, true, false), vec4<bool>(false, !(!arg_2), any(vec4<bool>(arg_2, arg_2, false, true)) | (1i != arg_0), var_0.x), vec4<bool>(any(vec4<bool>(false, arg_2, false, false)) && arg_2, false, arg_0 == (arg_0 | 2147483647i), arg_2)), ~_wgslsmith_div_u32(u_input.a.x, 1u >> (0u % 32u)) <= var_1.a.x);
    return select(vec4<bool>(var_0.x, !arg_2, var_0.x, false), vec4<bool>(var_0.x, all(var_2.wy), true, false), vec4<bool>(true, any(!vec4<bool>(false, var_2.x, false, var_0.x)), !var_2.x, select(var_1.a.x, 4294967295u, var_0.x != false) == 46379u));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(51805u, 4294967295u), max(vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(77004u, u_input.b.x)))), u_input.a.yz), ~firstTrailingBit(_wgslsmith_add_u32(~57412u, u_input.a.x)), reverseBits(_wgslsmith_dot_vec2_u32((u_input.a.xx << (u_input.b.xy % vec2<u32>(32u))) ^ vec2<u32>(1u, u_input.a.x), u_input.b.zy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(1u, 0u)) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_div_vec3_u32(var_0, _wgslsmith_div_vec3_u32(func_2(arg_2), countOneBits(~vec3<u32>(var_0.x, u_input.b.x, u_input.a.x)) & vec3<u32>(~u_input.b.x, 50389u, ~1u)));
    return !func_4(~(-_wgslsmith_mult_i32(4049i, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1609f)))) + -1502f), (func_3(arg_1.a.wyw) ^ ~0i) <= ~arg_2.x);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = array<vec3<bool>, 18>();
    var var_0 = select(~(~u_input.a >> (~vec3<u32>(arg_3.c, u_input.a.x, arg_1) % vec3<u32>(32u))), vec3<u32>(arg_2.c >> (_wgslsmith_mult_u32(u_input.b.x, 1u) % 32u), 0u, 35404u), vec3<bool>(arg_0.a.x, any(func_4(-12089i, -895f, true).wx), arg_0.a.x | true)) >> (vec3<u32>(~arg_3.c, arg_3.c, 46244u) % vec3<u32>(32u));
    let var_1 = arg_0.a.x & false;
    global0 = array<vec3<bool>, 18>();
    var_0 = u_input.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~reverseBits(abs(u_input.b.xx)), _wgslsmith_f_op_f32(abs(114f)), _wgslsmith_clamp_u32(abs(~0u) << (_wgslsmith_mod_u32(1u >> (u_input.a.x % 32u), ~u_input.b.x) % 32u), ~(_wgslsmith_add_u32(u_input.b.x, u_input.b.x) << (1u % 32u)), countOneBits(u_input.a.x)));
    var var_1 = Struct_2(select(!vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, true), vec4<bool>(!all(vec4<bool>(false, false, true, false)), true, true || (-337f > var_0.b), all(vec2<bool>(true, false))), false));
    let var_2 = func_5(Struct_2(vec4<bool>(all(!var_1.a), false, select(!var_1.a.x, true, var_1.a.x | var_1.a.x), all(func_1(var_1.a.x, Struct_2(var_1.a), vec2<i32>(2147483647i, -2529i))))), 0u, Struct_1(~vec2<u32>(~var_0.a.x, ~var_0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1076f)))), ~(0u | ~var_0.c)), Struct_1(~(u_input.a.xz << (vec2<u32>(67932u, u_input.b.x) % vec2<u32>(32u))), -401f, firstLeadingBit(var_0.c)));
    let var_3 = Struct_2(!select(vec4<bool>(var_1.a.x, true, var_2.a.x, var_2.a.x), !var_1.a, true));
    var var_4 = var_3.a.x;
    var var_5 = var_2;
    let var_6 = Struct_1(_wgslsmith_clamp_vec2_u32((u_input.a.yx & ~vec2<u32>(var_0.c, 16185u)) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 39579u), u_input.b.yw << (var_0.a % vec2<u32>(32u))), select(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4828u), var_0.a), func_2(vec2<i32>(-2147483647i, -1i)).yz, func_4(min(-11570i, 9847i), -957f, false).x), var_0.a), -1224f, 97878u);
    var var_7 = func_5(var_2, ~u_input.a.x, Struct_1(reverseBits(~countOneBits(var_6.a)), 725f, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(7253u, 4294967295u, 16993u), vec3<u32>(1u, u_input.a.x, u_input.b.x)), min(u_input.a, ~u_input.b.zwz))), var_0);
    var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~2870u << (var_6.a.x % 32u), vec2<u32>(var_0.c, _wgslsmith_mod_u32(86544u, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_6.c, 0u), ~u_input.a.x))), u_input.b);
}

