struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, 0u, vec3<u32>(57062u, 59077u, 1u)), Struct_1(true, 38618u, vec3<u32>(0u, 51121u, 1u)), Struct_1(true, 48551u, vec3<u32>(4294967295u, 4294967295u, 11809u)), Struct_1(true, 53312u, vec3<u32>(54012u, 1u, 28305u)), Struct_1(false, 4294967295u, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(false, 21287u, vec3<u32>(4343u, 28373u, 1u)), Struct_1(true, 1u, vec3<u32>(0u, 4294967295u, 5027u)), Struct_1(false, 53246u, vec3<u32>(56202u, 0u, 22095u)), Struct_1(false, 4294967295u, vec3<u32>(4294967295u, 54207u, 23521u)), Struct_1(false, 35571u, vec3<u32>(32702u, 4294967295u, 0u)), Struct_1(true, 1u, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(false, 0u, vec3<u32>(54378u, 77666u, 9242u)), Struct_1(false, 65144u, vec3<u32>(0u, 1u, 0u)), Struct_1(true, 4294967295u, vec3<u32>(73514u, 7292u, 1u)), Struct_1(true, 8650u, vec3<u32>(2452u, 24680u, 16995u)), Struct_1(true, 10868u, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(true, 31073u, vec3<u32>(1053u, 0u, 0u)), Struct_1(false, 1u, vec3<u32>(50218u, 17890u, 4294967295u)), Struct_1(false, 31354u, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(true, 32443u, vec3<u32>(63935u, 3545u, 2378u)), Struct_1(true, 29625u, vec3<u32>(95071u, 4294967295u, 50222u)), Struct_1(true, 1u, vec3<u32>(32053u, 4294967295u, 32743u)), Struct_1(false, 9693u, vec3<u32>(11300u, 0u, 1u)), Struct_1(true, 608u, vec3<u32>(49033u, 53141u, 1u)), Struct_1(false, 0u, vec3<u32>(0u, 1u, 0u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    var var_0 = -_wgslsmith_div_i32(select(-36360i, abs(~u_input.c), global1.d <= _wgslsmith_f_op_f32(floor(1443f))), _wgslsmith_mod_i32(u_input.c, -1i));
    let var_1 = 29670u;
    var var_2 = ~0u;
    var_0 = abs(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.a, u_input.a), vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.a.x)) & ~firstLeadingBit(1i));
    global0 = global1.b;
    return false;
}

fn func_2() -> bool {
    global0 = global1.c;
    let var_0 = global1.e;
    var var_1 = Struct_2(global1.a, global1.e, global1.b, 690f, Struct_1(func_3(), abs(_wgslsmith_clamp_u32(u_input.b.x & 4056u, u_input.b.x, 1u)), global1.b.c >> (max(var_0.c, reverseBits(vec3<u32>(var_0.b, 0u, 41780u))) % vec3<u32>(32u))));
    global1 = Struct_2(!global1.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_sub_u32(var_1.e.c.x, u_input.b.x)), ~29209u), global0.c.zy), 25u)], Struct_1(true, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(50556u, var_0.c.x, 0u, global1.b.c.x), vec4<u32>(23852u, 4294967295u, 0u, global0.c.x)), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 81356u))), _wgslsmith_sub_vec3_u32(~select(vec3<u32>(global0.b, 4294967295u, global0.b), global1.b.c, global1.a), global1.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1172f, global1.d)))), var_1.b);
    var var_2 = Struct_2(var_1.a, Struct_1(any(!(!vec4<bool>(true, var_1.c.a, true, var_0.a))), global0.b, var_1.b.c), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.c.b, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_0.c.x, 52883u), abs(vec2<u32>(52658u, var_0.c.x)), !var_0.a), reverseBits(firstLeadingBit(vec2<u32>(global1.c.b, var_1.c.c.x)))), _wgslsmith_div_u32(abs(var_0.c.x) ^ ~0u, countOneBits(1u >> (u_input.b.x % 32u)))), 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.d, var_1.d))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(356f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, global1.d) - _wgslsmith_div_f32(var_1.d, var_1.d))))), Struct_1(func_3(), max(u_input.b.x, var_0.c.x) & ~_wgslsmith_sub_u32(u_input.b.x, 1u), abs(~vec3<u32>(var_0.b, u_input.b.x, global1.e.c.x))));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = firstLeadingBit(abs(vec4<i32>(-8480i, -2147483647i, u_input.c, -42965i)));
    var var_1 = abs(0u);
    let var_2 = _wgslsmith_f_op_f32(round(1898f));
    global2 = array<Struct_1, 25>();
    var_1 = ~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, arg_1), arg_1), 4294967295u));
    return global1.e;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(vec3<bool>(func_2(), false, false == (434f <= _wgslsmith_f_op_f32(global1.d * 1000f))), ~global1.b.c.x);
    global1 = Struct_2(!(!global1.a), global1.b, global1.e, -1589f, Struct_1(global1.a.x, var_0.b, var_0.c));
    var_0 = func_4(vec3<bool>(var_0.a, func_3(), u_input.b.x >= 1u), var_0.c.x);
    let var_1 = _wgslsmith_f_op_f32(step(global1.d, global1.d));
    global1 = Struct_2(vec3<bool>(false && global1.c.a, global0.a, var_0.a), func_4(!global1.a, firstTrailingBit(u_input.b.x)), global2[_wgslsmith_index_u32(~((~u_input.b.x >> (func_4(global1.a, u_input.b.x).b % 32u)) ^ abs(u_input.b.x)), 25u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1696f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - var_1)))), global2[_wgslsmith_index_u32(var_0.b, 25u)]);
    return func_4(global1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, var_0.c.x) & vec3<u32>(var_0.c.x, 11656u, 6244u), (vec3<u32>(33850u, var_0.c.x, var_0.b) >> (u_input.b % vec3<u32>(32u))) | ~vec3<u32>(0u, global0.b, global1.b.c.x)) & abs(~(global1.c.c.x >> (53863u % 32u))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~23549u, 0u, ~20279u, firstLeadingBit(74666u)), countOneBits(vec4<u32>(arg_0.b, 0u, u_input.b.x, 46026u) & vec4<u32>(global0.b, 5886u, 0u, global0.b)) & vec4<u32>(10968u, global1.b.c.x, global0.b, u_input.b.x)) < countOneBits(4294967295u);
    global1 = Struct_2(vec3<bool>(func_1().a, true, func_1().a), func_4(select(global1.a, select(vec3<bool>(global1.e.a, true, arg_0.a), global1.a, select(false, false, false)), true), ~global0.b), Struct_1(global1.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~62730u, global0.c.x | 1u), ~(~global0.b)), vec3<u32>(_wgslsmith_div_u32(global1.b.c.x & global1.e.c.x, 1u), ~(~global1.e.c.x), firstTrailingBit(0u))), _wgslsmith_div_f32(_wgslsmith_div_f32(278f, global1.d), _wgslsmith_f_op_f32(select(-855f, global1.d, global0.a))), global1.e);
    var var_1 = Struct_2(global1.a, func_1(), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -560f) <= _wgslsmith_f_op_f32(-global1.d), 13460u, countOneBits(~arg_0.c) << ((func_4(global1.a, 4294967295u).c & func_4(vec3<bool>(arg_0.a, false, global0.a), arg_0.c.x).c) % vec3<u32>(32u))), _wgslsmith_f_op_f32(select(global1.d, _wgslsmith_f_op_f32(f32(-1f) * -524f), arg_0.a)), global2[_wgslsmith_index_u32(global0.b, 25u)]);
    let var_2 = !any(vec4<bool>(false, global1.a.x, true, !(!var_1.a.x)));
    var var_3 = vec2<bool>(!arg_0.a, var_2);
    return Struct_2(vec3<bool>(var_3.x, !(_wgslsmith_sub_u32(arg_0.b, 4294967295u) >= 0u), func_1().a | (true && any(vec4<bool>(var_3.x, true, arg_0.a, false)))), Struct_1(arg_0.a, _wgslsmith_clamp_u32(firstTrailingBit(select(0u, 1u, arg_0.a)), arg_0.c.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(17199u, global1.c.c.x, 0u, 0u)), vec4<u32>(0u, 0u, global0.b, 51982u))), _wgslsmith_mod_vec3_u32(vec3<u32>(~arg_0.b, 69493u, 4294967295u), var_1.b.c)), func_4(vec3<bool>(true || all(vec3<bool>(false, true, var_2)), var_2 && true, _wgslsmith_f_op_f32(select(331f, 789f, global1.b.a)) > global1.d), u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d - var_1.d))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d), 372f))))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_1());
    global2 = array<Struct_1, 25>();
    global1 = func_5(global1.e);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(368f + _wgslsmith_f_op_f32(f32(-1f) * -2158f)));
    var var_1 = false;
    var_1 = true;
    var_1 = true;
    var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 - global1.d), _wgslsmith_f_op_f32(min(global1.d, var_0))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1090f, global1.d)))))))) + vec2<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_f32(-1142f, global1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, max(u_input.c, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 49403i) >> (vec3<u32>(global1.b.b, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, -14259i, u_input.a.x)))), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a));
}

