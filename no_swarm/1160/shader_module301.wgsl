struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: Struct_1 = Struct_1(4133u, vec4<i32>(-11891i, 2147483647i, -1i, 10587i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1124f);
    var var_2 = var_1;
    var_2 = _wgslsmith_f_op_f32(max(-555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, var_1, var_1)))))))));
    return _wgslsmith_add_i32(~(-1123i), -35283i);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = global1.b.x;
    var var_1 = global1.b.zwy;
    let var_2 = Struct_2(min(arg_2.a, ~vec3<u32>(4589u, ~arg_2.b.a, ~100162u)), Struct_1(min(31672u, 1u) << (0u % 32u), vec4<i32>(var_1.x, _wgslsmith_dot_vec3_i32(arg_2.b.b.wwz, global1.b.yyw) ^ (-61984i & global1.b.x), _wgslsmith_add_i32(~var_1.x, -global1.b.x), func_3(Struct_1(arg_2.a.x, vec4<i32>(-1i, -39380i, u_input.d, u_input.d))))));
    var var_3 = arg_2.b;
    var var_4 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -371f), -941f, _wgslsmith_f_op_f32(1463f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) + _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, true))));
    return ~(arg_0 >> (~1u % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1140f + _wgslsmith_f_op_f32(-1181f * 332f))))) < arg_3.x;
    return select(arg_2.a, u_input.c, ~1u > select(~0u, _wgslsmith_sub_u32(func_2(30368u, vec3<f32>(-502f, -827f, arg_3.x), arg_0), ~1u), any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = func_4(Struct_2(vec3<u32>(func_2(global1.a, vec3<f32>(198f, -947f, -190f), Struct_2(vec3<u32>(76101u, arg_1.a, 0u), Struct_1(16098u, global1.b))), global1.a, arg_0.a & 1u) >> (~reverseBits(vec3<u32>(4294967295u, global1.a, 1u)) % vec3<u32>(32u)), Struct_1(arg_1.a, abs(reverseBits(vec4<i32>(-9521i, arg_1.b.x, -1i, global1.b.x))))), Struct_1(select(1u, min(_wgslsmith_add_u32(77069u, 0u), u_input.c), false), _wgslsmith_sub_vec4_i32(-(~arg_0.b), -arg_1.b)), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-614f, _wgslsmith_f_op_f32(trunc(1176f)), _wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(-684f - -2224f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1277f, -1903f, -405f, 904f))))));
    let var_1 = -1000f;
    let var_2 = Struct_2(countOneBits((vec3<u32>(50183u, arg_0.a, u_input.c) << (vec3<u32>(35260u, global1.a, arg_0.a) % vec3<u32>(32u))) >> (~vec3<u32>(29747u, arg_1.a, global1.a) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(2954u, 58890u, 23080u)), ~(vec3<u32>(arg_0.a, arg_1.a, 0u) | vec3<u32>(4294967295u, global1.a, 118375u)), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a, 24495u, 783u), vec3<u32>(global1.a, arg_0.a, global1.a))) % vec3<u32>(32u)), arg_1);
    let var_3 = -firstLeadingBit(select(vec3<i32>(14008i, -16028i, 56338i) | ~var_2.b.b.zyz, vec3<i32>(arg_0.b.x, ~u_input.b, max(9360i, global1.b.x)), select(vec3<bool>(global0.x, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, false)), vec3<bool>(true, global0.x, false))));
    global1 = arg_0;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec3_i32(-reverseBits(arg_0.b.zzx), -vec3<i32>(_wgslsmith_div_i32(~(-41430i), _wgslsmith_clamp_i32(-23778i, 2147483647i, u_input.d)), -(-27748i ^ global1.b.x), _wgslsmith_dot_vec4_i32(arg_0.b ^ global1.b, vec4<i32>(-1i, 0i, u_input.a, global1.b.x))));
    var var_1 = !select(all(select(select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, true)), !vec3<bool>(false, false, global0.x), !vec3<bool>(true, global0.x, global0.x))), all(vec4<bool>(global0.x, true, true, false)) & all(!vec4<bool>(false, false, true, global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1022f + -1000f), _wgslsmith_f_op_f32(abs(-1931f)))) <= 481f);
    var var_2 = global1.b;
    global1 = arg_3;
    var var_3 = func_1(func_1(Struct_1(1u, vec4<i32>(-1i) * -global1.b), arg_3, arg_2.b.x), arg_0, _wgslsmith_mod_i32(~max(~arg_1.b.x, var_2.x & -44279i), -1i));
    return Struct_2(~(~vec3<u32>(16284u, firstTrailingBit(arg_2.a), _wgslsmith_div_u32(u_input.c, global1.a))), arg_2);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = !vec3<bool>(false, global0.x, true);
    global1 = Struct_1(func_1(arg_1.b, Struct_1(1u, global1.b), u_input.d).a >> (~u_input.c % 32u), abs(vec4<i32>(2147483647i, -12449i, func_1(arg_1.b, Struct_1(2258u, global1.b), 0i).b.x, 1i)) << (~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global1.a, 4294967295u, global1.a, 7421u)), vec4<u32>(u_input.c, 4767u, u_input.c, 4294967295u) | vec4<u32>(0u, u_input.c, 1773u, u_input.c)) % vec4<u32>(32u)));
    var var_0 = vec3<i32>(2614i, _wgslsmith_sub_i32(arg_1.b.b.x, ~12464i) << (func_2(u_input.c, vec3<f32>(1f, 1f, 1f), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_1.a.x, 1u), arg_1.a), Struct_1(u_input.c, vec4<i32>(-22983i, 25181i, global1.b.x, u_input.b)))) % 32u), arg_1.b.b.x);
    let var_1 = 276f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(-744f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_1)))), 951f);
    return func_5(arg_1.b, func_1(arg_1.b, Struct_1(_wgslsmith_div_u32(~arg_1.a.x, ~global1.a), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(1i, var_0.x, 18951i, 1i)), select(vec4<i32>(global1.b.x, global1.b.x, global1.b.x, u_input.b), global1.b, vec4<bool>(true, true, false, arg_0)))), -1i), Struct_1(14172u ^ ~(~u_input.c), vec4<i32>(-30672i, _wgslsmith_mult_i32(~var_0.x, abs(-4813i)), ~(-1i) ^ func_5(Struct_1(global1.a, vec4<i32>(var_0.x, -2147483647i, 0i, 24450i)), Struct_1(4294967295u, arg_1.b.b), arg_1.b, Struct_1(u_input.c, arg_1.b.b)).b.b.x, 42810i)), arg_1.b).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(!(!(!global0.x)), global0.x, !(false | !(global0.x | global0.x)));
    global1 = func_6(global0.x, func_5(func_1(Struct_1(global1.a, global1.b), Struct_1(4294967295u, -vec4<i32>(0i, 9359i, 11265i, -1i)), _wgslsmith_sub_i32(-83448i, 15198i)), func_1(func_1(func_1(Struct_1(49640u, vec4<i32>(2147483647i, 1i, -2147483647i, 30646i)), Struct_1(1u, vec4<i32>(u_input.a, 38004i, 36779i, global1.b.x)), -1i), func_1(Struct_1(9880u, global1.b), Struct_1(global1.a, vec4<i32>(80536i, 37971i, -2147483647i, global1.b.x)), u_input.d), i32(-1i) * -7063i), func_1(Struct_1(global1.a, global1.b), func_1(Struct_1(27539u, global1.b), Struct_1(global1.a, vec4<i32>(u_input.b, global1.b.x, u_input.b, 73329i)), 8628i), 0i ^ u_input.b), -1i), func_1(Struct_1(~global1.a, vec4<i32>(30648i, -1i, -1i, u_input.a)), Struct_1(select(global1.a, 15066u, global0.x), ~global1.b), u_input.b), func_1(func_1(func_1(Struct_1(375u, global1.b), Struct_1(global1.a, global1.b), 1i), func_1(Struct_1(global1.a, vec4<i32>(-1i, global1.b.x, 2147483647i, 15369i)), Struct_1(0u, vec4<i32>(global1.b.x, u_input.a, global1.b.x, -4017i)), u_input.a), global1.b.x), func_1(func_1(Struct_1(u_input.c, global1.b), Struct_1(13894u, vec4<i32>(global1.b.x, u_input.b, u_input.b, u_input.b)), u_input.b), func_1(Struct_1(1u, global1.b), Struct_1(u_input.c, global1.b), global1.b.x), global1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-56515i, -38728i, u_input.b), min(vec3<i32>(1i, 0i, global1.b.x), vec3<i32>(-1i, -1i, u_input.b))))), select(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)) != _wgslsmith_f_op_f32(-1485f * _wgslsmith_f_op_f32(round(-158f))), any(vec3<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, false)), false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(u_input.c, 35038u)) << (vec2<u32>(~(u_input.c >> (global1.a % 32u)), 77075u ^ (u_input.c << (u_input.c % 32u))) % vec2<u32>(32u)));
}

