struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<i32, 11>;

var<private> global2: f32 = -161f;

var<private> global3: array<vec3<bool>, 29>;

var<private> global4: i32 = -24190i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(22906u, 21u)] <= ~arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(arg_1.a.x, -217f, 234f)) * arg_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(957f, -1000f, 1039f))), !(!global3[_wgslsmith_index_u32(arg_0, 29u)])))), arg_1, all(select(select(vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)]), global3[_wgslsmith_index_u32(max(1u, 0u), 29u)], vec3<bool>(false, true, false))) | all(global3[_wgslsmith_index_u32(0u, 29u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1072f, 244f, -902f, -1126f), vec4<f32>(-216f, 1299f, var_0.c.a.x, -599f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2217f, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x) + vec4<f32>(-1408f, 1004f, -2142f, 1429f)), vec4<f32>(-162f, 781f, arg_1.a.x, 726f), !vec4<bool>(var_0.a, true, false, var_0.d))))))));
    global4 = -global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(1u), firstLeadingBit(~(19259u | u_input.a))), 11u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.a.x)), -990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.x))))) * _wgslsmith_f_op_vec3_f32(arg_1.a * vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.a.x - var_1.x), arg_1.a.x)))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = vec2<bool>(!(all(vec4<bool>(true, true, false, false)) & true), true);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(94057u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), Struct_1(vec3<f32>(271f, 2225f, 911f)))), vec3<f32>(_wgslsmith_div_f32(-515f, -189f), _wgslsmith_f_op_f32(abs(-2131f)), _wgslsmith_f_op_f32(f32(-1f) * -880f))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    let var_0 = ~select(1793i, reverseBits(_wgslsmith_div_i32(31337i, -global1[_wgslsmith_index_u32(arg_2.x, 11u)])), arg_0.a.x > -1000f);
    var var_1 = arg_0.a.xx;
    let var_2 = func_2(~_wgslsmith_mult_i32(~arg_1, -2147483647i) | ~5828i);
    var var_3 = firstLeadingBit(select(reverseBits(vec2<i32>(43436i, var_0) << (vec2<u32>(arg_2.x, u_input.b) % vec2<u32>(32u))), ~(-vec2<i32>(-30613i, global1[_wgslsmith_index_u32(4294967295u, 11u)])), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)))) >> (~arg_2.xy % vec2<u32>(32u));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) + -546f)))));
    return _wgslsmith_f_op_f32(ceil(var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(max(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(47814u, 21u)], u_input.b, 69519u, 52757u), vec4<u32>(31951u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 40614u)), ~vec4<u32>(u_input.a, 41033u, u_input.a, global0[_wgslsmith_index_u32(33750u, 21u)])), u_input.b), ~(1u | _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 21u)], u_input.a)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_mult_u32(min(4294967295u, 13600u), 154512u << (u_input.b % 32u))), 22224u) >> (~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(29994u, 1u, 1u, u_input.a), vec4<u32>(u_input.a, 23377u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 4294967295u)))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(333f, 1000f, -388f)), global1[_wgslsmith_index_u32(var_0.x, 11u)], vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(21510u, 21u)], var_0.x))) - _wgslsmith_f_op_f32(trunc(-1570f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1585f, 870f)) + _wgslsmith_f_op_f32(min(1000f, 908f))), 1356f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1000f, -380f)), _wgslsmith_f_op_vec3_f32(func_3(108022u, Struct_1(vec3<f32>(-347f, 1243f, -983f)))).x, _wgslsmith_div_f32(1375f, 400f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(411f, -346f, -1092f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1410f, 991f, 197f) + vec3<f32>(1670f, -545f, -172f)), vec3<bool>(false, false, false)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(761f, 551f)), _wgslsmith_f_op_f32(f32(-1f) * -2083f), _wgslsmith_f_op_f32(f32(-1f) * -285f)) - _wgslsmith_f_op_vec3_f32(func_3(68123u, func_2(-1i)))))));
    var var_2 = ~(~select(vec3<i32>(-8544i, global1[_wgslsmith_index_u32(var_0.x, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]), countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 11u)], global1[_wgslsmith_index_u32(u_input.b, 11u)], 1i)), vec3<bool>(true, true, true)) & vec3<i32>(0i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 11u)], countOneBits(global1[_wgslsmith_index_u32(4294967295u, 11u)])), -1i));
    let var_3 = Struct_1(var_1);
    var_2 = -vec3<i32>((~1i | abs(var_2.x)) ^ max(2147483647i, -2147483647i), -2147483647i >> (var_0.x % 32u), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-28025i | global1[_wgslsmith_index_u32(16588u, 11u)], ~var_2.x, -global1[_wgslsmith_index_u32(var_0.x, 11u)], var_2.x), firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 11u)], 25585i, var_2.x, var_2.x)) << ((vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19480u, 21u)], 21u)], u_input.b, u_input.b, 20186u) & vec4<u32>(1u, global0[_wgslsmith_index_u32(5631u, 21u)], u_input.b, 23275u)) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(-vec4<i32>(13249i, var_2.x, var_2.x, global1[_wgslsmith_index_u32(var_0.x, 11u)]), min(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(39730u, 11u)], 0i, global1[_wgslsmith_index_u32(var_0.x, 11u)]), ~vec4<i32>(1i, -57847i, 0i, 11110i))));
}

