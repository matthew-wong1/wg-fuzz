struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 28> = array<i32, 28>(-17211i, -36409i, 0i, 39977i, 22511i, -1i, -4129i, 0i, 0i, 2147483647i, -16857i, 0i, -1i, 1i, -12557i, 56374i, 29303i, 1i, 31635i, -39165i, 1i, 0i, 1i, 29254i, -15430i, 1i, -24442i, -6474i);

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: f32 = -1320f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(315f, -207f), vec2<f32>(-802f, 1213f))), vec2<f32>(297f, -1603f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1145f, 663f))))));
    var var_1 = ~u_input.a.xwx;
    var var_2 = _wgslsmith_f_op_f32(ceil(-1000f));
    var var_3 = vec4<u32>(abs(60794u), 1u, _wgslsmith_sub_u32(firstTrailingBit(~max(20192u, u_input.b.x)), u_input.b.x), u_input.b.x);
    return ~(-36232i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec3<i32>(u_input.c, func_1(~(~u_input.a)), select(~u_input.a.x ^ _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(11973u, 28u)]), u_input.c, _wgslsmith_mod_u32(4294967295u, u_input.b.x) < u_input.b.x)), ~(-u_input.a.wxx));
    global1 = array<i32, 28>();
    let var_1 = !(~var_0.x >= select(0i, ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 28u)], u_input.b.x < u_input.b.x));
    var var_2 = -2147483647i;
    global1 = array<i32, 28>();
    var_2 = u_input.a.x;
    global2 = array<vec2<bool>, 23>();
    var var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~u_input.b.x), select(~u_input.b.x, 0u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1876f)))) != _wgslsmith_f_op_f32(f32(-1f) * -342f)), ~u_input.a.zxy, u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, firstTrailingBit(u_input.b.x)));
}

