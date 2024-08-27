struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: vec3<bool>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> bool {
    let var_0 = vec4<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(-2118i, 1i), vec2<i32>(-1i, u_input.c ^ u_input.c)), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-48621i) << (~arg_1.x % 32u), 1i, -_wgslsmith_clamp_i32(u_input.a, -4192i, u_input.a)), abs(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.c, u_input.a, 55365i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(0i, -2147483647i, u_input.c))))), _wgslsmith_clamp_i32(u_input.c, u_input.c, i32(-1i) * -2147483647i), -2147483647i);
    let var_1 = Struct_2(Struct_1(arg_0, global2.x), vec4<bool>(!(!global2.x) || false, true, !global2.x, !any(!vec4<bool>(true, true, global2.x, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-870f)) * _wgslsmith_f_op_f32(ceil(347f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1251f * 1179f))) * 1084f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-804f)) - _wgslsmith_f_op_f32(621f + 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(427f)) + 295f))), !vec4<bool>(all(!vec3<bool>(global2.x, true, true)), !(u_input.c <= var_0.x), true, all(vec4<bool>(false, global2.x, global2.x, false))));
    global1 = array<vec4<u32>, 30>();
    return true;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(179f));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(134f)), _wgslsmith_f_op_f32(f32(-1f) * -811f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(392f, 182f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(324f, 773f), vec2<f32>(1820f, 1467f))))))), func_3(0u, vec2<u32>(u_input.b, ~countOneBits(4294967295u)))));
    global1 = array<vec4<u32>, 30>();
    global0 = array<vec3<bool>, 25>();
    global2 = global0[_wgslsmith_index_u32(~26288u, 25u)];
    return 24550u;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: bool) -> vec3<bool> {
    let var_0 = !select(arg_0.b, vec4<bool>(all(arg_0.d.wyy), arg_0.b.x, all(vec2<bool>(true, arg_3)), !arg_3), !vec4<bool>(false, all(vec2<bool>(arg_0.d.x, arg_0.d.x)), all(arg_0.d.xzw), any(vec2<bool>(true, true))));
    global1 = array<vec4<u32>, 30>();
    var var_1 = Struct_1(_wgslsmith_div_u32(func_2(), 1u), arg_3);
    let var_2 = max(_wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(-u_input.a), -(-2147483647i | u_input.a)), firstLeadingBit(abs(vec2<i32>(u_input.a, arg_1))), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, 10730i), vec2<i32>(u_input.a, arg_1))), countOneBits(min(reverseBits(vec2<i32>(arg_1, 30548i)) | max(vec2<i32>(arg_1, 2147483647i), vec2<i32>(3615i, -2147483647i)), ~(vec2<i32>(arg_1, 1i) & vec2<i32>(-14952i, 0i)))));
    let var_3 = arg_0.a;
    return select(var_0.wxz, select(select(vec3<bool>(all(global0[_wgslsmith_index_u32(1u, 25u)]), all(arg_0.d), var_1.b && false), select(select(vec3<bool>(var_1.b, var_1.b, false), arg_0.d.wyx, vec3<bool>(var_3.b, arg_3, global2.x)), select(vec3<bool>(true, arg_3, false), vec3<bool>(false, false, false), true), all(arg_0.d)), true), !(!global0[_wgslsmith_index_u32(firstLeadingBit(0u), 25u)]), _wgslsmith_mod_i32(6102i ^ var_2.x, -1539i) > 0i), !arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 25>();
    var var_0 = Struct_2(Struct_1(u_input.b, any(func_1(Struct_2(Struct_1(u_input.b, global2.x), vec4<bool>(true, global2.x, false, false), vec3<f32>(-955f, 1673f, 231f), vec4<bool>(false, global2.x, global2.x, global2.x)), 1i, _wgslsmith_f_op_f32(1000f + -340f), global2.x))), vec4<bool>(true, false, true, false), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1726f, -360f, -1000f), vec3<f32>(2165f, 463f, 404f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(731f, 868f, -747f)))))))), !select(select(select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(false, true, true, true), vec4<bool>(global2.x, global2.x, false, global2.x)), vec4<bool>(false, global2.x, true, false), global2.x), vec4<bool>(global2.x, false, false, func_3(58283u, vec2<u32>(u_input.b, u_input.b))), vec4<bool>(false, func_1(Struct_2(Struct_1(u_input.b, true), vec4<bool>(false, global2.x, true, false), vec3<f32>(1263f, -891f, 1197f), vec4<bool>(global2.x, false, false, global2.x)), u_input.a, 1073f, global2.x).x, true, true & global2.x)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c.x)) + var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, -1122f) + _wgslsmith_f_op_f32(ceil(var_0.c.x)))) - var_0.c.xx), var_0.a, Struct_2(var_0.a, var_0.d, var_0.c, vec4<bool>(func_1(Struct_2(var_0.a, var_0.d, var_0.c, vec4<bool>(var_0.d.x, true, true, var_0.d.x)), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -115f), true).x, u_input.a > u_input.a, all(global0[_wgslsmith_index_u32(var_0.a.a, 25u)]), _wgslsmith_f_op_f32(floor(var_0.c.x)) == _wgslsmith_f_op_f32(step(109f, var_0.c.x)))));
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1053f, 2877f), _wgslsmith_f_op_f32(-var_0.c.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) * var_1.c.c.yy)), var_1.c.a, Struct_2(var_1.c.a, var_1.c.b, var_0.c, vec4<bool>(!(u_input.c <= -190i), true, !var_1.c.d.x | all(vec2<bool>(var_1.b.b, false)), global2.x)));
    let var_2 = countOneBits(vec2<i32>(u_input.a, abs(u_input.c)));
    let var_3 = var_0.a.a;
    var var_4 = vec3<bool>(any(global2.xy) && (any(!var_0.b) != false), !(!global2.x), var_1.b.b);
    var var_5 = var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.x, var_0.c.xx);
}

