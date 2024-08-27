struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<u32, 13> = array<u32, 13>(0u, 12280u, 1u, 23270u, 0u, 22990u, 7111u, 4294967295u, 1u, 4294967295u, 39947u, 41951u, 6838u);

var<private> global2: array<i32, 7> = array<i32, 7>(1i, -1i, 0i, 0i, -35901i, 12037i, -1i);

var<private> global3: array<Struct_2, 4>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_2(min(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~arg_0.a.zx, ~vec2<u32>(arg_0.a.x, arg_0.a.x)), 1u), abs(~arg_0.a)), arg_0.b);
    let var_1 = 2147483647i;
    var var_2 = abs(-var_1);
    let var_3 = false;
    global2 = array<i32, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.c.x))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> bool {
    global2 = array<i32, 7>();
    let var_0 = arg_0.b;
    global2 = array<i32, 7>();
    global2 = array<i32, 7>();
    let var_1 = !vec4<bool>(true, arg_1, arg_1, arg_1);
    return all(!select(var_1, !var_1, var_1.x));
}

fn func_1() -> vec3<bool> {
    var var_0 = all(vec3<bool>((8941u < min(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])) && (_wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(1u, 30461u, 44328u), Struct_1(vec4<f32>(-364f, 1481f, -3354f, -591f), -1223f, vec3<f32>(1493f, 389f, 1303f))), vec3<bool>(true, false, true))) <= -484f), select(func_3(global3[_wgslsmith_index_u32(4294967295u, 4u)], any(vec2<bool>(false, false)), -18884i & global2[_wgslsmith_index_u32(u_input.a, 7u)]), func_3(Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(vec4<f32>(-1126f, 405f, 1948f, -556f), 1901f, vec3<f32>(964f, -864f, -686f))), true, max(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 7u)])), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false)))));
    global2 = array<i32, 7>();
    var var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~min(~vec3<u32>(49268u, 0u, 39427u), ~vec3<u32>(4294967295u, u_input.a, 1u)), firstTrailingBit(vec3<u32>(8360u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], u_input.a)), u_input.a ^ 4294967295u))), vec3<u32>(max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39561u, 4294967295u, 0u), vec3<u32>(17103u, 101312u, 45804u)), _wgslsmith_mult_u32(34066u, u_input.a)), 13u)], ~reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46980u, 13u)], 13u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(34386u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 13u)], 47437u) ^ 19651u), 13u)], ~(global1[_wgslsmith_index_u32(u_input.a, 13u)] | _wgslsmith_mod_u32(51659u, 4294967295u))));
    var_1 = _wgslsmith_clamp_vec3_u32(abs(abs(~(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], 4294967295u, var_1.x) >> (vec3<u32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(40407u, 13u)]) % vec3<u32>(32u))))), reverseBits(~firstLeadingBit(vec3<u32>(var_1.x, 14587u, 49303u)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(83613u, 1u, 39426u), vec3<u32>(var_1.x, global1[_wgslsmith_index_u32(var_1.x, 13u)], global1[_wgslsmith_index_u32(17930u, 13u)])) % vec3<u32>(32u))), ~vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(firstLeadingBit(28233u), 0u, ~var_1.x), 0u));
    return !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, any(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(any(global0[_wgslsmith_index_u32(26116u, 20u)]), func_3(Struct_2(vec3<u32>(var_1.x, var_1.x, 4294967295u), Struct_1(vec4<f32>(140f, -586f, 1644f, -303f), -1343f, vec3<f32>(371f, -144f, 351f))), false, 1i), true), any(global0[_wgslsmith_index_u32(~u_input.a, 20u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!func_1()), vec3<bool>(true, false, func_1().x), 27051u >= firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 13u)]));
    var var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_div_u32(reverseBits(~84941u), _wgslsmith_dot_vec3_u32(~vec3<u32>(5890u, 128520u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u) << (vec3<u32>(global1[_wgslsmith_index_u32(9985u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], global1[_wgslsmith_index_u32(15691u, 13u)]) % vec3<u32>(32u))))), 4u)];
    var_1 = Struct_2(vec3<u32>(countOneBits(reverseBits(0u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), abs(vec4<u32>(97164u, 45744u, var_1.a.x, 40385u))), _wgslsmith_sub_u32(7853u, _wgslsmith_clamp_u32(min(4294967295u, var_1.a.x), var_1.a.x, var_1.a.x))), var_1.b);
    global2 = array<i32, 7>();
    global0 = array<vec2<bool>, 20>();
    global0 = array<vec2<bool>, 20>();
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(global2[_wgslsmith_index_u32(24775u, 7u)], -2147483647i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16119u, 13u)], 7u)]) >> (vec3<u32>(global1[_wgslsmith_index_u32(29765u, 13u)], firstLeadingBit(global1[_wgslsmith_index_u32(var_1.a.x, 13u)]), ~var_1.a.x) % vec3<u32>(32u)), -(~(~vec3<i32>(-2147483647i, -2147483647i, -57560i)))), max(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(var_1.a.x, 7u)], -2147483647i), abs(vec3<i32>(global2[_wgslsmith_index_u32(52372u, 7u)], -8523i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 7u)]))), ~(vec3<i32>(-25222i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 13u)], 13u)], 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)]) & vec3<i32>(global2[_wgslsmith_index_u32(var_1.a.x, 7u)], 43168i, global2[_wgslsmith_index_u32(31275u, 7u)]))), select(-abs(vec3<i32>(-2147483647i, 1343i, global2[_wgslsmith_index_u32(50144u, 7u)])), ~(-vec3<i32>(global2[_wgslsmith_index_u32(var_1.a.x, 7u)], 1i, global2[_wgslsmith_index_u32(0u, 7u)])), var_0)));
    global0 = array<vec2<bool>, 20>();
    global3 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.b.c.x, -159f, _wgslsmith_div_f32(var_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c.x) + _wgslsmith_f_op_f32(2079f + var_1.b.b)))), reverseBits(vec2<i32>(-16051i, var_2.x)), ~var_1.a.x, u_input.a);
}

