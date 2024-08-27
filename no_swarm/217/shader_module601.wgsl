struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, 1i, 2147483647i), 528f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = vec2<i32>(u_input.c, abs(reverseBits(arg_2.x)));
    global0 = Struct_1(-(select(vec3<i32>(arg_0.x, -52629i, arg_0.x), arg_2.yzz, select(true, false, false)) & (arg_2.wzy & abs(vec3<i32>(1i, arg_2.x, -19633i)))), _wgslsmith_f_op_f32(f32(-1f) * -1084f));
    global0 = Struct_1(vec3<i32>(select(var_0.x, _wgslsmith_add_i32(var_0.x, u_input.b.x), all(vec4<bool>(true, false, true, false))), ~arg_2.x, 1i), global0.b);
    var var_1 = vec2<bool>(true, any(vec4<bool>(true, true, true, true)) | all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-200f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b)))))));
    return max(2147483647i, _wgslsmith_dot_vec2_i32(arg_0, abs(~vec2<i32>(-32727i, -2147483647i)) << (min(vec2<u32>(u_input.a.x, 64657u), vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.b, arg_3.b))) * 1344f);
    let var_1 = arg_3;
    let var_2 = u_input.a.x;
    global0 = Struct_1(-reverseBits(vec3<i32>(u_input.b.x, var_1.a.x, 21461i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-2226f, -882f)), _wgslsmith_f_op_f32(abs(246f))))))));
    var var_3 = select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, global0.b <= 1032f, true), var_2 <= ~20754u), vec3<bool>(any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1630f)))) >= 1315f, false));
    return select(~(~u_input.a), ~u_input.a, select(!select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, false), var_3.x), vec3<bool>(!var_3.x, true, false), !vec3<bool>(var_3.x, true, false))) | (u_input.a & vec3<u32>(var_2, arg_1.x, ~(~1u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    var var_0 = abs(func_4(firstTrailingBit(-func_3(global0.a.zx, global0.a.x, arg_1, vec4<f32>(-705f, -337f, global0.b, 301f))), reverseBits(vec2<u32>(u_input.a.x, 1698u)) ^ ~(~u_input.a.zy), arg_1.x, Struct_1(_wgslsmith_clamp_vec3_i32(select(global0.a, vec3<i32>(-1i, u_input.c, global0.a.x), false), global0.a, vec3<i32>(-9294i, u_input.b.x, -25816i)), arg_0.b)));
    global0 = arg_0;
    let var_1 = ~u_input.c;
    let var_2 = -min(global0.a.x, -(arg_1.x >> (13909u % 32u))) | firstTrailingBit(arg_0.a.x);
    var var_3 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(func_4(75894i, u_input.a.zy, -1i, Struct_1(vec3<i32>(var_2, -9306i, 2147483647i), -1000f)).x, ~u_input.a.x, _wgslsmith_add_u32(var_0.x, var_0.x)), u_input.a >> (u_input.a % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b * _wgslsmith_div_f32(arg_0.b, global0.b))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = ~1u != _wgslsmith_mod_u32(61781u, min(_wgslsmith_sub_u32(4294967295u, 0u), 0u) & u_input.a.x);
    var var_1 = Struct_1(global0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_1(abs(arg_1.a), _wgslsmith_f_op_f32(trunc(arg_0.b))), min(select(vec4<i32>(0i, arg_2.x, 7735i, arg_1.a.x), vec4<i32>(1i, 12344i, arg_2.x, arg_1.a.x), vec4<bool>(false, var_0, false, var_0)), ~vec4<i32>(global0.a.x, arg_0.a.x, arg_0.a.x, -31685i)))), _wgslsmith_f_op_f32(ceil(174f)), !var_0)));
    global0 = Struct_1(_wgslsmith_mod_vec3_i32(arg_0.a, vec3<i32>(_wgslsmith_sub_i32(global0.a.x >> (u_input.a.x % 32u), 1i), arg_0.a.x, arg_2.x)), -181f);
    let var_2 = Struct_1(vec3<i32>(0i & var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -49893i, arg_1.a.x, var_1.a.x) >> (vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u)), vec4<i32>(68833i, arg_0.a.x, -2147483647i, 2147483647i)), 1i) << (~(u_input.a >> ((vec3<u32>(u_input.a.x, u_input.a.x, 104036u) | u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), -751f);
    let var_3 = Struct_1(min(_wgslsmith_sub_vec3_i32(var_2.a, _wgslsmith_clamp_vec3_i32(var_1.a, var_2.a, vec3<i32>(u_input.b.x, 2147483647i, var_2.a.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 21149u, 1u), u_input.a) % vec3<u32>(32u))), max(arg_1.a, global0.a)), _wgslsmith_f_op_f32(-1154f + -500f));
    return ~firstTrailingBit(~(~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 15507u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = -53426i;
    var_0 = _wgslsmith_mod_i32(global0.a.x, 2827i);
    let var_1 = !(!vec2<bool>(!(u_input.a.x > u_input.a.x), true));
    let var_2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(func_1(Struct_1(global0.a, -1573f), Struct_1(vec3<i32>(0i, 2147483647i, u_input.c), 583f), vec2<i32>(global0.a.x, u_input.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 109395u), vec4<u32>(4294967295u, 77833u, 74476u, u_input.a.x), vec4<u32>(u_input.a.x, 2724u, u_input.a.x, 1u)), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), vec4<u32>(0u, u_input.a.x ^ u_input.a.x, abs(8527u), u_input.a.x)), firstLeadingBit(~(~vec4<u32>(45834u, 1u, u_input.a.x, 0u)))), vec2<u32>(~11725u, firstTrailingBit(u_input.a.x) | 4294967295u), -_wgslsmith_sub_vec2_i32(vec2<i32>(18964i, u_input.b.x), min(-global0.a.yy, global0.a.xy ^ vec2<i32>(global0.a.x, u_input.c))));
}

