struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-117f - -922f);
    var_0 = !(false & (!(1u < global0.x) || (global0.x <= global0.x)));
    var var_2 = countOneBits(select(~u_input.a, arg_0, -reverseBits(u_input.a) >= ~(-34080i)));
    let var_3 = true;
    return Struct_1(u_input.c, any(vec3<bool>(var_3, _wgslsmith_div_f32(1468f, 1713f) <= _wgslsmith_f_op_f32(sign(1058f)), !var_3)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(52868u, u_input.c) ^ (u_input.c | u_input.d.x), ~global0.x & _wgslsmith_mod_u32(4294967295u, u_input.d.x), u_input.c, u_input.d.x), ~(~vec4<u32>(14890u, u_input.d.x, 4294967295u, 18664u)));
    var var_0 = u_input.d.x;
    var_0 = global0.x;
    var_0 = firstLeadingBit(22650u);
    return reverseBits(u_input.c);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = vec4<u32>(36404u, func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1708f + 588f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-468f * 896f) - -233f))), ~(~(~_wgslsmith_clamp_u32(40594u, u_input.d.x, u_input.c))), 541u);
    global0 = select(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 7509u, global0.x, 50744u), vec4<u32>(arg_0.a, 2702u, 39385u, 26295u)), vec4<u32>(arg_0.a, 58695u, 35269u, u_input.c)), vec4<u32>(min(arg_0.a, 0u), func_3(vec2<f32>(-1491f, 2226f)), select(arg_0.a, global0.x, arg_0.b), firstTrailingBit(28096u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(56592u, global0.x, arg_0.a, u_input.d.x), vec4<u32>(4294967295u, 20866u, 0u, 35658u)))), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, arg_0.a, 4294967295u), vec4<u32>(1u, 17342u, 4294967295u, arg_0.a)), vec4<u32>(6443u, max(arg_0.a, u_input.d.x), ~4294967295u, 0u))), _wgslsmith_clamp_vec4_u32(reverseBits(~(~vec4<u32>(2622u, 4294967295u, global0.x, 57619u))), ~vec4<u32>(min(global0.x, arg_0.a), 1u, 4294967295u, u_input.d.x), (~vec4<u32>(25191u, 1u, arg_0.a, 4294967295u) & vec4<u32>(13367u, 28843u, arg_0.a, u_input.d.x)) >> (vec4<u32>(~59186u, ~0u, 857u, _wgslsmith_add_u32(85797u, global0.x)) % vec4<u32>(32u))), select(!(!(!vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b))), select(select(select(vec4<bool>(false, false, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, true, arg_0.b), vec4<bool>(arg_0.b, true, true, arg_0.b)), vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), vec4<bool>(true, arg_0.b, false, arg_0.b)), !(!vec4<bool>(arg_0.b, false, true, false)), vec4<bool>(u_input.b <= u_input.b, any(vec4<bool>(true, false, arg_0.b, true)), arg_0.b, any(vec2<bool>(arg_0.b, arg_0.b)))), false));
    global0 = ~vec4<u32>(1u, func_3(vec2<f32>(-286f, -1354f)), _wgslsmith_sub_u32(~arg_0.a, ~1u) & arg_0.a, func_1(~_wgslsmith_sub_i32(u_input.a, u_input.b)).a);
    let var_0 = Struct_1(~global0.x, arg_0.b);
    let var_1 = Struct_1(~32527u, all(!vec3<bool>(!var_0.b, true, var_0.b)));
    return Struct_1(~(~(~reverseBits(8217u))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-671f, 2287f)) * 136f) > _wgslsmith_f_op_f32(floor(-206f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(57507i));
    var var_1 = max(select(-(vec2<i32>(u_input.a, -2147483647i) & vec2<i32>(-8456i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.b) << (u_input.d.yy % vec2<u32>(32u)), -vec2<i32>(u_input.b, u_input.a)), false) >> (~reverseBits(vec2<u32>(0u, global0.x)) % vec2<u32>(32u)), vec2<i32>(abs(_wgslsmith_sub_i32(abs(u_input.b), _wgslsmith_add_i32(u_input.b, 0i))), u_input.a));
    var_1 = ~vec2<i32>(1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(select(0i, -1i, var_0.b), 2147483647i), ~abs(-1i)));
    var_1 = (max(vec2<i32>(u_input.a, var_1.x >> (u_input.d.x % 32u)), vec2<i32>(_wgslsmith_mult_i32(var_1.x, u_input.a), 0i)) & ~vec2<i32>(~var_1.x, reverseBits(u_input.b))) >> (~vec2<u32>(~global0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, 44747u), max(global0.yx, vec2<u32>(var_0.a, global0.x)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-733f, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1139f, 1000f))) * -1020f));
}

