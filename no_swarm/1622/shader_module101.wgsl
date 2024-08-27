struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(-19481i, Struct_1(true, 38772u, vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(20854u, 4294967295u, 7900u, 372u))), Struct_2(i32(-2147483648), Struct_1(false, 4294967295u, vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(0u, 52658u, 1u, 14031u))), Struct_2(-6763i, Struct_1(true, 86112u, vec4<u32>(4294967295u, 23242u, 73794u, 32307u), vec4<u32>(4294967295u, 28948u, 60271u, 36106u))));

var<private> global1: i32 = 2147483647i;

var<private> global2: array<Struct_1, 1>;

var<private> global3: Struct_5;

var<private> global4: array<vec4<f32>, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    global1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1i, -1i, u_input.c), vec4<i32>(u_input.c, u_input.c, 2517i, u_input.c)) & -_wgslsmith_mod_i32(u_input.c, u_input.c), _wgslsmith_div_i32(-(~u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -31453i, u_input.c), -vec3<i32>(-1i, u_input.c, u_input.c)))), _wgslsmith_mod_i32(-2147483647i, u_input.c));
    global4 = array<vec4<f32>, 1>();
    global1 = -73091i;
    let var_0 = vec2<bool>(global3.a.x, global3.d.a);
    var var_1 = u_input.c;
    return vec2<i32>(u_input.c << (global3.d.d.x % 32u), _wgslsmith_mod_i32(1i, -u_input.c)) ^ -vec2<i32>(-_wgslsmith_add_i32(u_input.c, -18944i), -1i);
}

fn func_2(arg_0: Struct_4) -> f32 {
    let var_0 = global3.a;
    var var_1 = !vec2<bool>(global3.b.b, arg_0.b);
    global3 = Struct_5(global3.a, arg_0, 1000f, global3.d);
    var var_2 = func_3();
    var var_3 = 56126u >> (1u % 32u);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-310f, global3.b.a.x)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    let var_0 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(global3.b)), _wgslsmith_f_op_f32(-global3.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.a.x + arg_0.x)), 0u != _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 14767u, 43725u)))) + _wgslsmith_f_op_f32(-arg_0.x)), 119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1045f, arg_0.x, true)), _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_1 = global3.d;
    var var_2 = 485f;
    var var_3 = global3.d.c;
    let var_4 = global0[_wgslsmith_index_u32(u_input.b, 3u)];
    return Struct_3(vec2<bool>(true, all(!(!vec4<bool>(var_4.b.a, global3.a.x, true, var_1.a)))), countOneBits(4294967295u) | _wgslsmith_div_u32(_wgslsmith_div_u32(countOneBits(u_input.b), 0u), ~(var_3.x ^ global3.d.b)), var_1.c.x, global3.d, Struct_2(var_4.a, global2[_wgslsmith_index_u32(max(countOneBits(~79966u), 0u), 1u)]));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = global3.d.d >> (firstLeadingBit(~countOneBits(min(vec4<u32>(0u, 0u, 4294967295u, 31610u), vec4<u32>(69973u, 0u, arg_0.c, 1u)))) % vec4<u32>(32u));
    var var_1 = -167f;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.c, 631f))), -1182f, _wgslsmith_f_op_f32(-global3.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, -1000f, arg_1) * vec3<f32>(arg_1, -1268f, -687f))))))));
    var var_3 = func_1(var_2.yx, ~min(0i, 34905i) >> (var_0.x % 32u)).e.b.c.yxy;
    let var_4 = func_1(global3.b.a, arg_0.e.a).e;
    return _wgslsmith_f_op_f32(-global3.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(500f, 1857f) * -1624f), _wgslsmith_f_op_f32(f32(-1f) * -1091f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-218f * _wgslsmith_f_op_f32(global3.b.c.x + global3.c)), global3.b.c.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(global3.b.a, ~(-6902i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b.a.x))), true, i32(-1i) * -2147483647i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1120f)) - _wgslsmith_f_op_f32(trunc(676f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1364f + _wgslsmith_f_op_f32(-396f + global3.b.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.a.x * global3.c) * 1f)))));
    let var_1 = global3.d.c.zyz;
    global4 = array<vec4<f32>, 1>();
    global2 = array<Struct_1, 1>();
    var var_2 = func_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(sign(global3.c))), ~u_input.c).e;
    var_2 = global0[_wgslsmith_index_u32(~firstTrailingBit(~global3.d.d.x), 3u)];
    var var_3 = vec2<u32>(countOneBits(_wgslsmith_div_u32(~0u, var_2.b.d.x << (1u % 32u))), ~(~abs(22582u)) ^ abs(_wgslsmith_div_u32(27240u, _wgslsmith_div_u32(99491u, var_2.b.d.x))));
    let var_4 = var_2.b.c.yz;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, 4294967295u, _wgslsmith_f_op_f32(var_0.x - global3.c), 1u, _wgslsmith_add_i32(select(u_input.c, func_3().x, global3.b.b), min(u_input.c << (37656u % 32u), var_2.a)));
}

