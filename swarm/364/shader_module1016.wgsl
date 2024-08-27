struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, true, false, false, false, true, false, false, true, false, true, true, false, true, true, true, false, false, false, true, false, false, false, true, false, false, false, false);

var<private> global1: array<vec2<bool>, 13>;

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(vec3<bool>(false, false, true));
    global0 = array<bool, 28>();
    let var_1 = Struct_1(select(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], true, false), !var_0.a, any(vec4<bool>(false, true, false, var_0.a.x))), !(!var_0.a), var_0.a.x), var_0.a, vec3<bool>(global0[_wgslsmith_index_u32(select(countOneBits(1u), 1u, !var_0.a.x), 28u)], true, all(select(vec3<bool>(global0[_wgslsmith_index_u32(50296u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 28u)], var_0.a.x), global0[_wgslsmith_index_u32(4294967295u, 28u)])))));
    global1 = array<vec2<bool>, 13>();
    var var_2 = Struct_1(vec3<bool>(var_0.a.x && true, select(true, var_0.a.x, true), true));
    return vec3<bool>(true, true, false);
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<u32> {
    var var_0 = vec2<f32>(-1101f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-global2.x)), 1313f)));
    let var_1 = Struct_1(!func_1());
    let var_2 = u_input.a;
    global1 = array<vec2<bool>, 13>();
    global1 = array<vec2<bool>, 13>();
    return abs(min(vec4<u32>(1u, ~_wgslsmith_mod_u32(u_input.a, var_2), _wgslsmith_add_u32(81357u, 16079u), _wgslsmith_div_u32(_wgslsmith_div_u32(var_2, arg_0), ~u_input.a)), countOneBits(~vec4<u32>(109038u, arg_0, arg_0, 23963u))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(select(arg_0.a, func_1(), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], false, all(select(arg_0.a, vec3<bool>(false, false, true), true)))));
    global0 = array<bool, 28>();
    var var_1 = false;
    var_1 = 0i <= select(_wgslsmith_sub_i32(-1i, 1i), _wgslsmith_clamp_i32(~select(1i, 41042i, var_0.a.x), 9078i, -firstTrailingBit(-2147483647i)), arg_0.a.x);
    var var_2 = _wgslsmith_div_f32(584f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(min(global2.x, global2.x))) + global2.x), all(!func_1().xy))));
    return reverseBits(_wgslsmith_mult_i32(1i, -48614i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(!(global0[_wgslsmith_index_u32(u_input.a & 1u, 28u)] & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 61368u), vec4<u32>(29062u, u_input.a, 20297u, u_input.a)), 28u)]), true, true), !func_1(), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 12212u, 4294967295u), func_2(0u, false))) | _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.a, u_input.a), abs(u_input.a) >> (0u % 32u)), 28u)]);
    let var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(~(i32(-1i) * -9449i), -firstLeadingBit(-1i)), -2750i), -38031i, min(~(i32(-1i) * -36077i), _wgslsmith_sub_i32(func_3(Struct_1(vec3<bool>(true, var_0.x, false))), _wgslsmith_dot_vec2_i32(-vec2<i32>(61699i, -10011i), _wgslsmith_mult_vec2_i32(vec2<i32>(-5658i, 3514i), vec2<i32>(9826i, -1i))))));
    global0 = array<bool, 28>();
    var var_2 = vec2<i32>(var_1.x, 86629i);
    var var_3 = var_1.yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~1i, var_3.x, (var_2.x >> (u_input.a % 32u)) << ((u_input.a & u_input.a) % 32u), -15639i) >> (firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), vec4<u32>(4294967295u, u_input.a, 24245u, 1u))) % vec4<u32>(32u)), ~(~vec2<u32>(32276u, 97321u)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(17885u, u_input.a), vec2<u32>(u_input.a, 57845u ^ u_input.a), firstTrailingBit(abs(vec2<u32>(4294967295u, 6307u)))) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f)), global2.x));
}

