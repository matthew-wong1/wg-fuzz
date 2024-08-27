struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(756f, -290f, -1000f, -1000f, 1048f, -525f, 1206f, 1429f, 1826f);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1i, true), Struct_1(1i, true), Struct_1(0i, true), Struct_1(0i, false), Struct_1(2147483647i, true), Struct_1(2147483647i, true), Struct_1(-39698i, false), Struct_1(-13614i, true), Struct_1(20735i, false), Struct_1(31733i, false), Struct_1(0i, true), Struct_1(2147483647i, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<f32, 9>();
    let var_0 = max(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(43223u, u_input.b), vec2<u32>(116368u, u_input.b)), u_input.b), 66367u);
    global2 = Struct_1(-u_input.c, true);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(27960i, arg_0.x)), ~arg_0.yy), arg_0.x >> (select(~13797u, 1u, false) % 32u));
    global2 = Struct_1(abs(_wgslsmith_mod_i32(~(-14211i), 1i)), global2.b);
    return select(!vec2<bool>(!all(vec2<bool>(true, global2.b)), !global2.b), vec2<bool>(true != global1.b, false), 0i == u_input.c);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a.x), 9u)], 635f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1855f)) - _wgslsmith_f_op_f32(-639f + 1596f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)] + global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))) - vec2<f32>(584f, global0[_wgslsmith_index_u32(0u, 9u)]))))));
    let var_1 = Struct_2(select(!vec2<bool>(any(vec3<bool>(true, true, global2.b)), true), select(select(func_3(vec3<i32>(-2147483647i, -61052i, 36387i), false, Struct_2(vec2<bool>(global2.b, false), global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), select(vec2<bool>(global2.b, global2.b), vec2<bool>(global1.b, true), vec2<bool>(true, global1.b)), !global2.b), vec2<bool>(false | global2.b, global2.b), !select(vec2<bool>(global1.b, false), vec2<bool>(global1.b, global2.b), vec2<bool>(global1.b, true))), !all(func_3(vec3<i32>(global1.a, global2.a, u_input.c), false, Struct_2(vec2<bool>(global2.b, true), global0[_wgslsmith_index_u32(1u, 9u)])))), _wgslsmith_f_op_f32(-2026f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.d, 9u)]))))));
    let var_2 = var_1;
    var var_3 = var_2;
    var var_4 = ~firstLeadingBit(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(17129u, 17422u, 4294967295u, 4585u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.d, 51992u, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.b, u_input.a.x) & vec4<u32>(1u, 21700u, 13422u, 117408u))));
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~23853u), ~(1u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_4.x, u_input.b, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(46913u, u_input.b, 4294967295u, var_4.x), vec4<u32>(var_4.x, 101589u, 4294967295u, var_4.x))))), 12u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    global1 = func_2();
    let var_0 = any(vec2<bool>(false, false));
    var var_1 = max(-46465i & (i32(-1i) * -(global2.a | global1.a)), u_input.c);
    var_1 = ~_wgslsmith_sub_i32(global1.a, min(firstLeadingBit(u_input.c), 2147483647i));
    var var_2 = arg_3;
    return -3161i;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<bool> {
    global3 = array<Struct_1, 12>();
    global2 = func_2();
    let var_0 = vec2<bool>(false, arg_0.b);
    global0 = array<f32, 9>();
    var var_1 = arg_3;
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    global3 = array<Struct_1, 12>();
    let var_0 = -241f;
    global1 = global3[_wgslsmith_index_u32(4294967295u, 12u)];
    var var_1 = 16989u << (u_input.a.x % 32u);
    let var_2 = global3[_wgslsmith_index_u32(abs(~4294967295u), 12u)];
    return func_5(Struct_1(func_4(func_2(), all(vec4<bool>(arg_1.a.x, global1.b, var_2.b, global2.b)), _wgslsmith_dot_vec3_u32(~vec3<u32>(24894u, 5889u, u_input.b), vec3<u32>(0u, 0u, u_input.d) >> (vec3<u32>(35701u, 0u, 1u) % vec3<u32>(32u))), arg_1.a), global1.b), -212f, select(vec4<u32>(0u, min(u_input.b, 4294967295u), ~u_input.d, 12332u), abs(vec4<u32>(1u, 1221u, u_input.b, 58820u)) >> (vec4<u32>(abs(u_input.a.x), u_input.a.x, ~0u, 4294967295u | u_input.b) % vec4<u32>(32u)), !select(vec4<bool>(var_2.b, arg_0.b, true, global1.b), !vec4<bool>(global1.b, global2.b, var_2.b, global2.b), !vec4<bool>(true, global2.b, global2.b, false))), Struct_2(!(!select(vec2<bool>(true, arg_0.b), vec2<bool>(false, false), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + global0[_wgslsmith_index_u32(~u_input.b, 9u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.a.x | u_input.a.x, select(_wgslsmith_mod_u32(4294967295u, u_input.d & 1u) << (u_input.d % 32u), 22659u, global1.a < _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, global1.a, 2147483647i, u_input.c), vec4<i32>(0i, global1.a, global1.a, global1.a)), -vec4<i32>(-1i, global1.a, -9202i, 0i))), 14200u);
    global3 = array<Struct_1, 12>();
    global1 = Struct_1(-reverseBits(global1.a), global1.b || true);
    let var_1 = ~(~vec3<u32>(~reverseBits(32390u), ~0u, min(29572u, ~0u)));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(37843u << (u_input.b % 32u), abs(37213u), _wgslsmith_add_u32(var_0.x, 42354u), var_0.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(26149u, u_input.d, 1u, u_input.b), vec4<u32>(var_0.x, 31183u, u_input.d, 66855u)), ~firstTrailingBit(vec4<u32>(u_input.b, u_input.d, 18409u, 22183u))), vec4<u32>(1u, var_0.x, _wgslsmith_mult_u32(~var_0.x, ~0u), u_input.a.x)), var_0.x);
    var var_3 = Struct_2(select(vec2<bool>(global1.b, true), vec2<bool>(true, true), select(select(select(vec2<bool>(global2.b, false), vec2<bool>(false, false), vec2<bool>(global2.b, false)), select(vec2<bool>(false, global1.b), vec2<bool>(false, false), false), vec2<bool>(true, true)), select(func_1(global3[_wgslsmith_index_u32(u_input.d, 12u)], Struct_2(vec2<bool>(true, global1.b), 2127f)), !vec2<bool>(global1.b, false), true), !select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b), vec2<bool>(global1.b, false)))), 2266f);
    let var_4 = Struct_2(select(!var_3.a, vec2<bool>((var_1.x | 300u) <= var_1.x, global2.a <= u_input.c), func_3(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(7289i, u_input.c, u_input.c)), vec3<i32>(global1.a, global1.a, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a, u_input.c, u_input.c), vec3<i32>(0i, u_input.c, -1i), vec3<i32>(global2.a, global1.a, 56271i))), true, Struct_2(select(vec2<bool>(false, var_3.a.x), vec2<bool>(false, global2.b), false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, u_input.b), 9u)]))), -343f);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit((vec4<i32>(global2.a, 18295i, u_input.c, global2.a) | abs(vec4<i32>(global1.a, -65880i, global2.a, u_input.c))) ^ ~abs(vec4<i32>(global2.a, u_input.c, -1i, 17617i))), vec2<f32>(732f, 801f), ~reverseBits(vec4<u32>(max(0u, var_1.x), u_input.b, u_input.d, select(1933u, var_1.x, var_3.a.x))));
}

