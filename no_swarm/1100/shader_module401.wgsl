struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: array<vec4<f32>, 17>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<u32>(1u, 7629u), 34541u), Struct_1(vec2<u32>(39818u, 12399u), 1u), Struct_1(vec2<u32>(4294967295u, 113028u), 4294967295u));

var<private> global3: vec4<i32> = vec4<i32>(19915i, 44291i, 2147483647i, 23548i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1197f, arg_1, arg_1))))));
}

fn func_1() -> vec4<i32> {
    global2 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_div_u32(countOneBits(_wgslsmith_sub_u32(0u, min(~13518u, ~u_input.b))), 12597u);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(444f, -819f, -2166f) * vec3<f32>(-120f, 315f, -816f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(1019f, -354f, -662f), vec3<f32>(_wgslsmith_f_op_f32(floor(2293f)), _wgslsmith_f_op_f32(-272f * 1114f), _wgslsmith_f_op_f32(f32(-1f) * -565f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1344f, -880f, 259f))))));
    var var_2 = 76515u;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(var_1.x, 246f, var_1.yx)))))));
    return u_input.c;
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    global1 = array<vec4<f32>, 17>();
    let var_0 = -811f;
    var var_1 = Struct_1(~(~(u_input.a & u_input.a)), 35042u);
    global1 = array<vec4<f32>, 17>();
    global2 = array<Struct_1, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1003f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 - 849f)))) + 3117f);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> bool {
    global3 = u_input.c;
    var var_0 = arg_1;
    var var_1 = arg_1;
    global2 = array<Struct_1, 3>();
    let var_2 = Struct_1(vec2<u32>(var_0.b & arg_1.b, var_1.b), u_input.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + arg_0.x), _wgslsmith_f_op_f32(select(-232f, _wgslsmith_f_op_f32(select(arg_0.x, 902f, arg_2)), u_input.a.x <= 1595u)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(1000f + -562f)), arg_0.x))) == arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -func_1(), firstLeadingBit(vec4<i32>(~u_input.c.x, select(u_input.c.x >> (847u % 32u), 31589i, true), 1i, u_input.c.x)));
    global1 = array<vec4<f32>, 17>();
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    var var_0 = u_input.c.x;
    let var_1 = -global3.x;
    let var_2 = true || func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(854f, 501f, -1000f, 283f), global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<f32>(132f, -1203f, -1122f, -890f)))), Struct_1(u_input.a, ~(~u_input.a.x)), -644f > _wgslsmith_f_op_f32(func_3(all(vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(func_2(360f, 1283f, vec2<f32>(813f, -1088f))).x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-19413i, global3.x, func_1().x, max(~_wgslsmith_mod_i32(u_input.c.x, 2147483647i), max(-13339i, -25952i) << (~u_input.a.x % 32u))));
}

