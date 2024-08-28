struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32> = vec3<u32>(19456u, 1u, 4294967295u);

var<private> global2: u32;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec3<bool>) -> f32 {
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(1u & ~(global1.x ^ 73338u), countOneBits(~(~10803u)), _wgslsmith_add_u32((u_input.a.x << (0u % 32u)) ^ (4294967295u >> (global1.x % 32u)), 1u)), firstTrailingBit(~select(u_input.a.xxw | u_input.a.yxz, u_input.a.yyx ^ u_input.a.zxw, arg_3)));
    var var_0 = (~63521u ^ ~(~(28153u << (global1.x % 32u)))) <= global1.x;
    global3 = Struct_3(_wgslsmith_div_i32(u_input.b ^ _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(arg_1.x, u_input.b, -1i, -2147483647i)), -16688i), vec2<i32>(arg_1.x, i32(-1i) * -11940i), vec2<f32>(_wgslsmith_f_op_f32(-global3.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.c.x))) * -1149f)), true, arg_2.e);
    let var_1 = ~(-max(1i, abs(0i)));
    let var_2 = global1.x;
    return _wgslsmith_f_op_f32(min(global3.c.x, global3.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global3.d, vec4<i32>(0i, -2147483647i, u_input.b, global3.b.x), Struct_3(u_input.b, vec2<i32>(-2147483647i, 5041i), global3.c, global3.d, vec3<f32>(global3.c.x, -471f, 271f)), vec3<bool>(true, true, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x - global3.c.x))))), -2134f));
    var var_1 = 56637u;
    let var_2 = Struct_3(firstTrailingBit(u_input.b), -global3.b, vec2<f32>(_wgslsmith_f_op_f32(select(141f, global3.e.x, false)), _wgslsmith_f_op_f32(abs(997f))), !any(!select(vec4<bool>(global3.d, false, false, true), vec4<bool>(true, false, global3.d, false), vec4<bool>(global3.d, false, global3.d, global3.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(232f, -1000f, global3.e.x)) - global3.e));
    var var_3 = Struct_2(~(~countOneBits(firstTrailingBit(vec2<i32>(u_input.b, -14101i)))));
    var var_4 = Struct_4(var_2.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.e.x, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.e.x)))), -_wgslsmith_add_vec2_i32(-(vec2<i32>(global3.b.x, 2147483647i) & var_3.a), -_wgslsmith_add_vec2_i32(vec2<i32>(-14773i, 0i), global3.b)), global3.a, vec4<f32>(_wgslsmith_div_f32(588f, -292f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1490f)) - _wgslsmith_div_f32(246f, _wgslsmith_f_op_f32(var_4.a - global3.e.x))), 1000f, var_2.c.x), vec3<i32>(-_wgslsmith_dot_vec2_i32(~var_2.b, vec2<i32>(-1i, -1i)), global3.b.x & var_2.a, global3.b.x));
}

