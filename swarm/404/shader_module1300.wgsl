struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(arg_0, -1046f))))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x, _wgslsmith_div_f32(1757f, _wgslsmith_f_op_f32(floor(-380f))), arg_1.c.a) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(876f, -788f)) + 253f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.a.c.x + 1092f))), 1199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f * -785f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a * arg_3.a.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(exp2(arg_1.b.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(768f, arg_1.b.x)) + -2555f))), _wgslsmith_f_op_f32(-arg_1.c.c.x)), !(!arg_3.a.e.x & false)));
    var var_1 = arg_2;
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, _wgslsmith_div_f32(arg_1.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f))), 141f, -1000f)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(-270f)), arg_3.a.a, var_0.x, arg_3.a.a);
    var var_3 = Struct_5(Struct_4(all(!(!vec4<bool>(true, true, arg_1.c.e.x, arg_1.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1088f, _wgslsmith_f_op_f32(func_2(arg_3.a.a))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(-1815f)), -456f, var_0.x)), arg_3.a, vec2<bool>(firstTrailingBit(arg_1.e.x) == _wgslsmith_mult_u32(0u, 6600u), !(!arg_3.a.e.x)), abs(select(arg_1.e, ~u_input.a.xwx, vec3<bool>(global0.x, arg_3.a.e.x, arg_1.a)))), arg_3);
    return select(reverseBits(min(-u_input.d, u_input.c.zxw)), ~abs(u_input.c.zxy), !(!select(vec3<bool>(false, arg_3.a.e.x, var_3.b.a.e.x), select(vec3<bool>(arg_3.a.e.x, false, global0.x), arg_3.a.e, true), !arg_1.d.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>) -> vec2<f32> {
    global0 = select(vec2<bool>(true, false), !vec2<bool>(select(true, false, global0.x) & true, !(!global0.x)), select(!(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), global0.x)), !vec2<bool>(global0.x, 81737i > u_input.c.x), vec2<bool>(all(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(true, true, true))), false)));
    global0 = vec2<bool>(true, true);
    var var_0 = arg_1.x;
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-918f - -537f)), 1000f), max(1u, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-758f, -1252f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(206f, -669f) + vec2<f32>(-612f, 611f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-338f, 1323f), vec2<f32>(-2303f, -1000f)))), 1u, vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_u32(~vec3<u32>(min(u_input.e, u_input.a.x), u_input.e << (arg_0.x % 32u), u_input.a.x), arg_0.zyx));
    let var_2 = vec2<u32>(arg_0.x, 4294967295u);
    return _wgslsmith_f_op_vec2_f32(-var_1.a.c);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(func_2(-363f))) * vec2<f32>(arg_1.b.x, 746f));
    var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mult_vec4_u32(u_input.a, ~u_input.a) & ~_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(u_input.c.zzw, func_3(_wgslsmith_sub_i32(~8212i, ~u_input.c.x), arg_1, _wgslsmith_sub_i32(max(u_input.d.x, u_input.b), 46162i), Struct_3(Struct_2(517f, u_input.a.x, arg_1.c.c, u_input.a.x, vec3<bool>(arg_1.d.x, global0.x, true)), vec3<u32>(4294967295u, 16438u, arg_1.c.d) << (vec3<u32>(arg_0.x, u_input.a.x, 0u) % vec3<u32>(32u)))))));
    var var_1 = 494f;
    var var_2 = arg_1.c.c.x;
    var var_3 = !(!vec4<bool>(global0.x, false, true, true));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(false, (func_1(vec3<u32>(u_input.a.x, 4294967295u, 17285u), Struct_4(global0.x, vec3<f32>(-274f, -1000f, -2114f), Struct_2(-1282f, 4294967295u, vec2<f32>(757f, -990f), u_input.a.x, vec3<bool>(global0.x, global0.x, global0.x)), vec2<bool>(global0.x, true), vec3<u32>(89295u, 4294967295u, u_input.a.x))) & global0.x) || (all(vec3<bool>(global0.x, global0.x, global0.x)) | true));
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(296f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1555f))))), 1u, vec2<f32>(-1568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(408f - -1108f) + -138f)), 1u, !vec3<bool>(any(vec3<bool>(true, global0.x, global0.x)), !global0.x, !global0.x)), vec3<u32>(~(~u_input.a.x), 19343u, _wgslsmith_dot_vec3_u32(u_input.a.yzy, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 14241u, 90801u), ~u_input.a.xyw))));
    let var_1 = var_0.b;
    global0 = vec2<bool>(firstTrailingBit(var_0.b.x ^ 23399u) == 0u, ~(~_wgslsmith_add_u32(u_input.e, var_1.x)) > (firstTrailingBit(_wgslsmith_mod_u32(3930u, 54078u)) ^ (_wgslsmith_mult_u32(u_input.e, 6316u) ^ ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(28974i, _wgslsmith_f_op_f32(-var_0.a.c.x), ~u_input.c, ~_wgslsmith_mod_u32(0u, u_input.a.x));
}

