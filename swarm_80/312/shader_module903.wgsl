struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = arg_2.x;
    var var_1 = arg_2.x;
    global0 = Struct_2(8748u, global0.b);
    let var_2 = u_input.c.xz;
    var var_3 = Struct_2(0u, vec2<f32>(_wgslsmith_f_op_f32(sign(-971f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(round(1000f))))));
    return 15182u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = global0.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(exp2(global0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-232f)) + _wgslsmith_f_op_f32(ceil(1143f))))));
    var var_3 = u_input.a;
    var var_4 = vec2<u32>(arg_1.a, var_3.x);
    return 4294967295u;
}

fn func_2() -> vec2<bool> {
    global0 = Struct_2(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)))));
    global0 = Struct_2(~28786u, global0.b);
    let var_0 = !(!all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec2<bool>(true, false)))));
    global0 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(-global0.b));
    global0 = Struct_2(func_4(~_wgslsmith_add_u32(9605u, global0.a << (u_input.b.x % 32u)), Struct_2(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 177f, global0.b.x, 262f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 2524f, 1000f) + vec3<f32>(373f, global0.b.x, -354f)), vec4<f32>(-1000f, global0.b.x, -1209f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-146f, global0.b.x) + _wgslsmith_f_op_vec2_f32(-global0.b))), -1446f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1773f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1016f), -1952f)))));
    return !vec2<bool>(4294967295u < _wgslsmith_mult_u32(abs(global0.a), u_input.a.x), 0u >= countOneBits(_wgslsmith_mult_u32(global0.a, u_input.a.x)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = !(!select(!select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2)), select(func_2(), select(vec2<bool>(false, arg_2), vec2<bool>(true, false), false), true), vec2<bool>(arg_2, false)));
    let var_1 = arg_2;
    let var_2 = false || !all(vec3<bool>(!arg_2, true, var_1));
    let var_3 = Struct_2(~(1u >> (firstTrailingBit(global0.a) % 32u)), vec2<f32>(-312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1098f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))));
    var_0 = !(!select(vec2<bool>(true, !var_2), select(!vec2<bool>(arg_2, false), vec2<bool>(var_1, false), false), !vec2<bool>(true, var_2)));
    return ~(~(~(~u_input.a.x)) << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b, _wgslsmith_div_vec2_f32(vec2<f32>(478f, 340f), global0.b)) + vec2<f32>(-839f, global0.b.x)) * vec2<f32>(-1027f, global0.b.x)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.b))) + _wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(abs(global0.b)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -150f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(909f - -939f))), true)));
    let var_1 = ~(((u_input.b & vec4<u32>(0u, global0.a, 4294967295u, u_input.a.x)) | vec4<u32>(u_input.b.x, 56185u, 0u, global0.a)) | firstTrailingBit(vec4<u32>(1u, 22704u, global0.a, 40771u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(min(_wgslsmith_sub_u32(33525u, 0u), 20800u), _wgslsmith_sub_u32(abs(29872u), ~u_input.b.x), global0.a, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), _wgslsmith_div_u32(global0.a, 1u))), ~(~(~u_input.b)));
    var var_2 = vec3<u32>(func_1(1u, var_1.yx, true, global0.a), 39661u, ~0u);
    let var_3 = vec4<bool>(select(true, all(vec2<bool>(true, true)) && true, true & !all(vec3<bool>(true, false, false))), !all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), false)), !(!func_2().x) != true, true);
    var var_4 = Struct_1(-401f);
    var_2 = abs(vec3<u32>(4294967295u, func_1(0u, max(var_1.zz, var_2.zz), _wgslsmith_f_op_f32(1158f - -602f) < global0.b.x, abs(firstLeadingBit(global0.a))), 1u));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, u_input.c.x, vec2<i32>(_wgslsmith_sub_i32(~(-23821i), u_input.c.x << (func_3(vec4<f32>(1000f, -4640f, 1107f, global0.b.x), vec3<f32>(var_4.a, 399f, var_4.a), vec4<f32>(var_0.x, global0.b.x, -381f, -1517f)) % 32u)), 35881i), u_input.c.x);
}

