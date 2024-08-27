struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: bool;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> vec2<bool> {
    global1 = !any(select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), false));
    var var_0 = true;
    var var_1 = Struct_3(Struct_1(1i, select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), 1i, vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<u32>(countOneBits(~u_input.c.x), min(_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3, 4u)], 4u)]), 1u), arg_3)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true), true)), !any(vec3<bool>(all(vec4<bool>(true, true, false, false)), true, all(vec4<bool>(true, true, false, true)))), select(select(vec3<bool>(all(vec2<bool>(true, true)), true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !all(vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), !select(true, false, false)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, 638f, arg_1, arg_0.x))))), _wgslsmith_f_op_vec4_f32(sign(arg_2))))));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-851f - 514f), _wgslsmith_f_op_f32(max(-748f, arg_1)))) - _wgslsmith_div_f32(-775f, _wgslsmith_f_op_f32(sign(-897f)))), Struct_2(var_1.a.e.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~var_1.a.e.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(22207u, 30024u, 90882u), var_1.a.e)), 4u)], true, vec3<i32>(var_1.a.c, 1i, max(var_1.a.a, 49870i) << (arg_3 % 32u))), Struct_2(countOneBits(global0[_wgslsmith_index_u32((var_1.a.e.x << (85759u % 32u)) >> (countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50922u, 4u)], 4u)]) % 32u), 4u)]), arg_3 >> (firstLeadingBit(u_input.c.x) % 32u), true, ~(-vec3<i32>(var_1.a.c, var_1.a.c, var_1.a.c) | countOneBits(vec3<i32>(2147483647i, var_1.a.c, var_1.a.c)))), 86003u, Struct_2(11183u, min(1u, ~1u), var_1.d.x, -_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.c, var_1.a.c, 2147483647i), vec3<i32>(var_1.a.a, -31520i, var_1.a.a)) & vec3<i32>(var_1.a.a, countOneBits(-5082i), var_1.a.a)));
    return !select(vec2<bool>(false, !var_3.c.c), select(vec2<bool>(true, true), !select(var_1.a.b.zz, vec2<bool>(var_1.c, var_1.a.b.x), var_1.d.xy), !var_1.a.b.xy), all(select(var_1.d, !var_1.a.d, var_1.d)));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_4(select(arg_3.b.zxw, arg_3.d, all(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a, -1444f, arg_2.x, arg_1.a))), _wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, arg_2.x, arg_2.x)), ~global0[_wgslsmith_index_u32(arg_3.a.e.x, 4u)]))), _wgslsmith_mod_u32(u_input.d.x, 0u), Struct_3(arg_3.a, vec4<bool>(any(vec2<bool>(false, arg_3.b.x)), true, !(!arg_3.d.x), true), arg_0, !select(arg_3.d, vec3<bool>(true, true, true), arg_3.d)));
    var var_1 = arg_1.e.d.x;
    var_1 = ~min(_wgslsmith_dot_vec2_i32(arg_1.c.d.xz, abs(arg_1.b.d.xx & vec2<i32>(arg_1.b.d.x, arg_1.c.d.x))), -59275i);
    global1 = func_3(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, arg_2.x)) * _wgslsmith_f_op_f32(sign(arg_1.a)))), -402f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f * -537f) * _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(742f + arg_1.a), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -346f))))), -1453f, -267f, arg_1.a), ~44585u).x;
    var var_2 = _wgslsmith_f_op_f32(abs(arg_1.a));
    return arg_3.b.x;
}

fn func_1() -> bool {
    let var_0 = !select(vec2<bool>(true && func_2(false, Struct_5(-728f, Struct_2(global0[_wgslsmith_index_u32(1u, 4u)], u_input.c.x, false, vec3<i32>(-18743i, -2147483647i, -2122i)), Struct_2(global0[_wgslsmith_index_u32(u_input.e, 4u)], u_input.c.x, true, vec3<i32>(1i, -2147483647i, -51364i)), 93428u, Struct_2(32120u, u_input.c.x, false, vec3<i32>(-16359i, -61838i, 0i))), vec4<f32>(267f, -1169f, 976f, 240f), Struct_3(Struct_1(-1486i, vec3<bool>(false, true, false), 1i, vec3<bool>(false, true, true), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], 1615u, global0[_wgslsmith_index_u32(1u, 4u)])), vec4<bool>(true, true, false, true), false, vec3<bool>(true, true, true))), false), vec2<bool>(true, true), select(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1524f, -187f, 245f, 886f)), -838f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1011f, 1139f, 748f, -1000f) * vec4<f32>(-1724f, -1009f, 227f, 533f)), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)])), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, true)), false));
    global0 = array<u32, 4>();
    let var_1 = vec3<u32>(4294967295u, u_input.a, 30152u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -347f))) + -1000f);
    var var_3 = Struct_1(_wgslsmith_clamp_i32(0i, select(1i, -(~2147483647i), true), ~1i), select(vec3<bool>(all(!vec2<bool>(var_0.x, var_0.x)), var_0.x, true), vec3<bool>(true, _wgslsmith_f_op_f32(var_2 - var_2) != 179f, false), !((var_0.x & false) & true)), 2147483647i, !select(!vec3<bool>(var_0.x, var_0.x, false), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, true))), false), _wgslsmith_sub_vec3_u32(vec3<u32>(1u >> ((29133u << (global0[_wgslsmith_index_u32(4294967295u, 4u)] % 32u)) % 32u), global0[_wgslsmith_index_u32(1u, 4u)], ~max(u_input.b, 35532u)), vec3<u32>(u_input.c.x, reverseBits(global0[_wgslsmith_index_u32(40477u, 4u)] | 0u), 1u)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!func_1() || all(vec4<bool>(true, true, true, true)));
    let var_0 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-240f)), _wgslsmith_f_op_f32(f32(-1f) * -241f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(940f - _wgslsmith_f_op_f32(trunc(-792f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-380f, 1121f) * _wgslsmith_f_op_f32(-981f + 1252f))))));
    let var_2 = ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)], 14235u, u_input.c.x)), vec3<u32>(~global0[_wgslsmith_index_u32(u_input.e, 4u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(135706u, 4u)], 4u)], 4u)], 4u)], u_input.b)) >> (reverseBits(u_input.c.zwy) % vec3<u32>(32u));
    var var_3 = !(!(!(!select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, var_0, var_0, var_0), var_0))));
    global1 = var_0 && true;
    var var_4 = select(u_input.c.xwx & min(select(vec3<u32>(var_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 15396u), vec3<u32>(u_input.e, 1u, u_input.b), var_3.x), ~vec3<u32>(0u, 88562u, u_input.a)), vec3<u32>(abs(4294967295u), abs(~u_input.c.x), ~1u), vec3<bool>(var_0, var_3.x, true)) >> (reverseBits(select(~_wgslsmith_sub_vec3_u32(vec3<u32>(42802u, var_2.x, 4294967295u), var_2), vec3<u32>(~44685u, 0u, u_input.b), !vec3<bool>(var_0, var_0, false))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), max(vec3<i32>(-2147483647i, 2147483647i, 0i), vec3<i32>(1i, -21287i, 2147483647i)))));
}

