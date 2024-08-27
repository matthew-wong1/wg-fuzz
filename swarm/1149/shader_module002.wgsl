struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_4,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(15409i, 0i, -67052i)), false);

var<private> global1: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(1193f, 694f, 687f, -219f), vec4<f32>(-1147f, -442f, 243f, -190f), vec4<f32>(757f, -506f, 1000f, -1275f), vec4<f32>(1000f, 450f, -574f, -1000f), vec4<f32>(-749f, 786f, 151f, -594f), vec4<f32>(1000f, -424f, -630f, -1450f), vec4<f32>(-836f, -205f, 1000f, 183f), vec4<f32>(-462f, -1000f, -203f, 430f), vec4<f32>(1103f, 1000f, 442f, 1246f), vec4<f32>(1000f, 1000f, -1005f, -262f), vec4<f32>(751f, -768f, 1872f, 726f), vec4<f32>(-1827f, 490f, 1091f, 120f), vec4<f32>(-320f, 142f, -1000f, -204f), vec4<f32>(-594f, -795f, -1051f, -1000f), vec4<f32>(-1065f, 1291f, -2198f, 876f), vec4<f32>(-888f, -638f, 741f, 661f), vec4<f32>(-1594f, 407f, 899f, 111f), vec4<f32>(1640f, 1860f, -1255f, 273f), vec4<f32>(-1020f, -1205f, -1678f, 227f), vec4<f32>(1960f, 750f, 1224f, 1355f), vec4<f32>(-1000f, -1197f, 335f, 1000f), vec4<f32>(-1033f, 579f, 456f, 509f), vec4<f32>(-706f, 311f, -207f, -931f), vec4<f32>(435f, 308f, -1140f, -982f), vec4<f32>(-1111f, -627f, 1000f, -551f), vec4<f32>(1081f, -370f, -1128f, -1922f), vec4<f32>(-231f, 1814f, -284f, 571f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_3, arg_3: i32) -> i32 {
    let var_0 = arg_1;
    global0 = arg_2.c;
    var var_1 = var_0.e;
    var var_2 = arg_2.c;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -969f);
    return 2147483647i << (~firstLeadingBit(arg_2.a.x) % 32u);
}

fn func_4(arg_0: i32) -> bool {
    var var_0 = countOneBits(_wgslsmith_add_u32(~(~u_input.b), ~(~_wgslsmith_clamp_u32(u_input.b, 76384u, u_input.a))));
    var_0 = _wgslsmith_div_u32(select(u_input.b, 14020u, false), u_input.a);
    var var_1 = !(!select(select(select(vec4<bool>(true, global0.b, global0.b, global0.b), vec4<bool>(false, true, global0.b, global0.b), false), vec4<bool>(global0.b, global0.b, global0.b, true), !vec4<bool>(true, false, global0.b, global0.b)), vec4<bool>(global0.b, true, true, true), all(vec4<bool>(global0.b, global0.b, global0.b, global0.b))));
    var_0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_sub_u32(~u_input.a, select(u_input.b, u_input.a, false)), 16958u, 0u, min(~u_input.a, 1u))), ~(vec4<u32>(u_input.b, abs(1u), ~61019u, u_input.b) & select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 49264u, 17600u, u_input.a), vec4<u32>(u_input.b, u_input.a, u_input.a, 29428u)), vec4<u32>(1u, u_input.a, 24593u, 1950u), true)));
    var var_2 = !var_1.xy;
    return ((i32(-1i) * -20229i) >= select(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, global0.a.a.x, -23299i, 2147483647i), vec4<i32>(19098i, 1i, arg_0, arg_0)), global0.a.a.x, true)) || ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2310f))) >= -251f) || true);
}

fn func_2() -> u32 {
    global0 = Struct_2(global0.a, func_4(~func_3(Struct_4(Struct_1(global0.a.a), -23036i, 153f, global0.a.a.x), Struct_5(vec3<bool>(false, false, global0.b), vec3<bool>(true, global0.b, global0.b), Struct_4(global0.a, 0i, -1152f, global0.a.a.x), Struct_1(global0.a.a), Struct_1(vec3<i32>(33980i, 48823i, -13810i))), Struct_3(vec4<u32>(1u, 0u, u_input.b, u_input.b), Struct_2(Struct_1(vec3<i32>(-14219i, global0.a.a.x, 2147483647i)), true), Struct_2(Struct_1(global0.a.a), global0.b)), 9009i)));
    var var_0 = ~global0.a.a.x;
    let var_1 = true;
    global1 = array<vec4<f32>, 27>();
    var_0 = 1i;
    return u_input.b;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> Struct_5 {
    var var_0 = arg_0.a;
    let var_1 = !(!(!vec4<bool>(arg_0.b, arg_1.c.b, false, true)));
    var var_2 = _wgslsmith_mult_vec3_u32(reverseBits(~(~vec3<u32>(arg_1.a.x, 14518u, u_input.a))), vec3<u32>(func_2(), 40640u, _wgslsmith_add_u32(1u, u_input.a))) | arg_1.a.yxw;
    var var_3 = vec4<i32>(var_0.a.x, -35129i, arg_1.b.a.a.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~(~arg_0.a.a.yz), vec2<i32>(func_3(Struct_4(global0.a, 1i, 890f, 10865i), Struct_5(var_1.zyz, var_1.zxy, Struct_4(arg_0.a, var_0.a.x, 1459f, global0.a.a.x), Struct_1(global0.a.a), arg_0.a), Struct_3(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 16127u), arg_0, Struct_2(arg_1.b.a, true)), arg_0.a.a.x), ~arg_1.b.a.a.x)), var_0.a.x, 67349i));
    var var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(arg_1.c.a.a.x, -12226i, 2147483647i)) >> (~vec3<u32>(var_2.x, u_input.a, 0u) % vec3<u32>(32u)), abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -43825i, var_0.a.x), vec3<i32>(-2147483647i, var_3.x, -12056i))), vec3<i32>(-var_3.x, global0.a.a.x << (u_input.a % 32u), -79259i)), ~select(vec3<i32>(-26978i, 0i, 1i), arg_1.c.a.a, arg_0.b)) >> (~1u % 32u);
    return Struct_5(vec3<bool>(false, any(select(select(vec4<bool>(false, false, true, global0.b), var_1, arg_0.b), vec4<bool>(false, false, false, false), !var_1)), 13689u != (arg_1.a.x >> (arg_1.a.x % 32u))), vec3<bool>(select(false, all(select(var_1, var_1, vec4<bool>(true, arg_0.b, arg_1.c.b, var_1.x))), !(5703u <= var_2.x)), global0.b, true), Struct_4(arg_0.a, _wgslsmith_dot_vec3_i32(-arg_0.a.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-17750i, var_0.a.x, var_3.x) << (arg_1.a.wzx % vec3<u32>(32u)), var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-837f, -925f)))) + _wgslsmith_div_f32(-535f, _wgslsmith_div_f32(441f, 342f))), countOneBits(-2147483647i)), arg_0.a, global0.a);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_5) -> bool {
    let var_0 = arg_2;
    let var_1 = select(!vec4<bool>(global0.b, func_1(Struct_2(Struct_1(vec3<i32>(var_0.c.a.a.x, arg_2.e.a.x, arg_0)), arg_2.b.x), Struct_3(vec4<u32>(1u, u_input.a, 0u, u_input.b), Struct_2(Struct_1(vec3<i32>(27666i, global0.a.a.x, var_0.c.a.a.x)), global0.b), Struct_2(global0.a, arg_2.a.x))).a.x, arg_2.a.x | !var_0.b.x, !global0.b), !(!vec4<bool>(-6951i != global0.a.a.x, var_0.a.x, !global0.b, true)), var_0.b.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.c - _wgslsmith_f_op_f32(-454f + _wgslsmith_f_op_f32(f32(-1f) * -809f))) * _wgslsmith_f_op_f32(round(arg_2.c.c)));
    global0 = Struct_2(var_0.e, !(!(_wgslsmith_f_op_f32(-145f - -416f) <= _wgslsmith_f_op_f32(arg_2.c.c - arg_2.c.c))));
    global1 = array<vec4<f32>, 27>();
    return var_0.c.c < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-361f, _wgslsmith_div_f32(-676f, -395f))) - -1143f), _wgslsmith_f_op_f32(-arg_2.c.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(-global0.a.a), func_5(~28734i, ~(-1i), func_1(Struct_2(Struct_1(global0.a.a), !global0.b), Struct_3(~vec4<u32>(u_input.a, u_input.a, 15501u, u_input.a), Struct_2(global0.a, false), Struct_2(Struct_1(global0.a.a), global0.b)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(573f, -883f), 1f, _wgslsmith_div_f32(-1555f, 1777f), _wgslsmith_f_op_f32(trunc(824f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(0u, 27u)] * vec4<f32>(2281f, 159f, 1037f, 306f)) * global1[_wgslsmith_index_u32(u_input.a & u_input.b, 27u)]), (1i < global0.a.a.x) | true))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1681f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(step(721f, _wgslsmith_f_op_f32(step(-525f, _wgslsmith_f_op_f32(-765f + -2869f))))))));
    var_1 = var_0.x;
    global0 = Struct_2(global0.a, !global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, (u_input.b | (4294967295u | _wgslsmith_sub_u32(u_input.a, 48467u))) ^ (4294967295u | _wgslsmith_mult_u32(firstLeadingBit(u_input.b), 13008u)), -124f, 0i);
}

