struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(1i, -1i, 0i), Struct_1(vec4<u32>(33919u, 0u, 1u, 66880u), -627f, 848f), false), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), Struct_1(vec4<u32>(0u, 91376u, 0u, 1u), -1456f, 302f), true), Struct_2(vec3<i32>(-13734i, i32(-2147483648), 2147483647i), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), 1766f, 386f), false), Struct_2(vec3<i32>(1i, i32(-2147483648), 0i), Struct_1(vec4<u32>(37973u, 1u, 1u, 92584u), 1332f, -363f), false), Struct_2(vec3<i32>(2147483647i, 0i, 0i), Struct_1(vec4<u32>(6118u, 0u, 0u, 2189u), 1000f, 376f), true), Struct_2(vec3<i32>(2693i, -7568i, 1i), Struct_1(vec4<u32>(4294967295u, 22642u, 6004u, 1u), 1000f, -1539f), true), Struct_2(vec3<i32>(-37582i, 16861i, -17578i), Struct_1(vec4<u32>(0u, 13038u, 4294967295u, 50436u), 934f, -1000f), false), Struct_2(vec3<i32>(38267i, -22458i, 25606i), Struct_1(vec4<u32>(0u, 1u, 46449u, 8311u), 343f, -1318f), false), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 54375i), Struct_1(vec4<u32>(0u, 4294967295u, 23540u, 18957u), 548f, -971f), false), Struct_2(vec3<i32>(0i, -21875i, -1i), Struct_1(vec4<u32>(30938u, 0u, 4294967295u, 0u), -885f, -479f), false), Struct_2(vec3<i32>(-1i, 0i, -15997i), Struct_1(vec4<u32>(0u, 61617u, 4614u, 84210u), -3532f, 1078f), true), Struct_2(vec3<i32>(-23765i, i32(-2147483648), i32(-2147483648)), Struct_1(vec4<u32>(1u, 52546u, 1u, 1u), -703f, -1213f), false), Struct_2(vec3<i32>(889i, -77603i, -15738i), Struct_1(vec4<u32>(1u, 0u, 77612u, 0u), -803f, 1490f), false), Struct_2(vec3<i32>(0i, 22332i, 1i), Struct_1(vec4<u32>(4294967295u, 108227u, 4294967295u, 1u), 2353f, 1897f), true), Struct_2(vec3<i32>(1i, -1i, 10616i), Struct_1(vec4<u32>(35157u, 0u, 22912u, 1u), -1000f, -1000f), false), Struct_2(vec3<i32>(21403i, -32034i, 1i), Struct_1(vec4<u32>(4294967295u, 36833u, 0u, 36385u), 1376f, -291f), false), Struct_2(vec3<i32>(2147483647i, 2147483647i, 15190i), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), -338f, -346f), false), Struct_2(vec3<i32>(37192i, 28177i, -19908i), Struct_1(vec4<u32>(35103u, 0u, 12499u, 40257u), -380f, 1000f), true), Struct_2(vec3<i32>(18986i, -3470i, 52431i), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), 503f, -387f), false), Struct_2(vec3<i32>(14692i, -50683i, 1i), Struct_1(vec4<u32>(4294967295u, 5285u, 7919u, 4294967295u), -1199f, -1341f), true), Struct_2(vec3<i32>(-1i, i32(-2147483648), 7723i), Struct_1(vec4<u32>(1u, 1655u, 1u, 1u), -1059f, 1000f), true), Struct_2(vec3<i32>(0i, -1i, -53368i), Struct_1(vec4<u32>(4294967295u, 3010u, 37501u, 90763u), -498f, -1802f), true), Struct_2(vec3<i32>(-1i, 0i, -11392i), Struct_1(vec4<u32>(4294967295u, 44543u, 1u, 27179u), 190f, -1959f), true), Struct_2(vec3<i32>(-11039i, 2147483647i, 1i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 28417u, 4294967295u), -833f, 479f), true), Struct_2(vec3<i32>(18249i, -1i, 2147483647i), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 33372u), 945f, -447f), true), Struct_2(vec3<i32>(-5548i, -55481i, i32(-2147483648)), Struct_1(vec4<u32>(0u, 1u, 42862u, 56485u), 365f, 292f), true), Struct_2(vec3<i32>(-1i, 18148i, i32(-2147483648)), Struct_1(vec4<u32>(86006u, 4294967295u, 12460u, 4294967295u), -323f, -1741f), false), Struct_2(vec3<i32>(-40222i, 1i, 1i), Struct_1(vec4<u32>(4294967295u, 1u, 49807u, 0u), -542f, -701f), true), Struct_2(vec3<i32>(-20724i, 6964i, -27257i), Struct_1(vec4<u32>(13681u, 1u, 0u, 1947u), -604f, 499f), true), Struct_2(vec3<i32>(i32(-2147483648), -23975i, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 10496u, 1u, 0u), -1912f, -493f), true), Struct_2(vec3<i32>(-2571i, -23842i, 51057i), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 64899u), 861f, -527f), false));

var<private> global1: Struct_3;

var<private> global2: i32 = 1i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> Struct_1 {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))) >= _wgslsmith_f_op_f32(-global1.b.b.c));
    let var_1 = global1.b;
    let var_2 = _wgslsmith_mod_u32(10307u, var_1.b.a.x);
    let var_3 = true;
    global0 = array<Struct_2, 31>();
    return global1.d.b;
}

fn func_2() -> Struct_2 {
    global2 = 19875i;
    let var_0 = -1196f;
    return global1.b;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<Struct_2, 31>();
    global1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d.b.c))))), func_2(), vec3<f32>(arg_0.d.b.b, arg_1.b, _wgslsmith_f_op_f32(global1.b.b.b * -2910f)), Struct_2((abs(vec3<i32>(-1i, -11257i, 70029i)) >> (vec3<u32>(arg_0.b.b.a.x, global1.d.b.a.x, arg_0.b.b.a.x) % vec3<u32>(32u))) ^ vec3<i32>(-global1.d.a.x, _wgslsmith_mod_i32(20273i, -2147483647i), _wgslsmith_dot_vec3_i32(arg_0.d.a, vec3<i32>(1i, global1.b.a.x, global1.d.a.x))), arg_1, _wgslsmith_f_op_f32(-arg_0.a) >= -421f));
    let var_0 = arg_1.b;
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(32821u, 4294967295u) | ~arg_1.a.x, u_input.a.x, arg_1.a.x, ~_wgslsmith_dot_vec3_u32(global1.d.b.a.xyz, vec3<u32>(4294967295u, u_input.c.x, 36449u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -624f))), var_0, !arg_0.d.c))), _wgslsmith_f_op_f32(ceil(arg_0.b.b.c)));
    global0 = array<Struct_2, 31>();
    return select(!select(!vec2<bool>(false, arg_0.b.c), select(select(vec2<bool>(false, arg_0.b.c), vec2<bool>(true, global1.d.c), vec2<bool>(false, true)), select(vec2<bool>(arg_0.d.c, false), vec2<bool>(true, false), arg_0.d.c), false), vec2<bool>(false, func_2().c)), !vec2<bool>(arg_0.b.c, true), select(select(!vec2<bool>(true, global1.b.c), select(select(vec2<bool>(true, arg_0.b.c), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(global1.b.c, global1.d.c), all(vec3<bool>(false, true, global1.b.c))), !(arg_0.d.c | global1.d.c)), !select(vec2<bool>(true, true), !vec2<bool>(global1.d.c, global1.b.c), global1.b.c || true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(!vec2<bool>(true, global1.d.c), select(vec2<bool>(arg_0.b.c, false), vec2<bool>(true, arg_0.d.c), false), true))));
}

fn func_4(arg_0: vec2<bool>) -> vec3<i32> {
    global1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-153f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1309f)) * -405f)))), global1.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(678f - 148f), _wgslsmith_f_op_f32(round(global1.d.b.c)), _wgslsmith_f_op_f32(-global1.b.b.b)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 718f, global1.c.x) + vec3<f32>(1000f, -443f, 406f)), global1.c)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-412f * global1.c.x), -105f, global1.a))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(16844u, global1.b.b.a.x, u_input.a.x, 13438u), vec4<u32>(u_input.a.x, 44581u, global1.b.b.a.x, global1.d.b.a.x))), ~(~(vec4<u32>(0u, global1.b.b.a.x, global1.b.b.a.x, u_input.c.x) << (vec4<u32>(1u, global1.b.b.a.x, u_input.c.x, 36515u) % vec4<u32>(32u))))), 31u)]);
    global0 = array<Struct_2, 31>();
    let var_0 = Struct_3(global1.b.b.c, Struct_2(vec3<i32>(~(-global1.d.a.x), global1.d.a.x, _wgslsmith_clamp_i32(select(global1.d.a.x, 1i, arg_0.x), ~global1.d.a.x, _wgslsmith_div_i32(global1.b.a.x, -1i))), global1.b.b, 2147483647i != -global1.d.a.x), global1.c, Struct_2(vec3<i32>(1i, global1.d.a.x, ~1550i) << (~(~vec3<u32>(3604u, 28446u, global1.b.b.a.x)) % vec3<u32>(32u)), global1.b.b, all(!vec2<bool>(arg_0.x, true))));
    let var_1 = select(vec4<bool>(~u_input.c.x == global1.d.b.a.x, all(vec3<bool>(any(vec4<bool>(global1.d.c, arg_0.x, true, false)), all(vec4<bool>(false, false, global1.d.c, true)), true)), true, global1.d.a.x != -42303i), vec4<bool>(!(-2114f <= _wgslsmith_f_op_f32(max(255f, var_0.d.b.b))), arg_0.x, var_0.b.c, !any(vec2<bool>(true, false))), all(!vec3<bool>(false, false, any(vec4<bool>(true, true, false, false)))));
    let var_2 = _wgslsmith_add_u32(func_1().a.x, min(var_0.b.b.a.x, ~4294967295u));
    return countOneBits(reverseBits(countOneBits(vec3<i32>(i32(-1i) * -57167i, 0i & global1.b.a.x, var_0.d.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(227f, Struct_2(max(~(-global1.d.a), global1.d.a), func_1(), (global1.b.b.b <= 291f) != true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1074f, _wgslsmith_f_op_f32(max(global1.a, global1.b.b.c)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2001f * _wgslsmith_f_op_f32(global1.d.b.b + -627f)), -182f, true)), -379f), func_2());
    var var_1 = 0i;
    let var_2 = max(_wgslsmith_mod_u32(global1.b.b.a.x, ~1u), 4294967295u);
    let var_3 = func_2().c;
    let var_4 = global0[_wgslsmith_index_u32(~var_2, 31u)];
    global2 = var_4.a.x;
    let var_5 = Struct_2(_wgslsmith_clamp_vec3_i32(func_4(select(vec2<bool>(var_4.c, false), func_3(Struct_3(global1.c.x, Struct_2(vec3<i32>(2147483647i, 35632i, 36940i), var_0.d.b, false), global1.c, global1.d), Struct_1(vec4<u32>(65144u, u_input.b, 1u, 1u), -400f, -856f)), vec2<bool>(true, false))), var_0.d.a ^ vec3<i32>(-12863i, -2147483647i, min(var_0.d.a.x, var_4.a.x)), var_0.b.a), var_0.b.b, all(vec4<bool>(true, func_3(Struct_3(-613f, Struct_2(vec3<i32>(global1.d.a.x, var_0.b.a.x, 2147483647i), Struct_1(vec4<u32>(4294967295u, var_0.d.b.a.x, u_input.c.x, 1u), -470f, var_4.b.c), true), vec3<f32>(228f, var_0.b.b.b, 1741f), Struct_2(vec3<i32>(27211i, var_0.d.a.x, -1i), var_0.d.b, true)), Struct_1(global1.d.b.a, -1185f, 266f)).x, global1.b.b.c > _wgslsmith_f_op_f32(floor(-1892f)), !global1.d.c)));
    let var_6 = func_1();
    let var_7 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(228f + var_5.b.c), _wgslsmith_f_op_f32(var_0.d.b.c * var_5.b.b), func_3(var_0, global1.b.b).x))) * _wgslsmith_div_f32(func_2().b.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.x))))), global1.b, global1.c, Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~global1.b.a, var_4.a, vec3<i32>(-42458i, 20470i, 1i)), ~vec3<i32>(-1i, 5731i, var_4.a.x) ^ var_4.a, vec3<i32>(-1i, var_4.a.x, func_4(vec2<bool>(false, false)).x)), var_5.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1909f - 913f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.b.b.b)), _wgslsmith_f_op_f32(-var_4.b.b), -1997f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.c.x + 508f), _wgslsmith_f_op_f32(-global1.a), 2082f, _wgslsmith_f_op_f32(round(1101f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.b.b, -333f, 152f, var_6.c) * vec4<f32>(var_0.d.b.c, 685f, var_5.b.b, 163f))))), -2147483647i, ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -var_7.b.a.x, 2147483647i, firstTrailingBit(-32917i)), -vec4<i32>(0i, var_5.a.x, -1i, -3604i)), _wgslsmith_clamp_i32(var_7.d.a.x, 12023i, 0i), vec3<f32>(_wgslsmith_f_op_f32(-func_1().c), 539f, global1.a));
}

