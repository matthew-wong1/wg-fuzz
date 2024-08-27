struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32 = -749f;

var<private> global2: i32 = -25416i;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<u32>(59047u, 0u, 4294967295u, 0u), 0i, vec4<u32>(0u, 0u, 4123u, 4294967295u), Struct_1(-678f, vec3<i32>(-1i, -15837i, i32(-2147483648)), vec2<i32>(10104i, -48476i), 0u)), Struct_2(vec4<u32>(10087u, 36330u, 71862u, 6347u), 0i, vec4<u32>(0u, 15603u, 23364u, 0u), Struct_1(-486f, vec3<i32>(i32(-2147483648), -13928i, 1i), vec2<i32>(82137i, 27288i), 56056u)), Struct_2(vec4<u32>(0u, 25850u, 78638u, 1u), -6063i, vec4<u32>(1u, 25268u, 0u, 21998u), Struct_1(1000f, vec3<i32>(-2263i, -38436i, -67103i), vec2<i32>(-28794i, 0i), 28716u)), Struct_2(vec4<u32>(4294967295u, 0u, 64729u, 4294967295u), 43868i, vec4<u32>(46507u, 0u, 23890u, 1u), Struct_1(489f, vec3<i32>(26257i, 1i, 1i), vec2<i32>(27632i, 2147483647i), 4294967295u)), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 47126u), -1i, vec4<u32>(1u, 56436u, 4294967295u, 4294967295u), Struct_1(-760f, vec3<i32>(-12411i, -67823i, -1i), vec2<i32>(i32(-2147483648), -6762i), 0u)), Struct_2(vec4<u32>(35749u, 0u, 4843u, 1u), 49125i, vec4<u32>(1u, 4294967295u, 0u, 23488u), Struct_1(581f, vec3<i32>(22807i, 1i, -15340i), vec2<i32>(2147483647i, 2147483647i), 32269u)), Struct_2(vec4<u32>(27194u, 0u, 0u, 1u), 0i, vec4<u32>(17417u, 48579u, 29917u, 24196u), Struct_1(-605f, vec3<i32>(0i, 1i, -28523i), vec2<i32>(2147483647i, -16129i), 14637u)), Struct_2(vec4<u32>(17708u, 1u, 0u, 1u), 2147483647i, vec4<u32>(26951u, 0u, 0u, 0u), Struct_1(-351f, vec3<i32>(-22883i, -17310i, 21184i), vec2<i32>(2147483647i, 69565i), 4294967295u)), Struct_2(vec4<u32>(71370u, 4294967295u, 0u, 1u), -17928i, vec4<u32>(69706u, 75288u, 32594u, 1u), Struct_1(-415f, vec3<i32>(i32(-2147483648), 0i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), 0u)), Struct_2(vec4<u32>(9241u, 1u, 4294967295u, 58377u), 78630i, vec4<u32>(0u, 117202u, 4294967295u, 4294967295u), Struct_1(1000f, vec3<i32>(0i, 95423i, 5922i), vec2<i32>(9470i, 2147483647i), 0u)), Struct_2(vec4<u32>(257u, 83030u, 0u, 40139u), i32(-2147483648), vec4<u32>(61376u, 10264u, 1u, 0u), Struct_1(-484f, vec3<i32>(1i, 1i, -1i), vec2<i32>(-16723i, 0i), 1u)), Struct_2(vec4<u32>(7294u, 27752u, 4294967295u, 22820u), -21581i, vec4<u32>(1u, 16446u, 0u, 49221u), Struct_1(1000f, vec3<i32>(i32(-2147483648), 1i, 2804i), vec2<i32>(8967i, -15851i), 4294967295u)), Struct_2(vec4<u32>(0u, 58695u, 24525u, 39202u), -24032i, vec4<u32>(0u, 0u, 7006u, 0u), Struct_1(-896f, vec3<i32>(-24875i, -1i, 7843i), vec2<i32>(1i, -22190i), 4294967295u)), Struct_2(vec4<u32>(1u, 62868u, 62672u, 1u), -1i, vec4<u32>(4294967295u, 4773u, 4294967295u, 15880u), Struct_1(1909f, vec3<i32>(-3574i, -261i, -10761i), vec2<i32>(1i, -61832i), 99804u)), Struct_2(vec4<u32>(45755u, 4294967295u, 15606u, 54072u), -6347i, vec4<u32>(0u, 5135u, 60368u, 49929u), Struct_1(237f, vec3<i32>(-24266i, 0i, -1i), vec2<i32>(-2342i, 0i), 0u)), Struct_2(vec4<u32>(0u, 0u, 4294967295u, 1u), 0i, vec4<u32>(0u, 4294967295u, 1115u, 3967u), Struct_1(1138f, vec3<i32>(2147483647i, -10668i, 5601i), vec2<i32>(50671i, -39160i), 103170u)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 30593u, 8544u), 35323i, vec4<u32>(17309u, 2521u, 4508u, 4294967295u), Struct_1(124f, vec3<i32>(-5393i, 41223i, i32(-2147483648)), vec2<i32>(0i, 0i), 49973u)), Struct_2(vec4<u32>(0u, 45207u, 0u, 4294967295u), 1644i, vec4<u32>(4294967295u, 11999u, 0u, 4294967295u), Struct_1(-1553f, vec3<i32>(79553i, -62378i, -1i), vec2<i32>(1838i, -59280i), 5477u)), Struct_2(vec4<u32>(4294967295u, 49579u, 2385u, 90873u), 39599i, vec4<u32>(0u, 55909u, 4551u, 1u), Struct_1(2323f, vec3<i32>(1i, 0i, i32(-2147483648)), vec2<i32>(1i, 0i), 4294967295u)), Struct_2(vec4<u32>(1u, 2641u, 39380u, 0u), -1i, vec4<u32>(4294967295u, 0u, 4294967295u, 58934u), Struct_1(-860f, vec3<i32>(43830i, i32(-2147483648), 73149i), vec2<i32>(2147483647i, 0i), 21762u)), Struct_2(vec4<u32>(406u, 1u, 0u, 1u), 2593i, vec4<u32>(40099u, 4294967295u, 8159u, 1u), Struct_1(-150f, vec3<i32>(-5057i, -20861i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), 30696u)), Struct_2(vec4<u32>(0u, 54407u, 93916u, 1u), i32(-2147483648), vec4<u32>(51507u, 2739u, 1u, 4294967295u), Struct_1(1748f, vec3<i32>(-9252i, 7868i, 1i), vec2<i32>(i32(-2147483648), 0i), 4294967295u)), Struct_2(vec4<u32>(19641u, 0u, 1u, 6418u), i32(-2147483648), vec4<u32>(4294967295u, 0u, 0u, 1u), Struct_1(-814f, vec3<i32>(4080i, 21388i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), 111766u)), Struct_2(vec4<u32>(0u, 1u, 51473u, 69243u), i32(-2147483648), vec4<u32>(3348u, 1u, 1u, 4294967295u), Struct_1(575f, vec3<i32>(i32(-2147483648), 46i, 1i), vec2<i32>(-15875i, 0i), 17374u)), Struct_2(vec4<u32>(32817u, 4294967295u, 32005u, 0u), i32(-2147483648), vec4<u32>(59039u, 52744u, 2859u, 4294967295u), Struct_1(-1150f, vec3<i32>(16868i, -20181i, -1i), vec2<i32>(-27151i, 0i), 60177u)), Struct_2(vec4<u32>(21410u, 0u, 1u, 1u), 11599i, vec4<u32>(1u, 3485u, 1u, 4294967295u), Struct_1(-1832f, vec3<i32>(22835i, -6521i, i32(-2147483648)), vec2<i32>(1i, -25895i), 63547u)), Struct_2(vec4<u32>(1u, 4294967295u, 82142u, 1u), 1i, vec4<u32>(4294967295u, 0u, 1u, 3120u), Struct_1(-1000f, vec3<i32>(20923i, -1i, 273i), vec2<i32>(-58758i, -28778i), 0u)));

var<private> global4: array<Struct_2, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> vec3<i32> {
    var var_0 = arg_2.yzw;
    var var_1 = arg_0.x;
    var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(158f, 333f), vec2<f32>(393f, arg_3)))))))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(step(130f, var_2.x)), Struct_1(1000f, arg_2.xyx, u_input.c.yw, ~1u));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-29387i, -_wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-11758i, var_3.b.c.x, arg_1))), firstLeadingBit(-2944i & var_3.b.c.x)), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(-16089i, var_3.b.b.x, arg_2.x), ~var_3.b.b));
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    global4 = array<Struct_2, 20>();
    var var_0 = Struct_5(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, _wgslsmith_sub_u32(countOneBits(~u_input.a), ~(u_input.a >> (u_input.d.x % 32u)))), 27u)], vec3<u32>(_wgslsmith_mult_u32(select(_wgslsmith_mult_u32(5237u, u_input.a), u_input.a, all(vec4<bool>(true, false, false, false))), u_input.a), 0u, firstTrailingBit(33804u)), ~(-u_input.b), _wgslsmith_sub_i32(abs(u_input.c.x), 27316i));
    var var_1 = arg_0.zx;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(arg_0.x, -1319f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -552f), -171f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) * _wgslsmith_f_op_f32(max(var_0.a.d.a, 441f))))), vec3<i32>(-83737i, func_2(vec4<bool>(true, true, true, true), var_0.c, reverseBits(~u_input.c), var_1.x).x, 1i), ~firstTrailingBit(var_0.a.d.c), 34269u);
    global4 = array<Struct_2, 20>();
    return vec3<bool>(!all(vec2<bool>(false, any(vec3<bool>(true, false, true)))), _wgslsmith_add_i32((var_0.c | u_input.b) | var_0.c, u_input.b) > var_2.b.x, all(vec4<bool>(false, all(vec4<bool>(false, true, true, false)), true, select(true, true, true) || true)));
}

fn func_1() -> vec2<bool> {
    let var_0 = vec4<i32>(~u_input.e.x, -u_input.e.x, ~_wgslsmith_dot_vec3_i32(select(func_2(vec4<bool>(false, true, false, true), -1i, u_input.c, 923f), reverseBits(u_input.c.wxx), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), u_input.e << (~vec3<u32>(u_input.a, u_input.a, 87228u) % vec3<u32>(32u))), _wgslsmith_clamp_i32(11318i, _wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(u_input.b, u_input.e.x)), u_input.e.yy), 0i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1052f, -171f)))))), abs(u_input.e) << (_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a) << (countOneBits(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<i32>(-2147483647i, var_0.x), u_input.d.x);
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)))), _wgslsmith_f_op_f32(-1381f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), select(-(~(-var_0.wwz)), min(vec3<i32>(var_0.x, var_1.b.x, -2147483647i), vec3<i32>(14857i, u_input.b, var_0.x) ^ var_1.b) & _wgslsmith_sub_vec3_i32(var_1.b, vec3<i32>(0i, var_1.c.x, 9423i) >> (vec3<u32>(var_1.d, 1u, 87624u) % vec3<u32>(32u))), false), min(abs(vec2<i32>(u_input.b, -12389i) & vec2<i32>(var_0.x, var_1.c.x)), ~u_input.e.zz), u_input.a);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, -1000f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))), vec3<i32>(-2147483647i, -27323i, var_1.c.x) | vec3<i32>(countOneBits(1i), 5202i, _wgslsmith_mult_i32(0i, -964i)), ~vec2<i32>(-var_1.b.x, min(u_input.b, 41163i)), ~(var_1.d ^ _wgslsmith_add_u32(u_input.d.x, u_input.a))));
    var var_3 = 9270u;
    return vec2<bool>(true, any(!func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.a, var_2.b.a, var_2.b.a), vec3<f32>(-1523f, var_2.b.a, -321f), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!all(vec4<bool>(true, false, false, false)))) & (-330f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-769f)))));
    var var_0 = !select(!func_1(), vec2<bool>(any(func_3(vec3<f32>(-736f, 124f, 394f))), func_1().x), true);
    global2 = u_input.b;
    global0 = func_1().x;
    var var_1 = Struct_1(-1000f, u_input.c.wxx, ~countOneBits(u_input.e.yz), u_input.d.x | u_input.a);
    var var_2 = global4[_wgslsmith_index_u32(u_input.d.x, 20u)];
    var var_3 = ~(~reverseBits(vec3<u32>(var_1.d, var_1.d, var_2.a.x)) >> (max(~vec3<u32>(65405u, var_1.d, u_input.a), vec3<u32>(0u, 1u, 75273u)) % vec3<u32>(32u))) ^ ~abs(~firstLeadingBit(vec3<u32>(4294967295u, 0u, u_input.d.x)));
    let var_4 = global3[_wgslsmith_index_u32(abs(1u), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.d.a), _wgslsmith_f_op_f32(sign(var_1.a)))))) * 707f));
}

