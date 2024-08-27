struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-250f, vec3<bool>(false, false, true), vec3<i32>(91886i, -8185i, -18437i), Struct_1(vec2<u32>(26532u, 1522u), vec2<i32>(2147483647i, 12748i), 48419u, vec4<u32>(0u, 24802u, 1u, 4294967295u)));

var<private> global1: bool = true;

var<private> global2: array<f32, 1>;

var<private> global3: array<Struct_3, 30>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<f32> {
    var var_0 = 21848u;
    global0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1895f), global0.b, vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.c.x, 18983i), -vec4<i32>(global0.d.b.x, -2147483647i, -1i, -8772i)), -_wgslsmith_add_i32(global0.d.b.x, 1i), firstLeadingBit(firstTrailingBit(global0.c.x)) << (global0.d.c % 32u)), Struct_1(u_input.d, u_input.c.xw >> (vec2<u32>(26100u, global0.d.c | 43010u) % vec2<u32>(32u)), 46636u, countOneBits(select(abs(vec4<u32>(u_input.b, u_input.b, 0u, 0u)), global0.d.d, !global0.b.x))));
    var var_1 = any(vec4<bool>(global0.b.x, true, !global0.b.x, all(!vec4<bool>(global0.b.x, global0.b.x, true, false))));
    var var_2 = vec2<bool>(global0.b.x, global0.b.x);
    global1 = !any(select(vec3<bool>(true && var_2.x, any(vec3<bool>(var_2.x, var_2.x, var_2.x)), var_2.x), select(global0.b, vec3<bool>(true, true, true), var_2.x), var_2.x));
    return vec4<f32>(global2[_wgslsmith_index_u32(~1572u, 1u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, -1111f) * global2[_wgslsmith_index_u32(~1u, 1u)]), _wgslsmith_f_op_f32(abs(global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global0.d.a.x, 1u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1297f, -368f)))))), -1085f);
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<bool>(global0.b.x, false, global0.b.x, true);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2465f + _wgslsmith_f_op_f32(f32(-1f) * -438f)), -714f, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(251f * 1148f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))), _wgslsmith_f_op_f32(-var_1.b.x), 1f) * var_1.b));
    global2 = array<f32, 1>();
    var var_3 = Struct_3(global0.d);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.b, 1u)])) * 1f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - var_2.a) * _wgslsmith_f_op_f32(floor(var_2.a))), _wgslsmith_div_f32(var_1.b.x, -707f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1330f + 551f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f + 1357f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.b, vec4<f32>(-1593f, var_2.a, var_2.a, var_1.b.x))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(581f, 1713f, -1763f, var_2.a), vec4<f32>(859f, 475f, -1294f, global0.a))))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec3<i32>) -> vec3<u32> {
    global2 = array<f32, 1>();
    global3 = array<Struct_3, 30>();
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-279f, global2[_wgslsmith_index_u32(~firstTrailingBit(u_input.b), 1u)]) * _wgslsmith_f_op_f32(floor(-686f))));
    var var_2 = _wgslsmith_dot_vec3_i32(~min(select(_wgslsmith_add_vec3_i32(vec3<i32>(55334i, u_input.e.x, 1i), vec3<i32>(arg_2.x, global0.c.x, arg_2.x)), vec3<i32>(arg_2.x, -21253i, -786i), true), vec3<i32>(1i, i32(-1i) * -1i, 0i)), countOneBits(~abs(select(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(arg_2.x, global0.d.b.x, 1i), vec3<bool>(false, global0.b.x, global0.b.x)))));
    return global0.d.d.zyw;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 1>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(global0.d.c, 1u)])))))));
    global3 = array<Struct_3, 30>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(abs(global0.d.d.x), abs(global0.d.d.x)), 1u)] * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_1(vec2<f32>(1926f, global0.a), Struct_4(3340f, vec4<f32>(global2[_wgslsmith_index_u32(global0.d.d.x, 1u)], 1193f, global0.a, global2[_wgslsmith_index_u32(u_input.b, 1u)])), global0.c), vec3<u32>(u_input.d.x, 31027u, 43170u)), 1u)]) - -543f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1767f, global0.a, global0.a, global0.a), vec4<f32>(global0.a, -556f, 1502f, -500f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a, 302f, global2[_wgslsmith_index_u32(global0.d.a.x, 1u)], global0.a))))))));
    global1 = all(!(!(!vec3<bool>(false, global0.b.x, true))));
    let var_2 = ~firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.c, u_input.b, u_input.b, u_input.d.x), vec4<u32>(4294967295u, global0.d.c, u_input.b, global0.d.a.x)), ~global0.d.a.x), u_input.b, func_1(var_1.b.zw, var_1, vec3<i32>(u_input.e.x, global0.c.x, global0.c.x)).x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~abs(global0.d.a), reverseBits(_wgslsmith_clamp_i32(~(-2147483647i), 2147483647i, -635i)), ~0i);
}

