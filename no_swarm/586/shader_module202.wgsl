struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(-598f, vec2<u32>(23965u, 4294967295u), Struct_2(vec2<u32>(0u, 4294967295u), 1i, Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), 304f, vec3<bool>(false, false, true)), false));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(106f, vec2<u32>(37844u, 1u), Struct_2(vec2<u32>(1u, 0u), 2147483647i, Struct_1(vec3<u32>(1u, 4854u, 1u), 327f, vec3<bool>(false, false, true)), false)), Struct_5(955f, vec2<u32>(11294u, 8407u), Struct_2(vec2<u32>(8909u, 4294967295u), -23682i, Struct_1(vec3<u32>(1u, 4294967295u, 37912u), 1241f, vec3<bool>(true, true, true)), false)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    var var_0 = Struct_5(1469f, _wgslsmith_clamp_vec2_u32(~global0.b, arg_1.yz, reverseBits(arg_1.yx)), Struct_2(arg_1.yz, -(global0.c.b | _wgslsmith_mult_i32(global0.c.b, u_input.b.x)), Struct_1(arg_1, _wgslsmith_f_op_f32(-global0.a), !global0.c.c.c), false));
    let var_1 = abs(vec3<u32>(1u, 1u, u_input.c));
    global3 = array<Struct_5, 2>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(667f, -399f), vec2<f32>(133f, -353f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-713f, var_2.x)) - _wgslsmith_f_op_vec2_f32(-var_2)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1028f, global0.a)) + _wgslsmith_f_op_vec2_f32(var_2 + var_2)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(-1630f, 1481f))))));
    return var_2.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = vec4<u32>(1u, u_input.a, u_input.a, _wgslsmith_sub_u32(~(arg_0.x >> (global0.b.x % 32u)), 78361u) & _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, global0.c.a.x), ~vec3<u32>(3514u, 57159u, 4294967295u))));
    global1 = select(!(!(!(!arg_3.c.yz))), vec2<bool>(true, false), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2, vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec2<u32>(327u, arg_3.a.x), var_0.yxx, global0.c.b)), _wgslsmith_f_op_f32(trunc(675f)))))) * _wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_f_op_vec3_f32(-arg_2)));
    global2 = select(!select(vec2<bool>(true, false), vec2<bool>(true, arg_3.c.x), !any(vec4<bool>(false, false, arg_1, false))), !arg_3.c.xy, arg_1);
    var var_2 = Struct_4(arg_3.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))))), Struct_2(global0.b, u_input.d, Struct_1(vec3<u32>(global0.c.c.a.x, 1u ^ arg_0.x, ~54281u), -1989f, vec3<bool>(true, any(vec2<bool>(global2.x, global0.c.c.c.x)), false)), !select(false, !global1.x, all(vec4<bool>(arg_3.c.x, true, arg_3.c.x, arg_3.c.x)))), ~var_0.zzx | ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x) >> (global0.c.c.a % vec3<u32>(32u)), arg_0 << (var_0.zyz % vec3<u32>(32u))));
    return ~global0.c.c.a.x;
}

fn func_1(arg_0: i32) -> vec3<u32> {
    global3 = array<Struct_5, 2>();
    let var_0 = all(vec2<bool>(u_input.a <= countOneBits(func_2(vec3<u32>(1u, 37656u, global0.b.x), false, vec3<f32>(global0.c.c.b, global0.a, -156f), global0.c.c)), ((arg_0 & u_input.d) != select(u_input.b.x, global0.c.b, true)) || !global1.x));
    global2 = global0.c.c.c.xy;
    let var_1 = select(abs(~vec2<u32>(16164u, u_input.c)) ^ ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(47197u, 54257u), global0.c.a, global0.c.c.a.yy), ~vec2<u32>(u_input.a, global0.b.x)), ~vec2<u32>(select(u_input.c, ~0u, true), max(~4294967295u, global0.b.x)), vec2<bool>(!(_wgslsmith_f_op_f32(sign(1142f)) > _wgslsmith_f_op_f32(-global0.a)), !global0.c.d));
    let var_2 = vec3<u32>(4662u, ~(~(~reverseBits(u_input.c))), global0.b.x);
    return vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(global0.b.x), var_2.x), abs(vec2<u32>(u_input.c, var_1.x) & (vec2<u32>(u_input.a, global0.b.x) & vec2<u32>(var_2.x, 0u)))), 0u, 4294967295u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-187f + global0.a))))), vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.c, 1u), _wgslsmith_mod_u32(~arg_0.x, _wgslsmith_div_u32(arg_0.x, 68420u)))), global0.c);
    global1 = select(arg_1, arg_1, (true | all(!global0.c.c.c)) & true);
    let var_0 = global3[_wgslsmith_index_u32(~select(0u, u_input.a ^ ~0u, !(!global2.x)), 2u)];
    var var_1 = !var_0.c.c.c;
    global0 = Struct_5(-628f, ~(~reverseBits(~vec2<u32>(59989u, 1u))), Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.x, global0.b.x, arg_2.x), ~vec4<u32>(4294967295u, 1u, 0u, 23599u)), 1u), (var_0.c.b ^ (u_input.b.x & 1i)) << (func_2(vec3<u32>(var_0.c.c.a.x, var_0.b.x, var_0.c.c.a.x), true, arg_3, global0.c.c) % 32u), var_0.c.c, all(select(vec4<bool>(var_1.x, var_0.c.d, true, arg_1.x), vec4<bool>(global2.x, false, global0.c.d, false), vec4<bool>(false, false, global1.x, var_0.c.c.c.x))) | true));
    return global0.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(_wgslsmith_f_op_f32(-1998f + 775f), global0.c.c.a.yy, Struct_2(firstLeadingBit(vec2<u32>(u_input.a, global0.c.c.a.x)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-32801i, -global0.c.b), firstLeadingBit(countOneBits(global0.c.b))), func_4(_wgslsmith_div_vec2_u32(countOneBits(global0.c.c.a.xz), max(vec2<u32>(global0.b.x, global0.c.c.a.x), global0.b)), vec2<bool>(true, true), func_1(global0.c.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(845f, -450f, -1614f))))), any(vec4<bool>(global0.b.x != global0.c.c.a.x, false, false == global1.x, all(vec2<bool>(false, global2.x))))));
    global1 = global0.c.c.c.zy;
    global2 = global0.c.c.c.yy;
    global1 = global0.c.c.c.yz;
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.c.b * global0.a) + -1801f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.c.b, 332f)), func_4(global0.c.a, vec2<bool>(global0.c.b < 2147483647i, any(global0.c.c.c)), ~(~vec3<u32>(global0.b.x, u_input.c, 62201u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -658f, global0.a) + vec3<f32>(682f, -288f, 1736f)))).b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-549f, 622f, -1000f, -600f)))), vec4<f32>(_wgslsmith_f_op_f32(round(857f)), _wgslsmith_f_op_f32(748f * global0.a), _wgslsmith_f_op_f32(sign(903f)), _wgslsmith_f_op_f32(global0.c.c.b + 656f)), func_4(~global0.c.a, vec2<bool>(global0.c.d, global1.x), abs(vec3<u32>(1096u, 19588u, 21811u)), vec3<f32>(global0.a, -524f, global0.a)).c.x))))));
    let var_1 = Struct_4(_wgslsmith_div_vec3_u32(~(min(global0.c.c.a, global0.c.c.a) & global0.c.c.a), _wgslsmith_div_vec3_u32(vec3<u32>(~70231u, _wgslsmith_clamp_u32(u_input.c, global0.c.c.a.x, 48576u), 12595u), abs(~vec3<u32>(1u, 1u, u_input.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a + global0.a), global0.c.c.b, global0.c.c.b) - vec3<f32>(_wgslsmith_f_op_f32(-global0.c.c.b), _wgslsmith_f_op_f32(-global0.c.c.b), _wgslsmith_f_op_f32(-1029f * 493f)))), Struct_2(vec2<u32>(global0.c.c.a.x, 6961u), _wgslsmith_dot_vec2_i32(min(u_input.b.xx, max(u_input.b.xx, vec2<i32>(-57874i, 58679i))), vec2<i32>(reverseBits(global0.c.b), u_input.b.x)), global0.c.c, any(!func_4(global0.c.a, vec2<bool>(false, false), global0.c.c.a, vec3<f32>(763f, 815f, global0.a)).c.xz)), vec3<u32>(_wgslsmith_mod_u32(0u, 39506u) << (firstLeadingBit(u_input.c) % 32u), _wgslsmith_sub_u32(~global0.c.a.x, 1u), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(global0.b, ~vec3<u32>(var_1.a.x, 52127u, ~1u), -2952i)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-15211i, u_input.b.x) ^ (i32(-1i) * -1i), -1i, abs(1i)) ^ -6581i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, 767f, 502f, -1000f) - _wgslsmith_f_op_vec4_f32(-var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0)))) + var_0));
}

