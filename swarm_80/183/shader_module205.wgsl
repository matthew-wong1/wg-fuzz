struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(312f, 1000f), vec2<f32>(-977f, -1117f), vec2<f32>(-798f, 687f), vec2<f32>(510f, -389f), vec2<f32>(-105f, -985f), vec2<f32>(-375f, -875f), vec2<f32>(-1070f, 341f), vec2<f32>(-291f, -864f), vec2<f32>(-1145f, 414f), vec2<f32>(-1000f, 873f), vec2<f32>(2230f, 839f), vec2<f32>(-608f, 396f), vec2<f32>(-1352f, -717f), vec2<f32>(500f, 528f), vec2<f32>(-240f, -323f), vec2<f32>(2355f, -112f), vec2<f32>(-787f, -1325f), vec2<f32>(1085f, -2280f), vec2<f32>(-1592f, 1207f), vec2<f32>(-346f, -1128f));

var<private> global2: array<vec4<u32>, 31>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = Struct_2(vec3<u32>(0u, firstLeadingBit(~arg_0.a.x) >> (4294967295u % 32u), 0u ^ ~_wgslsmith_div_u32(arg_0.a.x, 4294967295u)), arg_0.c, Struct_1(arg_0.c.a, vec3<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(16657i, arg_0.b.b.x, -1i, -1i), vec4<i32>(-10804i, -1i, u_input.a.x, 3150i)), -vec4<i32>(arg_0.c.b.x, 1855i, 1i, 36129i)), abs(_wgslsmith_mult_i32(23078i, -28228i)), u_input.a.x), vec2<bool>(all(arg_0.e), !arg_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-636f)))))), arg_0.b.a.wxy);
    global1 = array<vec2<f32>, 20>();
    return max(~_wgslsmith_div_vec3_i32(~vec3<i32>(arg_0.b.b.x, -100871i, u_input.a.x), vec3<i32>(-arg_0.b.b.x, var_0.b.b.x, abs(var_0.b.b.x))), countOneBits(min(countOneBits(arg_0.b.b >> (vec3<u32>(6837u, var_0.a.x, 4294967295u) % vec3<u32>(32u))), select(vec3<i32>(arg_0.b.b.x, -26426i, var_0.b.b.x) ^ u_input.a, countOneBits(vec3<i32>(u_input.a.x, var_0.c.b.x, -15080i)), true))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec3<u32>(~firstTrailingBit(50499u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(14700u, firstTrailingBit(1u), _wgslsmith_clamp_u32(64665u, 4294967295u, 1u), firstLeadingBit(4294967295u)), abs(global2[_wgslsmith_index_u32(1u, 31u)])), 4294967295u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-885f, _wgslsmith_div_f32(-513f, 341f))), 145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1084f + -533f)), _wgslsmith_f_op_f32(abs(-178f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, -1386f, -2275f, -1219f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-780f, -351f, 136f, -1000f), vec4<f32>(-1000f, 1465f, -1000f, -921f))))));
    var var_2 = vec4<bool>(false || arg_0, u_input.a.x == -u_input.a.x, arg_0, arg_0);
    global1 = array<vec2<f32>, 20>();
    var var_3 = Struct_1(vec4<bool>(arg_0 != false, select(var_2.x, !arg_0, true) || ((var_0.x << (7937u % 32u)) < 4183u), global3.x, global3.x), -u_input.a & func_3(Struct_2(firstTrailingBit(var_0), Struct_1(vec4<bool>(false, false, false, false), u_input.a, var_2.yy), Struct_1(vec4<bool>(arg_0, global3.x, false, arg_0), u_input.a, vec2<bool>(true, false)), _wgslsmith_f_op_f32(sign(var_1.x)), !var_2.yzx)), !vec2<bool>(var_2.x, 25422u == ~var_0.x));
    return Struct_1(select(vec4<bool>(var_1.x <= _wgslsmith_f_op_f32(var_1.x + var_1.x), true && !var_2.x, any(var_2.ww), any(select(vec2<bool>(arg_0, global3.x), vec2<bool>(false, true), var_3.c))), select(!vec4<bool>(false, var_3.c.x, var_3.c.x, false), var_3.a, all(select(var_3.a, var_3.a, vec4<bool>(true, var_3.c.x, arg_0, true)))), var_3.a), u_input.a, select(vec2<bool>(global3.x, arg_0), vec2<bool>(var_2.x, all(var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(max(var_1.x, var_1.x))) == var_1.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(245f, _wgslsmith_f_op_f32(-arg_2)), -946f, _wgslsmith_f_op_f32(-arg_2));
    let var_1 = true;
    var var_2 = arg_1;
    var var_3 = var_2.a.x;
    var var_4 = ~select(vec2<u32>(abs(0u), countOneBits(1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 31171u), vec2<u32>(4294967295u, 0u)), select(1u, 28904u, false)), var_2.c) & vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(42028u, 1u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 20089u, 1u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), min(vec4<u32>(0u, 79123u, 0u, 0u) >> (global2[_wgslsmith_index_u32(63017u, 31u)] % vec4<u32>(32u)), vec4<u32>(58955u, 1u, 29446u, 0u))), 27714u);
    return arg_1;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global4 = global0.x;
    global2 = array<vec4<u32>, 31>();
    var var_0 = Struct_2(~(~vec3<u32>(1u, 1u, 1u)), func_4(countOneBits(vec3<i32>(u_input.a.x, -44971i, -29208i) >> (vec3<u32>(46823u, 0u, 0u) % vec3<u32>(32u))), func_2(true && (arg_0.x > 58663i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(913f, -1000f, false)) + -942f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f - 1000f)))), func_2(true), -559f, vec3<bool>(global3.x, !any(vec4<bool>(global3.x, true, global3.x, global3.x)), true));
    var var_1 = firstTrailingBit(abs(13449u));
    let var_2 = func_4(-vec3<i32>(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 42592i, arg_0.x, global0.x), select(vec4<i32>(global0.x, var_0.c.b.x, global0.x, arg_0.x), vec4<i32>(u_input.a.x, u_input.a.x, 65808i, u_input.a.x), true)), 23946i), func_2(!(!global3.x && true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.d, var_0.d))) - var_0.d))).c.x;
    return Struct_1(select(vec4<bool>(!global3.x | true, (global0.x <= 8697i) == !var_0.c.c.x, var_0.e.x, true), vec4<bool>(select(any(vec3<bool>(false, true, var_0.e.x)), 950f <= var_0.d, all(vec3<bool>(false, true, true))), true, !(global3.x | global3.x), all(vec2<bool>(true, true))), var_2), var_0.b.b, select(var_0.e.zz, var_0.b.c, func_2(false).a.x));
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    global0 = ~abs(~u_input.a.yy);
    let var_0 = 1730f;
    global3 = arg_0.e.yz;
    global3 = arg_0.e.xx;
    let var_1 = vec4<i32>(i32(-1i) * -(~(-1i)), -arg_0.c.b.x, arg_0.b.b.x, func_4(arg_0.c.b, arg_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-846f, arg_0.d))), _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(-1000f, arg_0.d))))).b.x);
    return StorageBuffer(global1[_wgslsmith_index_u32(arg_0.a.x, 20u)], arg_0.a.x, global1[_wgslsmith_index_u32(arg_0.a.x >> (_wgslsmith_sub_u32(~11444u, select(arg_0.a.x, arg_0.a.x, !arg_0.c.c.x)) % 32u), 20u)], _wgslsmith_f_op_f32(-296f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f - var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(vec3<u32>(1u, 1u, 1u), Struct_1(!vec4<bool>(global3.x, global3.x, false, true), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a.x, 2147483647i, global0.x), u_input.a, vec3<bool>(global3.x, global3.x, global3.x)), u_input.a >> (vec3<u32>(1052u, 15050u, 1u) % vec3<u32>(32u))), select(vec2<bool>(false, global3.x), !vec2<bool>(global3.x, global3.x), select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, global3.x), vec2<bool>(global3.x, global3.x)))), func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-2246i, global0.x), ~u_input.a.yy)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(731f, 1259f))), _wgslsmith_f_op_f32(f32(-1f) * -2058f)), vec3<bool>(true, select(global3.x, u_input.a.x <= 40105i, func_2(global3.x).c.x), any(vec3<bool>(true, global3.x, false)))));
}

