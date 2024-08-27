struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = firstLeadingBit(vec4<i32>(1i, _wgslsmith_div_i32(-1i, _wgslsmith_add_i32(-14710i, 2147483647i)), i32(-1i) * -2147483647i, ~select(7124i, 2147483647i, arg_1))) ^ min(vec4<i32>(1i, _wgslsmith_clamp_i32(-1i, i32(-1i) * -1298i, _wgslsmith_dot_vec4_i32(vec4<i32>(17230i, 0i, 10550i, 65357i), vec4<i32>(-95616i, 36346i, 10776i, 2147483647i))), 0i, 2147483647i), min(~(~vec4<i32>(5720i, 1i, -3648i, 24303i)), ~(~vec4<i32>(-2147483647i, 1i, 2147483647i, 32043i))));
    let var_1 = vec4<i32>(~(-17042i), 1i, var_0.x, _wgslsmith_dot_vec3_i32(var_0.xwz, vec3<i32>(firstTrailingBit(var_0.x), var_0.x, -var_0.x) >> (abs(vec3<u32>(0u, u_input.a, u_input.a)) % vec3<u32>(32u))));
    let var_2 = ~vec2<u32>(84915u, max(_wgslsmith_add_u32(u_input.a, 4294967295u), ~u_input.a));
    let var_3 = vec3<f32>(arg_0.x, -1000f, 474f);
    let var_4 = Struct_2(Struct_1(false | !arg_1));
    return -66647i;
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1318f, 1223f, 546f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-707f, -297f, 130f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1617f, -262f, 325f) - vec3<f32>(-816f, -384f, 1000f)))), var_0.a.a))));
    var var_2 = _wgslsmith_f_op_f32(abs(var_1.x));
    var_2 = 675f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f));
    return ~(~reverseBits(abs(firstTrailingBit(vec4<u32>(0u, arg_0, 1419u, 0u)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, 1380f, arg_1.x))), arg_2.x, _wgslsmith_f_op_f32(floor(arg_1.x)) >= arg_1.x)), -vec2<i32>(-215i, 75532i));
    var var_1 = _wgslsmith_add_vec4_u32((~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 0u, 1u), vec4<u32>(1u, 34245u, u_input.a, u_input.a)) << (firstTrailingBit(vec4<u32>(55052u, u_input.a, 1u, u_input.a)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(~(vec4<u32>(62336u, 32086u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 2672u, u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 0u, 1u)), vec4<u32>(0u, 1u, 115058u, 0u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(29584u, ~(~4294967295u), _wgslsmith_sub_u32(u_input.a, u_input.a) >> (0u % 32u), u_input.a), func_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(43512u, 47666u, u_input.a, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)))));
    var_1 = vec4<u32>(~29453u, ~1u, max(31644u, abs(~(u_input.a << (var_1.x % 32u)))), ~var_1.x);
    var var_2 = Struct_2(arg_0);
    var_0 = 9485i;
    return -2147483647i;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-332f)), 695f));
    let var_1 = -_wgslsmith_mult_i32(~(-43253i), arg_0);
    var var_2 = Struct_2(Struct_1(false));
    var_2 = Struct_2(Struct_1(arg_1.a.a & arg_2.a));
    var var_3 = _wgslsmith_f_op_f32(-323f - _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1828f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-915f - -794f), var_0.x))), false)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_clamp_i32(-15085i, 21692i, func_1(Struct_1(true), vec2<f32>(-510f, _wgslsmith_f_op_f32(-1228f * 1262f)), vec2<bool>(true, true))), Struct_2(Struct_1((u_input.a != u_input.a) || false)), Struct_1(all(vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, false))));
    let var_1 = Struct_1(true);
    let var_2 = var_0;
    var var_3 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-1i), 1i, min(-3716i, 15495i)), -abs(vec3<i32>(-2147483647i, -10606i, -28309i)), abs(min(vec3<i32>(-2147483647i, 40726i, -1i), vec3<i32>(334i, 8534i, -2147483647i)))) & vec3<i32>(1i, _wgslsmith_mult_i32(~(-22106i), 0i), ~_wgslsmith_mod_i32(-1i, 2147483647i)));
    var var_4 = Struct_1(all(!vec4<bool>(true, any(vec4<bool>(true, false, var_2.a.a, var_0.a.a)), var_3.x > var_3.x, false)));
    var var_5 = -564f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, -_wgslsmith_sub_i32(-24534i, var_3.x));
}

