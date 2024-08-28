struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32>;

var<private> global2: i32 = 7041i;

var<private> global3: array<bool, 10> = array<bool, 10>(false, false, true, false, true, true, true, false, true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, ~u_input.b.x), u_input.b.wy);
}

fn func_2() -> Struct_3 {
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -875f));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1106f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1325f, global1.x) - vec2<f32>(global1.x, global1.x)))));
    var var_0 = Struct_4(Struct_3(u_input.c.x, abs(~u_input.b.x), Struct_1(vec4<u32>(1u | u_input.b.x, _wgslsmith_mult_u32(u_input.a, 49539u), 1u, u_input.b.x), 107240u), Struct_2(Struct_1(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.a, u_input.b.x, u_input.a, 1u)), 4294967295u), Struct_1(u_input.b, func_3()), _wgslsmith_f_op_f32(-global1.x), vec4<i32>(~(-1i), ~u_input.d, u_input.c.x, _wgslsmith_mod_i32(2147483647i, 12192i)))), global1.x);
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mod_vec4_u32(u_input.b, var_0.a.c.a), 31188u), Struct_1(max(~(~u_input.b), select(~u_input.b, u_input.b, select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.d.b.a.x, 10u)], global3[_wgslsmith_index_u32(24428u, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 10u)], false, false, global3[_wgslsmith_index_u32(19534u, 10u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a, 10u)], global3[_wgslsmith_index_u32(var_0.a.d.a.a.x, 10u)])))), ~var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.b) + _wgslsmith_f_op_f32(-1153f + global1.x)), -_wgslsmith_div_vec4_i32(u_input.c, -(vec4<i32>(u_input.c.x, -51709i, 29802i, u_input.d) >> (vec4<u32>(u_input.a, u_input.e.x, u_input.b.x, var_0.a.b) % vec4<u32>(32u)))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -634f), _wgslsmith_div_f32(var_1.c, var_0.b))) + 388f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.c) + -1091f)));
    return Struct_3(var_0.a.a, 1703u, var_1.b, var_1);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    var var_0 = u_input.c;
    var var_1 = ~(vec2<u32>(select(14825u ^ arg_1.b.a.x, ~u_input.e.x, arg_2), 1u) >> (~arg_1.a.a.yy % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(max(global1.x, 1000f));
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(~(-12119i), _wgslsmith_mod_i32(-1i, var_0.x), u_input.c.x, 0i << ((~var_1.x & arg_1.b.a.x) % 32u)), -u_input.c);
    let var_2 = arg_1.d;
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> f32 {
    global3 = array<bool, 10>();
    var var_0 = _wgslsmith_mod_vec2_i32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -465f, -944f))), Struct_2(func_2().c, arg_0.d.a, _wgslsmith_f_op_f32(step(-631f, 1071f)), vec4<i32>(-2147483647i, u_input.d, arg_0.d.d.x, 0i)), false).d.d.zy ^ reverseBits(-(~vec2<i32>(arg_3.x, arg_3.x))), arg_2);
    var var_1 = Struct_3(~(-2147483647i), ~_wgslsmith_mult_u32(~(arg_0.b ^ 1u), ~0u), func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(644f, 196f, 811f))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1491f), 1f))), Struct_2(Struct_1(u_input.b, 1u), arg_0.c, -1446f, vec4<i32>(36606i, 0i, arg_2.x, arg_2.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.a.x, 32246u, u_input.b.x, u_input.e.x), u_input.b) % vec4<u32>(32u))), false).d.b, Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 211f, -246f) + vec3<f32>(-357f, arg_0.d.c, 602f))), Struct_2(arg_0.d.a, arg_0.d.b, 2086f, arg_0.d.d), global3[_wgslsmith_index_u32(~16701u, 10u)] & all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], false))).c, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(33346u, 1u, u_input.a, 4294967295u), vec4<u32>(6520u, u_input.b.x, 1u, 25349u)), 4294967295u), 2005f, -u_input.c));
    var_0 = func_1(vec3<f32>(377f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_0.d.c) * 1302f), _wgslsmith_div_f32(arg_0.d.c, 1f)), func_2().d, !(!global3[_wgslsmith_index_u32(41436u, 10u)]) | true).d.d.ww;
    let var_2 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) * _wgslsmith_f_op_f32(trunc(arg_0.d.c))) + 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b | (u_input.b | u_input.b), abs(vec4<u32>(11801u, 4294967295u, u_input.a, 0u)) & vec4<u32>(44416u, 3200u, 4294967295u, 51023u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(31533u, 8583u), ~1u, u_input.a << (4294967295u % 32u)), abs(u_input.b)), _wgslsmith_clamp_u32(11223u, ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(150f, global1.x, global1.x, global1.x), vec4<f32>(-1867f, 1054f, -285f, 1060f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 113f, 1579f), vec4<f32>(global1.x, global1.x, global1.x, global1.x), global3[_wgslsmith_index_u32(u_input.b.x, 10u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2678f)), 1462f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(func_4(func_1(vec3<f32>(global1.x, global1.x, global1.x), Struct_2(Struct_1(vec4<u32>(85549u, var_1.x, 1u, var_1.x), 64088u), Struct_1(vec4<u32>(22613u, var_1.x, u_input.a, u_input.e.x), 1u), global1.x, vec4<i32>(-2147483647i, -18680i, var_0.x, var_0.x)), true), var_0.x, u_input.c.zw, _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(var_0.x, 34768i, var_0.x, -2147483647i)))))));
    global0 = _wgslsmith_f_op_f32(min(-1144f, _wgslsmith_f_op_f32(floor(var_2.x))));
    var var_3 = Struct_5(Struct_3(u_input.d, var_1.x ^ abs(10680u), func_1(vec3<f32>(-943f, _wgslsmith_div_f32(var_2.x, -661f), _wgslsmith_f_op_f32(round(1612f))), Struct_2(func_2().d.b, Struct_1(vec4<u32>(22921u, u_input.b.x, 0u, var_1.x), var_1.x), _wgslsmith_f_op_f32(-var_2.x), -vec4<i32>(29538i, 42905i, -1i, 0i)), true).c, func_2().d), Struct_1(select(u_input.b, ~vec4<u32>(0u, u_input.b.x, 90926u, var_1.x), select(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 10u)], false, global3[_wgslsmith_index_u32(var_1.x, 10u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(84790u, 10u)], true, true), true)) << (u_input.b % vec4<u32>(32u)), ~(~func_1(vec3<f32>(1000f, 622f, var_2.x), Struct_2(Struct_1(u_input.b, var_1.x), Struct_1(u_input.b, 4294967295u), global1.x, u_input.c), true).c.b)));
    global2 = -func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.zyw), _wgslsmith_f_op_vec3_f32(var_2.wzy * var_2.wyy))), func_2().d, global3[_wgslsmith_index_u32(18190u, 10u)]).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.d.d.x, var_3.a.d.a.a.x);
}

