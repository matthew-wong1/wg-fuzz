struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 204f;

var<private> global2: u32 = 46014u;

var<private> global3: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-4751i, -15022i), vec2<i32>(2090i, -1i), vec2<i32>(1i, 16007i), vec2<i32>(7431i, 19980i), vec2<i32>(34005i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(-57078i, 0i), vec2<i32>(-41088i, -44826i), vec2<i32>(-19130i, 0i), vec2<i32>(i32(-2147483648), -4707i), vec2<i32>(1i, -1i), vec2<i32>(-21879i, -42351i), vec2<i32>(-25706i, 2147483647i), vec2<i32>(2249i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, -11874i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-8709i, 30375i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 2147483647i));

var<private> global4: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(4581i, -28082i), vec2<i32>(2238i, -18495i), vec2<i32>(-11344i, 7822i), vec2<i32>(0i, 1i), vec2<i32>(-25589i, -77364i), vec2<i32>(17659i, 991i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec3<i32> {
    var var_0 = vec4<u32>(~select(~3261u, ~0u, true) | reverseBits(~(~0u)), _wgslsmith_clamp_u32(1400u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 37022u, 53895u), firstLeadingBit(vec4<u32>(0u, 0u, 68149u, 62499u))))), 4294967295u, _wgslsmith_mod_u32(8461u, 90056u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -825f))) == -1651f, -max(firstTrailingBit(arg_1.b) & _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a.x, arg_1.b.x, global0.b.x), global0.b), min(~global0.b, vec4<i32>(arg_1.b.x, 1i, u_input.a.x, 6595i))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2235f - _wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.c.x, 617f))), global0.c.x), vec2<bool>(all(!(!arg_1.d)), select(global0.a, arg_1.d.x, false)));
    global4 = array<vec2<i32>, 6>();
    return _wgslsmith_sub_vec3_i32(abs(~(~var_1.b.xzy)), global0.b.xwz) >> (~var_0.zzw % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global2 = countOneBits(min(1u, 7291u));
    var var_0 = arg_2;
    var var_1 = arg_2;
    let var_2 = vec4<i32>(-arg_1.x, _wgslsmith_mult_i32(-15679i, 0i), ~arg_1.x, ~(-2147483647i & _wgslsmith_dot_vec4_i32(var_1.b, select(vec4<i32>(global0.b.x, -25962i, -1i, 40750i), var_0.b, vec4<bool>(var_1.a, false, var_1.a, true)))));
    var var_3 = Struct_1(true && all(!select(vec4<bool>(true, true, false, false), vec4<bool>(arg_2.d.x, false, false, global0.d.x), global0.a)), global0.b, _wgslsmith_f_op_vec3_f32(-arg_0.c), var_0.d);
    return ~countOneBits(~1u);
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 81557u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 53874u, 1u), vec3<u32>(1u, 1u, 0u), vec3<u32>(53279u, 9655u, 0u))), _wgslsmith_add_u32(func_4(Struct_1(false, global0.b, global0.c, vec2<bool>(true, global0.a)), -func_3(-411f, Struct_1(global0.a, global0.b, global0.c, vec2<bool>(global0.a, false)), vec3<bool>(false, global0.d.x, false), vec3<f32>(global0.c.x, -178f, -1000f)), Struct_1(true, abs(vec4<i32>(12526i, 1i, global0.b.x, global0.b.x)), _wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(2033f, global0.c.x, -601f), vec3<bool>(global0.d.x, global0.a, false))), vec2<bool>(false, global0.a))), 0u), select(func_4(Struct_1(true, global0.b, vec3<f32>(global0.c.x, -338f, global0.c.x), vec2<bool>(false, global0.d.x)), vec3<i32>(-1i, u_input.a.x, u_input.a.x), Struct_1(global0.d.x, global0.b, global0.c, vec2<bool>(global0.d.x, false))), 42312u, !global0.a | select(true, false, global0.d.x)) << (~max(_wgslsmith_dot_vec3_u32(vec3<u32>(4042u, 58515u, 1u), vec3<u32>(33221u, 45649u, 0u)), min(22377u, 4294967295u)) % 32u));
    var var_1 = _wgslsmith_sub_vec4_u32(~(vec4<u32>(0u, reverseBits(93310u), var_0.x, countOneBits(72841u)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, 0u, 22247u, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.x, 88974u, 53667u), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), firstTrailingBit(vec4<u32>(0u, var_0.x, var_0.x, var_0.x))) % vec4<u32>(32u))), abs(vec4<u32>(var_0.x, ~_wgslsmith_clamp_u32(77189u, 1u, 4203u), 15917u, 19318u)));
    var var_2 = _wgslsmith_dot_vec4_i32(~global0.b, countOneBits(select(~vec4<i32>(global0.b.x, -24818i, 46445i, -28935i), abs(global0.b) ^ firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, 0i)), vec4<bool>(any(vec2<bool>(false, global0.d.x)), true, global0.c.x > global0.c.x, global0.d.x))));
    global3 = array<vec2<i32>, 22>();
    let var_3 = all(vec4<bool>(global0.a, false, true, !(!(!global0.d.x))));
    return Struct_1(var_3, min(global0.b, _wgslsmith_add_vec4_i32(-global0.b, _wgslsmith_mult_vec4_i32(global0.b, vec4<i32>(u_input.a.x, u_input.a.x, global0.b.x, global0.b.x))) ^ global0.b), vec3<f32>(_wgslsmith_f_op_f32(min(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(885f - global0.c.x) - _wgslsmith_f_op_f32(-global0.c.x)))), global0.c.x, global0.c.x), vec2<bool>(false, true));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = 25222u;
    global3 = array<vec2<i32>, 22>();
    let var_0 = u_input.a.x;
    global2 = 1u;
    let var_1 = 1386f;
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f), 1708f);
    var var_1 = func_5(func_2());
    let var_2 = func_5(Struct_1(var_1.a, vec4<i32>(56747i >> (0u % 32u), -func_2().b.x, i32(-1i) * -34288i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, 3371i), _wgslsmith_div_i32(u_input.a.x, var_1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x) - -1025f), var_1.c.x, 1000f), vec2<bool>(_wgslsmith_div_f32(1219f, global0.c.x) > -694f, func_2().a))).c.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-941f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, 2094f) - func_2().c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)) * -1248f));
    var var_3 = min(firstTrailingBit(min(var_1.b.xz, countOneBits(var_1.b.wy))), abs(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -1i, 1i), 1i)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global4 = array<vec2<i32>, 6>();
    global0 = func_1();
    var var_0 = -334f;
    var var_1 = Struct_1(global0.a, global0.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f), 515f), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_1().c.x, -1272f) - _wgslsmith_f_op_f32(1884f + func_5(Struct_1(global0.a, global0.b, vec3<f32>(1694f, global0.c.x, 822f), global0.d)).c.x))), vec2<bool>(any(global0.d), !global0.a));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1u, u_input.a.x, vec4<i32>(~var_1.b.x, firstTrailingBit(var_1.b.x) | _wgslsmith_mod_i32(global0.b.x & -22200i, -2147483647i), func_3(827f, func_5(Struct_1(true, vec4<i32>(var_1.b.x, u_input.a.x, -1i, global0.b.x), global0.c, global0.d)), !vec3<bool>(var_1.d.x, false, true), _wgslsmith_f_op_vec3_f32(global0.c + global0.c)).x & u_input.a.x, 1i));
}

