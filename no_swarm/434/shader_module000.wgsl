struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(0u, 59650u, 0u, 22492u, 1u, 161965u, 57979u, 2664u, 6714u, 47802u, 11088u, 83874u, 46882u, 70206u, 4294967295u, 4294967295u, 82828u, 17424u, 34986u, 1u, 4294967295u, 18121u, 1u, 0u, 58798u, 31889u, 1u, 4294967295u, 16099u, 0u, 0u, 925u);

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<u32>(61728u, 4294967295u, 0u)), Struct_2(vec3<u32>(56356u, 37768u, 14751u)), Struct_2(vec3<u32>(4294967295u, 60810u, 73575u)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 41u)), Struct_2(vec3<u32>(0u, 54626u, 0u)), Struct_2(vec3<u32>(1u, 28119u, 0u)), Struct_2(vec3<u32>(13357u, 79170u, 73841u)), Struct_2(vec3<u32>(6733u, 4294967295u, 72746u)), Struct_2(vec3<u32>(0u, 1u, 28663u)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_2(vec3<u32>(60209u, 1u, 1u)), Struct_2(vec3<u32>(35662u, 14513u, 92593u)), Struct_2(vec3<u32>(4294967295u, 3976u, 1u)), Struct_2(vec3<u32>(54381u, 1u, 4294967295u)), Struct_2(vec3<u32>(1u, 68544u, 7817u)), Struct_2(vec3<u32>(37665u, 4294967295u, 980u)), Struct_2(vec3<u32>(8460u, 1u, 0u)), Struct_2(vec3<u32>(1u, 4294967295u, 10699u)), Struct_2(vec3<u32>(0u, 32534u, 0u)), Struct_2(vec3<u32>(5129u, 15554u, 0u)), Struct_2(vec3<u32>(7634u, 33217u, 0u)), Struct_2(vec3<u32>(22539u, 1u, 1u)));

var<private> global2: array<f32, 18>;

var<private> global3: array<Struct_2, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_3 {
    global1 = array<Struct_2, 22>();
    let var_0 = Struct_3(Struct_2(u_input.e));
    let var_1 = Struct_1(~_wgslsmith_mult_u32(countOneBits(firstTrailingBit(62499u)), ~countOneBits(1u)), global0[_wgslsmith_index_u32(firstTrailingBit(var_0.a.a.x), 32u)], ~min(_wgslsmith_mod_vec3_u32(u_input.e, vec3<u32>(4294967295u, u_input.a, 111990u)) ^ countOneBits(var_0.a.a), ~vec3<u32>(4294967295u, 1u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-350f)) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d, 18u)])))));
    var var_2 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(27278u, 18u)], var_1.d);
    let var_3 = true;
    return Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~var_0.a.a.x, ~35879u) & ~(~(61957u & var_0.a.a.x)), 22u)]);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    global0 = array<u32, 32>();
    var var_0 = global3[_wgslsmith_index_u32(arg_1.x, 24u)];
    let var_1 = !(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), true)) & (u_input.b.x >= firstTrailingBit(-1406i)));
    let var_2 = Struct_2(arg_0.a.a);
    global0 = array<u32, 32>();
    return u_input.b.x;
}

fn func_1() -> Struct_2 {
    global3 = array<Struct_2, 24>();
    var var_0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(func_3(func_2(global0[_wgslsmith_index_u32(u_input.d, 32u)], false), u_input.e.xz), reverseBits(u_input.b.x) & (u_input.b.x | u_input.b.x)), _wgslsmith_mod_i32(-u_input.b.x, u_input.b.x)), 66989i & _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, ~(-22897i)), 0i, 41723i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 46037u), 18u)])))) + global2[_wgslsmith_index_u32(firstTrailingBit(32406u & (global0[_wgslsmith_index_u32(1u, 32u)] | global0[_wgslsmith_index_u32(52150u, 32u)])), 18u)]), _wgslsmith_f_op_f32(max(715f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 18u)], -553f))) - global2[_wgslsmith_index_u32(51958u, 18u)]))));
    global2 = array<f32, 18>();
    global1 = array<Struct_2, 22>();
    return Struct_2((countOneBits(~vec3<u32>(0u, u_input.e.x, 4797u)) << (vec3<u32>(global0[_wgslsmith_index_u32(~u_input.e.x, 32u)], ~4956u, 1u) % vec3<u32>(32u))) ^ (vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85222u, 32u)], 32u)], min(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], 32u)], 32u)]), 78267u) >> (u_input.e % vec3<u32>(32u))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global1 = array<Struct_2, 22>();
    global0 = array<u32, 32>();
    global1 = array<Struct_2, 22>();
    global2 = array<f32, 18>();
    global3 = array<Struct_2, 24>();
    return Struct_1(_wgslsmith_sub_u32(u_input.a, ~u_input.c.x), _wgslsmith_sub_u32(u_input.e.x, min(4294967295u, firstTrailingBit(_wgslsmith_add_u32(84720u, global0[_wgslsmith_index_u32(0u, 32u)])))), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1279f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(27974u, 18u)] + global2[_wgslsmith_index_u32(34749u, 18u)]) + -959f))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = arg_1.b;
    var var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(min(abs(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 2147483647i), u_input.b)), vec4<i32>(-1i, -58599i, _wgslsmith_div_i32(u_input.b.x, 7570i), -1i))), vec4<i32>(u_input.b.x, ~((u_input.b.x >> (u_input.c.x % 32u)) & _wgslsmith_add_i32(u_input.b.x, 24761i)), 16713i, u_input.b.x));
    global3 = array<Struct_2, 24>();
    let var_2 = !(!select(vec3<bool>(false, arg_2, false), vec3<bool>(any(vec4<bool>(false, arg_2, false, true)), !arg_2, arg_2), select(select(vec3<bool>(arg_2, true, false), vec3<bool>(false, arg_2, arg_2), arg_2), !vec3<bool>(arg_2, false, arg_2), false)));
    return -745f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.c, u_input.e.yz), ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(25562u, u_input.c.x, global0[_wgslsmith_index_u32(58442u, 32u)], u_input.d), vec4<u32>(14676u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(95698u, 32u)], 32u)], 32u)], 17986u))), 32u)], (1u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28935u, 32u)], 32u)] % 32u)) >> ((global0[_wgslsmith_index_u32(u_input.e.x, 32u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], 32u)], 32u)]) % 32u)), vec3<u32>(4294967295u, u_input.d, 1u | reverseBits(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)]))), _wgslsmith_f_op_f32(select(-323f, _wgslsmith_f_op_f32(func_5(-807f, func_4(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), func_1(), false), false)), select(u_input.b.x >= u_input.b.x, false, true))));
    global2 = array<f32, 18>();
    let var_1 = func_1();
    var var_2 = Struct_3(Struct_2(func_1().a));
    global0 = array<u32, 32>();
    var var_3 = func_2(1u, true || select(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), 724f > _wgslsmith_f_op_f32(sign(-571f)), true));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(868f)), func_4(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(any(vec4<bool>(false, false, false, true)), true), true), Struct_2(firstLeadingBit(func_4(vec2<bool>(true, false), var_2.a, true).c)), all(vec4<bool>(true, true, true, true))).d);
    let var_5 = var_3.a;
    var_0 = func_4(!(!vec2<bool>(any(vec2<bool>(true, true)), true)), global3[_wgslsmith_index_u32(u_input.a, 24u)], var_0.c.x >= ~_wgslsmith_mod_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]), var_2.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(2716f, var_4.x)), global2[_wgslsmith_index_u32(func_2(var_5.a.x, false).a.a.x, 18u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1596f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + -627f), _wgslsmith_div_f32(-396f, var_4.x)), vec2<i32>(-func_3(Struct_3(Struct_2(vec3<u32>(var_2.a.a.x, var_5.a.x, 0u))), _wgslsmith_mod_vec2_u32(var_0.c.xz, var_1.a.yz)), u_input.b.x), vec3<i32>(u_input.b.x ^ ~firstLeadingBit(u_input.b.x), max(u_input.b.x, _wgslsmith_mod_i32(abs(u_input.b.x), ~16950i)), -43057i));
}

