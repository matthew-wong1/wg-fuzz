struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: f32 = -1466f;

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(0u, 44485u, 83747u), vec3<u32>(16113u, 1u, 4294967295u), vec3<u32>(21516u, 1u, 18144u), vec3<u32>(30476u, 27487u, 4294967295u), vec3<u32>(0u, 63732u, 4294967295u), vec3<u32>(59506u, 24029u, 14568u), vec3<u32>(0u, 25950u, 76602u));

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(0u), Struct_1(15140u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(16150u), Struct_1(36386u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u));

var<private> global4: array<f32, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> i32 {
    global3 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.x, u_input.a.x, arg_3.x ^ u_input.a.x, arg_3.x), arg_2, select(select(vec4<u32>(4294967295u, arg_2.x, global0[_wgslsmith_index_u32(1u, 19u)], arg_3.x), _wgslsmith_mod_vec4_u32(vec4<u32>(51473u, 15156u, arg_3.x, arg_2.x), arg_2), arg_0.x), _wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(u_input.a.x, 14041u, u_input.a.x, 1u)), arg_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, arg_3.x, 0u), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(69134u, 79187u, u_input.a.x), ~arg_2.xxz), ~20375u, 3926u), ~arg_2));
    let var_1 = global3[_wgslsmith_index_u32(49865u ^ min(~arg_2.x, ~(~(1u >> (u_input.a.x % 32u)))), 10u)];
    let var_2 = Struct_1(arg_2.x);
    let var_3 = arg_0.yww;
    return _wgslsmith_mult_i32(firstTrailingBit(2147483647i), 0i);
}

fn func_2() -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1218f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 11u)]), 659f)), _wgslsmith_f_op_f32(f32(-1f) * -497f), -1231f);
    global4 = array<f32, 11>();
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 10u)];
    var var_2 = -_wgslsmith_add_i32(u_input.b.x, i32(-1i) * -u_input.b.x) < -(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 25511i, 7955i)), -u_input.b.x));
    let var_3 = select(_wgslsmith_mult_i32(u_input.b.x, countOneBits(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, 0i, 30658i), vec4<i32>(u_input.b.x, u_input.b.x, -13679i, 27672i)), func_3(vec4<bool>(true, false, true, false), vec3<i32>(u_input.b.x, -1i, u_input.b.x), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, 58336u))))), u_input.b.x, any(vec3<bool>(!all(vec4<bool>(false, false, true, false)), -12090i > -u_input.b.x, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(select(4294967295u, 0u, true), 11u)] - 1101f))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_add_i32(~(~1i | u_input.b.x), u_input.b.x);
    var var_1 = ~global2[_wgslsmith_index_u32(u_input.a.x, 7u)];
    var var_2 = vec3<u32>(~0u, ~_wgslsmith_div_u32(0u, 12958u), ~34160u);
    var_2 = ~vec3<u32>(~(~4294967295u), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, u_input.a.x, 11193u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(89230u, 19u)], 4294967295u, u_input.a.x, 1u)), ~(~vec4<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(0u, 19u)], 0u))), select(_wgslsmith_sub_u32(9473u, abs(var_1.x)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.x, 4294967295u), ~var_2.x), 19u)], _wgslsmith_f_op_f32(-arg_1.x) == -1029f));
    var var_3 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), false));
    return var_2.yz;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_div_f32(1114f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90526u, 19u)], 19u)], 11u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1266f, 1000f), vec2<f32>(1390f, global4[_wgslsmith_index_u32(4294967295u, 11u)]))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(3772u, 11u)], global4[_wgslsmith_index_u32(51210u, 11u)]) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 11u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2563u, 19u)], 19u)], 11u)]), vec2<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 11u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 11u)]))))))), false));
    global1 = _wgslsmith_f_op_f32(552f + global4[_wgslsmith_index_u32(61483u, 11u)]);
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~15657u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], ~global0[_wgslsmith_index_u32(100339u, 19u)])) >> (u_input.a.x % 32u), 10u)];
    global3 = array<Struct_1, 10>();
    global3 = array<Struct_1, 10>();
    return _wgslsmith_mult_vec2_u32(func_4(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1936f, 212f, false)), _wgslsmith_f_op_f32(round(709f)), _wgslsmith_f_op_f32(-1230f * 102f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(86287u, 11u)], 236f, var_0.x), vec3<f32>(447f, -1000f, -943f)) * vec3<f32>(-835f, global4[_wgslsmith_index_u32(u_input.a.x, 11u)], global4[_wgslsmith_index_u32(var_1.a, 11u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(795f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(var_0.x, 185f), _wgslsmith_div_f32(940f, -1000f)) * vec4<f32>(2056f, _wgslsmith_f_op_f32(-1580f + var_0.x), -509f, _wgslsmith_f_op_f32(select(-257f, var_0.x, false))))), u_input.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(-select(_wgslsmith_mult_vec4_i32(vec4<i32>(21648i, u_input.b.x, 64762i, u_input.b.x), vec4<i32>(12583i, -33402i, -40558i, 1i)), max(vec4<i32>(-1i, u_input.b.x, -7262i, u_input.b.x), vec4<i32>(-1i, 0i, 1i, u_input.b.x)), all(vec2<bool>(true, false))), min(vec4<i32>(func_3(vec4<bool>(false, true, true, false), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(global0[_wgslsmith_index_u32(0u, 19u)], u_input.a.x, u_input.a.x, 9889u), vec2<u32>(arg_0.x, 1u)), u_input.b.x << (20628u % 32u), 1i, _wgslsmith_clamp_i32(23831i, 1i, -42166i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, u_input.b.x) >> (vec4<u32>(arg_1.a, 31861u, 19373u, 26985u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 17746i, u_input.b.x, -34848i)))), u_input.b.x);
    global0 = array<u32, 19>();
    let var_1 = true;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(firstTrailingBit(~vec2<u32>(44597u, arg_0.x)) >> (vec2<u32>(global0[_wgslsmith_index_u32(~16253u, 19u)], _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.a.x), arg_0)) % vec2<u32>(32u))), u_input.a), 10u)];
    global4 = array<f32, 11>();
    return global3[_wgslsmith_index_u32(~(~var_2.a), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 48104u;
    let var_1 = -2147483647i;
    let var_2 = any(!vec3<bool>(any(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true)), true));
    let var_3 = func_5(func_1(), global3[_wgslsmith_index_u32(~var_0, 10u)]);
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~min(~vec2<u32>(var_0, 4294967295u), ~u_input.a), u_input.a), 1969f, -1000f);
}

