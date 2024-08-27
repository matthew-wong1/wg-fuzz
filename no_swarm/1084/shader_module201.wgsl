struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-1606f, 1000f, -144f, 368f, -131f, -1364f, 241f, 1000f, -821f, -198f, -531f, -1075f, -127f, -1047f, 654f, -1811f, -231f, 1032f, -1424f, -1317f, -1032f, -388f, 1616f, -483f);

var<private> global1: array<Struct_4, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn func_3() -> bool {
    let var_0 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 47263u), countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 10601u), vec4<u32>(u_input.a.x, 4294967295u, 72331u, u_input.a.x))), ~u_input.a.x), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)));
    global1 = array<Struct_4, 7>();
    let var_1 = select(vec4<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), any(vec3<bool>(true, true, true)), false, !select(true, 262f != global0[_wgslsmith_index_u32(4294967295u, 24u)], true)), select(select(vec4<bool>(all(vec2<bool>(false, false)), true, all(vec2<bool>(false, false)), all(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), (global0[_wgslsmith_index_u32(u_input.a.x, 24u)] == global0[_wgslsmith_index_u32(var_0.x, 24u)]) && true), select(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), true), select(vec4<bool>(true, true, any(vec2<bool>(true, false)), true), vec4<bool>(false, true, all(vec2<bool>(false, true)), true), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true)))), select(vec4<bool>(false, firstTrailingBit(-1i) < 1i, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 750f)) > -571f, false), vec4<bool>(true, true, true, true), var_0.x == ~(u_input.a.x << (83176u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~u_input.a.x, 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1701f)))) + global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 24u)]))));
    global0 = array<f32, 24>();
    return true;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = u_input.a.x >> (~4294967295u % 32u);
    global0 = array<f32, 24>();
    let var_1 = Struct_3(select(false, func_3(), select(true, true, true)), Struct_2(abs(vec4<i32>(0i, arg_1.b, -8118i, -1i) | -arg_1.d), arg_1, arg_1), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(59426u, 24u)] - arg_1.c.x)) - _wgslsmith_div_f32(1000f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(arg_0.x, 1u, 1u, 1u)), 24u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.x + global0[_wgslsmith_index_u32(~29752u, 24u)]), _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.x, 24u)], arg_1.c.x), -448f)), _wgslsmith_f_op_f32(step(arg_1.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(33794u, 1u), 24u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(284f, -810f), _wgslsmith_f_op_f32(arg_1.c.x * -411f)))))), vec4<bool>(true & (select(true, true, true) && (arg_1.a.x <= arg_0.x)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true)), false, all(vec4<bool>(arg_0.x >= u_input.a.x, all(vec2<bool>(true, true)), false, arg_1.a.x != arg_1.a.x))));
    var var_2 = (~u_input.a.x ^ arg_0.x) | (~4294967295u | (arg_0.x ^ ~(~1u)));
    global1 = array<Struct_4, 7>();
    return Struct_4(max(~arg_0.wyx, vec3<u32>(106261u >> (1u % 32u), ~abs(0u), ~4294967295u)), var_1.b, ~(~u_input.a.x << (1u % 32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> i32 {
    var var_0 = arg_3.b.b;
    var var_1 = arg_3.b.b.e.ww;
    var var_2 = Struct_3(all(select(select(!vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), !vec2<bool>(arg_2, true)), vec2<bool>(true, arg_2), select(vec2<bool>(false, false), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), true), var_0.b != var_1.x))), arg_3.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_3.b.b.c.x)), _wgslsmith_f_op_f32(arg_3.b.b.c.x - 1166f), global0[_wgslsmith_index_u32(var_0.a.x, 24u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_3.c, 24u)], var_0.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.c.c.x, -1263f, 1930f, arg_3.b.c.c.x)))))), select(!select(select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(false, arg_2, true, arg_2)), select(vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), arg_2), arg_2), !(!(!vec4<bool>(false, arg_2, false, true))), vec4<bool>(all(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), arg_2)), ~0i < arg_3.b.c.e.x, true, -var_0.d.x == (arg_3.b.c.b ^ var_0.e.x))));
    var var_3 = var_0.d.x;
    global1 = array<Struct_4, 7>();
    return (_wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_3.b.c.e.x, 5170i, 42819i, arg_1)), func_2(arg_0, arg_3.b.c).b.b.e) | ~(~(-2147483647i))) | _wgslsmith_mult_i32(max(-1i, i32(-1i) * -21193i), var_0.d.x);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = -func_4(~_wgslsmith_mult_vec4_u32(vec4<u32>(55098u, 19515u, 29824u, 101u), vec4<u32>(39644u, u_input.a.x, 4294967295u, arg_0)), -(~(-2147483647i)), true, func_2(abs(vec4<u32>(u_input.a.x, arg_0, 4294967295u, 35504u)) & ~vec4<u32>(4294967295u, 19406u, 1u, 1u), Struct_1(~vec3<u32>(1u, u_input.a.x, u_input.a.x), -1i, vec3<f32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<i32>(31821i, 40151i, 261i, 0i), vec4<i32>(-43026i, -5330i, -2147483647i, -1i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 24u)] * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~89328u, 24u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0, 24u)], global0[_wgslsmith_index_u32(arg_0, 24u)])))) - _wgslsmith_f_op_f32(trunc(-286f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_0, 24u)])), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1848f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 24u)], -2617f)))))));
    var_1 = global0[_wgslsmith_index_u32(70794u, 24u)];
    let var_3 = ~(-2147483647i);
    return func_2(_wgslsmith_div_vec4_u32(~vec4<u32>(15834u, func_2(vec4<u32>(u_input.a.x, arg_0, arg_0, 55574u), Struct_1(u_input.a, var_0, vec3<f32>(-1000f, var_2.x, var_2.x), vec4<i32>(14902i, var_3, -30368i, 0i), vec4<i32>(var_3, var_3, 59602i, -52714i))).c, arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 70422u, 1u, 4294967295u), vec4<u32>(19279u, 0u, u_input.a.x, u_input.a.x))), ~vec4<u32>(~arg_0, ~17719u, u_input.a.x & u_input.a.x, u_input.a.x)), Struct_1(~vec3<u32>(u_input.a.x, 0u, 18224u) | abs(vec3<u32>(64480u, 0u, u_input.a.x)), select(~var_0, ~abs(-22852i), true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 630f, 363f))))), ~(-(~vec4<i32>(var_3, var_0, var_0, var_0))), vec4<i32>(~var_0 & _wgslsmith_sub_i32(27815i, var_0), func_2(countOneBits(vec4<u32>(arg_0, 84758u, 30012u, arg_0)), Struct_1(vec3<u32>(arg_0, arg_0, u_input.a.x), -21043i, vec3<f32>(-2025f, global0[_wgslsmith_index_u32(0u, 24u)], -433f), vec4<i32>(var_3, 1i, 2408i, var_3), vec4<i32>(var_3, -13708i, -2147483647i, 2147483647i))).b.c.d.x, countOneBits(-4247i), max(~31169i, max(var_3, 1i))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, ~u_input.a.x) & 16404u;
    global0 = array<f32, 24>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 24u)])))));
    let var_2 = func_1(var_0);
    var var_3 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(4294967295u), ~4294967295u, _wgslsmith_div_u32(109027u, 1u)) ^ u_input.a, ~(~var_2.c.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~var_2.b.a.x, 24u)], var_2.b.c.x, var_2.c.c.x, _wgslsmith_f_op_f32(-381f + -1394f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b.c.x, 174f, global0[_wgslsmith_index_u32(var_3.x, 24u)], 1165f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_2.c.a.x, 24u)])) + _wgslsmith_f_op_f32(var_1 - 1449f)), var_1, 312f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(734f, var_1) - _wgslsmith_f_op_f32(-var_2.b.c.x))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(70269u, 24u)]))), _wgslsmith_f_op_f32(min(var_2.b.c.x, 954f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1797f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -549f))))), (any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)) && true) && any(vec2<bool>(true, any(vec3<bool>(true, true, false))))));
    let var_5 = ~var_3.x < var_3.x;
    let var_6 = func_1(var_3.x).b.a.x;
    var var_7 = Struct_2(vec4<i32>(func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_6, 38347u, var_0), vec4<u32>(u_input.a.x, 97404u, 14702u, 4294967295u), vec4<u32>(0u, 12917u, 18881u, 1784u)) >> (reverseBits(vec4<u32>(u_input.a.x, var_0, var_6, u_input.a.x)) % vec4<u32>(32u)), 1i, true, Struct_4(max(vec3<u32>(var_0, 76710u, var_2.c.a.x), var_2.b.a), func_2(vec4<u32>(1u, var_6, var_3.x, var_2.b.a.x), Struct_1(vec3<u32>(var_0, var_3.x, var_2.b.a.x), 1053i, vec3<f32>(979f, -1820f, 1300f), var_2.c.d, var_2.b.d)).b, var_2.b.a.x)), 1i, _wgslsmith_clamp_i32(-47290i, func_4(vec4<u32>(var_3.x, var_2.c.a.x, var_6, 78713u), var_2.a.x, true, Struct_4(vec3<u32>(u_input.a.x, 22804u, u_input.a.x), Struct_2(vec4<i32>(50492i, var_2.a.x, var_2.b.e.x, 2147483647i), Struct_1(var_2.c.a, var_2.a.x, vec3<f32>(-509f, var_1, var_2.c.c.x), vec4<i32>(-89013i, -25490i, var_2.b.d.x, 1i), var_2.b.d), var_2.c), 1u)), -1i), 1i), var_2.b, func_1(~(~var_0)).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(var_7.c.a.x, var_7.c.a.x, var_2.b.a.x, var_2.c.a.x), Struct_1(u_input.a, -2147483647i, vec3<f32>(188f, 428f, 1371f), vec4<i32>(var_7.c.d.x, 0i, var_2.b.b, var_7.a.x), vec4<i32>(var_2.b.b, var_7.b.e.x, var_2.a.x, -20484i))).b.b.c.x * _wgslsmith_f_op_f32(f32(-1f) * -300f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_7.c.c.x, var_7.c.c.x, var_4.x, var_4.x)), _wgslsmith_f_op_vec4_f32(exp2(var_4)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_5, true, var_5), vec4<bool>(true, true, var_5, var_5)))) * var_4));
}

