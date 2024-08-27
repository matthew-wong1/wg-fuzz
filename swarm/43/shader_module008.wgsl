struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-441f);

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-1i, -4683i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec2<u32>) -> i32 {
    let var_0 = vec2<bool>(true, !arg_0);
    return 0i;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    global1 = array<vec2<i32>, 1>();
    let var_0 = !select(!select(vec4<bool>(false, false, true, arg_0), !vec4<bool>(true, arg_0, arg_0, true), true), select(vec4<bool>(!arg_0, arg_0, select(arg_0, false, arg_0), !arg_0), vec4<bool>(u_input.a != u_input.b, !arg_0, false, arg_0), arg_0), false);
    var var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~arg_2.b.x), 0u), ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.b.x, 35214u), ~arg_3.a.b.yz), arg_2.b.xx));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1793f, global0[_wgslsmith_index_u32(1u, 1u)], -1279f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a, arg_2.a, 245f) * vec3<f32>(138f, global0[_wgslsmith_index_u32(arg_3.b, 1u)], 1767f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, 802f, arg_1.a)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 1u)] + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), 604f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a))), arg_3.a.a, -615f)));
    return ~vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(arg_2.b.xy, arg_3.a.b.yy))), 81788u, ~arg_1.b.x);
}

fn func_2() -> i32 {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(97519u, 1u)], func_3(true, Struct_1(882f, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(43324u, 45343u, 54004u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 1u)])), vec3<u32>(u_input.a, 0u, u_input.b)), Struct_2(Struct_1(_wgslsmith_div_f32(-569f, 279f), countOneBits(vec3<u32>(1u, 96722u, u_input.b))), ~firstTrailingBit(u_input.b))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(max(_wgslsmith_mod_i32(34911i, -1i), ~(-2147483647i)), -34765i << (_wgslsmith_div_u32(~var_0.b.x, 1u) % 32u)), _wgslsmith_add_i32(-(i32(-1i) * -2147483647i), -firstTrailingBit(_wgslsmith_div_i32(0i, -1i))), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)]), -2147483647i << (u_input.b % 32u))) & -23801i);
    var var_2 = false;
    return _wgslsmith_mult_i32(reverseBits(-var_1), 0i);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(arg_1 + -1710f))), ~(~(~vec3<u32>(0u, u_input.a, u_input.b)))), u_input.b);
    let var_1 = var_0.a;
    var var_2 = vec3<f32>(arg_1, 1586f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, select(var_0.b << (45842u % 32u), 43094u, false)), 1u)] - var_0.a.a));
    let var_3 = _wgslsmith_mult_vec2_u32(abs(func_3((var_1.b.x | 0u) == func_3(true, Struct_1(-1879f, vec3<u32>(u_input.b, var_1.b.x, var_1.b.x)), Struct_1(arg_1, var_0.a.b), Struct_2(var_0.a, var_0.b)).x, Struct_1(_wgslsmith_f_op_f32(arg_1 - var_2.x), var_1.b & vec3<u32>(u_input.b, 4169u, 87841u)), var_1, Struct_2(var_0.a, var_1.b.x)).xx), var_0.a.b.zx);
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.a)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_3.x, 1u)] * var_0.a.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(950f)), _wgslsmith_f_op_f32(f32(-1f) * -1384f), -481f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -792f, -1078f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1399f, var_0.a.a), vec3<f32>(var_1.a, 316f, var_0.a.a), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(281f, -991f, var_0.a.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, 146f, global0[_wgslsmith_index_u32(u_input.b, 1u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-711f, -755f, 862f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], var_2.x, 1756f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(467f, var_1.a, var_2.x) - vec3<f32>(-952f, -2439f, -1377f)))))), !vec3<bool>(true, arg_2, false)));
    return Struct_1(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(35426u, 1u)])), var_1.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(1434f, func_4(i32(-1i) * -46037i, -1344f, true, firstLeadingBit(vec4<i32>(-1i, 0i, -2147483647i, 43421i))).a), abs(arg_0.a.b)), ~countOneBits(u_input.b ^ 58920u) | arg_0.a.b.x);
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global1 = array<vec2<i32>, 1>();
    var_0 = Struct_2(Struct_1(-792f, firstLeadingBit(var_0.a.b) | select(arg_0.a.b, func_3(true, var_0.a, var_0.a, arg_0), vec3<bool>(true, true, true))), 4294967295u);
    return Struct_1(-381f, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 5090u, _wgslsmith_sub_u32(~1u, var_0.a.b.x)), abs(~(~vec3<u32>(36188u, 0u, arg_0.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(func_4(min(~(-186i), ~2147483647i), global0[_wgslsmith_index_u32(u_input.b << ((10719u << (u_input.b % 32u)) % 32u), 1u)], any(vec3<bool>(true, true, true)), vec4<i32>(~56804i, func_1(true, -1i, global0[_wgslsmith_index_u32(u_input.a, 1u)], vec2<u32>(u_input.a, u_input.a)), 0i << (u_input.b % 32u), func_2())), ~4294967295u), -(vec2<i32>(-1i) * -vec2<i32>(8316i, 0i)));
    let var_1 = func_5(Struct_2(func_5(Struct_2(func_5(Struct_2(Struct_1(390f, var_0.b), u_input.b), global1[_wgslsmith_index_u32(4294967295u, 1u)]), u_input.a), firstTrailingBit(~global1[_wgslsmith_index_u32(var_0.b.x, 1u)])), func_3(!(var_0.a != 513f), Struct_1(_wgslsmith_f_op_f32(step(582f, var_0.a)), ~vec3<u32>(4294967295u, 1u, 32000u)), Struct_1(var_0.a, vec3<u32>(96755u, u_input.b, 1u)), Struct_2(Struct_1(1000f, var_0.b), _wgslsmith_mult_u32(35355u, var_0.b.x))).x), ~(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 0i), global1[_wgslsmith_index_u32(0u, 1u)]) ^ (global1[_wgslsmith_index_u32(func_3(true, Struct_1(var_0.a, vec3<u32>(4294967295u, u_input.a, var_0.b.x)), Struct_1(var_0.a, var_0.b), Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_0.b.x, 1u)], vec3<u32>(54825u, 1u, u_input.b)), var_0.b.x)).x, 1u)] & vec2<i32>(-23789i, -1i))));
    global1 = array<vec2<i32>, 1>();
    let var_2 = var_1;
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(640f, var_1.a)))), var_2.b | var_1.b);
    var_0 = func_4(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.b, 1u)], ~(~vec2<i32>(-3344i, 95777i))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.b), u_input.b), ~vec3<u32>(var_0.b.x, var_2.b.x, 22187u)) % 32u), 113f, _wgslsmith_f_op_f32(-1036f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(954f))))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.b.x, 1u)] * var_1.a)))), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-14373i, 33514i, 0i)), ~vec3<i32>(-2147483647i, 0i, 5367i)) << (_wgslsmith_add_u32(var_1.b.x, 4294967295u) % 32u), ~_wgslsmith_mod_i32(_wgslsmith_add_i32(33181i, 1i), _wgslsmith_mult_i32(-21093i, -1i)), max(func_1(true, -22078i, var_1.a, ~vec2<u32>(0u, 21452u)), 2147483647i), 14098i));
    let var_3 = vec2<bool>(false, true);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(round(var_0.a)), ~_wgslsmith_mult_vec3_u32(var_1.b, var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, global0[_wgslsmith_index_u32(4294967295u, 1u)], var_2.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1342f + 160f) - _wgslsmith_f_op_f32(min(-1027f, _wgslsmith_f_op_f32(max(-767f, -642f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(-var_2.a)), var_4.a)));
}

