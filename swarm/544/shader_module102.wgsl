struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(5074u, 65455u, 0u, 0u, 25667u, 4294967295u, 40369u, 12502u, 4294967295u, 1u, 4294967295u, 12106u, 4294967295u, 8454u, 0u, 0u, 6260u, 1u);

var<private> global1: array<bool, 27>;

var<private> global2: f32 = -856f;

var<private> global3: array<bool, 12> = array<bool, 12>(false, true, true, false, false, true, false, true, true, true, false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(-arg_2.a.b, ~(_wgslsmith_mult_i32(arg_2.a.c.x, -10257i) | -59996i), firstTrailingBit(vec4<i32>(-35688i, ~57392i, arg_3.x, abs(arg_2.a.c.x))), ~(-_wgslsmith_div_i32(arg_2.a.a, arg_2.a.a))));
    var_0 = arg_2;
    global3 = array<bool, 12>();
    var var_1 = Struct_2(u_input.a.xzy);
    let var_2 = global3[_wgslsmith_index_u32(~(37544u >> (~arg_0 % 32u)), 12u)];
    return Struct_3(arg_2.a);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> f32 {
    var var_0 = Struct_3(Struct_1(firstTrailingBit(-1i), arg_0, ~(-vec4<i32>(-2147483647i, arg_0, 0i, arg_0)) | ((vec4<i32>(1i, -19226i, arg_0, -2147483647i) ^ vec4<i32>(-32195i, -27762i, arg_0, arg_0)) & max(vec4<i32>(-37841i, arg_0, 1i, -22777i), vec4<i32>(arg_0, 37213i, arg_0, 42945i))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, 17534i), vec3<i32>(25339i, 2147483647i, 1i)) >> (~(0u >> (global0[_wgslsmith_index_u32(arg_1.a.x, 18u)] % 32u)) % 32u)));
    var var_1 = 836f;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))))) >= arg_2;
    global3 = array<bool, 12>();
    return -693f;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<f32> {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    global3 = array<bool, 12>();
    global0 = array<u32, 18>();
    var var_0 = func_2(25419u, arg_0.x <= reverseBits(i32(-1i) * -29435i), Struct_3(Struct_1(-(~(-2147483647i)), abs(0i), select(abs(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(13256i, arg_0.x, 1i, arg_0.x), vec4<i32>(-1i, -1i, arg_0.x, arg_0.x)), !arg_3), ~arg_0.x)), _wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0.x, 2147483647i) >> (~vec2<u32>(47102u, 0u) % vec2<u32>(32u)), -vec2<i32>(arg_0.x, 2147483647i)) << (~vec2<u32>(max(20632u, 1u), ~0u) % vec2<u32>(32u)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-593f, 121f)), -772f))), _wgslsmith_f_op_f32(func_3(i32(-1i) * -6872i, Struct_2((vec3<u32>(global0[_wgslsmith_index_u32(0u, 18u)], u_input.b, 41757u) | vec3<u32>(20773u, 62987u, 30311u)) ^ max(vec3<u32>(4294967295u, u_input.b, 24043u), u_input.a.xxz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1557f - -1004f)), false)), _wgslsmith_f_op_f32(round(-701f)));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> f32 {
    global2 = arg_1.x;
    let var_0 = vec3<u32>(abs(countOneBits(arg_2.x & global0[_wgslsmith_index_u32(~u_input.b, 18u)])), 1u << (_wgslsmith_mod_u32(1u, 4294967295u) % 32u), global0[_wgslsmith_index_u32(min(1u, _wgslsmith_mod_u32(arg_2.x, u_input.a.x >> (~global0[_wgslsmith_index_u32(1u, 18u)] % 32u))), 18u)]);
    global1 = array<bool, 27>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.x, 5138u, global0[_wgslsmith_index_u32(~reverseBits(arg_2.x) >> (firstTrailingBit(~24251u) % 32u), 18u)] >> (global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mod_u32(70025u, 4294967295u)), 18u)] % 32u)), 12u)];
    return -601f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(21841i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(-1i, 1i), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(52483u, 12u)]), Struct_2(u_input.a.ywz), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 27u)], false, global3[_wgslsmith_index_u32(u_input.b, 12u)]))))), u_input.a.xw)), 459f), -2013f, all(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 27u)] == global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(30530u, 27u)], true, global1[_wgslsmith_index_u32(10985u, 27u)] && true), vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 27u)], all(vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9225u, 18u)], 12u)], true, global3[_wgslsmith_index_u32(5827u, 12u)], global1[_wgslsmith_index_u32(1845u, 27u)])), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.b, 18u)], 27u)], true), global1[_wgslsmith_index_u32(0u | u_input.b, 27u)]))));
    var var_0 = 1i;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f + -1059f)), _wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1287f))), _wgslsmith_f_op_f32(select(-256f, -284f, any(vec2<bool>(false, false)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1659f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-488f)) * _wgslsmith_div_f32(-1000f, 785f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(851f, 1692f)))), -139f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, -374f, -1056f, 1474f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1040f, 111f, 457f, -1505f) + _wgslsmith_div_vec4_f32(vec4<f32>(207f, 224f, 690f, 1588f), vec4<f32>(529f, 1000f, 592f, -694f))))));
    var var_2 = select(select(vec2<bool>(all(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 27u)], global3[_wgslsmith_index_u32(27308u, 12u)])) | true, all(!vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44031u, 18u)], 27u)], global3[_wgslsmith_index_u32(0u, 12u)]))), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)] || false, !global1[_wgslsmith_index_u32(37469u, 27u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(20177u, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34334u, 18u)], 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9473u, 18u)], 27u)]), true), vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.zy), 12u)], !global1[_wgslsmith_index_u32(4294967295u, 27u)])), all(!vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 27u)], false))), select(vec2<bool>(!(535f > var_1.x), true), vec2<bool>(any(!vec2<bool>(global1[_wgslsmith_index_u32(7489u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)])), false), select(!vec2<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 12u)], global1[_wgslsmith_index_u32(923u, 27u)]), !select(vec2<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, true)), (-796f >= var_1.x) || global1[_wgslsmith_index_u32(~0u, 27u)])), vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 18u)], ~_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(12917u, 18u)])), 12u)], false));
    let var_3 = vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(72054u, 18u)], 6751u), 18u)], 4294967295u, _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~0u, 18u)], 1u), global0[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])));
    var_2 = select(vec2<bool>(false, var_2.x), select(!select(vec2<bool>(global1[_wgslsmith_index_u32(56239u, 27u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 12u)]), !vec2<bool>(global1[_wgslsmith_index_u32(6230u, 27u)], global3[_wgslsmith_index_u32(16008u, 12u)]), var_1.x > var_1.x), !vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 27u)], true)), false), vec2<bool>(~1u < var_3.x, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(2147483647i, 1i), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.b, 27u)]), Struct_2(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 18u)], 87441u)), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(21935u, 27u)]))).x)), any(vec2<bool>(true, false)));
    global0 = array<u32, 18>();
    let var_4 = _wgslsmith_div_u32(u_input.a.x, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~abs(0u), countOneBits(4294967295u), var_4));
}

