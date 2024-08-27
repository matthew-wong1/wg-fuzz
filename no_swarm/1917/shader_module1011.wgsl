struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true, false, true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> vec3<i32> {
    global0 = array<bool, 20>();
    let var_0 = _wgslsmith_dot_vec3_i32(-u_input.a, countOneBits(vec3<i32>(_wgslsmith_mod_i32(arg_1.a.c << (arg_1.b.d.x % 32u), 1i), ~(~u_input.c), u_input.a.x)));
    let var_1 = Struct_3(arg_1.d.a.zwy, arg_1, Struct_2(arg_0.a, arg_0.a, Struct_1(!select(arg_1.a.a, vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, false, false), arg_0.a.a.x), any(vec2<bool>(true, true)), -1i, vec4<u32>(~87888u, 0u >> (arg_1.a.d.x % 32u), ~1u, 0u)), arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2205f, arg_1.e.x))) - arg_1.e))), Struct_1(vec4<bool>(arg_0.a.a.x, all(!arg_1.c.a.wy), false, false), any(!arg_0.a.a.yz), -1i, arg_1.a.d));
    let var_2 = arg_0;
    let var_3 = Struct_3(arg_1.a.a.yzw, Struct_2(Struct_1(var_2.a.a, var_1.a.x, -1954i, min(var_2.a.d, vec4<u32>(var_2.a.d.x, var_1.c.a.d.x, 60742u, arg_0.a.d.x))), arg_0.a, arg_1.d, arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.e, _wgslsmith_f_op_vec2_f32(floor(var_1.b.e))))), arg_1, Struct_1(var_2.a.a, any(vec4<bool>(all(var_2.a.a.yxy), all(vec4<bool>(arg_0.a.b, true, global0[_wgslsmith_index_u32(arg_1.c.d.x, 20u)], var_1.a.x)), var_1.c.e.x <= arg_1.e.x, false)), max(i32(-1i) * -37996i, firstLeadingBit(-1i)), ~(vec4<u32>(var_2.a.d.x, 35685u, var_1.c.d.d.x, arg_0.a.d.x) & firstLeadingBit(var_1.b.b.d))));
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(func_3(Struct_4(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true, global0[_wgslsmith_index_u32(26323u, 20u)], false), true, arg_0, vec4<u32>(1u, 20040u, 39434u, 1u)), 505f), Struct_2(Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)], false, true), global0[_wgslsmith_index_u32(30630u, 20u)], arg_1, vec4<u32>(64602u, 0u, 1u, 37250u)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(16969u, 20u)], true), false, arg_0, vec4<u32>(144182u, 1u, 23513u, 1u)), Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(8698u, 20u)]), false, -44659i, vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)], false, global0[_wgslsmith_index_u32(71822u, 20u)]), true, arg_0, vec4<u32>(4294967295u, 30010u, 4294967295u, 2419u)), vec2<f32>(1491f, 976f)), _wgslsmith_div_u32(1u, 47268u)), vec3<i32>(-arg_1, 2147483647i, arg_0 ^ arg_1)), vec3<i32>(-1i) * -u_input.a);
    var var_1 = abs(vec4<i32>(~u_input.a.x, -16560i, -(arg_1 ^ arg_1), u_input.a.x)) & min(firstTrailingBit(vec4<i32>(reverseBits(-1i), func_3(Struct_4(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], false, false), false, 2147483647i, vec4<u32>(1u, 1u, 4294967295u, 1u)), 773f), Struct_2(Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(126945u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], false), global0[_wgslsmith_index_u32(15659u, 20u)], arg_1, vec4<u32>(9060u, 57107u, 1u, 19460u)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(5993u, 20u)]), global0[_wgslsmith_index_u32(14081u, 20u)], 4337i, vec4<u32>(4294967295u, 0u, 7196u, 4294967295u)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(10227u, 20u)], true, global0[_wgslsmith_index_u32(1u, 20u)], false), global0[_wgslsmith_index_u32(0u, 20u)], -10636i, vec4<u32>(1u, 98982u, 0u, 4294967295u)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(13876u, 20u)], false, true, false), global0[_wgslsmith_index_u32(53835u, 20u)], 0i, vec4<u32>(11998u, 40476u, 0u, 4294967295u)), vec2<f32>(-460f, 520f)), 38965u).x, u_input.a.x, i32(-1i) * -2147483647i)), -(vec4<i32>(14027i, -10225i, arg_1, arg_0) & vec4<i32>(u_input.c, u_input.a.x, arg_1, -1i)) & reverseBits(vec4<i32>(u_input.c, 1i, arg_1, 0i)));
    return ~(-2147483647i);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = ~select(1u, arg_0.d.d.x | arg_0.c.c.d.x, false);
    var var_1 = func_2(21918i, ~(i32(-1i) * -u_input.a.x));
    let var_2 = all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c.a.d.x, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)], true));
    let var_3 = true;
    let var_4 = true && select(1676f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(754f + arg_0.b.e.x) - _wgslsmith_f_op_f32(-arg_0.b.e.x)), true, true);
    return vec2<u32>(arg_0.b.a.d.x, _wgslsmith_dot_vec3_u32(~arg_0.c.d.d.xwz, _wgslsmith_mult_vec3_u32(arg_0.d.d.zyw, arg_0.b.a.d.yww)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(min(~vec2<u32>(91579u, 1u), func_1(Struct_3(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(34125u, 20u)]), Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, false, false), false, -24562i, vec4<u32>(1u, 47121u, 0u, 6701u)), Struct_1(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 20u)], true), false, 693i, vec4<u32>(49311u, 4294967295u, 92342u, 1u)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], false), global0[_wgslsmith_index_u32(32274u, 20u)], -2147483647i, vec4<u32>(1608u, 37096u, 4294967295u, 1u)), Struct_1(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 20u)]), global0[_wgslsmith_index_u32(1u, 20u)], 2147483647i, vec4<u32>(0u, 4294967295u, 29707u, 0u)), vec2<f32>(-1656f, 625f)), Struct_2(Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], false, false), global0[_wgslsmith_index_u32(12249u, 20u)], -1117i, vec4<u32>(0u, 29497u, 94565u, 1u)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(105965u, 20u)], false, global0[_wgslsmith_index_u32(4294967295u, 20u)], false), global0[_wgslsmith_index_u32(0u, 20u)], 116i, vec4<u32>(18770u, 35260u, 1u, 95290u)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(7545u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], false, global0[_wgslsmith_index_u32(30106u, 20u)]), global0[_wgslsmith_index_u32(74165u, 20u)], u_input.a.x, vec4<u32>(1768u, 87629u, 0u, 20924u)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], false, false, false), global0[_wgslsmith_index_u32(1u, 20u)], 2147483647i, vec4<u32>(1u, 40633u, 4294967295u, 4294967295u)), vec2<f32>(213f, -1000f)), Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], false), false, u_input.c, vec4<u32>(0u, 37931u, 38914u, 1u))), true, u_input.a.xy)), ~reverseBits(vec2<u32>(4294967295u, 81893u)), !vec2<bool>(global0[_wgslsmith_index_u32(43972u, 20u)], global0[_wgslsmith_index_u32(23639u, 20u)])) ^ abs(~vec2<u32>(60413u, 49981u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(214f, -1520f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-195f, -735f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-165f, _wgslsmith_div_f32(-432f, 380f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-928f * 1835f)))), (var_0.x << (~_wgslsmith_sub_u32(28789u, var_0.x) % 32u)) << (var_0.x % 32u));
}

