struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-1i, 0i, i32(-2147483648), 0i), vec4<i32>(-30879i, 38699i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 19565i, 0i, 0i));

var<private> global1: array<f32, 18>;

var<private> global2: Struct_5 = Struct_5(vec3<f32>(-171f, -792f, -1000f), 2566f, vec3<i32>(1i, 1i, 13508i), -1142f, vec4<bool>(false, true, true, false));

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_4, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    global4 = array<Struct_4, 18>();
    let var_0 = u_input.a;
    global1 = array<f32, 18>();
    var var_1 = select(global2.e.zz, global2.e.yz, !all(!vec3<bool>(arg_0.b, false, true)));
    let var_2 = -448f;
    return _wgslsmith_div_i32(-2147483647i, arg_0.a);
}

fn func_3(arg_0: i32) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, global3.x), 18u)];
    let var_1 = ~global3.wwx;
    global3 = vec4<u32>(global3.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(24896u, _wgslsmith_dot_vec3_u32(global3.xzz | vec3<u32>(41259u, var_0.a.x, 1u), ~global3.ywy))), _wgslsmith_mult_u32(5915u, ~(~44742u) >> (countOneBits(var_0.a.x) % 32u)), abs(firstLeadingBit(~_wgslsmith_dot_vec2_u32(var_1.zx, var_0.a))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 18u)])), global2.c.zz, u_input.d);
    global1 = array<f32, 18>();
    return Struct_1(-2147483647i, arg_0 <= _wgslsmith_div_i32(~1i, ~u_input.d));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global0 = array<vec4<i32>, 3>();
    var var_0 = func_3(func_2(Struct_2(_wgslsmith_sub_i32(2147483647i, u_input.d), global2.e.x), arg_0.ww) & 31071i);
    var var_1 = global2.c.x;
    var var_2 = ~global3.xwz & select(global3.xzz, global3.xwz & global3.wxx, global2.e.yzw);
    var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, 1i), _wgslsmith_mult_i32(-1i, i32(-1i) * -global2.c.x));
    return ~(~5276u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 3>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.xy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 18u)], 3334f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1737f, 1050f))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.b)), -550f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.a.xz, global2.a.zy)), vec2<f32>(-424f, global2.b))) + global2.a.yx));
    global0 = array<vec4<i32>, 3>();
    global3 = vec4<u32>(38168u, u_input.a, select(_wgslsmith_mod_u32(global3.x, 4294967295u) >> (_wgslsmith_sub_u32(u_input.b.x, global3.x) % 32u), 1u, true), abs(_wgslsmith_sub_u32(~u_input.a, global3.x))) | _wgslsmith_div_vec4_u32(vec4<u32>(~(~u_input.b.x), ~_wgslsmith_div_u32(global3.x, u_input.a), func_1(vec4<bool>(global2.e.x, global2.e.x, global2.e.x, global2.e.x)), 0u), vec4<u32>(54272u, 4294967295u, 13165u, ~1u));
    global1 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(462f, -636f))), _wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f * global2.d)), _wgslsmith_f_op_f32(628f + var_0.x))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(global2.c, min(global2.c & global2.c, -global2.c)), _wgslsmith_mod_vec3_i32(~(vec3<i32>(global2.c.x, -8083i, global2.c.x) | global2.c), vec3<i32>(~86218i, 1i, ~u_input.d))), ~(~(~_wgslsmith_mod_u32(0u, 18892u))), 1i);
}

