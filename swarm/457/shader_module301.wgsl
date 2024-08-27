struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<i32, 22> = array<i32, 22>(0i, 2147483647i, 0i, 26954i, 53638i, -1i, i32(-2147483648), 1i, -1i, i32(-2147483648), 1i, 45564i, i32(-2147483648), -21981i, -1i, -6527i, i32(-2147483648), 0i, i32(-2147483648), 2147483647i, i32(-2147483648), -1i);

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1050f, -1584f, 284f), vec3<f32>(823f, -219f, -1000f), vec3<f32>(1000f, -202f, -1086f), vec3<f32>(595f, 845f, 431f), vec3<f32>(-2212f, -1717f, -142f), vec3<f32>(1688f, 1381f, 1541f), vec3<f32>(605f, 1401f, 141f), vec3<f32>(477f, -950f, -1969f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 26u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(31659u, 26u)])) - _wgslsmith_f_op_f32(-715f + global0[_wgslsmith_index_u32(0u, 26u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 26u)]) * global0[_wgslsmith_index_u32(1u, 26u)])))));
    return firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, ~(~12531u)), 1u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(!(!(!(89413i > arg_0.b))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-40318i, arg_0.b, arg_1.b)), select(vec3<i32>(29258i, arg_1.b, -5792i), vec3<i32>(u_input.a, -1i, u_input.a), vec3<bool>(arg_1.a, true, false))), (vec3<i32>(u_input.a, 40085i, arg_0.b) << (vec3<u32>(arg_3, arg_3, 71544u) % vec3<u32>(32u))) ^ -vec3<i32>(arg_0.b, 0i, arg_0.b)) | global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_3, 56744u, ~4294967295u) & func_3(true), 22u)]);
    let var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_3, 26u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 26u)])));
    var var_2 = arg_0;
    let var_3 = Struct_1(var_0.a, arg_0.b);
    var var_4 = 4294967295u;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)), -512f) != _wgslsmith_div_f32(-459f, _wgslsmith_f_op_f32(select(-2631f, var_1, arg_2.x))), countOneBits(var_2.b) << (~(arg_3 ^ ~72921u) % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = reverseBits(firstLeadingBit(firstLeadingBit(firstLeadingBit(~43144u))));
    global0 = array<f32, 26>();
    let var_1 = 4294967295u;
    let var_2 = -31016i;
    var var_3 = _wgslsmith_sub_u32(~(~(1u ^ _wgslsmith_mod_u32(var_1, 4294967295u))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(reverseBits(vec3<u32>(var_1, var_1, var_1))), vec3<u32>(var_1 >> (98853u % 32u), min(var_1, var_1), reverseBits(var_1))), vec3<u32>(47495u, 48300u, ~4294967295u & var_1)));
    return vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1290f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(476f, 886f))))), arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(121766u, 26u)] * 408f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1422f, _wgslsmith_div_f32(-697f, global0[_wgslsmith_index_u32(17568u, 26u)]))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4663u, max(20564u, ~48661u)), 8u)] - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(17787i, 27408i), func_2(Struct_1(false, global1[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_1(true, -1i), !arg_0.zy, 611u), !vec2<bool>(arg_1, true), func_2(Struct_1(arg_0.x, u_input.a), func_2(Struct_1(arg_1, 0i), Struct_1(arg_0.x, global1[_wgslsmith_index_u32(76977u, 22u)]), vec2<bool>(false, arg_1), 31350u), vec2<bool>(true, true), ~1u))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(~43994u, 8u)], vec3<f32>(-1298f, global0[_wgslsmith_index_u32(129793u, 26u)], 369f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1484f, arg_2.x, 895f))))));
    global2 = array<vec3<f32>, 8>();
    var var_1 = Struct_1(all(arg_0), -1i);
    var var_2 = Struct_1(!any(arg_0.yz), _wgslsmith_clamp_i32(31688i, -23565i, _wgslsmith_dot_vec4_i32((vec4<i32>(global1[_wgslsmith_index_u32(30945u, 22u)], -38872i, -32267i, global1[_wgslsmith_index_u32(4294967295u, 22u)]) << (vec4<u32>(4294967295u, 17964u, 45760u, 7598u) % vec4<u32>(32u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(0i, var_1.b, u_input.a, 1i))));
    global1 = array<i32, 22>();
    return func_2(Struct_1(all(select(vec2<bool>(arg_0.x, var_1.a), vec2<bool>(false, true), true)), i32(-1i) * -53653i), func_2(Struct_1((var_1.b >> (4294967295u % 32u)) >= ~u_input.a, _wgslsmith_add_i32(reverseBits(var_1.b), u_input.a)), func_2(Struct_1(!arg_1, u_input.a >> (0u % 32u)), func_2(func_2(Struct_1(var_2.a, 35405i), Struct_1(true, global1[_wgslsmith_index_u32(0u, 22u)]), arg_0.zx, 11997u), func_2(Struct_1(arg_0.x, -35118i), Struct_1(var_2.a, 2147483647i), arg_0.yz, 1u), arg_0.xx, 38645u), vec2<bool>(!arg_1, var_0.x >= 249f), ~_wgslsmith_div_u32(1u, 383u)), arg_0.zx, 1u), !(!(!(!vec2<bool>(var_1.a, true)))), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(4294967295u, 75001u, 4294967295u, 4294967295u)), abs(~vec4<u32>(4294967295u, 51659u, 50791u, 10246u))) << (~76026u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<f32>(global0[_wgslsmith_index_u32(1u, 26u)], -1000f, -336f)))))))));
    global0 = array<f32, 26>();
    let var_1 = ~(~vec4<u32>(_wgslsmith_sub_u32(~18646u, 1u), 70370u, ~_wgslsmith_clamp_u32(56591u, 7790u, 2329u), abs(~82450u)));
    var var_2 = func_1(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), (1i & _wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 22u)])) == 1i), !(select(true, true, true) && true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy)));
    var var_3 = var_0.zy;
    global2 = array<vec3<f32>, 8>();
    var_2 = Struct_1(!func_2(Struct_1(false, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)])), func_2(Struct_1(false, 21415i), func_2(Struct_1(var_2.a, 2147483647i), Struct_1(var_2.a, 4242i), vec2<bool>(true, var_2.a), var_1.x), !vec2<bool>(var_2.a, true), 63188u), !select(vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, true)), 4294967295u).a, -27552i);
    let var_4 = func_1(!(!vec3<bool>(true, !var_2.a, all(vec3<bool>(true, var_2.a, true)))), var_1.x > _wgslsmith_dot_vec2_u32(var_1.xx, countOneBits(~vec2<u32>(67185u, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-159f, global0[_wgslsmith_index_u32(var_1.x, 26u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, 4294967295u, var_1.x), firstLeadingBit(var_1.zxx))));
}

