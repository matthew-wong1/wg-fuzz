struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<bool> {
    global0 = vec2<bool>(all(!(!vec3<bool>(false, global0.x, false))), !(arg_3.a < arg_2.x));
    global0 = vec2<bool>(false, global0.x);
    let var_0 = !(!vec3<bool>(true, !global0.x, any(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, global0.x), vec3<bool>(true, false, global0.x)))));
    var var_1 = Struct_1(vec2<u32>(arg_1, 25454u), vec3<u32>(u_input.a, _wgslsmith_mult_u32((u_input.a ^ 4294967295u) & ~1u, ~_wgslsmith_mult_u32(38822u, 0u)), max(~firstTrailingBit(arg_0.x), ~min(4294967295u, 0u))), u_input.c.x, min(max(u_input.a, _wgslsmith_div_u32(0u, 1u) & _wgslsmith_clamp_u32(1u, 43349u, arg_1)), ~105924u));
    var var_2 = ~(~0u);
    return select(!(!vec2<bool>(!var_0.x, any(vec4<bool>(global0.x, false, true, false)))), !vec2<bool>(global0.x, !var_0.x), false);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = 556f;
    let var_1 = true;
    global0 = select(select(!vec2<bool>(any(vec3<bool>(false, global0.x, var_1)), var_0 != var_0), !select(select(vec2<bool>(true, var_1), vec2<bool>(global0.x, global0.x), vec2<bool>(var_1, false)), vec2<bool>(global0.x, global0.x), true), select(vec2<bool>(!global0.x, false), func_3(vec4<u32>(4294967295u, 48500u, 0u, u_input.d), _wgslsmith_mult_u32(u_input.a, 84892u), vec2<f32>(-582f, -1298f), Struct_2(var_0)), false)), !func_3(reverseBits(vec4<u32>(u_input.d, 1721u, arg_0.x, 2803u) ^ vec4<u32>(arg_0.x, u_input.d, u_input.d, 0u)), _wgslsmith_sub_u32(u_input.d, 2766u), vec2<f32>(1f, 1f), Struct_2(_wgslsmith_f_op_f32(select(var_0, var_0, false)))), false);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1199f)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a))));
    return Struct_3(vec2<bool>(true, any(vec3<bool>(func_3(arg_0, arg_0.x, vec2<f32>(var_0, 491f), Struct_2(-1537f)).x, global0.x, !var_1))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = -2147483647i;
    let var_1 = !func_3(vec4<u32>(arg_1.a.x, ~u_input.d, ~arg_1.a.x, firstTrailingBit(0u)), 73721u, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-559f, 419f))), Struct_2(_wgslsmith_div_f32(-468f, 570f))).x & !global0.x;
    global0 = vec2<bool>(any(arg_0.a), true);
    let var_2 = 938f;
    var var_3 = true;
    return vec2<bool>(true, true);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_1(vec2<u32>(u_input.d, firstTrailingBit(418u)), _wgslsmith_add_vec3_u32(select(abs(vec3<u32>(u_input.d, 1u, 80150u) ^ vec3<u32>(u_input.b, u_input.a, 53108u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(1u, 0u, arg_1)) ^ min(vec3<u32>(arg_1, 4294967295u, u_input.b), vec3<u32>(arg_1, 17256u, arg_1)), arg_0), max(_wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.d, u_input.d, u_input.b), vec3<u32>(u_input.d, 35742u, u_input.b)), ~vec3<u32>(arg_1, 42512u, 60323u)), ~countOneBits(vec3<u32>(1u, u_input.b, arg_1)))), arg_2.x, 4294967295u);
    var var_1 = ~max(-17834i, u_input.c.x);
    global0 = vec2<bool>(true, true);
    var var_2 = arg_0 != !(!(!all(vec4<bool>(arg_0, false, false, true))));
    var_2 = global0.x;
    return func_2(vec4<u32>(~var_0.a.x, u_input.a, 61947u, 2082u) << (_wgslsmith_sub_vec4_u32(select(select(vec4<u32>(53121u, arg_1, 24422u, 1u), vec4<u32>(arg_1, arg_1, 1u, arg_1), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), vec4<u32>(20422u, 1u, 27331u, 61008u), !global0.x), ~(~vec4<u32>(arg_1, arg_1, arg_1, 53501u))) % vec4<u32>(32u)));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_5(all(func_4(func_2(abs(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b))), Struct_1(vec2<u32>(u_input.a, 18581u), ~vec3<u32>(u_input.b, 28689u, 1u), 0i, u_input.d))), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, abs(u_input.b | u_input.a)), select(vec2<u32>(u_input.b | 0u, u_input.b), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, 4294967295u)), select(vec2<u32>(u_input.a, 79414u), vec2<u32>(4294967295u, 4629u), global0.x)), any(!vec4<bool>(true, false, global0.x, true)))), -u_input.c.wzz);
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(31566u, 4294967295u), vec2<u32>(u_input.b, u_input.a))), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.d), select(vec2<u32>(u_input.a, 22661u), vec2<u32>(u_input.a, u_input.b), vec2<bool>(var_0.a.x, true))), ~countOneBits(vec2<u32>(4294967295u, 27272u))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.a) | ~vec2<u32>(75702u, u_input.b), ~vec2<u32>(u_input.b, u_input.a) | ~vec2<u32>(u_input.b, 0u), countOneBits(vec2<u32>(u_input.d, u_input.a))) % vec2<u32>(32u)), firstLeadingBit(min(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 2391u), vec3<u32>(3247u, u_input.b, u_input.d)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 17441u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 25745u, u_input.d), vec3<u32>(1u, u_input.a, 8331u), vec3<u32>(u_input.b, u_input.d, u_input.d))))), i32(-1i) * -(~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), u_input.b);
    let var_2 = var_1.c;
    var var_3 = vec4<bool>(all(select(select(!vec4<bool>(global0.x, false, var_0.a.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), global0.x), !(!vec4<bool>(true, var_0.a.x, true, false)), !vec4<bool>(var_0.a.x, var_0.a.x, global0.x, var_0.a.x))), global0.x, var_0.a.x, true);
    var var_4 = 1u;
    return !(!var_3.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(127f - -1000f))) - 1695f), -2278f))));
    let var_1 = _wgslsmith_f_op_f32(max(-2161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-272f - 926f) + -1235f)))));
    global0 = vec2<bool>(!(~(~u_input.c.x) > -2147483647i), true);
    var_0 = var_1;
    var var_2 = Struct_3(select(vec2<bool>(any(!vec2<bool>(global0.x, true)), true), select(func_1(), select(func_2(vec4<u32>(20359u, 0u, u_input.d, 1u)).a, vec2<bool>(false, true), true), select(true, !global0.x, select(global0.x, false, false))), vec2<bool>(~(-51931i) > u_input.c.x, false | !global0.x)));
    var var_3 = ~max(~0u, ~u_input.a) < 4294967295u;
    let var_4 = ~_wgslsmith_div_u32(countOneBits(u_input.b), 0u);
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_1))), var_1), vec2<f32>(_wgslsmith_f_op_f32(var_1 - 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(404f, -475f)), _wgslsmith_f_op_f32(-var_1)), 1042f))), abs(vec2<u32>(u_input.d, 29087u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1))), _wgslsmith_f_op_f32(round(var_1)), var_1));
}

