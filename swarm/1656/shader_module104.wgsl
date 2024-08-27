struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool = false;

var<private> global2: array<f32, 6> = array<f32, 6>(1298f, 830f, -929f, 338f, 1171f, -1000f);

var<private> global3: Struct_3;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = any(!vec4<bool>(false, arg_1, arg_2.a, any(vec2<bool>(true, true))));
    global0 = false;
    global3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(sign(arg_3.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global3.a.x)), arg_3.x, select(var_0, arg_2.d, var_0)))), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~(~arg_2.e.x), 6u)])), 1000f, _wgslsmith_f_op_f32(-172f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), Struct_1(global3.b.d, 2147483647i, arg_0, var_0, select(vec3<u32>(global3.b.e.x, 73866u, global3.b.e.x), min(vec3<u32>(u_input.b.x, 4294967295u, global3.b.e.x), vec3<u32>(1233u, 0u, 20783u)), select(vec3<bool>(false, false, false), vec3<bool>(arg_1, true, false), true)) & _wgslsmith_clamp_vec3_u32(arg_2.e, ~vec3<u32>(1u, global3.b.e.x, 10452u), arg_2.e)), all(!vec4<bool>(arg_2.d, true, any(vec2<bool>(arg_2.d, arg_1)), arg_2.e.x < 1u)));
    var var_1 = false;
    global2 = array<f32, 6>();
    return 1u;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = ~(~(~vec4<u32>(global3.b.e.x, u_input.b.x, firstTrailingBit(1u), ~u_input.b.x)));
    var var_1 = countOneBits(_wgslsmith_mod_u32(max(func_3(_wgslsmith_add_vec3_i32(vec3<i32>(15000i, 33501i, 1i), arg_0.c), global3.c, Struct_1(arg_0.d, u_input.c, vec3<i32>(-1i, u_input.a, u_input.c), global3.b.a, vec3<u32>(38838u, 0u, arg_0.e.x)), vec3<f32>(353f, -306f, 1561f)), global3.b.e.x), u_input.b.x));
    var_1 = ~func_3(global3.b.c, 0i >= u_input.a, global3.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a.x, 1788f, -594f))));
    var var_2 = var_0.zz;
    global0 = (_wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.x, -869f))) < global3.a.x) && true;
    return u_input.b.xy;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> bool {
    global0 = !(1i != (u_input.a << ((global3.b.e.x >> ((arg_1.x >> (37519u % 32u)) % 32u)) % 32u)));
    let var_0 = Struct_4(Struct_3(global3.a, global3.b, true), vec2<u32>(~(countOneBits(0u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(2425u, 4294967295u, u_input.b.x, 0u), vec4<u32>(0u, arg_1.x, global3.b.e.x, arg_1.x))), ~31359u), false);
    let var_1 = global3.b.b;
    global1 = _wgslsmith_f_op_f32(-var_0.a.a.x) >= _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(abs(max(~arg_1.x, 1u)), 6u)], -888f, global3.c));
    global2 = array<f32, 6>();
    return global3.b.a;
}

fn func_1() -> u32 {
    let var_0 = -1332f;
    global3 = Struct_3(global3.a, Struct_1(true, firstTrailingBit(abs(u_input.c)), select(abs(-global3.b.c), -(~vec3<i32>(u_input.c, -2147483647i, 33497i)), vec3<bool>(any(vec4<bool>(global3.b.a, global3.c, global3.b.d, false)), global3.c, u_input.b.x < u_input.b.x)), false, ~u_input.b), !(!(true != global3.c)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, 237f))), -_wgslsmith_sub_i32(countOneBits(~global3.b.b), max(u_input.c, u_input.c)));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2099f, global3.a.x, var_1.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 6u)])))), global3.b, func_4(!vec3<bool>(false, global3.c, global3.b.a), ~func_2(global3.b), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_1.a, global3.a.xw)), vec2<f32>(var_0, global2[_wgslsmith_index_u32(u_input.b.x, 6u)]))))), _wgslsmith_sub_vec2_u32(reverseBits(~u_input.b.xx) >> (((u_input.b.yx & vec2<u32>(global3.b.e.x, 0u)) & _wgslsmith_mult_vec2_u32(u_input.b.zy, global3.b.e.xx)) % vec2<u32>(32u)), ~select(vec2<u32>(u_input.b.x, 4339u), abs(vec2<u32>(102886u, u_input.b.x)), select(vec2<bool>(global3.b.d, global3.c), vec2<bool>(true, global3.b.a), false))), true);
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1911f, var_1.a.x, var_2.a.a.x, var_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.a.x, 611f, global2[_wgslsmith_index_u32(1u, 6u)])))), Struct_1(global3.c, 0i | var_2.a.b.b, _wgslsmith_div_vec3_i32(select(var_2.a.b.c, vec3<i32>(22929i, 2682i, -44729i), global3.b.a), var_2.a.b.c), 33327u >= (var_2.b.x >> (4294967295u % 32u)), global3.b.e), true), _wgslsmith_add_vec2_u32(~(vec2<u32>(4294967295u, 15539u) & ~global3.b.e.zy), ~(~vec2<u32>(u_input.b.x, 16646u))), all(select(vec2<bool>(any(vec4<bool>(global3.b.a, var_2.c, true, false)), true & global3.c), !(!vec2<bool>(global3.c, true)), select(vec2<bool>(var_2.a.c, global3.b.d), select(vec2<bool>(false, false), vec2<bool>(var_2.a.b.d, true), global3.b.a), vec2<bool>(true, true)))));
    return reverseBits(~_wgslsmith_sub_u32(max(var_3.b.x, ~7923u), reverseBits(_wgslsmith_clamp_u32(4294967295u, global3.b.e.x, global3.b.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(4294967295u, func_1()) < global3.b.e.x;
    global0 = u_input.b.x >= ~func_1();
    var var_1 = vec3<u32>(u_input.b.x, global3.b.e.x, ~select(~global3.b.e.x, global3.b.e.x, false));
    global1 = abs(global3.b.b & (-1i & firstLeadingBit(global3.b.b))) >= _wgslsmith_sub_i32(~u_input.c, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -96854i), global3.b.c.zy) | _wgslsmith_dot_vec2_i32(vec2<i32>(17611i, global3.b.c.x), vec2<i32>(-25772i, -2147483647i))));
    global2 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~(~0u), 6u)], _wgslsmith_mult_vec4_u32(vec4<u32>(1u & var_1.x, ~4294967295u, 13356u, global3.b.e.x), _wgslsmith_div_vec4_u32(vec4<u32>(~global3.b.e.x, _wgslsmith_add_u32(0u, 0u), ~89436u, 1u), ~(~vec4<u32>(var_1.x, 4294967295u, 31051u, global3.b.e.x)))), ~(-(global3.b.c.xx ^ global3.b.c.yx)) << (_wgslsmith_sub_vec2_u32(global3.b.e.xx, _wgslsmith_div_vec2_u32(var_1.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), global3.b.e.zx))) % vec2<u32>(32u)), global3.b.c.xy);
}

