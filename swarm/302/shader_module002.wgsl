struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_3, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.e.x) + _wgslsmith_f_op_f32(f32(-1f) * -1701f));
    global1 = array<Struct_2, 13>();
    var var_1 = arg_1.c.e;
    var var_2 = min(u_input.d.zy, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(4196i, arg_1.b.x, arg_1.c.d), _wgslsmith_mult_vec3_i32(u_input.e, u_input.e), vec3<i32>(2147483647i, -36051i, arg_1.c.b)), arg_1.b.xyx), u_input.e.x));
    var_1 = arg_1.c.e;
    return select(select(vec4<bool>(all(vec4<bool>(global2.c, true, true, global2.c)) || any(vec2<bool>(false, true)), all(select(vec4<bool>(true, arg_1.c.c.x, global2.c, false), vec4<bool>(global2.c, true, arg_1.c.a.c, global2.c), false)), global2.c, true), select(!select(vec4<bool>(false, true, arg_1.c.c.x, global2.c), vec4<bool>(false, false, arg_1.c.a.c, global2.c), false), !(!vec4<bool>(global2.c, arg_1.c.c.x, arg_1.c.a.c, global2.c)), global2.c & false), vec4<bool>(false, arg_1.c.c.x, false, all(arg_1.c.c))), vec4<bool>(!(all(vec3<bool>(arg_1.c.c.x, global2.c, arg_1.c.c.x)) || (var_1.x < -2091f)), all(!select(arg_1.c.c, vec2<bool>(true, true), true)), select(all(select(arg_1.c.c, arg_1.c.c, arg_1.c.c)), false, !(!arg_1.c.c.x)), false), select(vec4<bool>(!global2.c, !all(vec4<bool>(arg_1.c.c.x, global2.c, global2.c, true)), all(arg_1.c.c), global2.c), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(global2.c, true, false, arg_1.c.a.c), vec4<bool>(arg_1.c.a.c, arg_1.c.a.c, global2.c, true))), !(!(!vec4<bool>(global2.c, arg_1.c.c.x, global2.c, false)))));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1;
    global1 = array<Struct_2, 13>();
    let var_1 = ~64254i;
    let var_2 = u_input.e.yy;
    let var_3 = Struct_2(arg_1.a, _wgslsmith_add_i32(-39899i, -u_input.d.x), vec2<bool>(all(select(func_3(374f, global3[_wgslsmith_index_u32(u_input.a, 30u)]), func_3(var_0.e.x, global3[_wgslsmith_index_u32(26303u, 30u)]), select(vec4<bool>(global2.c, arg_0, var_0.c.x, false), vec4<bool>(true, arg_0, true, arg_1.a.c), vec4<bool>(false, global2.c, false, arg_0)))), true), 1i, var_0.e);
    return _wgslsmith_dot_vec4_i32(~u_input.d, ~(-(~(~vec4<i32>(-1917i, 58440i, 2147483647i, var_2.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = ~select(arg_1.d, _wgslsmith_dot_vec2_i32(~u_input.e.yx, vec2<i32>(-33536i, func_2(false, arg_1))), !arg_1.c.x);
    global0 = array<vec2<u32>, 6>();
    global1 = array<Struct_2, 13>();
    var var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~((vec4<u32>(1u, 38443u, 65590u, 5436u) & vec4<u32>(arg_0.b, arg_1.a.b, 4294967295u, 4294967295u)) & ~vec4<u32>(122579u, 0u, 0u, 144498u)), min(~firstTrailingBit(vec4<u32>(1u, arg_1.a.a.x, arg_0.b, arg_1.a.b)), vec4<u32>(_wgslsmith_mult_u32(global2.b, global2.b), arg_1.a.b, arg_0.b << (arg_0.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, arg_1.a.a.x, arg_1.a.b), vec3<u32>(arg_0.b, 3590u, 4294967295u)))))), 13u)];
    global0 = array<vec2<u32>, 6>();
    return ~arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 6>();
    let var_0 = max(abs(21509i), abs(func_1(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.a.x, u_input.c), 6u)], 1u, true), global1[_wgslsmith_index_u32(35761u, 13u)], true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1061f * 1065f), _wgslsmith_f_op_f32(round(-971f)), any(vec2<bool>(global2.c, global2.c)))))));
    global0 = array<vec2<u32>, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -637f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(296f, 1145f)), 882f))), _wgslsmith_f_op_f32(ceil(1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1493f, -678f, 480f, 1622f), vec4<f32>(-442f, -1370f, 1630f, 833f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1992f, 829f, -1030f, 1166f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-312f, 530f, -1267f, 501f)))))));
    let var_2 = global3[_wgslsmith_index_u32(47577u, 30u)];
    global1 = array<Struct_2, 13>();
    global3 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(316f, select(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, u_input.c, global2.b) ^ vec4<u32>(global2.b, 4294967295u, var_2.c.a.b, 1u), ~vec4<u32>(u_input.c, 133910u, 83086u, var_2.c.a.b))), select(firstLeadingBit(vec4<u32>(var_2.c.a.b, u_input.a, 46043u, 1u)), abs(vec4<u32>(u_input.c, global2.b, u_input.c, 7307u)), !vec4<bool>(var_2.c.a.c, true, var_2.c.c.x, var_2.c.c.x)) >> ((~vec4<u32>(67261u, 4294967295u, u_input.c, u_input.a) | ~vec4<u32>(u_input.c, 1u, 26001u, global2.b)) % vec4<u32>(32u)), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.xyw)) * _wgslsmith_f_op_vec3_f32(-var_2.c.e.xyz)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-735f * -371f)), 1086f, var_2.c.e.x)), 1u);
}

