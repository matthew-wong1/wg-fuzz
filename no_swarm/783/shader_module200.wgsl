struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
    d: Struct_3,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, true, false, true, true, false, false, true, true);

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(681f, 859f, -210f), vec3<f32>(-417f, -1852f, 590f), vec3<f32>(211f, -134f, 323f), vec3<f32>(-1860f, 192f, -288f), vec3<f32>(268f, 1701f, 110f), vec3<f32>(-2659f, 182f, -1088f), vec3<f32>(1237f, 1178f, 1057f), vec3<f32>(559f, -698f, 620f), vec3<f32>(676f, -554f, 212f), vec3<f32>(-156f, 773f, -1231f), vec3<f32>(677f, 862f, -118f), vec3<f32>(1317f, -776f, -1100f), vec3<f32>(1455f, 205f, -928f), vec3<f32>(-735f, -405f, -701f), vec3<f32>(-926f, -1125f, -783f), vec3<f32>(-283f, 780f, 330f), vec3<f32>(-816f, -678f, -267f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    var var_0 = any(!select(vec4<bool>(true, true & global0[_wgslsmith_index_u32(1u, 10u)], !global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)] && global0[_wgslsmith_index_u32(1u, 10u)]), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(4856u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(60609u, 10u)]), true), false), any(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(7870u, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], false, global0[_wgslsmith_index_u32(1u, 10u)])))));
    var var_1 = vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.b.x, u_input.b.x, 8788u) << (u_input.a % vec4<u32>(32u)), u_input.a));
    var var_2 = all(!vec2<bool>(!global0[_wgslsmith_index_u32(var_1.x >> (var_1.x % 32u), 10u)], global0[_wgslsmith_index_u32(0u, 10u)]));
    let var_3 = ~vec4<u32>(_wgslsmith_add_u32(var_1.x, ~(var_1.x >> (var_1.x % 32u))), ~1u, 0u, ~abs(25832u));
    var var_4 = _wgslsmith_f_op_f32(step(-518f, -376f));
    return vec4<bool>(any(vec3<bool>(8798i > u_input.d.x, true, false)) | true, _wgslsmith_f_op_f32(-628f * -404f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1629f)), -894f))), !any(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 10u)], global0[_wgslsmith_index_u32(11522u, 10u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(6061u, 10u)], false), global0[_wgslsmith_index_u32(var_3.x, 10u)])), global0[_wgslsmith_index_u32(10879u, 10u)]);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>) -> vec3<f32> {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_0 = select(!(!(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.b.c.x, 10u)], true, false)))), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x ^ ~(~arg_0.a.b.c.x), 10u)], true, all(vec2<bool>(true, true)), true), func_3());
    var var_1 = ~95420u;
    var var_2 = vec3<u32>(1u, 35978u, arg_0.b.a.c.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d.c.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, -962f, -336f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(sign(arg_0.a.x));
    var var_0 = arg_1;
    var_0 = arg_0.b;
    let var_1 = arg_0.a.x;
    var var_2 = min(_wgslsmith_mod_vec2_u32(u_input.a.xz, arg_1.c.zx), u_input.b);
    return Struct_3(Struct_1(true, vec4<i32>(-2147483647i, arg_0.c.b.x, ~47661i, 1i) & vec4<i32>(_wgslsmith_clamp_i32(arg_3.x, arg_1.b.x, arg_1.b.x), u_input.e.x, arg_1.b.x, _wgslsmith_clamp_i32(-1i, 28671i, 1i)), countOneBits(_wgslsmith_add_vec3_u32(~arg_0.c.c, var_0.c << (vec3<u32>(arg_2, 4294967295u, 1u) % vec3<u32>(32u))))), var_1, arg_0, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(arg_1.c.x, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)])))), Struct_1(arg_1.a || true, abs(arg_0.c.b), abs(countOneBits(arg_0.c.c))), Struct_1(global0[_wgslsmith_index_u32(abs(abs(1265u)), 10u)], -(~var_0.b), ~(~u_input.a.wzw))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = -2147483647i;
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(Struct_2(global2[_wgslsmith_index_u32(9700u, 17u)], Struct_1(false, vec4<i32>(-13181i, 1i, -16122i, 1i), vec3<u32>(u_input.a.x, u_input.a.x, 72994u)), Struct_1(false, vec4<i32>(-2147483647i, u_input.e.x, -31001i, -2147483647i), u_input.a.ywy)), Struct_3(Struct_1(true, vec4<i32>(-1i, u_input.d.x, u_input.c.x, u_input.e.x), vec3<u32>(49001u, u_input.b.x, 76701u)), 817f, Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], Struct_1(true, u_input.e, u_input.a.wyy), Struct_1(true, u_input.e, vec3<u32>(1070u, u_input.a.x, u_input.a.x))), Struct_2(vec3<f32>(arg_0, arg_0, arg_0), Struct_1(global0[_wgslsmith_index_u32(18551u, 10u)], u_input.e, u_input.a.yww), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], u_input.e, vec3<u32>(129322u, 4294967295u, u_input.b.x)))), -380f, Struct_3(Struct_1(global0[_wgslsmith_index_u32(69855u, 10u)], u_input.e, u_input.a.xxz), -854f, Struct_2(vec3<f32>(arg_0, arg_0, arg_0), Struct_1(false, vec4<i32>(19198i, -5811i, -38571i, -2147483647i), u_input.a.wwy), Struct_1(true, u_input.e, vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u))), Struct_2(vec3<f32>(arg_0, arg_0, 1167f), Struct_1(false, u_input.e, vec3<u32>(19744u, u_input.a.x, u_input.b.x)), Struct_1(global0[_wgslsmith_index_u32(125248u, 10u)], u_input.e, vec3<u32>(u_input.a.x, 19039u, u_input.a.x)))), vec3<f32>(-953f, arg_0, arg_0)), u_input.e)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, -1086f, arg_0))))), Struct_1((arg_0 > arg_0) | global0[_wgslsmith_index_u32(0u, 10u)], firstTrailingBit(u_input.e), ~vec3<u32>(4294967295u, 0u, 1u)), Struct_1(select(false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true) && true, -u_input.e, vec3<u32>(4294967295u | u_input.b.x, u_input.b.x << (u_input.b.x % 32u), ~41677u))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(u_input.b.x ^ u_input.b.x), 0u), 10u)], vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.e.x, u_input.d.x), u_input.d), _wgslsmith_sub_i32(min(2147483647i, 40150i), 2147483647i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, 2147483647i), 3152i), _wgslsmith_sub_i32(i32(-1i) * -1i, ~(-1i))), vec3<u32>(0u, ~countOneBits(28779u), 4294967295u)), 88u, -vec3<i32>(u_input.c.x, u_input.e.x, countOneBits(-12388i)));
    global0 = array<bool, 10>();
    let var_2 = func_3().xy;
    let var_3 = var_1.c.b;
    return func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(471f, var_1.c.a.x, -135f), vec3<f32>(arg_0, -720f, -392f), vec3<bool>(var_1.c.b.a, var_1.c.b.a, var_2.x))) + global2[_wgslsmith_index_u32(1u, 17u)]), var_1.d.c, var_1.d.b), Struct_1(false, var_3.b, vec3<u32>(29697u, firstTrailingBit(var_3.c.x), var_1.a.c.x ^ u_input.b.x) ^ (_wgslsmith_sub_vec3_u32(u_input.a.xxx, vec3<u32>(85535u, var_3.c.x, 5703u)) & var_3.c)), func_4(func_4(var_1.c, func_4(var_1.d, Struct_1(var_1.d.c.a, var_3.b, vec3<u32>(u_input.b.x, 1u, 4294967295u)), 1u, vec3<i32>(var_3.b.x, var_1.c.b.b.x, u_input.e.x)).c.b, 1u, u_input.d.xzy).d, var_3, func_4(Struct_2(vec3<f32>(arg_0, arg_0, var_1.c.a.x), Struct_1(global0[_wgslsmith_index_u32(78594u, 10u)], vec4<i32>(-18554i, u_input.e.x, var_3.b.x, 0i), var_1.a.c), Struct_1(var_2.x, var_3.b, vec3<u32>(14893u, var_3.c.x, 1u))), Struct_1(var_2.x, vec4<i32>(var_3.b.x, 23431i, var_1.c.b.b.x, var_3.b.x), u_input.a.zww), 47806u, var_1.d.c.b.xxw).d.c.c.x, ~vec3<i32>(42919i, u_input.e.x, -9666i) | abs(vec3<i32>(18913i, 2147483647i, -24922i))).a.c.x | _wgslsmith_dot_vec4_u32(vec4<u32>(31839u, 4294967295u, min(4294967295u, u_input.b.x), ~4294967295u), u_input.a), reverseBits(var_3.b.yww)).c.c;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> Struct_5 {
    let var_0 = -1934f;
    let var_1 = arg_2.b.x | _wgslsmith_sub_i32(abs(arg_2.b.x), 25295i);
    var var_2 = arg_0.d.a.x;
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 513f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_0.d.a.x)) - 1470f))));
    global2 = array<vec3<f32>, 17>();
    return Struct_5(Struct_2(vec3<f32>(var_0, -286f, _wgslsmith_f_op_f32(-659f - -173f)), arg_0.c.c, Struct_1(arg_0.c.c.a, ~vec4<i32>(2147483647i, arg_2.b.x, u_input.d.x, -22094i), u_input.a.xwx)), select(vec3<bool>(arg_2.a, arg_0.a.a, func_3().x), vec3<bool>((false == arg_2.a) && arg_2.a, true, any(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.c.b.a, false, true), arg_2.a))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, arg_0.c.b.a, arg_0.a.a), all(vec4<bool>(arg_2.a, true, true, false)), func_1(-1000f).a), select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.c.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.a.a), vec3<bool>(arg_0.d.c.a, true, false)), !vec3<bool>(arg_2.a, arg_2.a, arg_2.a), select(vec3<bool>(true, true, arg_0.a.a), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], arg_0.c.b.a, false), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 10u)], false))))), vec2<i32>(_wgslsmith_sub_i32(-2147483647i, -16400i), 0i), ~vec3<u32>(1u, countOneBits(max(arg_2.c.x, 4294967295u)), abs(1u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -527f) + -380f), _wgslsmith_f_op_f32(func_4(Struct_2(vec3<f32>(var_0, 1020f, arg_0.b), arg_2, Struct_1(false, vec4<i32>(var_1, u_input.c.x, u_input.c.x, -21189i), vec3<u32>(1u, 23380u, arg_0.c.b.c.x))), Struct_1(true, vec4<i32>(-2147483647i, -1i, arg_0.d.b.b.x, arg_2.b.x), u_input.a.yxy), u_input.a.x, vec3<i32>(arg_2.b.x, arg_0.a.b.x, arg_0.c.c.b.x)).c.a.x * arg_0.b), 3162f, _wgslsmith_f_op_f32(-arg_0.c.a.x)))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_1 {
    global1 = 431f;
    let var_0 = func_5(Struct_3(Struct_1(arg_1.a.c.a, ~u_input.d ^ vec4<i32>(arg_0.x, arg_1.c.x, u_input.d.x, -1i), vec3<u32>(~arg_1.d.x, 0u, ~u_input.a.x)), 1182f, func_5(Struct_3(arg_1.a.b, arg_1.e.x, Struct_2(vec3<f32>(-676f, arg_2.x, arg_2.x), arg_1.a.b, arg_1.a.c), arg_1.a), _wgslsmith_f_op_f32(-1680f - _wgslsmith_f_op_f32(-1262f * 1418f)), func_1(_wgslsmith_f_op_f32(318f + 842f))).a, func_5(Struct_3(Struct_1(false, vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 2147483647i), vec3<u32>(27789u, arg_1.d.x, arg_1.a.c.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1017f), Struct_2(arg_2.xwx, arg_1.a.b, arg_1.a.b), func_4(Struct_2(global2[_wgslsmith_index_u32(0u, 17u)], Struct_1(false, vec4<i32>(u_input.d.x, -1i, 3025i, -27299i), arg_1.a.c.c), arg_1.a.b), Struct_1(arg_1.b.x, vec4<i32>(arg_0.x, arg_1.c.x, 2147483647i, 1i), u_input.a.xwx), 43505u, arg_1.a.c.b.wzz).d), 134f, arg_1.a.b).a), _wgslsmith_f_op_f32(arg_1.e.x + -321f), arg_1.a.b).a;
    var var_1 = Struct_4(var_0, Struct_3(Struct_1(~var_0.b.c.x >= arg_1.a.c.c.x, vec4<i32>(var_0.c.b.x, _wgslsmith_mult_i32(arg_1.a.b.b.x, -58434i), var_0.b.b.x | -21765i, -1i), vec3<u32>(4294967295u, arg_1.d.x, var_0.c.c.x) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.c.x, var_0.b.c.x, 1u), vec3<u32>(1u, u_input.a.x, u_input.b.x), vec3<u32>(arg_1.a.c.c.x, 4294967295u, var_0.c.c.x))), _wgslsmith_f_op_f32(arg_1.e.x * -1699f), Struct_2(_wgslsmith_div_vec3_f32(arg_1.a.a, _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(-1302f, var_0.a.x, 1015f))), func_4(Struct_2(vec3<f32>(314f, -707f, var_0.a.x), arg_1.a.b, Struct_1(global0[_wgslsmith_index_u32(0u, 10u)], vec4<i32>(21379i, 2147483647i, arg_1.c.x, -2147483647i), var_0.b.c)), Struct_1(arg_1.b.x, var_0.c.b, vec3<u32>(11755u, 4294967295u, arg_1.a.b.c.x)), 2826u, abs(vec3<i32>(-19596i, arg_0.x, 0i))).a, Struct_1(true, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.c.b.x, arg_0.x, u_input.d.x), arg_0), arg_1.a.b.c)), func_5(func_4(func_4(Struct_2(vec3<f32>(1404f, var_0.a.x, 158f), Struct_1(var_0.c.a, var_0.c.b, vec3<u32>(1u, arg_1.a.b.c.x, u_input.b.x)), arg_1.a.c), Struct_1(var_0.b.a, vec4<i32>(arg_0.x, 1i, var_0.c.b.x, 2147483647i), arg_1.a.c.c), 1u, vec3<i32>(var_0.c.b.x, 24129i, 1i)).d, arg_1.a.c, var_0.c.c.x, var_0.b.b.xwx), -347f, func_1(_wgslsmith_div_f32(278f, 647f))).a), _wgslsmith_f_op_f32(exp2(1f)), Struct_3(arg_1.a.b, arg_1.e.x, func_5(func_4(var_0, Struct_1(false, vec4<i32>(arg_1.c.x, u_input.c.x, -2147483647i, arg_0.x), vec3<u32>(var_0.c.c.x, var_0.c.c.x, 1u)), _wgslsmith_mod_u32(arg_1.a.b.c.x, arg_1.d.x), ~vec3<i32>(-10093i, arg_0.x, var_0.b.b.x)), 149f, arg_1.a.c).a, Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.x, arg_2.x, arg_2.x))), func_4(func_4(arg_1.a, arg_1.a.c, 0u, vec3<i32>(1i, -2147483647i, arg_0.x)).c, func_5(Struct_3(Struct_1(arg_1.b.x, arg_0, vec3<u32>(var_0.b.c.x, u_input.a.x, 64068u)), 110f, arg_1.a, arg_1.a), 1535f, var_0.b).a.c, ~0u, var_0.c.b.wzz).c.c, func_4(func_4(Struct_2(var_0.a, Struct_1(var_0.c.a, vec4<i32>(-1i, 1i, arg_1.c.x, -150i), vec3<u32>(u_input.b.x, var_0.b.c.x, arg_1.d.x)), Struct_1(false, var_0.c.b, vec3<u32>(0u, arg_1.a.b.c.x, 82423u))), Struct_1(arg_1.a.b.a, arg_0, arg_1.a.b.c), 10163u, vec3<i32>(arg_1.c.x, -2147483647i, -1i)).c, func_5(Struct_3(arg_1.a.c, -1920f, arg_1.a, arg_1.a), -405f, arg_1.a.c).a.c, u_input.a.x, arg_1.a.c.b.wzx).a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.e.x, var_0.a.x), arg_1.a.a.x, _wgslsmith_f_op_f32(arg_2.x * -1682f))) + _wgslsmith_f_op_vec3_f32(-var_0.a)));
    global2 = array<vec3<f32>, 17>();
    var var_2 = var_1.d;
    return var_2.d.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -2927f);
    let var_0 = i32(-1i) * -u_input.d.x;
    let var_1 = !vec3<bool>(any(select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), true)), false, _wgslsmith_add_i32(var_0, 1i) > 19886i);
    global1 = 714f;
    global0 = array<bool, 10>();
    let var_2 = func_6((vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(2147483647i, u_input.d.x, 2147483647i, u_input.d.x))) ^ vec4<i32>(_wgslsmith_clamp_i32(0i, var_0, var_0 & 0i), countOneBits(u_input.e.x) << (31767u % 32u), -(var_0 ^ var_0), var_0), func_5(Struct_3(Struct_1(var_1.x, _wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(0i, var_0, var_0, var_0)), vec3<u32>(u_input.a.x, 33689u, 1u) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-496f - _wgslsmith_f_op_f32(ceil(453f))), Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(877f, -1048f, 929f), global2[_wgslsmith_index_u32(u_input.a.x, 17u)])), Struct_1(false, vec4<i32>(u_input.d.x, 17471i, u_input.d.x, 18375i), u_input.a.xzz), Struct_1(var_1.x, u_input.d, vec3<u32>(u_input.a.x, 1u, u_input.b.x))), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 1u, 10381u)), 17u)], Struct_1(global0[_wgslsmith_index_u32(0u, 10u)], u_input.e, u_input.a.yxz), Struct_1(global0[_wgslsmith_index_u32(11338u, 10u)], vec4<i32>(2147483647i, u_input.e.x, -12686i, -1i), vec3<u32>(u_input.b.x, 0u, u_input.a.x)))), 273f, func_1(1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1431f, -127f, 899f, 1000f))), vec4<f32>(_wgslsmith_div_f32(-629f, 210f), 1214f, _wgslsmith_f_op_f32(ceil(120f)), _wgslsmith_f_op_f32(f32(-1f) * -566f))) * vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2299f, -1002f)) + _wgslsmith_f_op_f32(704f + 1177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1632f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1113f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, 100f, u_input.a, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(Struct_2(vec3<f32>(-618f, 383f, 1085f), var_2, var_2), Struct_3(var_2, -1161f, Struct_2(vec3<f32>(-360f, -390f, 184f), var_2, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], vec4<i32>(var_2.b.x, u_input.e.x, -1i, 41549i), u_input.a.yxw)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], var_2, Struct_1(var_2.a, var_2.b, vec3<u32>(u_input.a.x, 4294967295u, 1u)))), -2550f, Struct_3(var_2, -1313f, Struct_2(vec3<f32>(840f, -806f, 1424f), var_2, var_2), Struct_2(global2[_wgslsmith_index_u32(0u, 17u)], var_2, var_2)), vec3<f32>(-562f, 428f, -414f)), min(vec4<i32>(var_0, 18022i, 49898i, 0i), vec4<i32>(12456i, u_input.e.x, var_0, u_input.e.x)))).x - _wgslsmith_f_op_f32(ceil(-624f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-460f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1162f - _wgslsmith_f_op_f32(f32(-1f) * -1376f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-778f - 703f)))))));
}

