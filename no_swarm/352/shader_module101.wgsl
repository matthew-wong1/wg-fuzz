struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<i32>(0i, 29123i), 118f, true, vec3<u32>(8832u, 53544u, 4660u)), Struct_2(vec2<i32>(2147483647i, -1i), 592f, false, vec3<u32>(4294967295u, 64085u, 1u)), Struct_2(vec2<i32>(6833i, -49288i), -2722f, false, vec3<u32>(19466u, 0u, 5677u)), Struct_2(vec2<i32>(31618i, 22098i), -689f, false, vec3<u32>(14418u, 88374u, 22312u)), Struct_2(vec2<i32>(0i, 0i), -533f, false, vec3<u32>(37804u, 0u, 4294967295u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_0 = !(!(!vec3<bool>(u_input.d <= arg_0.d, any(vec2<bool>(false, true)), false)));
    var var_1 = _wgslsmith_mult_i32(~(~1i), u_input.d);
    var_1 = 1i;
    return Struct_3(Struct_1(_wgslsmith_div_f32(arg_0.a.a, arg_0.a.a)), 2147483647i, reverseBits(~2695u), -u_input.d);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_3(func_2(Struct_3(func_2(Struct_3(Struct_1(arg_0.x), u_input.d, 0u, 1424i)).a, _wgslsmith_add_i32(1i, u_input.d) & max(1021i, 0i), select(13338u ^ u_input.b.x, ~u_input.c.x, 513f >= arg_0.x), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d, u_input.d), u_input.d))).a, u_input.d, u_input.c.x, u_input.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(arg_0, arg_0));
    global0 = array<Struct_2, 5>();
    let var_2 = u_input.d;
    let var_3 = Struct_4(func_2(func_2(func_2(func_2(Struct_3(var_0.a, -48841i, var_0.c, var_2))))));
    return u_input.a;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = func_2(Struct_3(arg_0.a, arg_3.d, ~(48628u >> (var_0.d.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, arg_3.b, 30814i), vec3<i32>(1i, -61907i, 0i) | vec3<i32>(u_input.d, arg_0.b, arg_0.d)), firstTrailingBit(19974i))));
    let var_2 = reverseBits(_wgslsmith_add_u32(func_3(vec4<f32>(-867f, 503f, 651f, arg_1.x)) | 1u, func_2(Struct_3(Struct_1(arg_1.x), 40228i, arg_3.c, var_0.a.x)).c)) > 0u;
    let var_3 = arg_1.xy;
    var var_4 = _wgslsmith_f_op_f32(ceil(arg_0.a.a));
    return arg_0;
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    global0 = array<Struct_2, 5>();
    let var_0 = arg_0.a;
    global0 = array<Struct_2, 5>();
    var var_1 = true;
    var_1 = !(!(~arg_0.c < 1u));
    return vec2<bool>(-11104i >= _wgslsmith_dot_vec2_i32(~(vec2<i32>(arg_0.d, u_input.d) ^ vec2<i32>(arg_0.b, u_input.d)), ~(-vec2<i32>(u_input.d, -2393i))), !(!select(true, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_4(func_1(Struct_3(Struct_1(-1614f), u_input.d, 4294967295u, u_input.d), vec3<f32>(-1341f, -1578f, 923f), 29010u, Struct_3(Struct_1(1000f), 1i, u_input.b.x, 1i)))));
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_1 = -vec3<i32>(-2147483647i, -2147483647i, firstLeadingBit(-reverseBits(36148i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1721f, 1281f, -1479f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1076f, -354f, -1413f, 933f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2124f, -617f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, 1970f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1856f, 482f)))), vec2<bool>(!var_0.x, var_1.x < u_input.d))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(530f, -1112f)))));
}

