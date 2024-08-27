struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true));

var<private> global2: array<vec4<i32>, 27>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    global1 = Struct_1(!select(select(select(vec3<bool>(global1.a.x, true, false), global1.a, global1.a), global1.a, global1.a.x && global1.a.x), select(select(global1.a, vec3<bool>(global1.a.x, global1.a.x, false), global1.a.x), global1.a, select(global1.a, global1.a, global1.a)), true));
    var var_0 = -424f;
    let var_1 = Struct_1(!select(vec3<bool>(true, true, true), !vec3<bool>(true, global1.a.x, false), select(global1.a, select(global1.a, vec3<bool>(global1.a.x, false, false), global1.a), !global1.a)));
    var var_2 = var_1;
    var var_3 = arg_1 & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-abs(vec3<i32>(1i, 17085i, arg_1)), select(vec3<i32>(arg_1, arg_1, arg_0), vec3<i32>(arg_0, -31374i, -16608i), !global1.a.x)), vec3<i32>(i32(-1i) * -2147483647i, i32(-1i) * -2147483647i, ~0i));
    return var_2.a.x && var_1.a.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = Struct_1(select(vec3<bool>(false, true, func_3(47269i, _wgslsmith_add_i32(84905i, -1i))), vec3<bool>(true, 1934f == _wgslsmith_f_op_f32(-arg_0), global1.a.x), func_3(-49730i, 2147483647i)));
    var var_0 = -min(~_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(0i, -2147483647i)), vec2<i32>(-2147483647i, -8666i), vec2<i32>(1i, 1i)), ~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -5458i), vec2<i32>(-1i, 2147483647i)), -vec2<i32>(-2147483647i, 1i)));
    let var_1 = select(vec4<bool>(true, _wgslsmith_f_op_f32(-arg_0) >= -1126f, true, global1.a.x), !select(select(select(vec4<bool>(global1.a.x, false, global1.a.x, true), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x)), !vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), !vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x)), vec4<bool>(all(vec3<bool>(global1.a.x, true, global1.a.x)), global1.a.x, true, select(global1.a.x, global1.a.x, false)), vec4<bool>(all(vec2<bool>(false, false)), global1.a.x, false, false)), global1.a.x);
    var_0 = _wgslsmith_mod_vec2_i32(~(-vec2<i32>(var_0.x, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(45284u, 27u)]))), -firstLeadingBit(-reverseBits(vec2<i32>(var_0.x, 1i))));
    global0 = Struct_2(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(abs(global0.a.x), 1u, ~66311u, u_input.a)), global0.a, global0.a));
    return Struct_1(vec3<bool>(global1.a.x, false, false));
}

fn func_1() -> Struct_1 {
    global0 = Struct_2(vec4<u32>(global0.a.x, 13520u, u_input.c.x, u_input.d.x));
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1682f, _wgslsmith_f_op_f32(select(-1322f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1093f)))), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(404f))))))));
    global2 = array<vec4<i32>, 27>();
    var var_1 = _wgslsmith_f_op_f32(trunc(var_0.x));
    global1 = func_2(var_0.x);
    return func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global0 = Struct_2(global0.a);
    var var_0 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-184f * -789f)))).a.zz;
    let var_1 = Struct_1(!func_1().a);
    global1 = Struct_1(vec3<bool>(global1.a.x, var_0.x, var_1.a.x));
    global2 = array<vec4<i32>, 27>();
    let var_2 = ~reverseBits(vec3<i32>(-select(1i, 1i, global1.a.x), -20156i, -max(-1i, 1i)));
    let var_3 = select(vec4<bool>(select(global0.a.x == ~68125u, var_1.a.x, true), true, var_0.x, false), vec4<bool>(select(!var_1.a.x, var_0.x, global1.a.x) || any(vec2<bool>(true, var_1.a.x)), var_0.x, var_0.x, var_0.x), !func_1().a.x == false);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3373f, -1205f, 244f, 348f)), vec4<f32>(-855f, -859f, -1264f, 1921f))))), _wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(~var_2.zx, -var_2.yx)), var_2.zx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-324f, -944f, -1271f, 476f) * vec4<f32>(610f, -405f, -475f, -1710f)) - vec4<f32>(-988f, 497f, -205f, 755f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(137f, -990f, 584f, -149f)))))));
}

