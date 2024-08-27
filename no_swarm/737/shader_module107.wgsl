struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<vec2<u32>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    global0 = -(i32(-1i) * -(~_wgslsmith_clamp_i32(0i, u_input.a.x, u_input.a.x)));
    var var_0 = arg_0;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-184f * _wgslsmith_f_op_f32(min(181f, 1579f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(119f, -1000f) - _wgslsmith_f_op_f32(-1716f * 599f)))), ~(~(-u_input.a.zwx)));
    var var_2 = vec4<bool>(true || !(true | any(vec2<bool>(arg_0, arg_0))), all(select(select(!vec3<bool>(arg_0, false, true), !vec3<bool>(arg_0, false, true), false), select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), !arg_0), vec3<bool>(true, 144f == var_1.a.x, true))), false, arg_0);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-2154f + _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))));
    return 4294967295u;
}

fn func_2() -> u32 {
    global2 = array<vec2<u32>, 12>();
    var var_0 = func_3(any(vec3<bool>(u_input.a.x >= u_input.a.x, false, false)) || (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-469f + -1000f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(642f)))));
    var var_1 = Struct_3(all(vec2<bool>(false, true)), (~_wgslsmith_div_i32(29465i, u_input.a.x) & abs(1i)) >> (37113u % 32u));
    let var_2 = Struct_2(~u_input.a.yyz, ~6578u);
    var_0 = _wgslsmith_sub_u32(var_2.b, 4294967295u);
    return ~4294967295u;
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    global0 = _wgslsmith_clamp_i32(~((u_input.a.x & 0i) & (-2147483647i << (func_2() % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, i32(-1i) * -u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 1i), _wgslsmith_mult_i32(~56913i, ~u_input.a.x)), u_input.a), u_input.a.x);
    var var_0 = (func_2() < 18998u) | select(all(vec2<bool>(true, false)), true, true);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(625f)), 1f);
    let var_2 = Struct_3(true, _wgslsmith_mod_i32(~u_input.a.x, countOneBits(29829i)));
    var_0 = all(!vec3<bool>(!var_2.a, true, all(!vec3<bool>(var_2.a, true, false))));
    return StorageBuffer(_wgslsmith_add_vec4_u32(u_input.c, select(vec4<u32>(~23624u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.d, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u)), 40114u, firstLeadingBit(0u)), _wgslsmith_sub_vec4_u32(firstTrailingBit(u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 16568u, u_input.c.x, 73032u), u_input.c)), vec4<bool>(all(vec3<bool>(var_2.a, true, var_2.a)), all(vec2<bool>(var_2.a, false)), false, !var_2.a))), _wgslsmith_clamp_u32(~min(1u, 0u) >> (1u % 32u), min(37540u, 19054u & select(u_input.e, arg_0.x, true)), 23022u), -2464f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(3027f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * -873f))), -1283f);
    var var_1 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(35289i, countOneBits(u_input.a.x)), abs(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.ww, u_input.a.yw), u_input.a.wz)), _wgslsmith_clamp_vec2_i32(vec2<i32>(max(-18337i, 0i), max(2147483647i, u_input.a.x)), -vec2<i32>(-42122i, 1i), vec2<i32>(-u_input.a.x, 0i)));
    var_1 = ~firstTrailingBit(~u_input.a.xw);
    let x = u_input.a;
    s_output = func_1(~_wgslsmith_mod_vec3_u32(abs(firstTrailingBit(vec3<u32>(44198u, u_input.b.x, u_input.d))), ~_wgslsmith_mult_vec3_u32(u_input.c.wyz, u_input.c.yxw)));
}

