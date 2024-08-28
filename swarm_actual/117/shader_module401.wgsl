struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<f32>, 27>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(max(128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -207f))));
    global1 = array<vec3<f32>, 27>();
    global1 = array<vec3<f32>, 27>();
    var var_2 = !var_0;
    return !(all(select(select(vec3<bool>(true, var_0, false), vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, true)), vec3<bool>(var_0, var_0, false), true)) | true);
}

fn func_2() -> Struct_2 {
    let var_0 = select(vec4<bool>(true, true, -1i < ~global2.a.x, func_3(global0.x)), vec4<bool>(true, true, true, true), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-753f, -1565f), 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2322f, -210f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 2057f), vec2<f32>(-192f, -582f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1145f, 1339f) + _wgslsmith_f_op_f32(f32(-1f) * -575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1634f)) + _wgslsmith_f_op_f32(min(322f, -986f))))));
    let var_2 = var_0;
    global1 = array<vec3<f32>, 27>();
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1f) * -505f)));
    return Struct_2(var_0.yx, var_1.x);
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2();
    global1 = array<vec3<f32>, 27>();
    var var_1 = ~16506i;
    let var_2 = ~(-global2.a);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-324f, 1000f) - vec2<f32>(var_0.b, -246f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(933f, 1121f) + vec2<f32>(215f, var_0.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, -975f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(403f, var_0.b))))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-805f * var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -633f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1362f)), var_0.a))))));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~global2.a.x, -u_input.b.x, -u_input.b.x), global2.a.xzz >> (vec3<u32>(u_input.a, 37074u, u_input.a) % vec3<u32>(32u))), u_input.b) | u_input.b;
    var var_1 = Struct_2(!select(func_1(), vec2<bool>(false, true), func_1()), -170f);
    var_1 = func_2();
    var var_2 = func_2();
    let var_3 = Struct_3(vec4<i32>(~0i, u_input.b.x, global2.a.x, _wgslsmith_dot_vec2_i32(var_0.xz << (global0.zz % vec2<u32>(32u)), abs(~var_0.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(global2.a.yx, min(_wgslsmith_div_vec2_i32(select(var_3.a.wy, vec2<i32>(global2.a.x, var_3.a.x), false), firstTrailingBit(global2.a.xy)), var_0.yy)), vec2<f32>(var_2.b, -195f), 0u, vec3<i32>(_wgslsmith_mod_i32(global2.a.x, 1i), 41897i, ~_wgslsmith_dot_vec3_i32(u_input.b, -var_3.a.xwy)));
}

