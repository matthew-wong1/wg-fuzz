struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(76196u, 20608u, 36779u), vec3<u32>(55039u, 61401u, 4294967295u), vec3<u32>(25998u, 65153u, 0u), vec3<u32>(44581u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(82838u, 1u, 4294967295u), vec3<u32>(28778u, 1u, 0u), vec3<u32>(0u, 33050u, 18230u), vec3<u32>(4294967295u, 4294967295u, 1u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_5(Struct_2(vec4<bool>(true, true, !arg_0.d.a, !any(vec3<bool>(global1.a, false, false)))));
    let var_1 = arg_0.e.a.xx;
    global2 = array<vec3<u32>, 9>();
    var var_2 = true;
    global2 = array<vec3<u32>, 9>();
    return u_input.a.x >> (arg_0.e.c % 32u);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = arg_3;
    let var_1 = false;
    let var_2 = firstLeadingBit(global2[_wgslsmith_index_u32(u_input.e.x, 9u)] ^ vec3<u32>(~21123u, 63797u, ~arg_3.c));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.e.b, global1.b, var_0.b.b, -585f)))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-arg_3.a.x), -787f, -1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), -2351f)));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-750f)))), !select(select(arg_1.a.xz, vec2<bool>(true, true), !global0[_wgslsmith_index_u32(4294967295u, 19u)]), !select(arg_1.a.wy, arg_1.a.ww, true), vec2<bool>(var_0.c == arg_3.c, any(vec4<bool>(global1.a, global1.a, true, true)))), Struct_1(arg_1.a.x, var_3.x, -abs(-arg_3.b.c)), Struct_1(var_0.a.x < _wgslsmith_f_op_f32(f32(-1f) * -421f), 494f, _wgslsmith_mod_i32(2147483647i, -reverseBits(u_input.a.x))), arg_3);
    return _wgslsmith_f_op_vec3_f32(round(arg_3.a));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1492f))), _wgslsmith_f_op_f32(-global1.b)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(global1.a, Struct_2(vec4<bool>(global1.a, false, global1.a, true)), u_input.b, Struct_3(vec3<f32>(1000f, global1.b, -134f), Struct_1(true, -1410f, u_input.a.x), 3322u, false, Struct_1(global1.a, -859f, -22611i)))), vec3<f32>(global1.b, global1.b, -1503f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 393f, -1386f)))))));
    global0 = array<vec2<bool>, 19>();
    let var_1 = vec4<f32>(var_0.x, -550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.x, global1.b, global1.a)), var_0.x)))), -511f);
    global1 = Struct_1((u_input.b.x ^ u_input.b.x) <= u_input.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1021f + _wgslsmith_f_op_f32(global1.b + var_1.x))))), reverseBits(_wgslsmith_mult_i32(-36541i, u_input.a.x)));
    var var_2 = Struct_1(true && (true & (u_input.d != 43496u)), _wgslsmith_f_op_f32(floor(var_1.x)), -abs(reverseBits(2147483647i)));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 19>();
    global0 = array<vec2<bool>, 19>();
    global2 = array<vec3<u32>, 9>();
    var var_0 = ~(~(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) ^ _wgslsmith_mult_i32(24352i, u_input.a.x)) & (i32(-1i) * -func_1(Struct_4(global1.b, global0[_wgslsmith_index_u32(36673u, 19u)], Struct_1(true, global1.b, 0i), Struct_1(false, 772f, -1i), Struct_3(vec3<f32>(global1.b, global1.b, -125f), Struct_1(true, global1.b, u_input.a.x), u_input.c, true, Struct_1(global1.a, global1.b, global1.c))), 471f, u_input.a.yy)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(sign(global1.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b + global1.b))) + global1.b), _wgslsmith_div_f32(global1.b, 643f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.b), ~4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(436f, 1192f)), vec2<f32>(-351f, -532f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -440f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.b, global1.b), vec2<f32>(499f, 155f))))))) + vec2<f32>(_wgslsmith_f_op_f32(299f + _wgslsmith_div_f32(479f, global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1510f * global1.b)))), _wgslsmith_sub_vec3_i32(~firstLeadingBit(-vec3<i32>(2147483647i, -2147483647i, u_input.a.x)), vec3<i32>(66315i, u_input.a.x, -9971i)));
}

