struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

var<private> global1: array<Struct_4, 28>;

var<private> global2: vec4<i32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> vec4<u32> {
    global0 = array<vec2<bool>, 28>();
    let var_0 = Struct_1(-vec2<i32>(select(~u_input.a.x, 1i, true), ~(~3506i)));
    var var_1 = true;
    let var_2 = Struct_1(vec2<i32>(firstLeadingBit(~u_input.b.x), _wgslsmith_mult_i32(-1i, -var_0.a.x)));
    global1 = array<Struct_4, 28>();
    return firstLeadingBit(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 42720u, u_input.c), vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, 29992u, 4294967295u), vec4<u32>(18455u, u_input.c, u_input.d.x, u_input.d.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, u_input.d.x, 73595u, u_input.c), max(vec4<u32>(26024u, 35082u, u_input.c, u_input.d.x), vec4<u32>(41952u, 1u, 15631u, u_input.d.x))) ^ firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, 19094u, u_input.c) ^ vec4<u32>(u_input.d.x, u_input.c, u_input.c, 11479u))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_div_f32(-271f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + 3114f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1482f)))))));
    global1 = array<Struct_4, 28>();
    var var_1 = u_input.d.x;
    let var_2 = _wgslsmith_add_vec2_i32(-vec2<i32>(global2.x, _wgslsmith_div_i32(-2147483647i, 26676i)), _wgslsmith_mod_vec2_i32(select(arg_1.a, vec2<i32>(arg_1.a.x, 29870i), true), vec2<i32>(_wgslsmith_clamp_i32(arg_1.a.x, u_input.b.x, 2147483647i), -1i)) | min(-arg_1.a, vec2<i32>(~1i, firstLeadingBit(global2.x))));
    global1 = array<Struct_4, 28>();
    return global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(abs(4294967295u), _wgslsmith_mult_u32(arg_0.x, ~1u) ^ arg_0.x, ~firstLeadingBit(28171u))), 28u)];
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = arg_0.c;
    let var_1 = _wgslsmith_sub_i32(46177i, max(10175i, _wgslsmith_sub_i32(-32148i, -2147483647i)));
    return select(_wgslsmith_sub_vec2_u32(vec2<u32>(~arg_0.a.x, abs(u_input.d.x)), arg_0.a.xy | _wgslsmith_mod_vec2_u32(arg_0.a.yz, firstLeadingBit(vec2<u32>(12414u, arg_0.a.x)))), vec2<u32>(0u, 0u), false);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> bool {
    global2 = vec4<i32>(u_input.a.x, -(u_input.b.x << (abs(~0u) % 32u)), global2.x, -1i);
    var var_0 = vec2<bool>(1000f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.x, arg_0.a)), _wgslsmith_f_op_f32(max(-211f, -200f)))), arg_2.x);
    global1 = array<Struct_4, 28>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(1181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1749f));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(711f, 936f)))) - -1935f);
    let var_2 = all(!(!vec3<bool>(true, all(global0[_wgslsmith_index_u32(u_input.d.x, 28u)]), true)));
    let var_3 = func_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(37793u, 1u, 63089u, u_input.c) << (vec4<u32>(u_input.c, u_input.c, 27693u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, 4294967295u) >> (vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x) % vec4<u32>(32u))), ~func_1()), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 0u, 0u, 4294967295u), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(39027u, 29469u, 0u, u_input.c))))), Struct_1(vec2<i32>(_wgslsmith_add_i32(global2.x | -1i, ~global2.x), u_input.b.x)));
    global1 = array<Struct_4, 28>();
    var var_4 = func_4(Struct_3(-383f), func_3(func_2(vec4<u32>(4294967295u, var_3.a.x, 1u, 4294967295u), func_2(vec4<u32>(var_3.a.x, 4294967295u, var_3.a.x, u_input.c), var_3.c).c), Struct_3(_wgslsmith_f_op_f32(880f - var_1))), select(select(!vec3<bool>(false, var_2, var_2), select(vec3<bool>(var_2, var_2, true), vec3<bool>(var_2, var_2, var_2), true), var_2), vec3<bool>(!var_2, true, false & var_2), !select(vec3<bool>(false, false, var_2), vec3<bool>(false, true, var_2), vec3<bool>(var_2, var_2, true))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -298f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(floor(-521f))), 367f, var_1)) || true;
    var var_5 = ~1i;
    let var_6 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 69027u, u_input.d.x, 0u), vec4<u32>(0u, var_3.a.x, u_input.c, u_input.d.x))), 12360u), -16143i);
}

