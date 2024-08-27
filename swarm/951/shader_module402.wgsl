struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = global0.c.b.yzw;
    let var_1 = global0.c.b.x;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c.x)))) != _wgslsmith_f_op_f32(step(arg_0.d.e, arg_0.a.x));
    let var_3 = select(arg_0.c.d.yy, arg_0.c.d.xx, !global0.c.d.x);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2053f, -1000f, global0.c.c.x)) - vec3<f32>(arg_0.c.c.x, 1845f, arg_0.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-634f, arg_0.a.x, global0.d.e) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.c.x, -1251f, arg_0.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-global0.a.x))), Struct_1(arg_0.d.a, _wgslsmith_sub_vec4_i32(-select(vec4<i32>(33003i, var_0.x, arg_0.c.b.x, global0.d.b.x), arg_0.d.b, false), vec4<i32>(~(-18339i), global0.c.b.x >> (arg_2.x % 32u), -36830i, -1i)), global0.c.c, global0.d.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(vec3<bool>(false || func_3(), !arg_0.c.d.x, select(any(global0.d.d), var_3.x, true)), vec4<i32>(-36024i, 0i, 1i, arg_0.d.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -267f, arg_0.b) - vec3<f32>(global0.a.x, arg_0.a.x, arg_0.b))) * vec3<f32>(global0.c.e, 298f, _wgslsmith_f_op_f32(-arg_0.a.x))), !select(!vec4<bool>(var_3.x, true, arg_0.c.d.x, var_3.x), select(arg_0.c.d, vec4<bool>(global0.d.a.x, false, arg_0.d.d.x, global0.c.d.x), vec4<bool>(false, arg_0.d.d.x, arg_0.c.d.x, var_3.x)), false), global0.b));
    return arg_2;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(reverseBits(u_input.a.x), arg_1.b.x) << (firstLeadingBit(arg_0.x) % 32u);
    let var_1 = global0.c;
    let var_2 = min(_wgslsmith_sub_i32(arg_3, abs(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.d.b.x, -38187i, -2147483647i, global0.c.b.x), global0.c.b), vec4<i32>(global0.d.b.x, 6506i, u_input.a.x, 9314i)))), ~reverseBits(var_0));
    return Struct_1(arg_1.a, vec4<i32>(1i, arg_3, ~_wgslsmith_clamp_i32(var_0, -32680i, -2147483647i), 1i) ^ -global0.c.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, 600f, arg_1.c.x) + vec3<f32>(-501f, arg_2.x, 2288f))), arg_1.c, arg_1.d.x))), vec4<bool>(all(!global0.d.d.xww) | (!arg_1.a.x | !arg_1.a.x), !(false == any(vec3<bool>(false, true, true))), var_1.a.x, ~(var_2 >> (92164u % 32u)) > u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(292f)), _wgslsmith_f_op_f32(-global0.b)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_2 {
    let var_0 = any(!(!global0.c.a.yx)) || (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c.x))) <= global0.c.e);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global0.c.c, _wgslsmith_f_op_vec3_f32(global0.c.c + vec3<f32>(global0.a.x, global0.a.x, -1000f))))), _wgslsmith_f_op_f32(-global0.a.x), global0.d, func_4(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(abs(global0.d.c)), _wgslsmith_f_op_f32(max(global0.b, 992f)), Struct_1(global0.c.a, vec4<i32>(-14416i, arg_2, -54074i, 70694i), global0.d.c, vec4<bool>(true, false, global0.d.d.x, false), global0.b), Struct_1(vec3<bool>(global0.d.a.x, false, true), global0.c.b, vec3<f32>(-194f, -972f, global0.a.x), global0.c.d, global0.b)), arg_0, ~countOneBits(vec3<u32>(arg_0, arg_0, arg_0))), Struct_1(select(select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, global0.c.d.x, var_0), vec3<bool>(false, false, var_0)), global0.d.d.zww, true), vec4<i32>(u_input.a.x, 2505i, _wgslsmith_add_i32(-2147483647i, -1i), -23379i), global0.a, global0.c.d, _wgslsmith_f_op_f32(f32(-1f) * -433f)), _wgslsmith_f_op_vec2_f32(global0.c.c.xy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 410f), vec2<f32>(global0.d.c.x, 1051f), false)))), 38956i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-220f - -673f), -505f, global0.c.e, _wgslsmith_f_op_f32(-global0.b))))));
    let var_2 = Struct_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global0.a.x)), _wgslsmith_div_f32(-395f, func_4(vec3<u32>(11641u, arg_0, 32587u), global0.c, vec2<f32>(var_1.x, global0.b), arg_2).e), -875f), 499f, global0.d, Struct_1(global0.d.d.wwx, func_4(vec3<u32>(arg_0, 83484u, arg_0), Struct_1(global0.c.a, vec4<i32>(38007i, 0i, -1i, 35627i), vec3<f32>(var_1.x, global0.a.x, var_1.x), global0.c.d, var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1255f, 890f) - global0.a.xx), -u_input.a.x).b, func_4(select(vec3<u32>(arg_0, 49161u, arg_0), vec3<u32>(arg_0, 111400u, arg_0), vec3<bool>(global0.c.a.x, global0.d.d.x, var_0)), func_4(vec3<u32>(4294967295u, 4294967295u, 11323u), Struct_1(global0.c.d.wzx, global0.c.b, vec3<f32>(global0.c.e, global0.b, -1000f), vec4<bool>(false, true, var_0, var_0), 421f), var_1.yz, arg_1), vec2<f32>(var_1.x, var_1.x), _wgslsmith_dot_vec2_i32(global0.c.b.ww, vec2<i32>(-12220i, -38312i))).c, func_4(vec3<u32>(4294967295u, arg_0, arg_0), func_4(vec3<u32>(arg_0, 4294967295u, 1u), Struct_1(vec3<bool>(false, var_0, true), global0.c.b, vec3<f32>(2114f, global0.a.x, 1614f), vec4<bool>(var_0, true, true, var_0), 923f), global0.d.c.zx, -1i), _wgslsmith_f_op_vec2_f32(sign(global0.a.yz)), arg_1 & global0.d.b.x).d, -1996f)), Struct_2(global0.c.c, _wgslsmith_f_op_f32(176f + var_1.x), func_4(~(vec3<u32>(0u, arg_0, arg_0) | vec3<u32>(arg_0, arg_0, 4294967295u)), global0.d, global0.a.xy, 10221i), global0.c), 336f);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-648f - var_1.x), -1364f, _wgslsmith_f_op_f32(global0.c.e - -307f), _wgslsmith_f_op_f32(756f - 758f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.e, 919f, -594f, 883f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b.d.c.x, -960f, global0.b, -100f))), var_2.b.c.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.e, var_1.x, var_2.a.d.c.x, -271f))))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -26470i;
    let var_1 = !global0.c.d.yz;
    var var_2 = reverseBits(_wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -19497i), global0.d.b.xz), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.c.b.x, 22997i), u_input.a.yx))), (u_input.a.zy ^ ~global0.d.b.yx) & vec2<i32>(-global0.d.b.x, u_input.b)));
    var var_3 = 4881i;
    var_2 = global0.d.b.xx;
    var var_4 = Struct_4(func_1(58396u, 0i, 53980i), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1270f, 666f, global0.c.e)))), global0.b, global0.d, Struct_1(func_1(1u, var_2.x, u_input.a.x).d.a, abs(~global0.d.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(573f, 1526f, 424f), vec3<f32>(941f, 1322f, 1307f)))), vec4<bool>(global0.d.a.x, true && var_1.x, true, !global0.d.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.b)))))), global0.c.c.x);
    var var_5 = Struct_4(var_4.b, var_4.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(193f - global0.a.x))));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(6197u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.a.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.b)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(43870u, 0u), 58467u, ~21619u), ~vec3<u32>(65222u, 4294967295u, 41611u), ~(~vec3<u32>(30048u, 4294967295u, 46122u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.a.c.c.xz) + func_4(vec3<u32>(1u, 1u, 1u), func_4(vec3<u32>(2951u, 0u, 34805u), Struct_1(vec3<bool>(var_6, var_5.b.d.a.x, var_1.x), vec4<i32>(var_5.b.c.b.x, -2147483647i, var_2.x, 1i), vec3<f32>(var_4.c, 1110f, var_5.b.d.c.x), var_4.b.d.d, global0.d.e), vec2<f32>(1123f, var_5.b.d.e), 2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(147f, var_5.b.b)), u_input.a.x).c.yx)));
}

