struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: Struct_3 = Struct_3(false, vec2<i32>(-39170i, -107106i));

var<private> global2: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global3: vec2<f32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5) -> u32 {
    return 6024u;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c)), vec4<u32>(_wgslsmith_mod_u32(2534u, firstLeadingBit(~u_input.a)), ~(abs(global2.x) << (1u % 32u)), _wgslsmith_div_u32(_wgslsmith_mult_u32(~global2.x, 1u ^ global2.x), 46669u << (max(0u, u_input.a) % 32u)), global2.x));
    let var_1 = func_3(!select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec4<bool>(false, global1.a, arg_1.a, global1.a))), Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), global3.x, _wgslsmith_f_op_f32(sign(arg_2)))), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, 4873i, global1.b.x), vec4<i32>(u_input.d, global1.b.x, global1.b.x, 47493i), vec4<i32>(u_input.d, global1.b.x, u_input.b, u_input.b)) >> (~vec4<u32>(4294967295u, 28610u, var_0.x, global2.x) % vec4<u32>(32u)))));
    let var_2 = Struct_1(27701i);
    let var_3 = var_0 & vec4<u32>(func_3(vec2<bool>(true, global1.a), Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-447f, 1548f, -887f) * vec3<f32>(arg_2, 1506f, -2958f)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 36593i, global1.b.x, global1.b.x), vec4<i32>(-59967i, 1i, var_2.a, 0i)))), 22159u, 20522u, reverseBits(~1u) & select(1u, ~global2.x, false));
    let var_4 = vec3<f32>(925f, _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x + -1000f), _wgslsmith_f_op_f32(floor(478f))))));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))), Struct_3(all(!(!vec3<bool>(global1.a, global1.a, false))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a, u_input.b), global1.b), firstLeadingBit(abs(global1.b)))), -1128f);
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(step(-766f, _wgslsmith_f_op_f32(-1000f * global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1837f - global3.x)), _wgslsmith_div_f32(700f, _wgslsmith_f_op_f32(-global3.x))))));
    var_1 = -(i32(-1i) * -7320i);
    var var_3 = Struct_1(global1.b.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-338f, -798f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 22973u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f + global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-902f - global3.x), _wgslsmith_f_op_f32(-global3.x), global3.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, -323f, global3.x, -2016f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(42727i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(239f, global3.x), _wgslsmith_f_op_f32(min(1000f, 693f))))), _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global1.b.x), global1.a)))), select(true, all(vec3<bool>(global1.a, true, false)), !global1.a) == (_wgslsmith_clamp_i32(2147483647i, 24534i, u_input.b) != abs(-2147483647i)))));
}

