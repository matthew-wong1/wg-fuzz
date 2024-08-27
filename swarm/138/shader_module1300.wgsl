struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec4<bool>(true, true, true, false), 13248u), Struct_3(vec4<bool>(false, false, true, false), 0u), Struct_3(vec4<bool>(false, true, true, false), 37539u), Struct_3(vec4<bool>(false, true, false, false), 0u), Struct_3(vec4<bool>(true, false, false, true), 22066u), Struct_3(vec4<bool>(true, false, false, false), 4294967295u), Struct_3(vec4<bool>(false, true, false, false), 1u), Struct_3(vec4<bool>(false, true, true, true), 1u), Struct_3(vec4<bool>(false, false, false, false), 1u), Struct_3(vec4<bool>(true, true, false, false), 13574u), Struct_3(vec4<bool>(false, true, false, false), 0u), Struct_3(vec4<bool>(false, false, true, false), 15374u), Struct_3(vec4<bool>(true, false, false, false), 1u), Struct_3(vec4<bool>(false, false, false, true), 4294967295u), Struct_3(vec4<bool>(false, true, false, false), 52230u), Struct_3(vec4<bool>(false, false, false, true), 1u), Struct_3(vec4<bool>(false, false, true, true), 0u), Struct_3(vec4<bool>(true, false, true, true), 27364u), Struct_3(vec4<bool>(true, true, false, false), 0u), Struct_3(vec4<bool>(false, true, true, true), 3276u), Struct_3(vec4<bool>(false, true, false, true), 59291u), Struct_3(vec4<bool>(false, false, true, false), 85319u), Struct_3(vec4<bool>(false, false, false, false), 1u), Struct_3(vec4<bool>(false, true, false, true), 0u));

var<private> global2: u32;

var<private> global3: array<bool, 14> = array<bool, 14>(false, true, true, false, true, true, true, true, false, true, false, true, true, false);

var<private> global4: u32 = 9795u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    global3 = array<bool, 14>();
    global3 = array<bool, 14>();
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 14u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(540f + _wgslsmith_f_op_f32(select(1169f, 894f, global3[_wgslsmith_index_u32(4294967295u, 14u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1339f + 695f)))), -769f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-765f, -335f))));
    var var_2 = Struct_1(-_wgslsmith_mod_i32(0i, ~_wgslsmith_sub_i32(-36482i, u_input.a.x)));
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2017u, 18901u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 65644u, arg_1, 0u), vec4<u32>(4273u, 1260u, arg_1, 50100u))) ^ arg_1), arg_1);
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(1u);
    return global1[_wgslsmith_index_u32(~(_wgslsmith_add_u32(27434u, ~func_3(global0[_wgslsmith_index_u32(56283u, 28u)], 28562u)) ^ var_0.a), 24u)];
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = func_2(-(~u_input.a.x));
    return !vec3<bool>((arg_2.x & arg_0.a) < ~0u, !global3[_wgslsmith_index_u32(29422u, 14u)] || false, all(!(!var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(39149i, 30898i, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, 929u, 28104u, 4294967295u) % vec4<u32>(32u)), ~firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 37741i)), -countOneBits(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, u_input.a.x))), ~vec4<i32>(u_input.a.x, max(41733i, u_input.a.x), 0i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, -61695i, u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(2001f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -234f))))));
    let var_2 = Struct_3(vec4<bool>(global3[_wgslsmith_index_u32(~1u, 14u)], true, all(!func_1(Struct_2(42530u), var_1.x, vec4<u32>(2783u, 23686u, 94950u, 33373u))), global3[_wgslsmith_index_u32(countOneBits(~(~55317u)), 14u)]), max(30257u, _wgslsmith_clamp_u32(63365u, _wgslsmith_mult_u32(0u, 50226u), 1u) ^ 0u));
    global4 = 12613u;
    let var_3 = Struct_2(~14346u);
    let var_4 = Struct_1(~abs(-(~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-2147483647i, -(i32(-1i) * -1i), _wgslsmith_mult_i32(countOneBits(2147483647i), ~11619i)));
}

