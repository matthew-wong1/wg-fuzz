struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 11047u, 4294967295u, 0u);

var<private> global2: array<bool, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = -_wgslsmith_add_i32(19020i, reverseBits(arg_0));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2065f, -1557f, 1064f), vec3<f32>(2186f, 1290f, -1013f), var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(882f, 1460f, -586f) - vec3<f32>(-365f, -424f, -962f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-833f, -218f, _wgslsmith_f_op_f32(max(761f, 232f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1447f, -997f)), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)], false)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, _wgslsmith_f_op_f32(select(1000f, -1959f, arg_2.a)), _wgslsmith_f_op_f32(floor(-1093f)))))));
    let var_3 = Struct_1(!(!(!(!arg_2.a))));
    var var_4 = vec3<u32>(~5619u, max(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, 5642u), vec2<u32>(arg_1, u_input.e)), u_input.e), 6577u), _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(firstLeadingBit(1u), global1.x | (global0.b << (1u % 32u)), global1.x)));
    return 35120u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: u32) -> f32 {
    global0 = Struct_2(global0.a, arg_3);
    global1 = ~vec4<u32>(_wgslsmith_add_u32(global0.b, 18583u) >> (~u_input.b % 32u), abs(_wgslsmith_sub_u32(1u, global0.b)), ~(~25183u), func_3(1i, firstTrailingBit(1u), global0.a)) << (vec4<u32>(global1.x, u_input.e, ~u_input.e | _wgslsmith_mult_u32(0u, global0.b ^ 16808u), _wgslsmith_clamp_u32(abs(firstTrailingBit(1u)), ~min(global1.x, global1.x), _wgslsmith_dot_vec2_u32(global1.wy, global1.wx))) % vec4<u32>(32u));
    var var_0 = Struct_2(global0.a, ~(u_input.b >> (global0.b % 32u)));
    let var_1 = false;
    let var_2 = ~(~arg_2.x) << (24358u % 32u);
    return 649f;
}

fn func_1() -> vec4<u32> {
    var var_0 = ~_wgslsmith_div_u32(40621u, ~u_input.b);
    var var_1 = any(vec4<bool>(!(!(!global0.a.a)), global0.a.a, !(_wgslsmith_f_op_f32(func_2(vec2<f32>(944f, -270f), vec2<f32>(-415f, 503f), u_input.c.zx, global1.x)) > 136f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-858f, -1391f) * _wgslsmith_f_op_f32(1000f * -1093f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(717f, -191f)), _wgslsmith_f_op_f32(1084f * -981f))));
    let var_2 = select(select(!select(select(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(true, false, false, true), global2[_wgslsmith_index_u32(global1.x, 4u)]), select(vec4<bool>(global0.a.a, true, true, global2[_wgslsmith_index_u32(6573u, 4u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 4u)], true, false), global0.a.a), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 4u)], global0.a.a, global2[_wgslsmith_index_u32(28877u, 4u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 4u)], global0.a.a, true), vec4<bool>(global0.a.a, false, true, global0.a.a))), select(!(!vec4<bool>(false, false, global0.a.a, false)), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 4u)], global2[_wgslsmith_index_u32(global0.b, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], true), false), vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(global1.x, 4u)]), true)), -2147483647i == _wgslsmith_mod_i32(1i, u_input.d.x), true)), select(select(!select(vec4<bool>(false, global0.a.a, global0.a.a, true), vec4<bool>(false, global0.a.a, false, false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(13203u, 4u)], global0.a.a)), !vec4<bool>(global2[_wgslsmith_index_u32(global0.b, 4u)], true, global2[_wgslsmith_index_u32(global0.b, 4u)], global2[_wgslsmith_index_u32(global1.x, 4u)]), true | select(global0.a.a, false, true)), !select(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(global0.b, 4u)], global2[_wgslsmith_index_u32(91721u, 4u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], false, false, false), any(vec2<bool>(global0.a.a, false))), global2[_wgslsmith_index_u32(8393u, 4u)]), !all(!(!vec3<bool>(global0.a.a, true, global2[_wgslsmith_index_u32(u_input.b, 4u)]))));
    global1 = vec4<u32>(select(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(6246u, u_input.b, 15819u), abs(vec3<u32>(u_input.b, 0u, global0.b)))), ~global1.x | ~_wgslsmith_add_u32(17518u, u_input.e), ~u_input.e == _wgslsmith_mult_u32(min(global0.b, 9003u), ~global1.x)), 4294967295u | u_input.b, 29564u, 50913u);
    return vec4<u32>(~min(0u, firstLeadingBit(global1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 55325u, u_input.e, firstTrailingBit(4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 106448u, 24128u, 1u), vec4<u32>(global1.x, 15443u, global1.x, global1.x))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~global1.x, 1u, 31304u), ~_wgslsmith_clamp_u32(27027u, u_input.e, 55940u), ~global0.b), min(~(~50741u), ~(~global0.b))) ^ abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, global0.b), vec4<u32>(global1.x, 4294967295u, global1.x, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~func_1();
    let var_0 = global2[_wgslsmith_index_u32(global1.x | (_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.e, 1u), global1.xw, any(vec3<bool>(global0.a.a, true, false))), vec2<u32>(abs(1u), ~global0.b)) >> (global0.b % 32u)), 4u)];
    let var_1 = Struct_2(global0.a, _wgslsmith_mod_u32(global0.b, ~u_input.e));
    let var_2 = Struct_3(!global2[_wgslsmith_index_u32(4294967295u, 4u)]);
    global1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(44946u, global1.x, 46975u) >> (vec3<u32>(8428u, 0u, u_input.b) % vec3<u32>(32u)), vec3<u32>(u_input.b, 4294967295u, 63837u)), _wgslsmith_add_u32(var_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, 18620u, global1.x), vec4<u32>(4294967295u, global1.x, 1u, 22933u))), u_input.e, ~(~1u)), max(vec4<u32>(global1.x & 31245u, var_1.b, ~44078u, 97299u), vec4<u32>(countOneBits(65638u), ~1u, _wgslsmith_add_u32(u_input.e, var_1.b), ~global1.x))));
    let var_3 = ~(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(88111u, global0.b, 34273u, u_input.b), vec4<u32>(4294967295u, 1u, u_input.b, 0u)), vec4<u32>(51095u, var_1.b, abs(global1.x), 4294967295u), true & !global0.a.a));
    global1 = _wgslsmith_mod_vec4_u32(max(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.b, global0.b, global1.x), var_3), var_3), var_3), _wgslsmith_sub_vec4_u32(vec4<u32>(func_1().x, _wgslsmith_sub_u32(~0u, ~9773u), reverseBits(~4294967295u), 35130u), var_3));
    var var_4 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(44922u, firstLeadingBit(u_input.b), var_3, 4858u);
}

