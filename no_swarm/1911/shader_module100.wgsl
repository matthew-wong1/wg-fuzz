struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-429f, -354f, -1000f, 437f);

var<private> global1: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(1000f, 1068f, 1000f), vec3<f32>(-143f, -486f, 1584f), vec3<f32>(-834f, 1288f, -2102f), vec3<f32>(-1381f, -1042f, -1127f), vec3<f32>(-762f, -243f, -309f), vec3<f32>(392f, -930f, 644f), vec3<f32>(560f, 1244f, -480f), vec3<f32>(-654f, -1000f, -2051f), vec3<f32>(-1025f, -822f, -956f), vec3<f32>(-294f, -1823f, -259f), vec3<f32>(1019f, -1008f, -1110f), vec3<f32>(963f, 1026f, -333f), vec3<f32>(1191f, -1000f, -266f), vec3<f32>(2529f, 170f, 610f), vec3<f32>(-1000f, -189f, 647f), vec3<f32>(2440f, -361f, -366f), vec3<f32>(-405f, -266f, 1294f), vec3<f32>(-334f, 231f, -660f), vec3<f32>(566f, 1657f, -114f), vec3<f32>(1874f, 1504f, -1000f));

var<private> global2: Struct_4 = Struct_4(6077u, vec2<bool>(false, false), -2657f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    return (u_input.e << (u_input.d.x % 32u)) <= _wgslsmith_div_i32(u_input.e, -(~u_input.e));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = ~_wgslsmith_add_u32(u_input.d.x, (4294967295u | ~var_0.a.a) ^ 0u);
    let var_2 = global2.c;
    var var_3 = _wgslsmith_div_u32(~(~(~firstTrailingBit(0u))), global2.a);
    var var_4 = Struct_4(22575u, vec2<bool>(!select(func_3(false), true, all(global2.b)), all(vec4<bool>(true, true, !arg_1.a.d, var_0.a.c.x <= arg_1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -1155f) + -739f));
    return var_4.b;
}

fn func_1() -> f32 {
    var var_0 = Struct_2(vec4<i32>(select((-1i << (u_input.b % 32u)) >> (~10352u % 32u), -926i >> (u_input.d.x % 32u), u_input.e > (u_input.e << (4294967295u % 32u))), u_input.e, -1i, 0i), Struct_1(14102u & _wgslsmith_clamp_u32(~37312u, _wgslsmith_dot_vec3_u32(vec3<u32>(26559u, u_input.c, global2.a), vec3<u32>(27376u, global2.a, global2.a)), 8376u), any(vec4<bool>(global2.b.x, u_input.e != u_input.e, global2.b.x, false)), ~(vec3<i32>(20917i, -1i, -1i) >> (~vec3<u32>(u_input.b, u_input.c, 0u) % vec3<u32>(32u))), any(select(!vec2<bool>(global2.b.x, global2.b.x), vec2<bool>(false, true), func_2(vec3<u32>(global2.a, global2.a, global2.a), Struct_5(Struct_1(u_input.b, global2.b.x, vec3<i32>(1i, 0i, u_input.e), global2.b.x, vec3<i32>(3039i, -30557i, u_input.e)))))), countOneBits(vec3<i32>(-23231i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.e), vec2<i32>(u_input.e, 42994i)), abs(u_input.e)))), Struct_1(~_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_add_vec4_u32(u_input.d, u_input.d)), global0.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + _wgslsmith_f_op_f32(select(-1008f, global0.x, true))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, -26273i), vec3<i32>(-21380i, 1i, -7334i)), func_3(!(global2.b.x & global2.b.x)), vec3<i32>(_wgslsmith_clamp_i32(u_input.e, ~u_input.e, ~u_input.e), ~(-55267i), u_input.e)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, global2.c)))), _wgslsmith_f_op_f32(-1878f - global0.x), _wgslsmith_f_op_f32(-1116f - 1035f)), 1047f);
    let var_1 = Struct_3(global2.b.x, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(var_0.b.d, false, false), !global2.b.x), var_0.c.b));
    let var_2 = Struct_1(u_input.a, var_0.c.d, _wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 2147483647i), var_0.b.e.xz), -17517i, u_input.e), vec3<i32>(28422i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.e, -50127i, u_input.e), var_0.b.e.x), 18598i)), _wgslsmith_f_op_f32(981f - global2.c) != _wgslsmith_f_op_f32(1300f * var_0.d.x), var_0.a.zzy);
    var_0 = Struct_2(-_wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(-2147483647i, -74449i, -43670i, 4707i)), abs(vec4<i32>(u_input.e, 0i, var_2.e.x, u_input.e)), var_0.a), var_0.b, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.a, ~4745u, abs(22065u), 4294967295u), u_input.d), true, abs(countOneBits(vec3<i32>(-1i, var_2.c.x, 2147483647i))), true, ~vec3<i32>(u_input.e, var_2.c.x << (0u % 32u), -1i)), global0.xww, global2.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1497f)) - _wgslsmith_f_op_f32(trunc(var_0.d.x)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, global2.c), _wgslsmith_f_op_f32(535f * global0.x))), -424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * global2.c) + _wgslsmith_f_op_f32(max(global2.c, -1149f))), _wgslsmith_f_op_f32(exp2(global0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global2.c, global0.x, global2.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global2.c, -634f, 740f) * vec4<f32>(1297f, global2.c, -1789f, 617f)))) * vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(global2.c * 1000f), -879f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, 1316f, 1367f, global2.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global2.c, -1572f, -812f) - vec4<f32>(3074f, global0.x, -327f, global2.c))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1074f, 171f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(921f, -839f, 796f, global0.x))))));
    global2 = Struct_4(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(global2.a, ~u_input.a), ~(~reverseBits(global2.a))), vec2<bool>(!(!any(vec3<bool>(true, global2.b.x, global2.b.x))), true), global0.x);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)), -481f, -378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1693f * global2.c), _wgslsmith_f_op_f32(-576f * global2.c)), global2.c, 1000f)));
    let var_1 = true;
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec3_u32(~u_input.d.wzy, u_input.d.xwx));
    global1 = array<vec3<f32>, 20>();
    var var_3 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, u_input.e, global0.yxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -1513f) * _wgslsmith_f_op_f32(trunc(1f))) * var_0.x));
}

