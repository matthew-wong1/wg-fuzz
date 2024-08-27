struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: u32 = 0u;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-12083i), Struct_1(30589i), Struct_1(-34930i), Struct_1(1i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-10376i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(-21981i), Struct_1(-50323i), Struct_1(18547i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(1i), Struct_1(0i), Struct_1(-15833i), Struct_1(2147483647i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = arg_2;
    let var_1 = (true && all(vec4<bool>(arg_0 & false, !arg_0, all(vec4<bool>(arg_0, false, true, true)), any(vec4<bool>(true, arg_0, false, arg_0))))) == arg_0;
    global0 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(82590u, countOneBits(24854u)), ~(~_wgslsmith_dot_vec2_u32(arg_3.yz, select(u_input.b.xz, arg_3.xy, var_1))));
    global3 = array<Struct_1, 21>();
    var var_2 = !var_1;
    return select(select(!vec2<bool>(arg_0 | false, var_1), !(!vec2<bool>(arg_0, false)), select(!(!vec2<bool>(false, arg_0)), !(!vec2<bool>(var_1, true)), vec2<bool>(all(vec4<bool>(false, true, true, false)), select(true, true, var_1)))), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(all(vec2<bool>(false, false)), u_input.b.x > 4294967295u, false, true)), true));
}

fn func_2() -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 21u)];
    let var_1 = 457f;
    var var_2 = select(vec2<bool>(false, !(var_0.a > _wgslsmith_div_i32(u_input.a, -32896i))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), all(vec2<bool>(false, true))), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), func_3(true, global3[_wgslsmith_index_u32(u_input.b.x, 21u)], vec2<f32>(-1001f, -546f), vec4<u32>(u_input.b.x, 1u, 29273u, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(55977u, u_input.b.x, u_input.b.x), u_input.b << (u_input.b % vec3<u32>(32u))) < u_input.b.x), !vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), all(func_3(true, global3[_wgslsmith_index_u32(u_input.b.x, 21u)], global1.zx, vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)))));
    global3 = array<Struct_1, 21>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(863f - global1.x), 645f, var_1) + vec3<f32>(_wgslsmith_f_op_f32(-181f + global1.x), global1.x, _wgslsmith_f_op_f32(global1.x * 281f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, -1427f, -695f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, var_1, var_1))))));
    return global3[_wgslsmith_index_u32((1u << (_wgslsmith_mod_u32(4294967295u, u_input.b.x) % 32u)) << (~_wgslsmith_dot_vec3_u32(~select(u_input.b, u_input.b, vec3<bool>(true, true, true)), ~(vec3<u32>(61897u, u_input.b.x, u_input.b.x) >> (u_input.b % vec3<u32>(32u)))) % 32u), 21u)];
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(24394i, -1i);
    var var_1 = func_2();
    global0 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var_1 = func_2();
    return global3[_wgslsmith_index_u32(~(~1u), 21u)];
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    global3 = array<Struct_1, 21>();
    let var_0 = func_4(58827u, true, func_2(), ~0u);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-793f, -428f, global1.x))) - vec3<f32>(-1163f, -1625f, global1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 294f, global1.x))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), 265f, global1.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-970f, global1.x, 526f)))))));
    var var_1 = ~(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b | u_input.b, ~vec3<u32>(44200u, u_input.b.x, u_input.b.x)), abs(countOneBits(0u))) ^ firstLeadingBit(~vec2<u32>(94949u, 1u)));
    var var_2 = -func_2().a;
    return vec3<f32>(global1.x, global1.x, -652f);
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = vec3<bool>(true, any(func_3(-global2.a != 1i, Struct_1(~u_input.a), vec2<f32>(-345f, -1172f), ~vec4<u32>(u_input.b.x, u_input.b.x, arg_3, 1u) & ~vec4<u32>(arg_3, 73453u, 1u, arg_3))), true);
    var var_1 = arg_1.x;
    var var_2 = select(vec2<bool>(false, var_0.x), !var_0.yx, var_0.zx);
    var var_3 = func_2();
    var_0 = select(vec3<bool>(all(!(!vec2<bool>(var_2.x, var_2.x))), _wgslsmith_div_i32(~arg_2.a, arg_2.a) >= 2147483647i, !all(vec3<bool>(var_0.x, true, var_0.x))), !select(vec3<bool>(true, var_0.x, var_2.x), select(select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_2.x)), !vec3<bool>(true, var_0.x, true), var_0.x), select(!vec3<bool>(false, var_0.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x), !vec3<bool>(var_0.x, var_2.x, var_2.x))), vec3<bool>(var_2.x, any(vec4<bool>(true, true, false, var_0.x)), u_input.b.x < 4294967295u));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(297f, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - global1.x), global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -179f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(u_input.c))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-191f, -1985f, global1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1041f, global1.x))))), func_2(), select(_wgslsmith_clamp_u32(reverseBits(countOneBits(u_input.b.x)), 46462u, abs(~11705u)), 82456u | abs(reverseBits(u_input.b.x)), true));
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(global2.a, -10884i), vec2<i32>(~global2.a, _wgslsmith_div_i32(-max(-23007i, -59244i), -countOneBits(global2.a))));
    var var_1 = -1020f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(global1.x, global1.x)), global1.x));
}

