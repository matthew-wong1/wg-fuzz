struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(4294967295u, 1u, 108161u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    return false;
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(any(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, true))), true), vec2<bool>(select(true, true, false), all(vec3<bool>(true, true, true))), vec2<bool>(true, _wgslsmith_f_op_f32(floor(-163f)) == _wgslsmith_f_op_f32(f32(-1f) * -1728f))), (((vec3<i32>(0i, -53015i, -2147483647i) >> (vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]) % vec3<u32>(32u))) & abs(vec3<i32>(u_input.c, u_input.b, u_input.c))) | vec3<i32>(~0i, _wgslsmith_clamp_i32(0i, u_input.b, u_input.b), _wgslsmith_div_i32(u_input.b, u_input.b))) & -vec3<i32>(-2147483647i, u_input.b, 1i), -22569i);
    let var_1 = vec3<i32>(u_input.c, u_input.b, ~(-var_0.b.x)) ^ vec3<i32>(_wgslsmith_div_i32(u_input.b, max(2147483647i, -var_0.c)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -17105i), _wgslsmith_mult_vec2_i32(var_0.b.xz, vec2<i32>(31530i, 26811i))), ~_wgslsmith_dot_vec3_i32(abs(var_0.b), vec3<i32>(u_input.c, u_input.b, -1i)));
    global0 = array<u32, 3>();
    let var_2 = reverseBits(vec4<u32>(~global0[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 57231u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 13022u, 0u, 15236u) ^ vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(62695u, 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(95183u, 3u)], 3u)], 0u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], u_input.a), vec2<u32>(1u, u_input.a)), global0[_wgslsmith_index_u32(4294967295u, 3u)] ^ 13581u, u_input.a, firstLeadingBit(u_input.a))), 0u, 1u));
    global0 = array<u32, 3>();
    return abs(max(vec2<i32>(-2147483647i, -u_input.b), var_0.b.zz) & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_1.x, var_0.b.x), var_0.b) & var_0.c, 2147483647i));
}

fn func_1() -> Struct_3 {
    global0 = array<u32, 3>();
    let var_0 = !func_2();
    let var_1 = ~vec3<u32>(_wgslsmith_add_u32(u_input.a, min(~u_input.a, 1u)), global0[_wgslsmith_index_u32(1u, 3u)], 78909u);
    var var_2 = -8389i;
    var var_3 = Struct_3(-func_3(), _wgslsmith_div_f32(-2162f, 1f), _wgslsmith_add_i32(~_wgslsmith_add_i32(func_3().x, -u_input.b), i32(-1i) * -(i32(-1i) * -40083i)));
    return Struct_3(vec2<i32>(-2201i, -select(-u_input.c, _wgslsmith_div_i32(-2147483647i, 36127i), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(select(var_3.b, _wgslsmith_f_op_f32(-705f * 282f), false))) + 955f), 0i);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> i32 {
    let var_0 = all(vec3<bool>(true, true, true));
    let var_1 = Struct_1(vec2<bool>(var_0, select(var_0, !(!var_0), var_0)), vec3<i32>(arg_0.c & arg_0.c, -1i, min(2147483647i, -(~arg_0.a.x))), firstLeadingBit(u_input.b));
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, _wgslsmith_div_f32(arg_0.b, arg_0.b), _wgslsmith_f_op_f32(min(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(max(arg_0.b, arg_0.b))) + _wgslsmith_div_vec4_f32(vec4<f32>(1473f, arg_0.b, 328f, arg_0.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b, arg_0.b, -125f, -533f)))))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_0 = firstLeadingBit(func_4(func_1(), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(21536u, 0u)), select(select(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 3u)]), vec2<u32>(1u, u_input.a), vec2<bool>(false, false)), vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 3u)]) >> (vec2<u32>(6827u, 4294967295u) % vec2<u32>(32u)), select(vec2<bool>(false, false), vec2<bool>(true, false), false)))));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a, 1u)), vec2<u32>(~(~global0[_wgslsmith_index_u32(17556u, 3u)]), ~0u)), ~(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) >> (_wgslsmith_add_vec2_u32(abs(vec2<u32>(global0[_wgslsmith_index_u32(0u, 3u)], 42910u)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 37375u)) % vec2<u32>(32u))));
    let var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~(_wgslsmith_mult_vec2_u32(vec2<u32>(18083u, global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<u32>(var_2, 89u)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81272u, 3u)], 3u)]), vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, var_2))), vec2<u32>(u_input.a, 48186u)), vec2<u32>(~38127u, max(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, var_2), 3u)], ~8854u)) ^ _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a, 16559u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 43416u), vec2<u32>(var_2, 2156u))), vec2<u32>(1u, 1u)));
    var_1 = _wgslsmith_mult_u32(min(reverseBits(~(~0u)), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(_wgslsmith_div_u32(49214u, u_input.a), 10699u))), 4294967295u);
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(-1459f, vec2<u32>(~(~(~10530u)), _wgslsmith_clamp_u32(var_2, 1u, abs(16951u) | (u_input.a >> (global0[_wgslsmith_index_u32(var_2, 3u)] % 32u)))), _wgslsmith_add_i32(-3159i, _wgslsmith_mult_i32(u_input.c, _wgslsmith_sub_i32(31254i, var_0)) >> (16962u % 32u)));
}

