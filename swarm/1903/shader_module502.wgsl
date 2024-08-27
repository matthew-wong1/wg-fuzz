struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(819f, Struct_4(Struct_2(false, Struct_1(vec2<i32>(9446i, 1i), 1936f), Struct_1(vec2<i32>(2746i, -43334i), -1361f)), 739f, Struct_1(vec2<i32>(55590i, i32(-2147483648)), 542f)));

var<private> global1: array<u32, 8>;

var<private> global2: Struct_4;

var<private> global3: array<bool, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> bool {
    let var_0 = global2.a.b;
    return all(select(vec3<bool>(_wgslsmith_div_u32(u_input.a.x, 17372u) == firstLeadingBit(40414u), !global2.a.a || global0.b.a.a, true), !select(vec3<bool>(global0.b.a.a, global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 16u)]), !vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a.x, 16u)]), select(vec3<bool>(global2.a.a, true, global0.b.a.a), vec3<bool>(global0.b.a.a, true, global2.a.a), true)), vec3<bool>(false, !global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], 16u)] && !global0.b.a.a, any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)], true)))));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    global0 = Struct_5(global0.b.b, global0.b);
    global2 = Struct_4(Struct_2(!arg_1, Struct_1(~(~vec2<i32>(u_input.c.x, 2147483647i)), global2.b), global2.a.c), _wgslsmith_f_op_f32(-global2.a.b.b), global0.b.c);
    global0 = Struct_5(arg_0.d.x, Struct_4(global2.a, _wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f * 1000f))), arg_0.a));
    var var_0 = !(!vec2<bool>(!func_3(global2.a.b.a, -22380i, global2.a.c.a.x), false));
    global0 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_0.a.b)))), global0.b);
    return Struct_3(Struct_1(-min(-u_input.c, min(arg_0.b.a, global0.b.a.c.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.a)))), _wgslsmith_f_op_f32(-arg_0.d.x)))), Struct_1(vec2<i32>(arg_0.b.a.x, -(~1i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.b, arg_0.c) + -493f)), global0.b.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.b + global2.c.b) + _wgslsmith_f_op_f32(ceil(global2.c.b))), global0.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(189f, arg_0.a.b, _wgslsmith_f_op_f32(-1321f - global2.c.b)) - _wgslsmith_f_op_vec3_f32(select(arg_0.d, vec3<f32>(global2.c.b, 1212f, global0.a), !vec3<bool>(false, true, var_0.x))))), global0.b.a);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = i32(-1i) * -13091i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -779f)))) * _wgslsmith_f_op_f32(step(911f, 1005f)));
    let var_2 = vec2<i32>(~36941i, 12341i);
    let var_3 = _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 8u)], (~global1[_wgslsmith_index_u32(~u_input.e, 8u)] ^ global1[_wgslsmith_index_u32(u_input.a.x, 8u)]) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, u_input.a.x >> (global1[_wgslsmith_index_u32(62159u, 8u)] % 32u)), u_input.a) % 32u));
    let var_4 = func_2(arg_1, true);
    return global2.c;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_div_i32(14787i, arg_2.c.a.x >> (~global1[_wgslsmith_index_u32(41232u, 8u)] % 32u));
    let var_1 = ~(~vec4<u32>(~(~u_input.d.x), _wgslsmith_mult_u32(1u, ~1846u), ~(~u_input.e), 4294967295u));
    global2 = Struct_4(arg_2, arg_1, Struct_1(vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(-1i), 1i), max(arg_3, arg_0)), global2.a.c.b));
    global2 = Struct_4(Struct_2(!all(vec4<bool>(global2.a.a, false, true, true)), Struct_1(vec2<i32>(global2.c.a.x & var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, -1i, -39131i, arg_3), vec4<i32>(2574i, -27860i, 51394i, global0.b.a.b.a.x))), arg_2.c.b), func_4(1i, func_2(Struct_3(global0.b.a.c, Struct_1(vec2<i32>(-34902i, u_input.c.x), -291f), global0.b.b, vec3<f32>(1632f, global2.b, arg_2.c.b), global0.b.a), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-424f, arg_1))), Struct_1(_wgslsmith_clamp_vec2_i32(~u_input.c, (arg_2.b.a >> (vec2<u32>(4294967295u, var_1.x) % vec2<u32>(32u))) | global2.c.a, u_input.c << (~vec2<u32>(0u, var_1.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-arg_1)));
    global2 = global0.b;
    return false;
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_4, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = 5865u;
    global0 = Struct_5(global0.a, global0.b);
    global2 = global0.b;
    var var_1 = Struct_5(global2.c.b, Struct_4(func_2(func_2(Struct_3(global0.b.a.b, Struct_1(global0.b.a.b.a, -416f), 179f, vec3<f32>(1044f, global0.b.c.b, 716f), arg_2.a), true), arg_3.x).e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(109f * 1102f)), func_4(-8921i, func_2(Struct_3(global0.b.c, Struct_1(arg_2.a.b.a, global2.b), arg_2.c.b, vec3<f32>(196f, 1000f, -1030f), Struct_2(true, arg_2.a.c, global2.a.c)), any(vec4<bool>(arg_0.x, true, true, false))))));
    return _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(select(max(vec4<u32>(14926u, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 1u), vec4<u32>(37057u, global1[_wgslsmith_index_u32(4479u, 8u)], 1u, u_input.d.x)), ~vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.a.x, var_0), true), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(94476u, 8u)], 8u)], 0u, u_input.a.x, var_0) << (_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_0, 8u)], 44048u, u_input.d.x, 10514u), vec4<u32>(u_input.a.x, 0u, var_0, var_0)) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_sub_u32(1u, abs(1u) ^ global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(30443u, 8u)], 8u)]), var_0, _wgslsmith_add_u32(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4166u, 31370u, 0u, 1705u), vec4<u32>(u_input.b.x, var_0, global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x))) >> (4294967295u % 32u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-(~38841i | global2.c.a.x));
    var var_1 = global0.b.c;
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -1303f), -700f, _wgslsmith_f_op_f32(abs(829f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(424f, global0.a, var_1.b, global0.a), vec4<f32>(global0.b.c.b, -1239f, var_1.b, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-378f, global2.b, var_1.b, global0.b.a.b.b))))))));
    var var_4 = _wgslsmith_f_op_f32(395f + 1000f);
    let var_5 = func_5(vec4<bool>(global3[_wgslsmith_index_u32(reverseBits(firstTrailingBit(_wgslsmith_div_u32(u_input.e, global1[_wgslsmith_index_u32(9387u, 8u)]))), 16u)], !(var_3.x != global2.c.b), global0.b.a.a, true), abs(0i), Struct_4(Struct_2(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(446u, 1u, false), 8u)], 16u)] & func_1(global2.c.a.x, global2.c.b, Struct_2(global2.a.a, Struct_1(vec2<i32>(global2.c.a.x, var_1.a.x), 749f), Struct_1(vec2<i32>(16400i, -2147483647i), var_3.x)), 78400i), global0.b.c, func_2(func_2(Struct_3(Struct_1(vec2<i32>(-36815i, -1i), var_1.b), global0.b.c, var_1.b, vec3<f32>(482f, 1876f, global2.b), global0.b.a), false), false).e.c), _wgslsmith_f_op_f32(-1f), global2.c), !vec2<bool>(!select(true, global0.b.a.a, global3[_wgslsmith_index_u32(0u, 16u)]), select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 8u)], 8u)], 4294967295u, 29641u, 1u), vec4<u32>(53043u, u_input.a.x, 4065u, 4294967295u)), 16u)], global2.a.a, global0.b.a.a & global3[_wgslsmith_index_u32(35463u, 16u)])));
    let var_6 = var_3.xz;
    let x = u_input.a;
    s_output = StorageBuffer(-global0.b.a.b.a.x, 4294967295u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_5, ~var_5), u_input.e), u_input.c.x);
}

