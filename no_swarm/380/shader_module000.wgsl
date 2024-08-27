struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-325f, 740f, -505f, -891f, 765f, 1000f, -198f, 225f, 405f, -1785f, 318f, -133f, 1000f, -551f, 1000f, 1347f, -1000f, -481f, 847f, 812f, -1130f, -537f, 1741f);

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 6>;

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 6u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 23u)]), global0[_wgslsmith_index_u32(u_input.a, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 23u)])))), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))));
    global3 = array<Struct_1, 6>();
    var var_2 = Struct_1(2147483647i);
    var var_3 = Struct_1(_wgslsmith_mult_i32(-((0i & var_2.a) >> (~u_input.a % 32u)), min(firstLeadingBit(reverseBits(2147483647i)), -global2.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(abs(1u), 23u)]));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(11381u, 23u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(38933u, 23u)] + 658f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 23u)])) - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 867f) + _wgslsmith_f_op_f32(1108f * -906f)))), global0[_wgslsmith_index_u32(~(~select(u_input.a, 34843u, arg_1.x)), 23u)])));
    var var_1 = -875f;
    var var_2 = arg_1;
    var var_3 = ~(~_wgslsmith_add_vec4_i32(vec4<i32>(global2.a << (u_input.a % 32u), countOneBits(global2.a), firstTrailingBit(arg_0.a), ~arg_0.a), ~vec4<i32>(arg_0.a, arg_0.a, arg_0.a, global2.a)));
    var_3 = abs(select(-_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, 0i, var_3.x, var_3.x) & vec4<i32>(arg_0.a, -9822i, var_3.x, var_3.x), vec4<i32>(23793i, -28480i, 1315i, -7103i) & vec4<i32>(2147483647i, -26423i, var_3.x, -2727i)), vec4<i32>(firstTrailingBit(-var_3.x), _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(13729i, global2.a), 29211i), reverseBits(global2.a), _wgslsmith_dot_vec3_i32(countOneBits(var_3.wyw), vec3<i32>(arg_0.a, 21141i, global2.a))), !vec4<bool>(arg_1.x | true, all(vec3<bool>(arg_1.x, false, false)), true, !var_2.x)));
    return abs(vec2<i32>(abs(abs(2147483647i)) >> (min(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(12000u, u_input.a, 4294967295u), vec3<u32>(4294967295u, 4294967295u, u_input.a))) % 32u), 16696i));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(7802u, 6u)];
    global3 = array<Struct_1, 6>();
    global0 = array<f32, 23>();
    var var_1 = ~(17866u << (~(~(~u_input.a)) % 32u));
    var_0 = Struct_1(arg_1.x);
    return Struct_1(1i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global4 = !(u_input.a <= (_wgslsmith_dot_vec2_u32(vec2<u32>(36511u, 1u), vec2<u32>(1u, 4294967295u)) | select(firstTrailingBit(u_input.a), 4294967295u, true)));
    var var_0 = _wgslsmith_f_op_f32(abs(-1146f));
    global0 = array<f32, 23>();
    let var_1 = countOneBits(1i);
    global4 = true;
    return vec2<bool>(true, all(!vec3<bool>(all(vec4<bool>(false, true, true, true)), global0[_wgslsmith_index_u32(4294967295u, 23u)] > global0[_wgslsmith_index_u32(0u, 23u)], any(vec2<bool>(true, false)))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(0i >> (~u_input.a % 32u));
    global1 = 0i;
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], -270f, 631f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, -1160f, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))), func_2(var_0, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), true)), var_0), var_0);
    return _wgslsmith_div_u32(~(~(1u & u_input.a)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 6>();
    let var_0 = ~u_input.a;
    var var_1 = global3[_wgslsmith_index_u32(~(var_0 ^ func_1()) << ((_wgslsmith_sub_u32(35026u, u_input.a) | u_input.a) % 32u), 6u)];
    global3 = array<Struct_1, 6>();
    let var_2 = Struct_1(countOneBits(1i));
    var var_3 = vec3<i32>(global2.a, var_2.a & ~2147483647i, select(-1i, 1i, any(vec3<bool>(false, true, true))));
    var var_4 = vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a >> (firstTrailingBit(u_input.a) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a, u_input.a), vec3<u32>(4294967295u, var_0, 82475u)) << (u_input.a % 32u)), 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], _wgslsmith_f_op_f32(-291f * 914f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~u_input.a, 23u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13506u, 23u)]) + -1126f))));
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -714f) > global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(), ~(~u_input.a)), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(firstLeadingBit(~(~vec2<u32>(var_0, 47284u))), vec2<u32>(u_input.a, ~(u_input.a | var_0))), vec2<i32>(func_4(vec4<f32>(-335f, -573f, var_4.x, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(56089u, 23u)]))), select(vec2<i32>(7681i, global2.a), vec2<i32>(-1i, global2.a), true), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(20614u, 0u, u_input.a), vec3<u32>(80525u, u_input.a, 31247u)), 6u)]).a, -(~func_2(Struct_1(var_2.a), vec3<bool>(var_5, false, true)).x)), 1106f);
}

