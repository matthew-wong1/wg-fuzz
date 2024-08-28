struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: Struct_1;

var<private> global2: vec4<i32>;

var<private> global3: vec2<u32>;

var<private> global4: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f - global1.c) - _wgslsmith_f_op_f32(round(-2148f))))), -1000f), global1.b, global1.b.x, !vec4<bool>(true, global1.d.x, global1.d.x, global1.d.x), global1.e);
    let var_1 = vec4<bool>(global1.d.x, u_input.c.x < ~(~4294967295u), false, false);
    return var_0.d.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    return Struct_1(global1.e, global1.b, _wgslsmith_f_op_f32(trunc(global1.b.x)), vec4<bool>(global1.d.x, select(!any(global1.d.xyy), any(!vec3<bool>(arg_0, arg_0, arg_0)), true), func_3(vec4<i32>(75728i, global2.x, 7194i, global2.x) ^ select(vec4<i32>(-29437i, 1i, -6643i, u_input.d), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 1i), vec4<bool>(false, arg_0, true, arg_0))), arg_0), global1.c);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global3 = ~(~u_input.a.xw);
    global2 = reverseBits(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-25727i, global2.x, arg_0, arg_0), vec4<i32>(-1i, arg_0, -29654i, global2.x)), 29472i, arg_0, select(~(-9291i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.x, -473i, 2147483647i), vec4<i32>(u_input.d, 0i, u_input.d, 1i)), global1.d.x))));
    global1 = Struct_1(global1.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-274f, _wgslsmith_div_f32(global1.e, _wgslsmith_f_op_f32(max(global1.c, 1156f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1902f, global1.b.x)) * global1.c)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(arg_1.a, global1.a, global1.c)))), arg_1.b)), arg_1.e, vec4<bool>(false, !all(vec2<bool>(false, false)), !(!global1.d.x), arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)));
    var var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2487f)), 1000f));
    return arg_1;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global2 = vec4<i32>(arg_0.x, -2147483647i, u_input.d, 34838i);
    let var_0 = func_4(max(40170i << (max(global3.x << (104098u % 32u), ~18772u) % 32u), -(global2.x >> (67848u % 32u))), func_2(true));
    var var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(691f - 1112f)) + global1.a), !(!var_0.d.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1437f)))), _wgslsmith_f_op_f32(max(global1.b.x, var_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -119f), !select(!func_2(false).d, select(vec4<bool>(false, false, global1.d.x, true), select(global1.d, vec4<bool>(false, var_0.d.x, global1.d.x, true), var_0.d.x), all(global1.d)), select(global1.d, vec4<bool>(var_0.d.x, global1.d.x, var_0.d.x, false), global1.d)), _wgslsmith_f_op_f32(ceil(-586f)));
    let var_3 = 4294967295u;
    return func_4(-2147483647i, func_2(true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec4<i32>(_wgslsmith_add_i32(-1i, 22435i), global2.x, ~u_input.b.x, firstLeadingBit(select(firstLeadingBit(global2.x), -14030i, all(global4[_wgslsmith_index_u32(0u, 23u)])))));
    let var_0 = max(_wgslsmith_mult_i32(abs(~global2.x), global2.x), -2147483647i);
    var var_1 = Struct_1(-206f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a * global1.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) + _wgslsmith_f_op_f32(max(global1.a, global1.e)))), _wgslsmith_f_op_f32(-460f * global1.a)), _wgslsmith_f_op_f32(exp2(global1.e)), global1.d, 1281f);
    var var_2 = func_2(all(global1.d.yyw));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.e, -1647f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(146f, var_1.a) + vec2<f32>(804f, var_2.c)) * func_4(~global2.x, func_4(33697i, Struct_1(726f, vec3<f32>(var_1.b.x, global1.b.x, -109f), var_2.b.x, var_1.d, var_1.b.x))).b.yy), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b.zy), vec2<f32>(_wgslsmith_f_op_f32(global1.b.x - global1.b.x), _wgslsmith_div_f32(global1.c, var_2.c)), func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global2.x, 27526i, u_input.d), vec4<i32>(global2.x, 40365i, u_input.b.x, 0i))).d.x))));
}

