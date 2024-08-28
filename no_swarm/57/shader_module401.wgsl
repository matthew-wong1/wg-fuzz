struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_u32(abs(1u), _wgslsmith_add_u32(u_input.b, ~reverseBits(global1.x))) ^ countOneBits(reverseBits(firstTrailingBit(arg_0)));
    var var_1 = global0.a.c;
    global1 = vec2<u32>(39365u, select((~var_1.d << (~u_input.b % 32u)) ^ 271u, global1.x, global0.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1289f, var_1.e, 383f) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.e + var_1.e), -489f, _wgslsmith_f_op_f32(-132f - var_1.b.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.b)))))));
    global0 = Struct_5(global0.a, global0.b, !global0.c, ~global0.d, ~var_0);
    return !(!select(vec4<bool>(!global0.a.a.x, false, global0.c, false), vec4<bool>(select(global0.c, true, true), global0.a.a.x, any(vec2<bool>(global0.a.a.x, global0.a.a.x)), true || global0.a.a.x), false));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_5 {
    let var_0 = select(!vec4<bool>(!global0.a.a.x, global0.a.a.x, global0.c != false, true && global0.c), !(!select(func_3(u_input.e, global0.b.a, 1i), func_3(global0.d.x, vec3<i32>(global0.a.c.c.x, 1i, global0.a.b), -1i), !vec4<bool>(true, global0.c, true, global0.a.a.x))), global0.a.a.x);
    var var_1 = -38635i;
    let var_2 = global0.a.d;
    let var_3 = Struct_4(global0.b.a.x, u_input.b);
    var var_4 = func_3(global0.e, global0.b.a, ~(-_wgslsmith_add_i32(var_2.c.x, -2147483647i) >> (~30013u % 32u))).wx;
    return Struct_5(Struct_3(global0.a.a, global0.b.a.x | _wgslsmith_div_i32(-var_2.c.x, u_input.d), global0.a.c, Struct_1(global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.x, 1627f) + vec3<f32>(219f, global0.a.d.b.x, var_2.b.x))), global0.a.d.c, max(1u, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -355f)), firstLeadingBit(~global0.a.e)), Struct_2(-_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a.d.c.x, 2147483647i, 47826i), abs(vec3<i32>(global0.b.a.x, var_2.c.x, 81707i)))), false, global0.a.e, u_input.a.x >> (36304u % 32u));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: f32) -> StorageBuffer {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.d.e, 382f) - vec2<f32>(-380f, arg_2)), vec2<f32>(1116f, global0.a.d.e)), global0.a.d.b.zz, global0.a.a.zy)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(700f * arg_2) * arg_2) * 1f), global0.a.d.e, 504f, arg_2));
    var var_0 = Struct_4(0i, _wgslsmith_clamp_u32(~max(arg_1 >> (30864u % 32u), arg_0.x), ~_wgslsmith_clamp_u32(arg_0.x & 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_1, 0u, u_input.e), arg_0), ~1u), arg_0.x));
    let var_1 = global0.b;
    let var_2 = select(_wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32((arg_0.xxz << (vec3<u32>(var_0.b, var_0.b, global1.x) % vec3<u32>(32u))) ^ ~arg_0.yyx, _wgslsmith_sub_vec3_u32(~global0.a.e.yzy, global0.d.xxx))), min(~0u, global0.a.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1826f - _wgslsmith_f_op_f32(f32(-1f) * -168f))) < _wgslsmith_f_op_f32(global0.a.c.e * arg_2));
    global0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.d.b.xx * global0.a.c.b.xx), vec2<f32>(163f, 1220f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a.d.b.zy, global0.a.c.b.xx)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2040f, arg_2, -340f, _wgslsmith_f_op_f32(-global0.a.d.e)))))));
    return StorageBuffer(~u_input.e, min(max(_wgslsmith_mult_vec4_u32(~arg_0, ~vec4<u32>(1u, global0.e, u_input.a.x, var_2)), global0.a.e), ~(arg_0 ^ global0.a.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.c.e, global0.a.c.b.x, 558f, arg_2)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1810f), _wgslsmith_f_op_f32(exp2(arg_2)), -2223f, _wgslsmith_f_op_f32(322f + global0.a.d.e)))), var_0.a, -207f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<u32>(27454u, 0u, reverseBits(global1.x << (global0.a.e.x % 32u)), ~max(4294967295u, global0.d.x)) << (vec4<u32>(_wgslsmith_div_u32(~global1.x, global0.e), 1u, abs(_wgslsmith_div_u32(u_input.a.x, global1.x)), 0u | ~global0.d.x) % vec4<u32>(32u)), 1u, -550f);
}

