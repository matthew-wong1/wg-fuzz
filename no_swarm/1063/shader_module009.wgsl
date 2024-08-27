struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 14>;

var<private> global4: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = !vec3<bool>(any(select(select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, false, true)), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, global0.x, global0.x, global0.x)), true)), global2.a >= -(2147483647i << (arg_0 % 32u)), false);
    let var_1 = true;
    global4 = 0u;
    var var_2 = vec4<i32>(global2.d.x, _wgslsmith_div_i32(firstLeadingBit(global2.d.x) ^ ~(-global2.d.x), global2.d.x), ~(~(-(~(-22713i)))), _wgslsmith_clamp_i32(~(-global2.d.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.x, global2.d.x, -3697i), vec3<i32>(23292i, 47635i, global2.d.x)), 1i) ^ global2.a);
    var var_3 = true && !(arg_0 != ~7623u);
    return !(!vec3<bool>(!(global2.d.x >= -2147483647i), all(vec3<bool>(var_0.x, true, var_1)), true));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> i32 {
    global2 = arg_1;
    let var_0 = select(!vec4<bool>(any(!vec4<bool>(arg_3, arg_3, arg_3, false)), global0.x, !(332f < global2.c), true), !vec4<bool>(any(vec2<bool>(true, true)), global0.x, (i32(-1i) * -2147483647i) <= abs(global2.d.x), all(vec4<bool>(true, true, arg_3, arg_3)) && global0.x), any(vec2<bool>(any(!vec4<bool>(global0.x, false, true, global0.x)), (arg_0 != arg_1.c) & true)));
    var var_1 = any(vec4<bool>(((arg_1.d.x >> (arg_1.e.x % 32u)) > firstTrailingBit(23805i)) | false, !var_0.x, true, any(!func_3(17677u))));
    var var_2 = arg_1.b;
    global0 = vec3<bool>(false, arg_3, any(var_0.wxw));
    return -5410i;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = vec3<i32>(arg_1.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.x, global2.d.x, global2.d.x, -2147483647i) & ~vec4<i32>(-28074i, 0i, global2.d.x, global2.a), ~(~vec4<i32>(arg_1.a, 2147483647i, -11919i, 2147483647i))), countOneBits(0i)), ~(_wgslsmith_sub_i32(func_2(arg_1.c, Struct_1(arg_1.d.x, vec2<u32>(global2.e.x, global2.e.x), 499f, global2.d, vec2<u32>(u_input.a.x, u_input.a.x)), vec4<u32>(arg_1.e.x, 18003u, arg_1.e.x, arg_1.b.x), global0.x), min(global2.d.x, global2.d.x)) >> (global2.b.x % 32u)));
    global0 = vec3<bool>(!global0.x, !(!global0.x), true);
    var var_1 = arg_1;
    var var_2 = vec3<bool>(global0.x, !all(vec4<bool>(true, true, false || global0.x, global0.x)), global0.x);
    let var_3 = var_2.x;
    return _wgslsmith_f_op_vec2_f32(arg_0.zw + arg_0.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, 1241f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(1000f, global2.c, global2.c, global2.c), Struct_1(-1i, vec2<u32>(u_input.a.x, 13957u), 442f, global2.d, u_input.a.xy))), vec2<f32>(global2.c, global2.c), true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global2.c)), vec2<f32>(_wgslsmith_f_op_f32(round(global2.c)), -1695f), global0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1212f, _wgslsmith_f_op_f32(-global2.c))));
    var var_1 = reverseBits(vec2<u32>(countOneBits(_wgslsmith_div_u32(29579u, u_input.a.x)), global2.e.x));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(-1494f + 231f))) + -255f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c))));
    global4 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(reverseBits(1u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9670u, 83316u, 0u), u_input.a), u_input.b), ~_wgslsmith_clamp_u32(global2.b.x, 1u, u_input.a.x)), vec3<u32>(0u >> (reverseBits(var_1.x) % 32u), ~45618u, firstTrailingBit(~global2.e.x)));
    let var_3 = Struct_1(global2.a, min(vec2<u32>(firstLeadingBit(global2.e.x), var_1.x), vec2<u32>(countOneBits(_wgslsmith_mod_u32(global2.e.x, 4294967295u)), ~(~0u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-701f)) * _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(f32(-1f) * -766f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, 777f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-585f, global2.c, false)), _wgslsmith_f_op_f32(965f * global2.c))))), countOneBits(select(global2.d, firstTrailingBit(abs(vec2<i32>(15524i, -1331i))), vec2<bool>(global2.c < global2.c, false || global0.x))), global2.b);
    let var_4 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c);
}

