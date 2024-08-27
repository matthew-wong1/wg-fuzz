struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<bool>(true, false), true, vec4<u32>(113456u, 9722u, 0u, 68247u), 56277i, false);

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-980f, 1135f, 743f, 198f), vec4<f32>(854f, 441f, -1780f, -434f), vec4<f32>(-853f, 1000f, 1437f, 477f), vec4<f32>(-2703f, 657f, 769f, -633f), vec4<f32>(1913f, -487f, -256f, 1559f), vec4<f32>(505f, -2029f, -544f, 425f));

var<private> global4: array<bool, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(global0.a, -460f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(750f, 227f)))), ~vec4<u32>(firstTrailingBit(max(4294967295u, global0.c.x)), 92437u, ~_wgslsmith_mod_u32(22120u, global0.c.x), ~(~43735u)), u_input.c, u_input.a.x >= ~(~global0.d));
    let var_1 = -1i;
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.c.x, min(_wgslsmith_dot_vec4_u32(max(global0.c << (vec4<u32>(var_0.c.x, 0u, var_0.c.x, 4294967295u) % vec4<u32>(32u)), global0.c), select(global0.c, global0.c ^ var_0.c, all(vec4<bool>(false, var_0.e, true, var_0.e)))), countOneBits(34866u)), select(reverseBits(var_0.c.x), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, var_0.c.x, 61781u), global0.c.zwz), 0u), var_0.a.x)), 19u)];
    let var_3 = ~firstLeadingBit(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c.x, var_0.c.x, 3744u), global0.c.zww, vec3<u32>(20882u, global0.c.x, global0.c.x))));
    global3 = array<vec4<f32>, 6>();
    return firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(var_0.c.x, var_0.c.x, global0.c.x, global0.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 105300u, global0.c.x, global0.c.x), global0.c)), vec4<u32>(1u, select(global0.c.x, var_0.c.x, true), var_3.x, var_0.c.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>) -> i32 {
    global0 = Struct_4(select(!select(vec2<bool>(global0.e, false), vec2<bool>(false, global0.a.x), global4[_wgslsmith_index_u32(countOneBits(1u), 19u)]), global0.a, _wgslsmith_add_u32(global0.c.x, global0.c.x) < 0u), !(!global4[_wgslsmith_index_u32(1u, 19u)]), vec4<u32>(global0.c.x, countOneBits(~_wgslsmith_add_u32(global0.c.x, global0.c.x)), func_3(), 0u), -_wgslsmith_dot_vec4_i32(abs(u_input.b), -firstTrailingBit(u_input.b)), global4[_wgslsmith_index_u32(4294967295u, 19u)]);
    var var_0 = Struct_4(!(!(!global0.a)), true, global0.c, ~(-(_wgslsmith_div_i32(global0.d, u_input.c) >> (_wgslsmith_mod_u32(global0.c.x, 25u) % 32u))), any(!vec3<bool>(!global0.b, false, global0.b)));
    let var_1 = ~_wgslsmith_div_i32(global0.d, u_input.c & -_wgslsmith_mod_i32(-33488i, u_input.a.x));
    return -1i;
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = !(-(~global0.d) != (func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 516f, -1009f) * vec3<f32>(arg_0.b, arg_0.b, -219f)), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(arg_0.c.e, 6u)])) << (_wgslsmith_clamp_u32(min(global0.c.x, global0.c.x), select(arg_0.e.b.e, arg_0.c.a.x, arg_0.a.a.x), global0.c.x) % 32u)));
    global4 = array<bool, 19>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -612f);
    global2 = _wgslsmith_mult_u32(37191u, max(~abs(countOneBits(arg_0.a.b.b)), 78955u));
    global2 = firstLeadingBit(~0u) | global0.c.x;
    return vec4<bool>(!arg_0.e.b.c, all(arg_0.e.a.yz), false, global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 6>();
    let var_0 = select(!select(!(!vec4<bool>(global0.b, false, true, true)), !(!vec4<bool>(false, true, true, global0.a.x)), vec4<bool>(true, all(vec3<bool>(global0.b, global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(1u, 19u)])), false, true | global4[_wgslsmith_index_u32(38623u, 19u)])), !select(select(vec4<bool>(global0.a.x, false, true, false), !vec4<bool>(global4[_wgslsmith_index_u32(global0.c.x, 19u)], global0.b, global4[_wgslsmith_index_u32(19205u, 19u)], global0.b), func_1(Struct_3(Struct_2(vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 19u)], global4[_wgslsmith_index_u32(33759u, 19u)]), Struct_1(global0.c, global0.c.x, global4[_wgslsmith_index_u32(global0.c.x, 19u)], u_input.c, 0u)), 1190f, Struct_1(global0.c, global0.c.x, false, -7395i, 18592u), 5428i, Struct_2(vec3<bool>(true, global0.e, false), Struct_1(global0.c, 1u, true, global0.d, 26573u))))), !(!vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 19u)], true, false)), false), vec4<bool>(!(true && global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.c.x, global0.c.x), 19u)]), any(func_1(Struct_3(Struct_2(vec3<bool>(global0.a.x, global4[_wgslsmith_index_u32(15361u, 19u)], false), Struct_1(vec4<u32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), global0.c.x, true, -1i, global0.c.x)), 133f, Struct_1(vec4<u32>(global0.c.x, global0.c.x, 52486u, 1u), global0.c.x, true, 49412i, global0.c.x), global0.d, Struct_2(vec3<bool>(false, false, true), Struct_1(global0.c, 1u, true, u_input.a.x, 3380u)))).zw), select(true, true, false), true));
    let var_1 = true && !(!(global0.c.x > 31964u));
    var var_2 = 2147483647i;
    global3 = array<vec4<f32>, 6>();
    let var_3 = all(var_0.zww);
    let var_4 = vec2<i32>(~global0.d, _wgslsmith_mod_i32(0i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-28245i, -1i, u_input.b.x, global0.d), vec4<i32>(1i, global0.d, 53577i, global0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0.c.x, ~38192u, global0.c.x, global0.c.x), vec3<f32>(-489f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(401f, 657f) - 512f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1723f)) * _wgslsmith_f_op_f32(round(592f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1656f)))))), min(~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.x, global0.c.x, 0u), global0.c.zxz)), ~_wgslsmith_mult_vec3_u32(global0.c.xwx, reverseBits(vec3<u32>(0u, global0.c.x, global0.c.x)))));
}

