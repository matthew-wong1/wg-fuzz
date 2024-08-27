struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(73800u, 80820u, 11921u, 1u), vec4<u32>(8169u, 105u, 10072u, 0u), vec4<u32>(0u, 35886u, 4294967295u, 0u), vec4<u32>(72054u, 0u, 4861u, 13405u), vec4<u32>(15490u, 0u, 4294967295u, 10475u), vec4<u32>(0u, 4294967295u, 51163u, 61616u), vec4<u32>(4294967295u, 1u, 46629u, 0u), vec4<u32>(0u, 0u, 4294967295u, 61253u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(11194u, 17465u, 1u, 0u), vec4<u32>(18348u, 4294967295u, 1u, 17072u), vec4<u32>(35325u, 8053u, 3586u, 10000u), vec4<u32>(35241u, 1u, 8763u, 4294967295u), vec4<u32>(4294967295u, 65119u, 4294967295u, 1u), vec4<u32>(0u, 7594u, 15176u, 4294967295u), vec4<u32>(1u, 11967u, 0u, 4294967295u), vec4<u32>(4294967295u, 5917u, 4294967295u, 39503u), vec4<u32>(122114u, 1u, 41645u, 4294967295u), vec4<u32>(11790u, 40386u, 32354u, 18591u), vec4<u32>(1u, 42476u, 1u, 33321u), vec4<u32>(29056u, 17134u, 52896u, 4508u), vec4<u32>(1u, 41330u, 22743u, 50414u), vec4<u32>(33537u, 7447u, 0u, 17238u), vec4<u32>(1u, 42633u, 57524u, 40747u));

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-1000f, 576f, 116f), vec3<f32>(1000f, -207f, 1178f), vec3<f32>(-1249f, -1396f, 483f));

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    let var_0 = ~firstTrailingBit(~0u);
    global2 = vec3<bool>(any(!(!(!vec4<bool>(global2.x, global2.x, false, true)))), !(!(min(1i, u_input.b) >= (i32(-1i) * -25672i))), false);
    global1 = array<vec3<f32>, 3>();
    let var_1 = vec3<u32>(u_input.a.x, 0u, u_input.a.x);
    var var_2 = vec3<i32>(-2147483647i, u_input.b, 0i);
    return Struct_1(global1[_wgslsmith_index_u32(12746u, 3u)], !vec4<bool>(_wgslsmith_add_u32(var_0, var_1.x) != 22290u, 75406i != (var_2.x << (4294967295u % 32u)), true, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1136f))), -521f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-248f, -751f), vec2<f32>(-409f, -635f)))))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    let var_0 = Struct_1(arg_2.a, arg_2.b, _wgslsmith_f_op_vec2_f32(-arg_2.a.yx));
    global2 = select(var_0.b.wwx, arg_2.b.ywz, arg_2.b.x);
    global0 = array<vec4<u32>, 24>();
    global2 = var_0.b.zyx;
    global2 = vec3<bool>(!(global2.x && (arg_3 < var_0.a.x)), any(!(!vec2<bool>(var_0.b.x, false))), !arg_2.b.x);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + 397f) * 347f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -753f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-293f, _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2005f), _wgslsmith_f_op_f32(floor(var_0.c.x)), !global2.x)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    global2 = arg_2.b.yzz;
    var var_1 = u_input.a.x;
    var_0 = Struct_1(var_0.a, vec4<bool>(var_0.b.x, arg_2.c.x <= arg_2.a.x, false, any(arg_2.b) & true), var_0.c);
    let var_2 = func_1();
    return ~(~firstTrailingBit(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147f;
    let var_1 = func_1();
    var var_2 = var_1.b.xww;
    let var_3 = 21444u > ~func_3(var_1, vec3<i32>(abs(-13950i), 2147483647i, u_input.b & u_input.b), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -442f, var_1.c.x) - vec3<f32>(-135f, var_1.a.x, var_1.a.x)), vec4<bool>(false, false, true, var_1.b.x), _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(u_input.b, u_input.b), vec2<i32>(10380i, -16091i), Struct_1(vec3<f32>(var_1.c.x, var_1.a.x, var_1.c.x), var_1.b, vec2<f32>(var_1.c.x, var_1.a.x)), var_1.c.x))));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-127f, _wgslsmith_f_op_f32(385f + _wgslsmith_f_op_f32(f32(-1f) * -1804f)), _wgslsmith_f_op_f32(round(var_1.a.x))), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(1u, 3u)] + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - var_1.c.x), -1678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-381f))))), vec3<bool>(global2.x, true, global2.x)));
    let var_5 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -min(vec3<i32>(2147483647i, -1i, 8615i), vec3<i32>(18578i, -15858i, -2147483647i)), ~(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 4108i, u_input.b), vec3<i32>(u_input.b, u_input.b, -1i)), -vec3<i32>(6707i, 37579i, 1831i)) & select(-vec3<i32>(0i, u_input.b, 1i), vec3<i32>(u_input.b, 0i, -37267i), select(var_1.b.xxy, vec3<bool>(global2.x, var_3, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.a.x, -1000f, true)), _wgslsmith_f_op_f32(min(var_4.x, -450f))), var_1.c, var_3)), _wgslsmith_f_op_vec2_f32(var_1.a.zy * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.c, var_1.c) + _wgslsmith_f_op_vec2_f32(var_1.a.yx + var_1.c)))));
}

