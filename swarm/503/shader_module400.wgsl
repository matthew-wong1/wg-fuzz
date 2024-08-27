struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<vec3<f32>, 19>;

var<private> global3: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-1732f, 2016f), vec2<f32>(223f, -466f), vec2<f32>(1163f, 914f), vec2<f32>(-1238f, 1000f), vec2<f32>(2292f, 1292f), vec2<f32>(170f, 1657f), vec2<f32>(-815f, -208f), vec2<f32>(-706f, 642f), vec2<f32>(398f, 787f), vec2<f32>(-217f, 1000f), vec2<f32>(1000f, 1000f), vec2<f32>(1172f, -944f));

var<private> global4: vec4<u32> = vec4<u32>(1u, 0u, 45244u, 21419u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> bool {
    global4 = vec4<u32>(~1u, _wgslsmith_mod_u32(u_input.b, 51378u), reverseBits(arg_3), reverseBits(arg_2.x));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.x & u_input.d.x, _wgslsmith_div_u32(53684u, u_input.c.x)), 14u)];
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(~abs(_wgslsmith_div_u32(4294967295u >> (u_input.d.x % 32u), 436u)), 14u)]);
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(~(~(max(arg_3, 1u) ^ 34958u)), 14u)]);
    var var_3 = Struct_1(select(vec3<bool>(var_0.e, true, any(select(var_0.a.yx, vec2<bool>(false, false), vec2<bool>(var_2.a.e, false)))), vec3<bool>(any(!vec4<bool>(var_1.a.e, var_1.a.a.x, true, false)), select(var_0.e, var_2.a.a.x, var_1.a.e), var_0.a.x), var_1.a.a), vec3<i32>(-1i, i32(-1i) * -1i, i32(-1i) * -69442i), vec4<u32>(0u, 4294967295u, 1u >> (arg_3 % 32u), abs(max(arg_3, global4.x))), var_1.a.d, var_1.a.a.x);
    return any(var_0.a.yy);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> bool {
    global2 = array<vec3<f32>, 19>();
    global4 = u_input.c;
    let var_0 = arg_1.x;
    let var_1 = !select(!(!(!vec3<bool>(false, true, arg_0))), !select(vec3<bool>(false, true, arg_0), !vec3<bool>(arg_0, arg_0, false), true), vec3<bool>(arg_0 || func_3(vec4<i32>(1i, u_input.a, 1i, -39265i), -2147483647i, vec3<u32>(4294967295u, 32493u, u_input.c.x), u_input.d.x), !select(arg_0, true, arg_0), arg_0));
    let var_2 = global1[_wgslsmith_index_u32(1u >> (~u_input.d.x % 32u), 14u)];
    return var_1.x;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(213f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1167f - -486f)))))));
    global2 = array<vec3<f32>, 19>();
    global4 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -137f))) * -3061f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(abs(u_input.d.x), _wgslsmith_sub_u32(46063u, global4.x))), 12u)] * _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(u_input.b, 12u)]));
    return !(!func_2(_wgslsmith_sub_u32(global4.x, u_input.b) >= ~u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1033f, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-196f, 196f, var_1.x, -1000f) * vec4<f32>(-2086f, var_1.x, 1000f, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 19>();
    global1 = array<Struct_1, 14>();
    global0 = true;
    let var_0 = any(vec2<bool>(all(vec3<bool>(func_1(), true, true)), true));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(~(u_input.d.x ^ u_input.c.x), 14u)]);
    var var_2 = -1i;
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~global4.zy), _wgslsmith_f_op_f32(-1135f + -1109f), min((select(var_3.b.zx, vec2<i32>(var_1.a.b.x, u_input.a), true) ^ _wgslsmith_div_vec2_i32(var_3.b.yy, var_3.b.yy)) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_3.b.x, var_1.a.b.x), vec2<i32>(var_3.b.x, 0i)), min(var_1.a.b.yx, -var_1.a.b.xx)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(450f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1273f)), -1418f))), _wgslsmith_f_op_f32(round(-433f))));
}

