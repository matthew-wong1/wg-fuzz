struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: Struct_1;

var<private> global2: i32 = 0i;

var<private> global3: array<Struct_3, 29>;

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    global0 = array<u32, 8>();
    var var_0 = true;
    var var_1 = select(global1.a, select(global1.a, select(vec3<bool>(!global1.a.x, true, all(vec3<bool>(false, global1.a.x, false))), global1.a, global1.a), all(!vec3<bool>(global1.a.x, false, global1.a.x))), !(!(!(!global1.a))));
    let var_2 = _wgslsmith_sub_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~arg_0.a.x, 8u)], arg_0.a.x) ^ 4294967295u, ((firstLeadingBit(u_input.c) >> (~arg_0.a.x % 32u)) ^ max(0u >> (global0[_wgslsmith_index_u32(4294967295u, 8u)] % 32u), u_input.c)) | abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 8473u), arg_0.a.yw), min(arg_0.a.wz, vec2<u32>(70506u, global0[_wgslsmith_index_u32(1u, 8u)])))));
    global1 = Struct_1(vec3<bool>(true, var_1.x && global1.a.x, true));
    return !select(!vec4<bool>(all(global1.a), false, var_1.x, any(vec4<bool>(true, true, var_1.x, global1.a.x))), vec4<bool>(all(select(var_1.xy, global1.a.xz, true)), select(var_1.x, global1.a.x && false, true), true && !global1.a.x, select(true, !var_1.x, true)), select(var_1.x, all(global1.a), global1.a.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = func_3(Struct_4(_wgslsmith_div_vec4_u32(vec4<u32>(max(2012u, 38678u), ~0u, ~u_input.c, ~12384u), _wgslsmith_add_vec4_u32(vec4<u32>(86583u, 4294967295u, 4294967295u, 68841u), vec4<u32>(1u, 37208u, global0[_wgslsmith_index_u32(arg_0.c, 8u)], 0u)))));
    var var_1 = arg_1.b;
    var var_2 = arg_2.b;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.x, -20841i, arg_2.a.x, 2000i), vec4<i32>(0i, 14131i, arg_2.a.x, u_input.d)), firstLeadingBit(vec4<i32>(-324i, 7051i, 28090i, u_input.b))) & _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, 26031i, -15440i) >> (vec4<u32>(15718u, 51597u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], u_input.c) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-23879i, -42502i, u_input.b, u_input.b), vec4<i32>(u_input.b, 1i, -1i, arg_1.a.x))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.x, u_input.a, 33136i, -7903i), vec4<i32>(arg_2.a.x, arg_2.a.x, 7981i, u_input.a))) & vec4<i32>(2147483647i, -10427i, firstTrailingBit(arg_1.a.x), ~19785i)), 43747i, abs(_wgslsmith_div_i32(_wgslsmith_div_i32(-u_input.a, -u_input.a), arg_2.a.x)));
    global1 = arg_1.b;
    return global3[_wgslsmith_index_u32(~min(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_0.c, 4294967295u, u_input.c), ~vec4<u32>(u_input.c, 33458u, u_input.c, 40923u)), 50358u), 29u)];
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> u32 {
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~(~vec4<u32>(36907u, 0u, arg_1, 1u))), (vec4<u32>(~arg_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 44040u, u_input.c, arg_1), vec4<u32>(31420u, global0[_wgslsmith_index_u32(1u, 8u)], 1u, arg_0.c)), 4813u, 0u) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, arg_1, u_input.c), vec4<u32>(arg_0.c, 38138u, 1u, 0u))) | max(~(vec4<u32>(u_input.c, arg_1, 84983u, 31030u) << (vec4<u32>(u_input.c, u_input.c, arg_1, u_input.c) % vec4<u32>(32u))), ~(~vec4<u32>(1u, 11244u, global0[_wgslsmith_index_u32(4294967295u, 8u)], arg_0.c)))), 8u)];
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global4 = -10979i;
    global0 = array<u32, 8>();
    var var_0 = min(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(4294967295u), ~10035u, 1u, u_input.c), ~vec4<u32>(9372u, u_input.c, 0u, 0u) ^ vec4<u32>(1u, 9698u, u_input.c, 1u)), ~67238u) | global0[_wgslsmith_index_u32(func_4(func_2(global3[_wgslsmith_index_u32(~u_input.c, 29u)], arg_0, Struct_2(arg_0.a | arg_0.a, Struct_1(vec3<bool>(false, true, true)))), 4294967295u), 8u)];
    global1 = arg_0.b;
    var var_1 = vec2<bool>(all(vec4<bool>(~21017i >= firstTrailingBit(-28645i), any(!vec4<bool>(arg_0.b.a.x, global1.a.x, true, false)), true, func_2(func_2(Struct_3(vec3<f32>(1000f, 1389f, 1637f), global1.a, u_input.c), arg_0, Struct_2(vec3<i32>(u_input.a, 2147483647i, arg_0.a.x), Struct_1(vec3<bool>(global1.a.x, true, false)))), Struct_2(vec3<i32>(-74552i, -59476i, u_input.b), Struct_1(vec3<bool>(global1.a.x, true, false))), arg_0).b.x)), func_3(Struct_4(~_wgslsmith_add_vec4_u32(vec4<u32>(45363u, 29071u, 44794u, 0u), vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 8u)], u_input.c, 74567u)))).x);
    return Struct_2((~arg_0.a & vec3<i32>(1i, -666i ^ u_input.b, arg_0.a.x & arg_0.a.x)) ^ vec3<i32>(-1i, _wgslsmith_add_i32(-u_input.b, arg_0.a.x), u_input.b), arg_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global2 = min(arg_0.a.x, -func_1(Struct_2(arg_1.a << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 8u)], 119660u, 4294967295u) % vec3<u32>(32u)), arg_1.b)).a.x);
    var var_0 = vec4<bool>(!(!(!arg_1.b.a.x) & !global1.a.x), func_2(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, 715f, -515f)), vec3<bool>(arg_0.b.a.x, func_1(arg_0).b.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)] > 1u), abs(~u_input.c)), func_1(arg_0), func_1(func_1(Struct_2(vec3<i32>(u_input.b, arg_1.a.x, -57761i), Struct_1(vec3<bool>(arg_0.b.a.x, true, true)))))).b.x, !all(vec4<bool>(true, true, false, all(vec4<bool>(arg_0.b.a.x, true, true, arg_0.b.a.x)))), global1.a.x);
    let var_1 = _wgslsmith_div_vec3_i32(select(arg_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_1.a.x, 2147483647i) | vec3<i32>(u_input.d, 22918i, arg_1.a.x), vec3<i32>(-15347i, i32(-1i) * -1i, reverseBits(5298i))), var_0.x), -vec3<i32>(-6229i, func_1(arg_1).a.x, 52038i));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-714f, -1108f, -264f, -473f), vec4<f32>(-863f, -250f, 152f, -691f)))))));
    let var_3 = 2147483647i;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~14693u;
    var var_1 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-441f, -561f)), _wgslsmith_div_f32(626f, 1855f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(802f + -863f)), _wgslsmith_f_op_f32(floor(1055f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1883f, -1016f, 283f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1398f, 1414f, -311f) - vec3<f32>(-617f, 220f, 3207f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-430f, -667f, -898f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(100f, 733f, 563f) + vec3<f32>(-1293f, 2685f, 1327f)))), !select(vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(global1.a.x, false, global1.a.x), vec3<bool>(true, true, global1.a.x))))), select(vec3<bool>(true, 0i <= u_input.d, global1.a.x), select(vec3<bool>(true, all(global1.a), true), select(global1.a, vec3<bool>(global1.a.x, true, false), all(global1.a)), func_5(Struct_2(vec3<i32>(1i, u_input.b, u_input.a), Struct_1(global1.a)), func_1(Struct_2(vec3<i32>(-2147483647i, 2971i, u_input.a), Struct_1(global1.a))))), global1.a), firstTrailingBit(u_input.c & abs(_wgslsmith_mult_u32(1u, u_input.c))));
    global1 = func_1(func_1(func_1(Struct_2(-vec3<i32>(61886i, -54934i, u_input.b), func_1(Struct_2(vec3<i32>(u_input.b, -21634i, u_input.a), Struct_1(global1.a))).b)))).b;
    var var_2 = select(vec4<bool>(false, global1.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(5688u, 52639u, 25710u), vec3<u32>(u_input.c, 73572u, var_1.c)) <= _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(u_input.c, 8u)], global0[_wgslsmith_index_u32(abs(var_1.c), 8u)]), true), !select(select(vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x), select(vec4<bool>(global1.a.x, var_1.b.x, global1.a.x, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, global1.a.x, false), vec4<bool>(global1.a.x, var_1.b.x, global1.a.x, true)), vec4<bool>(global1.a.x, true, global1.a.x, true)), vec4<bool>(all(global1.a.xz), true, select(false, true, false), true), !select(vec4<bool>(false, var_1.b.x, false, true), vec4<bool>(false, var_1.b.x, var_1.b.x, global1.a.x), false)), global1.a.x);
    var var_3 = Struct_4(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(8538u, global0[_wgslsmith_index_u32(0u, 8u)], 19502u, 0u), select(~vec4<u32>(1u, var_1.c, var_1.c, 25772u), abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], var_1.c, 1u, 0u)), global1.a.x)), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c, u_input.c, 86788u, 4079u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 8u)], var_1.c, 6662u))), vec4<u32>(_wgslsmith_mult_u32(76124u & var_1.c, ~u_input.c), 1091u, u_input.c, u_input.c)));
    var_1 = func_2(func_2(Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)))), vec3<bool>(true, true, var_1.b.x), u_input.c), Struct_2(-(vec3<i32>(u_input.a, 30602i, -36189i) >> (var_3.a.wzx % vec3<u32>(32u))), Struct_1(vec3<bool>(false, true, false))), Struct_2(-countOneBits(vec3<i32>(u_input.d, u_input.d, 24756i)), func_1(Struct_2(vec3<i32>(u_input.a, u_input.a, -1i), Struct_1(vec3<bool>(false, false, true)))).b)), Struct_2(reverseBits(abs(vec3<i32>(u_input.d, -1i, 3129i))), func_1(Struct_2(vec3<i32>(u_input.a, -1i, 1i), func_1(Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.b), Struct_1(vec3<bool>(var_2.x, false, global1.a.x)))).b)).b), func_1(Struct_2(~vec3<i32>(u_input.a, u_input.b, u_input.a) << (vec3<u32>(1u, var_3.a.x, var_3.a.x) % vec3<u32>(32u)), Struct_1(vec3<bool>(global1.a.x, var_2.x, var_2.x)))));
    var_3 = Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, _wgslsmith_sub_u32(~4382u, _wgslsmith_dot_vec2_u32(var_3.a.yy, var_3.a.xx)), ~abs(var_1.c), func_2(global3[_wgslsmith_index_u32(reverseBits(1u), 29u)], func_1(Struct_2(vec3<i32>(u_input.a, 3309i, 32298i), Struct_1(var_1.b))), Struct_2(vec3<i32>(1i, 0i, u_input.d), Struct_1(var_2.zzz))).c), select(var_3.a, var_3.a, vec4<bool>(var_2.x || global1.a.x, func_2(Struct_3(var_1.a, vec3<bool>(global1.a.x, var_1.b.x, true), global0[_wgslsmith_index_u32(var_3.a.x, 8u)]), Struct_2(vec3<i32>(u_input.b, 2147483647i, -56300i), Struct_1(vec3<bool>(var_2.x, var_1.b.x, var_2.x))), Struct_2(vec3<i32>(-42373i, u_input.a, u_input.d), Struct_1(vec3<bool>(var_1.b.x, true, true)))).b.x, var_2.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(u_input.c, ~(0u | u_input.c)), func_2(func_2(func_2(global3[_wgslsmith_index_u32(u_input.c, 29u)], Struct_2(vec3<i32>(37118i, u_input.d, -2147483647i), Struct_1(vec3<bool>(var_2.x, var_2.x, var_1.b.x))), Struct_2(vec3<i32>(u_input.d, u_input.b, u_input.d), Struct_1(vec3<bool>(false, global1.a.x, true)))), func_1(Struct_2(vec3<i32>(u_input.a, 27256i, -2699i), Struct_1(vec3<bool>(false, var_1.b.x, true)))), Struct_2(vec3<i32>(u_input.a, u_input.b, u_input.b), Struct_1(var_1.b))), func_1(func_1(Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.d), Struct_1(vec3<bool>(global1.a.x, false, var_2.x))))), Struct_2(vec3<i32>(u_input.b, u_input.b, 15748i), func_1(Struct_2(vec3<i32>(u_input.d, u_input.b, u_input.b), Struct_1(vec3<bool>(var_1.b.x, var_2.x, var_2.x)))).b)).c), _wgslsmith_div_f32(623f, 238f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a.yy, var_1.a.yz), vec2<f32>(-1000f, 218f)) - _wgslsmith_f_op_vec2_f32(var_1.a.xy * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(421f, 796f), vec2<f32>(932f, 1000f), true)))) + vec2<f32>(-1139f, var_1.a.x)));
}

