struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec3<u32>(58214u, 4294967295u, 0u)), Struct_3(vec3<u32>(28843u, 1u, 4294967295u)), Struct_3(vec3<u32>(29468u, 1u, 1u)), Struct_3(vec3<u32>(19420u, 0u, 4294967295u)), Struct_3(vec3<u32>(1u, 1u, 15491u)), Struct_3(vec3<u32>(40570u, 0u, 1u)), Struct_3(vec3<u32>(7734u, 17839u, 361u)), Struct_3(vec3<u32>(89198u, 4294967295u, 0u)), Struct_3(vec3<u32>(11950u, 0u, 25620u)), Struct_3(vec3<u32>(16005u, 107124u, 58639u)), Struct_3(vec3<u32>(0u, 1u, 7655u)), Struct_3(vec3<u32>(98400u, 4294967295u, 32380u)), Struct_3(vec3<u32>(19407u, 4294967295u, 14603u)), Struct_3(vec3<u32>(1u, 1u, 73300u)), Struct_3(vec3<u32>(9409u, 45144u, 12464u)), Struct_3(vec3<u32>(32063u, 4294967295u, 1u)), Struct_3(vec3<u32>(850u, 4294967295u, 26828u)), Struct_3(vec3<u32>(0u, 48144u, 0u)), Struct_3(vec3<u32>(11412u, 29375u, 0u)), Struct_3(vec3<u32>(9538u, 0u, 1u)), Struct_3(vec3<u32>(31215u, 0u, 56199u)), Struct_3(vec3<u32>(1u, 0u, 0u)), Struct_3(vec3<u32>(4294967295u, 5817u, 1u)), Struct_3(vec3<u32>(15123u, 35281u, 1u)), Struct_3(vec3<u32>(32546u, 0u, 20296u)), Struct_3(vec3<u32>(16245u, 4294967295u, 0u)), Struct_3(vec3<u32>(4294967295u, 28497u, 4294967295u)), Struct_3(vec3<u32>(1u, 0u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 22736u, 82717u)), Struct_3(vec3<u32>(38058u, 4294967295u, 1u)));

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-998f, -1610f, -1000f), vec3<i32>(0i, 2364i, 1i), vec4<u32>(1u, 10694u, 107650u, 1u), vec2<i32>(-1i, -28708i), i32(-2147483648));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<i32> {
    var var_0 = ~119782u;
    global0 = array<Struct_3, 30>();
    global1 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 659f, _wgslsmith_f_op_f32(-global2.a.x), 1130f)))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -581f), -(~_wgslsmith_mult_i32(u_input.b.x | global2.d.x, -4778i)), select(select(vec2<bool>(arg_0.x, !arg_0.x), select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0, true), arg_0, true), select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, true), select(arg_0, arg_0, arg_0))), !select(vec2<bool>(true, true), arg_0, vec2<bool>(false, false)), arg_0), -vec4<i32>(~2147483647i, abs(u_input.b.x) ^ global2.b.x, 12926i, reverseBits(-global2.b.x)), arg_0.x);
    return ~var_2.d.xzw;
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_3, 30>();
    let var_0 = _wgslsmith_mult_i32(max(2952i, ~(-2147483647i)), ~(~u_input.b.x));
    var var_1 = global2.a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(sign(arg_0.d)), _wgslsmith_f_op_f32(max(var_1.x, 1210f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, arg_0.d))))), ~countOneBits(max(reverseBits(global2.b), func_3(vec2<bool>(false, true), global2.c))), ~(vec4<u32>(_wgslsmith_sub_u32(global2.c.x, 4294967295u), 60471u, global2.c.x, _wgslsmith_clamp_u32(0u, arg_0.c, 46218u)) & ~vec4<u32>(global2.c.x, 70728u, 1u, u_input.a)), arg_0.a.xx, countOneBits(-(select(u_input.b.x, 0i, arg_0.b) << (~u_input.c.x % 32u))));
    let var_3 = arg_0.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-774f, _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-var_1.x)))) * var_1.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_2(arg_1)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1618f * global2.a.x))), _wgslsmith_f_op_f32(round(arg_1.d))), _wgslsmith_f_op_f32(694f * _wgslsmith_f_op_f32(-833f * global2.a.x))));
    var var_1 = global2.a;
    var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, var_0.x, -809f))))));
    var var_2 = Struct_4(u_input.b.x <= -(~(-13544i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -803f, var_0.x) * vec3<f32>(var_0.x, -365f, global2.a.x)) - vec3<f32>(-525f, -904f, var_1.x))), -arg_1.a.zzz, global2.c, vec2<i32>(reverseBits(~u_input.b.x), u_input.b.x), u_input.b.x | _wgslsmith_div_i32(~0i, -39736i)));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(782f, global2.a.x, _wgslsmith_f_op_f32(var_2.b.a.x - 165f))))), _wgslsmith_sub_vec3_i32(firstTrailingBit(var_2.b.b), ~_wgslsmith_add_vec3_i32(arg_1.a.yyy, arg_1.a.wzy)), ~(~_wgslsmith_sub_vec4_u32(firstLeadingBit(var_2.b.c), max(var_2.b.c, global2.c))), u_input.b, u_input.b.x);
    return Struct_4(!var_2.a, var_2.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32) -> Struct_5 {
    let var_0 = global0[_wgslsmith_index_u32(~(~arg_1.b.c.x & _wgslsmith_dot_vec2_u32(arg_1.b.c.xx, global2.c.xx)), 30u)];
    let var_1 = select(select(select(vec3<bool>(false, 50227u <= arg_2, !arg_1.a), !select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, true, true), arg_1.a), select(!vec3<bool>(arg_1.a, false, arg_1.a), select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, true, true), vec3<bool>(true, arg_1.a, arg_1.a)), all(vec2<bool>(arg_1.a, true)))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, arg_1.a, arg_1.a), arg_1.a)), !select(select(vec3<bool>(true, false, true), vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, true)), select(vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, false, arg_1.a)), all(vec2<bool>(arg_1.a, arg_1.a)))), select(vec3<bool>(_wgslsmith_f_op_f32(global2.a.x * -428f) != _wgslsmith_f_op_f32(min(global2.a.x, global2.a.x)), !any(vec4<bool>(true, arg_1.a, true, true)), true), vec3<bool>(arg_1.a, _wgslsmith_div_u32(global2.c.x, u_input.c.x) > _wgslsmith_clamp_u32(arg_2, 1u, u_input.a), any(vec3<bool>(arg_1.a, true, false))), arg_1.a), false);
    var var_2 = Struct_3(vec3<u32>(~1u, ~35849u, 4294967295u));
    var var_3 = abs(arg_1.b.d.x);
    let var_4 = vec4<f32>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, -1206f);
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a.x)) * 545f)), reverseBits(countOneBits(~(-25076i))), select(vec2<bool>(false, all(!vec4<bool>(arg_1.a, false, true, arg_1.a))), !select(!vec2<bool>(var_1.x, true), vec2<bool>(true, true), select(vec2<bool>(var_1.x, arg_1.a), vec2<bool>(true, arg_1.a), false)), !(!vec2<bool>(var_1.x, var_1.x))), abs(select(~(vec4<i32>(arg_0.x, u_input.b.x, -41973i, 27161i) ^ vec4<i32>(-1i, arg_1.b.b.x, -2147483647i, arg_1.b.e)), firstLeadingBit(vec4<i32>(10135i, u_input.b.x, -1i, arg_0.x)), true)), _wgslsmith_dot_vec3_i32(global2.b >> ((vec3<u32>(arg_1.b.c.x, 0u, var_2.a.x) & u_input.c) % vec3<u32>(32u)), vec3<i32>(global2.d.x, max(22250i, arg_1.b.e), -61428i)) != _wgslsmith_mult_i32(5477i, u_input.b.x));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: u32) -> u32 {
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    var var_0 = _wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(u_input.b.x & func_4(arg_0.d.zzx, Struct_4(true, Struct_1(vec3<f32>(global2.a.x, global2.a.x, arg_0.a), arg_0.d.yyz, global2.c, vec2<i32>(arg_1, u_input.b.x), arg_0.b)), 15372u).b, arg_1, -13568i, u_input.b.x), arg_0.c.x, ~1u | u_input.a, _wgslsmith_f_op_f32(step(429f, global2.a.x)))));
    let var_1 = func_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_1, -1i), u_input.b.x) | _wgslsmith_div_i32(~global2.e, max(_wgslsmith_mult_i32(arg_0.b, arg_0.b), global2.b.x)), Struct_2(~arg_0.d, true && (961f != _wgslsmith_f_op_f32(max(201f, arg_0.a))), max(_wgslsmith_dot_vec4_u32(global2.c, reverseBits(vec4<u32>(1u, global2.c.x, arg_2, arg_2))), 0u), _wgslsmith_f_op_f32(abs(-1869f))), ~(-global2.e));
    let var_2 = ~var_1.b.c.x;
    return global2.c.x;
}

fn func_6(arg_0: vec4<u32>, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_1 {
    global1 = 4294967295u < (~_wgslsmith_sub_u32(global2.c.x & u_input.a, 4294967295u) & global2.c.x);
    global0 = array<Struct_3, 30>();
    let var_0 = Struct_2(-min(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, 48107i, arg_3), vec4<i32>(arg_2, global2.d.x, 2147483647i, u_input.b.x)), vec4<i32>(arg_2, arg_2, -1i, 0i)), any(!vec2<bool>(all(vec2<bool>(false, true)), true)), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(global2.a.x - arg_1))) + 381f)));
    return func_1(1i, Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-arg_2, -var_0.a.x, ~arg_2, arg_2), var_0.a), !(true || (801f != global2.a.x)), abs(~_wgslsmith_add_u32(global2.c.x, 1u)), _wgslsmith_f_op_f32(-var_0.d)), arg_2).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~(global2.c ^ global2.c), -1296f, ~global2.e << (func_5(func_4(vec3<i32>(2147483647i, 1i, global2.e), func_1(7475i, Struct_2(vec4<i32>(global2.d.x, 33623i, global2.e, u_input.b.x), true, 4294967295u, -1000f), 1i), u_input.a), 2147483647i, ~func_1(u_input.b.x, Struct_2(vec4<i32>(1i, global2.b.x, -30170i, 19603i), true, global2.c.x, -749f), u_input.b.x).b.c.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(16427i, func_3(vec2<bool>(false, true), global2.c).x << (func_1(-57800i, Struct_2(vec4<i32>(global2.e, 9123i, -41475i, 2147483647i), true, u_input.c.x, global2.a.x), -2147483647i).b.c.x % 32u), (global2.d.x << (1u % 32u)) & -2147483647i, reverseBits(_wgslsmith_sub_i32(-46942i, -63055i))), -(~vec4<i32>(-40734i, -27318i, -1i, u_input.b.x))));
    global1 = all(vec4<bool>(true, true, true, true));
    let var_1 = 15515u;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(trunc(658f)), 1i, vec2<bool>(func_4(var_0.b, func_1(13316i, Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, global2.b.x, -42825i), false, 1u, var_0.a.x), 6795i), var_0.c.x).c.x, true), abs(abs(vec4<i32>(u_input.b.x, u_input.b.x, 30588i, global2.d.x) << ((vec4<u32>(23341u, 24314u, var_0.c.x, global2.c.x) ^ var_0.c) % vec4<u32>(32u)))), !(true || ((2699i | global2.e) < -30705i)));
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2141f - var_2.a), global2.a.x, (true | var_2.e) | true)), _wgslsmith_f_op_f32(-626f * _wgslsmith_f_op_f32(var_2.a - -1082f)), func_6(~var_0.c, global2.a.x, (var_0.b.x & var_0.b.x) | ~var_2.d.x, 27177i).a.x), countOneBits(max(var_0.c ^ ~vec4<u32>(1u, 1u, global2.c.x, global2.c.x), var_0.c)), global2.b);
}

