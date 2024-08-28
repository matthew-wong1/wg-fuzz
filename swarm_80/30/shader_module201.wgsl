struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-552f, 184f, 1137f), vec3<f32>(624f, 442f, 211f), vec3<f32>(1491f, 492f, 1149f), vec3<f32>(1000f, -578f, 503f), vec3<f32>(1780f, 169f, -1373f), vec3<f32>(1000f, 426f, 1573f), vec3<f32>(-1236f, 1000f, 1103f), vec3<f32>(-1885f, -987f, 1883f), vec3<f32>(497f, -125f, -1636f));

var<private> global1: Struct_2 = Struct_2(1u, false, i32(-2147483648), false, vec4<i32>(12415i, 1i, 69829i, 26644i));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), 10180i, i32(-2147483648), i32(-2147483648)), -405f);

var<private> global3: array<vec3<i32>, 27>;

var<private> global4: bool = false;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = Struct_2(global1.a, any(select(select(vec4<bool>(true, global1.b, true, true), vec4<bool>(true, false, true, global1.b), select(vec4<bool>(true, global1.d, global1.d, global1.b), vec4<bool>(true, global1.b, global1.b, true), vec4<bool>(global1.b, global1.d, global1.b, global1.b))), !vec4<bool>(global1.b, global1.d, global1.b, global1.b), !vec4<bool>(global1.d, false, global1.d, false))), 15226i, all(vec4<bool>(global1.d, false, true, global1.d)) && global1.d, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i ^ global2.a.x, select(-2147483647i, 2950i, true)), _wgslsmith_mod_vec2_i32(global2.a.zw, global1.e.zz) | vec2<i32>(global2.a.x, -2147483647i)), -30744i, _wgslsmith_mult_i32(~reverseBits(15250i), -_wgslsmith_dot_vec2_i32(global2.a.wz, vec2<i32>(global1.c, -23784i))), -1i));
    var var_1 = 16930i;
    let var_2 = Struct_2(~min(firstLeadingBit(_wgslsmith_sub_u32(global1.a, global1.a)), ~global1.a >> ((var_0.a ^ 4294967295u) % 32u)), true, -(((i32(-1i) * -30780i) ^ (var_0.c ^ 40658i)) | ~arg_0), false, abs(reverseBits(min(~var_0.e, global1.e | global1.e))));
    return vec4<u32>(45241u, 4294967295u, 4294967295u, 0u);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = ~(_wgslsmith_sub_vec4_u32(func_3(abs(3635i)), vec4<u32>(global1.a, global1.a, global1.a & 1u, 1u)) ^ (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 0u, global1.a), vec4<u32>(global1.a, global1.a, 4294967295u, 36035u)), select(vec4<u32>(global1.a, 1u, 4921u, 19352u), vec4<u32>(global1.a, global1.a, 0u, 4294967295u), global1.d)) & vec4<u32>(global1.a, global1.a << (global1.a % 32u), 0u, _wgslsmith_mod_u32(global1.a, global1.a))));
    global4 = !global1.d;
    let var_1 = Struct_1(abs(firstLeadingBit(global1.e) | ~select(vec4<i32>(-2147483647i, 0i, 2147483647i, global1.e.x), vec4<i32>(2147483647i, u_input.b, arg_0.a.x, arg_0.a.x), global1.b)), _wgslsmith_f_op_f32(-arg_0.b));
    var var_2 = max(_wgslsmith_mult_u32(~(_wgslsmith_add_u32(global1.a, global1.a) ^ ~var_0.x), var_0.x), ~1u);
    global3 = array<vec3<i32>, 27>();
    return global2.a.x;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global2.b)) * vec2<f32>(global2.b, 864f)))))), vec2<f32>(_wgslsmith_f_op_f32(-420f + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global2.b, -1099f >= global2.b)))), func_2(Struct_1(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -823f))) <= _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-31097i, 0i, global1.e.x, global2.a.x), abs(vec4<i32>(u_input.a, -11950i, 0i, -56921i))), ~_wgslsmith_mult_vec4_i32(global1.e, global2.a))));
    global4 = !arg_0;
    var var_1 = Struct_2(0u, !(!arg_0), max(u_input.b, -abs(global1.c) | global1.e.x), true, ~abs(-global1.e));
    global3 = array<vec3<i32>, 27>();
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b, global2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), var_0.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, 937f) * vec2<f32>(1000f, global2.b))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.b, 950f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-707f, -1111f), vec2<f32>(var_0.x, -1000f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(426f, 781f), vec2<f32>(var_0.x, -1000f)))), true))), vec2<bool>(global1.b, !(!any(vec2<bool>(true, false))))));
    return StorageBuffer(4949u, _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(firstLeadingBit(0i)), 279i), firstTrailingBit(abs(vec2<i32>(global2.a.x, 2147483647i)))), _wgslsmith_f_op_f32(step(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))) * -900f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1039f + 1105f))))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(global2.b));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -610f);
    let x = u_input.a;
    s_output = func_1(7392u < global1.a);
}

