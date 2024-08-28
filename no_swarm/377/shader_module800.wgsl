struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: Struct_1;

var<private> global3: vec2<i32> = vec2<i32>(59229i, 1i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.d.x))));
    let var_1 = global2.d.x;
    return -10270i;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec4<bool> {
    return select(select(select(global2.b, select(global2.b, vec4<bool>(arg_2.x, arg_1, global2.b.x, global0.c.x), false || global2.c.x), !all(global2.b)), vec4<bool>(true, global0.b.x, arg_1, !global2.c.x), vec4<bool>(true, (0i << (u_input.c % 32u)) < _wgslsmith_sub_i32(arg_3.x, 2147483647i), false, !(u_input.c > u_input.b))), !select(global2.b, !select(vec4<bool>(false, false, false, arg_1), vec4<bool>(false, true, false, true), global0.b.x), false), (!any(global2.c.zz) != all(select(global0.b.xw, vec2<bool>(false, arg_2.x), false))) | any(!(!vec2<bool>(arg_1, true))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(u_input.e, ~vec4<i32>(global3.x, 2147483647i, global2.a, 2147483647i) << (~vec4<u32>(28198u, 4294967295u, 91655u, u_input.c) % vec4<u32>(32u)))), vec4<bool>(!(!(global0.c.x == true)), !(u_input.b >= _wgslsmith_mod_u32(0u, u_input.c)), !global0.b.x, any(global0.b)), global2.b.yyz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.x, global0.d.x, arg_0), vec3<f32>(global2.d.x, global2.d.x, global2.d.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, global2.d.x, global2.d.x))))));
    var var_1 = var_0;
    let var_2 = Struct_1(-17365i & (u_input.d.x & firstTrailingBit(var_0.a & var_1.a)), !func_3(_wgslsmith_sub_vec3_i32(u_input.e.xyy ^ u_input.e.zwy, vec3<i32>(global3.x, 2147483647i, u_input.d.x) >> (vec3<u32>(u_input.b, u_input.c, 16047u) % vec3<u32>(32u))), (u_input.c | 4308u) < u_input.c, select(vec2<bool>(false, false), vec2<bool>(var_0.b.x, var_0.b.x), !vec2<bool>(global2.c.x, false)), _wgslsmith_sub_vec4_i32(firstLeadingBit(u_input.d), vec4<i32>(global0.a, 1i, 12701i, global3.x))), !vec3<bool>(var_0.c.x, false, global0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(step(-689f, -809f))), _wgslsmith_f_op_vec3_f32(select(var_0.d, global0.d, var_1.b.x))))));
    global0 = Struct_1(-var_2.a, !(!vec4<bool>(false, global0.b.x, !var_2.b.x, true && global0.c.x)), vec3<bool>(global2.b.x, !var_1.b.x, global2.b.x), vec3<f32>(global2.d.x, -1000f, _wgslsmith_f_op_f32(sign(arg_0))));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -152f)));
    return (_wgslsmith_sub_u32(countOneBits(u_input.b), ~(~1u)) << (_wgslsmith_mult_u32(u_input.b, 1u) % 32u)) & 21581u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = Struct_1(func_1(global0.a, global2.b.x, firstLeadingBit(u_input.e.zxz), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-505f, global0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1824f) + _wgslsmith_f_op_f32(-global0.d.x)))), select(vec4<bool>(true, !select(global0.c.x, global2.b.x, global2.c.x), global2.c.x, true), !(!(!global2.b)), any(vec3<bool>(true, true, true))), global0.b.wzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2.d, vec3<f32>(-293f, -1018f, 1017f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global2.d))))));
    let var_1 = all(vec4<bool>(true, false, false, 1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.x)))));
    let var_2 = var_0;
    let var_3 = 2147483647i;
    var var_4 = vec2<bool>(!(_wgslsmith_div_u32(~0u, func_2(var_0.d.x)) > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 53842u, 80524u, 0u) | vec4<u32>(u_input.b, 0u, u_input.c, 4294967295u), vec4<u32>(u_input.b, u_input.c, 39380u, u_input.b))), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

