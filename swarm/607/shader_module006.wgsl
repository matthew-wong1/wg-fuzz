struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: vec4<f32> = vec4<f32>(-256f, -717f, -1039f, -1364f);

var<private> global3: u32 = 0u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = ~(~select(vec2<i32>(-1i) * -u_input.b.zz, u_input.b.xz, select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    var_0 = u_input.b.xz;
    var var_1 = true;
    var var_2 = false;
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-998f)), 1053f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))))), u_input.a.x, Struct_1(_wgslsmith_mult_vec4_u32(~(vec4<u32>(1u, 55653u, u_input.a.x, u_input.a.x) ^ vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), ~(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u)))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(-2264i, 18568i), i32(-1i) * -34307i), u_input.b.x), u_input.a.x), Struct_2(max(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(491f, _wgslsmith_div_f32(global2.x, 635f))));
    return 39300u;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = 987f;
    var var_2 = false;
    let var_3 = _wgslsmith_div_u32(func_3(), 60015u);
    let var_4 = all(vec4<bool>(select(false, false, any(select(vec3<bool>(var_0.c, false, false), vec3<bool>(arg_2.c, var_0.c, arg_2.c), var_0.c))), false, var_0.c, any(select(!vec2<bool>(false, arg_2.c), select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, false), arg_2.c), vec2<bool>(var_0.c, var_0.c)))));
    return Struct_3(Struct_2(max(arg_0.a, var_0.d.a)), _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(-global2.x)), any(vec3<bool>(true, true, true)), Struct_2(34088i), arg_2.e);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> u32 {
    var var_0 = Struct_3(Struct_2(2147483647i), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(-global2.x)), !(func_3() < countOneBits(18517u)), func_2(func_2(Struct_2(u_input.b.x), 2177f, func_2(Struct_2(arg_1.d.a), _wgslsmith_f_op_f32(348f + arg_1.e.x), arg_1, Struct_2(arg_1.d.a)), Struct_2(_wgslsmith_mult_i32(1i, arg_2))).a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1943f)))), Struct_3(Struct_2(arg_2), global2.x, !any(vec4<bool>(true, true, arg_1.c, false)), func_2(func_2(Struct_2(u_input.b.x), global2.x, Struct_3(Struct_2(1i), arg_0.x, arg_1.c, Struct_2(-13800i), vec4<f32>(435f, -2763f, arg_1.e.x, -1587f)), Struct_2(arg_2)).d, _wgslsmith_f_op_f32(-1050f - global2.x), func_2(Struct_2(u_input.b.x), 429f, Struct_3(Struct_2(arg_1.d.a), arg_0.x, arg_1.c, Struct_2(arg_1.a.a), arg_1.e), Struct_2(arg_2)), Struct_2(50284i)).d, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b, 944f, 401f, global2.x)))), func_2(func_2(Struct_2(u_input.b.x), _wgslsmith_f_op_f32(global2.x + global2.x), Struct_3(arg_1.d, 1196f, true, Struct_2(2262i), arg_1.e), arg_1.d).d, -590f, Struct_3(arg_1.a, _wgslsmith_f_op_f32(arg_1.e.x * arg_0.x), arg_1.c, arg_1.d, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.e.x, arg_1.e.x, arg_0.x, -837f)))), Struct_2(arg_1.a.a)).a).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_1.e))));
    var var_1 = vec3<bool>(true, true, false);
    var var_2 = Struct_4(global2.xz, 1u, Struct_1(_wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(30373u, u_input.a.x, 13822u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec2<i32>(_wgslsmith_add_i32(max(-2147483647i, -19412i), ~0i), arg_1.d.a), ~46598u), var_0.d, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(402f)), _wgslsmith_f_op_f32(min(arg_1.e.x, global2.x))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -473f))))));
    var var_3 = var_2.c;
    let var_4 = 633f;
    return 1u;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = vec3<i32>(abs(1i & arg_0.a), 0i ^ u_input.b.x, ~(~(-(u_input.b.x | -2147483647i))));
    global1 = array<Struct_1, 7>();
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, ~func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, -921f))), func_2(Struct_2(0i), -608f, Struct_3(arg_0, -288f, true, arg_0, vec4<f32>(arg_1, 799f, -401f, -817f)), arg_0), _wgslsmith_mult_i32(var_0.x, arg_0.a)), 96719u), 24u)];
    global1 = array<Struct_1, 7>();
    let var_2 = i32(-1i) * -30803i;
    return Struct_3(func_2(Struct_2(_wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(79699i, arg_0.a))), _wgslsmith_f_op_f32(-var_1.x), Struct_3(func_2(arg_0, _wgslsmith_div_f32(arg_1, -1259f), func_2(arg_0, arg_1, Struct_3(Struct_2(u_input.b.x), var_1.x, true, Struct_2(-2147483647i), vec4<f32>(var_1.x, -876f, global2.x, 338f)), Struct_2(var_0.x)), Struct_2(arg_0.a)).a, arg_1, func_2(Struct_2(var_0.x), _wgslsmith_f_op_f32(sign(1866f)), func_2(Struct_2(0i), 2423f, Struct_3(Struct_2(-16477i), 593f, true, Struct_2(-23368i), vec4<f32>(897f, -1008f, 353f, 428f)), arg_0), Struct_2(35984i)).c, func_2(Struct_2(42132i), _wgslsmith_f_op_f32(var_1.x - global2.x), func_2(Struct_2(45545i), 1643f, Struct_3(arg_0, arg_1, false, arg_0, vec4<f32>(1181f, -1900f, arg_1, arg_1)), arg_0), func_2(Struct_2(u_input.b.x), global2.x, Struct_3(arg_0, 1105f, arg_2.x, Struct_2(var_0.x), vec4<f32>(var_1.x, global2.x, var_1.x, 381f)), Struct_2(27123i)).d).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(967f, -1251f, global2.x, var_1.x) - vec4<f32>(-684f, 1001f, arg_1, global2.x)))), func_2(func_2(Struct_2(-2147483647i), arg_1, func_2(Struct_2(arg_0.a), 2288f, Struct_3(Struct_2(0i), -350f, arg_2.x, Struct_2(arg_0.a), vec4<f32>(global2.x, global2.x, var_1.x, -699f)), arg_0), arg_0).d, global2.x, Struct_3(Struct_2(var_2), _wgslsmith_f_op_f32(max(-273f, global2.x)), select(true, arg_2.x, true), func_2(Struct_2(var_0.x), -313f, Struct_3(Struct_2(-1i), 1000f, arg_2.x, Struct_2(var_0.x), vec4<f32>(726f, arg_1, global2.x, 1000f)), arg_0).d, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, 297f, arg_1, 639f)))), arg_0).a).a, -290f, arg_2.x != arg_2.x, arg_0, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0, 959f, Struct_3(arg_0, -179f, false, Struct_2(arg_0.a), vec4<f32>(194f, -127f, arg_1, var_1.x)), Struct_2(arg_0.a)).b - _wgslsmith_f_op_f32(global2.x * global2.x)), 1038f, -414f, _wgslsmith_div_f32(1802f, _wgslsmith_f_op_f32(f32(-1f) * -1065f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -777f, var_1.x, -2209f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1635f, 358f, global2.x, arg_1), vec4<f32>(-116f, 1828f, 132f, -414f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1057f, arg_1, arg_1, var_1.x))), (false & arg_2.x) | true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1000f, global2.x))));
    var var_1 = func_1(Struct_2(u_input.b.x), _wgslsmith_f_op_f32(global2.x + -224f), vec2<bool>(all(vec3<bool>(true, true, true)), true));
    let var_2 = global1[_wgslsmith_index_u32(~64518u, 7u)];
    var var_3 = min(vec3<i32>(var_2.b.x, 1i, -1i), u_input.b);
    let var_4 = true;
    let var_5 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.e - vec4<f32>(global2.x, 847f, global2.x, 533f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, -246f, var_1.b, -165f)), select(vec4<bool>(false, var_4, true, var_1.c), vec4<bool>(var_4, var_1.c, true, false), vec4<bool>(true, true, var_4, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.e, var_1.e)) * vec4<f32>(1871f, 344f, var_1.e.x, -338f))), _wgslsmith_f_op_vec4_f32(-var_1.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-820f, global2.x) - _wgslsmith_f_op_f32(1823f * 606f)), _wgslsmith_f_op_f32(-func_1(var_1.a, global2.x, vec2<bool>(false, true)).b)) - var_1.e)));
    global0 = array<vec3<f32>, 24>();
    let var_6 = Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.e.x)), func_2(var_1.a, global2.x, func_2(var_1.d, var_1.b, Struct_3(var_1.d, var_1.e.x, var_4, Struct_2(-2147483647i), vec4<f32>(-1000f, global2.x, 702f, -1861f)), var_1.d), Struct_2(1705i)).b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(global2.wz)), vec2<f32>(func_1(Struct_2(-3641i), var_1.e.x, vec2<bool>(var_4, var_4)).e.x, var_1.e.x))), func_1(func_2(var_1.d, var_5.x, func_2(Struct_2(u_input.b.x), global2.x, Struct_3(var_1.d, var_5.x, true, var_1.a, var_1.e), Struct_2(u_input.b.x)), func_2(Struct_2(u_input.b.x), -673f, Struct_3(var_1.a, var_5.x, false, var_1.a, var_1.e), var_1.a).d).d, _wgslsmith_f_op_f32(f32(-1f) * -440f), vec2<bool>(true, false)).c)), ~(u_input.a.x | _wgslsmith_add_u32(u_input.a.x, ~var_2.a.x)), Struct_1(min(vec4<u32>(u_input.a.x, 4294967295u, ~28674u, 34830u), vec4<u32>(1u, u_input.a.x, _wgslsmith_dot_vec3_u32(var_2.a.yzy, vec3<u32>(u_input.a.x, var_2.c, 1u)), u_input.a.x)), u_input.b.xx, u_input.a.x & (var_2.a.x ^ var_2.a.x)), func_2(Struct_2(_wgslsmith_mult_i32(var_1.d.a, var_1.a.a) << (_wgslsmith_dot_vec2_u32(var_2.a.xw, u_input.a.xz) % 32u)), var_1.e.x, func_2(Struct_2(min(var_2.b.x, 0i)), var_1.b, Struct_3(func_2(var_1.a, var_1.b, Struct_3(Struct_2(-45814i), 1182f, true, Struct_2(u_input.b.x), var_1.e), Struct_2(2817i)).d, 1449f, all(vec2<bool>(false, var_1.c)), var_1.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1636f, -1259f, -833f, -2464f) - vec4<f32>(1545f, var_1.b, global2.x, var_5.x))), Struct_2(_wgslsmith_sub_i32(2147483647i, 1118i))), var_1.d).a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(-1921f, _wgslsmith_f_op_f32(var_1.e.x * var_1.e.x))), var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(var_1.d.a | firstLeadingBit(2147483647i)), _wgslsmith_div_i32(1i, -1i) & -_wgslsmith_clamp_i32(var_2.b.x, var_2.b.x, 42086i), var_3.x, -var_3.x), func_3(), -40043i);
}

