struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-1i, 52649i, -1i, -17339i, -13596i, -2398i, 0i, 2147483647i, 2147483647i, 1i, -1i, -26200i);

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_0 = Struct_2(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, global1.a), ~(861u & u_input.a)), vec4<bool>(all(vec2<bool>(false, global1.b.x)) & global1.b.x, true, global1.b.x, false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c), -804f)));
    global1 = Struct_2(0u, select(var_0.b, select(global1.b, !vec4<bool>(false, false, global1.b.x, false), !vec4<bool>(false, var_0.b.x, false, false)), !(!select(global1.b, global1.b, var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -1222f));
    global1 = Struct_2(var_0.a, global1.b, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(160f, _wgslsmith_f_op_f32(floor(-378f)), var_0.b.x))));
    return any(!var_0.b);
}

fn func_2() -> Struct_2 {
    let var_0 = select(-vec4<i32>(-5033i, select(global0[_wgslsmith_index_u32(u_input.a, 12u)], 50708i, false), 0i >> (1u % 32u), global0[_wgslsmith_index_u32(global1.a, 12u)]), -reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(73172u, 12u)], -10259i, global0[_wgslsmith_index_u32(1u, 12u)], 1i)), firstTrailingBit(_wgslsmith_mult_u32(46805u, u_input.b.x)) <= (42046u & ~global1.a)) ^ -(~_wgslsmith_mult_vec4_i32(-vec4<i32>(-1148i, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], -44658i), -vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(global1.a, 12u)])));
    var var_1 = true;
    var_1 = global1.b.x;
    var_1 = _wgslsmith_f_op_f32(trunc(global1.c)) >= _wgslsmith_f_op_f32(-865f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-672f, global1.c))));
    var_1 = !global1.b.x;
    return Struct_2(_wgslsmith_mult_u32(4369u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~u_input.b.x, u_input.b.x & 4294967295u), vec3<u32>(u_input.b.x, ~global1.a, 0u))), select(!select(global1.b, vec4<bool>(false, global1.b.x, global1.b.x, false), func_3()), select(global1.b, !vec4<bool>(global1.b.x, false, true, global1.b.x), global1.b), max(min(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]), 30853i) <= -(~var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -918f));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(select(global1.c, 277f, all(!select(global1.b.zwz, vec3<bool>(true, global1.b.x, true), vec3<bool>(true, false, true)))))));
    global1 = func_2();
    let var_1 = func_2();
    global1 = Struct_2(32848u, select(!select(var_1.b, !global1.b, select(global1.b, global1.b, vec4<bool>(var_1.b.x, false, global1.b.x, true))), !(!global1.b), !(global1.b.x & true) || (!var_1.b.x || (false & global1.b.x))), _wgslsmith_f_op_f32(trunc(2312f)));
    global0 = array<i32, 12>();
    return _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(global1.a, 12u)], (-1i & global0[_wgslsmith_index_u32(32279u, 12u)]) << (1u % 32u)), vec2<i32>(reverseBits(~global0[_wgslsmith_index_u32(0u, 12u)]), ~(~_wgslsmith_div_i32(-13244i, global0[_wgslsmith_index_u32(u_input.a, 12u)]))));
    let var_1 = ~(~(~(~vec3<u32>(u_input.a, 4294967295u, global1.a) >> (~vec3<u32>(global1.a, u_input.a, 1u) % vec3<u32>(32u)))));
    global0 = array<i32, 12>();
    let var_2 = Struct_1(~var_0.x & 51829i, _wgslsmith_add_u32(var_1.x, ~0u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1035f, global1.c, true)) + -252f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1973f)) + -1072f), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + global1.c)), select(vec3<bool>(_wgslsmith_f_op_f32(188f * global1.c) <= _wgslsmith_f_op_f32(177f * global1.c), true, func_3()), global1.b.yyy, false), firstLeadingBit(~73202u) | u_input.b.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.x)) * -559f)) * _wgslsmith_div_f32(var_2.c.x, 572f)) * _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    var var_4 = !(!func_2().b.x);
    var var_5 = global1.c;
    var_4 = (-2147483647i == var_2.a) || false;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zz & _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~var_1.zx, vec2<u32>(u_input.a, u_input.a)), ~_wgslsmith_mod_vec2_u32(var_1.xx, u_input.b)), _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(4294967295u, var_1.x)), u_input.a) ^ abs(1u), reverseBits(firstLeadingBit(var_6.a & -19858i)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1236f, global1.c)) + var_6.c.x), var_6.c.x), var_2.c.x));
}

