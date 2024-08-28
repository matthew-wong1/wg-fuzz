struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 23> = array<f32, 23>(1318f, 188f, -1642f, 567f, -918f, 927f, 1251f, -162f, 616f, 247f, -1100f, -1860f, 1132f, 834f, -806f, 606f, 1344f, 138f, -207f, 997f, 315f, -1186f, 484f);

var<private> global2: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(Struct_2(vec2<i32>(i32(-2147483648), 1i), vec3<u32>(4294967295u, 3334u, 0u)), Struct_3(true, Struct_1(-834f), vec4<i32>(i32(-2147483648), -1i, -31172i, 343i), vec3<i32>(24707i, 42779i, 1i)), false), Struct_5(Struct_2(vec2<i32>(58509i, -4282i), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_3(true, Struct_1(1000f), vec4<i32>(-24664i, 8124i, 32789i, i32(-2147483648)), vec3<i32>(1i, -1i, i32(-2147483648))), false), Struct_5(Struct_2(vec2<i32>(-1i, -12177i), vec3<u32>(0u, 1u, 1u)), Struct_3(true, Struct_1(754f), vec4<i32>(24940i, 1i, -28093i, 0i), vec3<i32>(1i, 50310i, i32(-2147483648))), false), Struct_5(Struct_2(vec2<i32>(49299i, -12198i), vec3<u32>(1u, 25402u, 2204u)), Struct_3(true, Struct_1(476f), vec4<i32>(-2544i, 0i, -1i, 53922i), vec3<i32>(i32(-2147483648), 19583i, 1i)), true));

var<private> global3: i32 = -1i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_2) -> u32 {
    global1 = array<f32, 23>();
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(-firstLeadingBit(arg_1.x), -1i), -51648i, -arg_1.x);
    let var_1 = arg_2.b.b;
    let var_2 = ~u_input.a.x;
    global3 = min(-1i, _wgslsmith_div_i32(~(~global0.a.x), select(_wgslsmith_div_i32(0i, 32217i), global0.a.x, arg_2.c)) | (-17532i | global0.a.x));
    return 1u;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(24552u, 23u)], -420f));
    global3 = u_input.b.x;
    global0 = Struct_2(global0.a, ~global0.b);
    let var_1 = global2[_wgslsmith_index_u32(arg_0.x ^ _wgslsmith_add_u32(37592u, _wgslsmith_sub_u32(~global0.b.x, u_input.a.x ^ 4294967295u)), 4u)];
    global3 = ~(-_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a.x, global0.a.x), ~u_input.b.wz)) & ~(~_wgslsmith_clamp_i32(52899i, var_1.b.d.x, u_input.b.x) << (func_3(4294967295u, global0.a, Struct_5(Struct_2(vec2<i32>(var_1.a.a.x, -48179i), vec3<u32>(var_1.a.b.x, var_1.a.b.x, u_input.a.x)), Struct_3(true, var_1.b.b, vec4<i32>(2147483647i, var_1.a.a.x, -18910i, u_input.b.x), vec3<i32>(-71948i, -1i, 2147483647i)), var_1.b.a), var_1.a) % 32u));
    return countOneBits(select(-countOneBits(_wgslsmith_sub_i32(1969i, var_1.a.a.x)), abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(global0.a.x, 0i), i32(-1i) * -6950i)), any(!(!vec4<bool>(false, var_1.c, false, var_1.c)))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c.a, _wgslsmith_f_op_f32(f32(-1f) * -224f)) + 769f);
    let var_1 = arg_3.a;
    global0 = arg_3.a;
    let var_2 = arg_3;
    let var_3 = arg_3.a.b.zx;
    return var_2.a;
}

fn func_1() -> Struct_4 {
    global1 = array<f32, 23>();
    let var_0 = Struct_4(func_4(-func_2(u_input.a.zx), true, _wgslsmith_dot_vec3_u32(~u_input.a, u_input.a), Struct_4(Struct_2(vec2<i32>(37424i, 2147483647i) ^ u_input.b.yy, ~global0.b), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, false))), Struct_1(_wgslsmith_f_op_f32(-1180f * global1[_wgslsmith_index_u32(20521u, 23u)])), ~(~vec4<u32>(94813u, 55696u, u_input.a.x, global0.b.x)))), vec2<bool>(!(!any(vec3<bool>(true, false, true))), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1843f))), global1[_wgslsmith_index_u32(0u, 23u)])), min(min(vec4<u32>(reverseBits(47918u), 9294u ^ global0.b.x, u_input.a.x, ~global0.b.x), vec4<u32>(~global0.b.x, 4294967295u, u_input.a.x, max(4294967295u, global0.b.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.x, 1u, u_input.a.x, global0.b.x), vec4<u32>(global0.b.x, 0u, global0.b.x, global0.b.x)), _wgslsmith_add_u32(5577u, reverseBits(global0.b.x)), global0.b.x, ~0u | ~u_input.a.x)));
    global0 = var_0.a;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~(~1u), 4294967295u, firstLeadingBit(u_input.a.x), 16007u), vec4<u32>(u_input.a.x, 0u, ~(~1u), 38449u)), var_0.d);
    return Struct_4(var_0.a, !var_0.b, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8799u, 23u)] * global1[_wgslsmith_index_u32(global0.b.x, 23u)])), _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(54154u, 23u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 23u)]))))), ~var_0.d);
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> u32 {
    global2 = array<Struct_5, 4>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2583u << ((func_4(arg_1.a.a.x, arg_1.b.x, 31214u, Struct_4(Struct_2(global0.a, arg_1.a.b), arg_1.b, Struct_1(1442f), vec4<u32>(0u, 64035u, arg_1.a.b.x, arg_0))).b.x >> (firstTrailingBit(3413u) % 32u)) % 32u), 23u)])));
    var_0 = 538f;
    global0 = func_4(u_input.b.x, false, u_input.a.x, Struct_4(Struct_2(arg_1.a.a, vec3<u32>(68107u, ~global0.b.x, _wgslsmith_add_u32(arg_1.a.b.x, u_input.a.x))), select(func_1().b, arg_1.b, true | any(vec3<bool>(arg_1.b.x, true, arg_1.b.x))), Struct_1(1000f), arg_1.d << (countOneBits(arg_1.d) % vec4<u32>(32u))));
    let var_1 = vec4<u32>(~(global0.b.x ^ 34856u), arg_1.a.b.x, ~min(_wgslsmith_mod_u32(global0.b.x, arg_1.d.x), global0.b.x), global0.b.x);
    return 16788u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(1u, 23u)]) + vec2<f32>(-1884f, global1[_wgslsmith_index_u32(global0.b.x, 23u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(975f, global1[_wgslsmith_index_u32(1u, 23u)]) - vec2<f32>(-1239f, global1[_wgslsmith_index_u32(global0.b.x, 23u)]))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1097f, -1420f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 1629f), vec2<f32>(813f, 452f), false)), vec2<bool>(true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(90725u, func_1()) << (~1u % 32u), var_0.x, vec2<i32>(-1i, abs(i32(-1i) * -global0.a.x)));
}

