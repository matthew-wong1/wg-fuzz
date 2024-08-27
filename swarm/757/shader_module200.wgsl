struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 22522u);

var<private> global2: array<f32, 28> = array<f32, 28>(1573f, 454f, -466f, -887f, 447f, 1157f, -1515f, -1000f, -334f, -1522f, 998f, 565f, 1688f, 1000f, 399f, -679f, 194f, 1375f, 815f, -543f, 479f, -788f, -557f, -641f, -1232f, 685f, -965f, -1000f);

var<private> global3: array<i32, 3> = array<i32, 3>(1i, -1i, 0i);

var<private> global4: Struct_1 = Struct_1(vec2<i32>(28606i, -33i), -474f, 0u, 458f, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    global3 = array<i32, 3>();
    global1 = firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.b, min(_wgslsmith_clamp_vec2_u32(~u_input.d.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(28815u, global4.c), u_input.d.yx), ~u_input.d.zy), _wgslsmith_add_vec2_u32(u_input.d.zy, u_input.d.xz))));
    global3 = array<i32, 3>();
    global1 = abs(_wgslsmith_clamp_vec2_u32(abs(select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.c, 80542u), vec2<u32>(4294967295u, 4294967295u)), select(u_input.b, u_input.b, true), !vec2<bool>(global0.e, false))), vec2<u32>(48983u, 12255u), vec2<u32>(34068u, 4294967295u)));
    var var_0 = reverseBits(~_wgslsmith_div_u32(~(~global4.c), ~(arg_0.c | 6060u)));
    return _wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-543f, -335f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1128f), 2184f, true != arg_0.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.b)))))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(global0.a | global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a, -1000f, global4.c, arg_1.d, false), global4.a.x << (global0.c % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, 734f, arg_1.b, global4.b) * vec4<f32>(537f, 810f, global4.d, global4.d))))) * global0.b), ~select(4294967295u, ~(~34061u), !all(vec3<bool>(arg_1.e, global4.e, arg_1.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-240f))), global4.e);
    global2 = array<f32, 28>();
    let var_1 = var_0;
    var var_2 = var_0.e;
    let var_3 = var_1.b;
    return arg_1;
}

fn func_1() -> i32 {
    let var_0 = func_2(abs(u_input.d.yx), Struct_1(vec2<i32>(global0.a.x, ~36786i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_div_f32(global4.d, _wgslsmith_f_op_f32(floor(-309f))))), global4.c, _wgslsmith_f_op_f32(global4.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(740f)))), !(!global0.e && any(vec2<bool>(true, false)))));
    global0 = Struct_1(_wgslsmith_mult_vec2_i32(~(~select(global4.a, vec2<i32>(global0.a.x, 1i), vec2<bool>(var_0.e, var_0.e))), reverseBits(~min(global4.a, global0.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - global0.d) * _wgslsmith_f_op_f32(round(1000f)))))), global0.c, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 28u)]), !all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), !vec2<bool>(false, global0.e))));
    var var_1 = !vec3<bool>(any(select(vec3<bool>(true, global4.e, global0.e), vec3<bool>(global4.e, global4.e, global4.e), vec3<bool>(true, true, true))), (global0.c >> (1u % 32u)) >= ~reverseBits(4294967295u), all(vec4<bool>(true, true, var_0.e | var_0.e, func_2(u_input.b, Struct_1(global4.a, global4.b, global0.c, 813f, global0.e)).e)));
    let var_2 = func_2(vec2<u32>(abs(1u), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(18758u, 0u, 0u), vec3<u32>(global4.c, 1u, 1u)), reverseBits(u_input.d)))), Struct_1(var_0.a, -818f, 75988u, _wgslsmith_f_op_f32(-289f * -723f), global0.e));
    var_1 = !(!vec3<bool>(true, global4.e, false));
    return -7944i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)), -211f)), vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.x, 28u)], global0.d), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 28u)])), 1i ^ _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, -2147483647i), -36578i), func_1());
}

