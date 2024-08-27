struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<i32>(76526i, -1i), Struct_1(87113u, vec4<u32>(31142u, 1u, 762u, 18495u))), Struct_2(vec2<i32>(0i, -1849i), Struct_1(4294967295u, vec4<u32>(41946u, 57522u, 75796u, 0u))), Struct_2(vec2<i32>(-20132i, i32(-2147483648)), Struct_1(4294967295u, vec4<u32>(39026u, 1u, 1u, 109471u))), Struct_2(vec2<i32>(30180i, 0i), Struct_1(4294967295u, vec4<u32>(4294967295u, 4294967295u, 88244u, 1056u))), Struct_2(vec2<i32>(-28107i, -25677i), Struct_1(45450u, vec4<u32>(63754u, 4294967295u, 0u, 1u))), Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(25285u, vec4<u32>(0u, 44013u, 22236u, 0u))), Struct_2(vec2<i32>(-1i, 6922i), Struct_1(0u, vec4<u32>(4294967295u, 26404u, 3341u, 15649u))), Struct_2(vec2<i32>(1764i, 25033i), Struct_1(40782u, vec4<u32>(74526u, 0u, 4294967295u, 0u))), Struct_2(vec2<i32>(65514i, 2147483647i), Struct_1(1u, vec4<u32>(0u, 0u, 40355u, 76369u))), Struct_2(vec2<i32>(55640i, 18953i), Struct_1(0u, vec4<u32>(4294967295u, 0u, 16928u, 0u))), Struct_2(vec2<i32>(73740i, 1i), Struct_1(49820u, vec4<u32>(0u, 4294967295u, 17942u, 51965u))), Struct_2(vec2<i32>(1512i, -1i), Struct_1(4294967295u, vec4<u32>(1u, 35840u, 1u, 4294967295u))), Struct_2(vec2<i32>(i32(-2147483648), -16260i), Struct_1(34735u, vec4<u32>(38141u, 7980u, 14831u, 48369u))));

var<private> global1: Struct_3 = Struct_3(true, Struct_1(1u, vec4<u32>(1u, 64420u, 1u, 4294967295u)), vec2<f32>(232f, -982f), vec4<u32>(56505u, 1u, 0u, 1u));

var<private> global2: vec3<f32> = vec3<f32>(-925f, 1793f, -1434f);

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(0u, vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), Struct_1(2379u, vec4<u32>(103272u, 0u, 30024u, 0u)), Struct_1(35885u, vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_1(4294967295u, vec4<u32>(85902u, 11337u, 24068u, 1u)), Struct_1(69753u, vec4<u32>(35032u, 40863u, 1u, 0u)), Struct_1(37210u, vec4<u32>(63567u, 1u, 4294967295u, 0u)), Struct_1(4294967295u, vec4<u32>(4294967295u, 22691u, 0u, 1593u)), Struct_1(4294967295u, vec4<u32>(3241u, 71383u, 54757u, 1u)), Struct_1(78663u, vec4<u32>(6677u, 7597u, 19006u, 1u)), Struct_1(0u, vec4<u32>(1u, 0u, 47587u, 98150u)), Struct_1(4294967295u, vec4<u32>(9681u, 14176u, 44571u, 4294967295u)), Struct_1(58336u, vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), Struct_1(37010u, vec4<u32>(4294967295u, 4294967295u, 56196u, 38513u)), Struct_1(67947u, vec4<u32>(1u, 4294967295u, 0u, 0u)), Struct_1(34569u, vec4<u32>(0u, 4294967295u, 30710u, 34967u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    var var_0 = select(arg_2.yzx, vec3<bool>(true, true, any(!arg_2.xyw)), false);
    let var_1 = -(~(-firstTrailingBit(arg_0.x)));
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    var var_2 = firstLeadingBit(~min(vec3<u32>(63374u, arg_1.b.x, u_input.b.x), ~vec3<u32>(u_input.c, global1.d.x, u_input.b.x))) << (~arg_1.b.wyy % vec3<u32>(32u));
    return 4294967295u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_4(~global1.b.b.xz, global1.b, Struct_3(!global1.a, Struct_1(~(~arg_0.x), vec4<u32>(~global1.b.a, _wgslsmith_div_u32(global1.d.x, global1.d.x), ~4148u, arg_0.x | arg_0.x)), _wgslsmith_f_op_vec2_f32(-global1.c), vec4<u32>(global1.b.a, (arg_0.x >> (arg_0.x % 32u)) ^ (global1.b.b.x >> (u_input.d % 32u)), abs(global1.b.b.x), 1u)), global0[_wgslsmith_index_u32(func_3(~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, -2147483647i, 0i, -2147483647i), ~vec4<i32>(1i, 66461i, u_input.a.x, 2147483647i)), Struct_1(firstTrailingBit(abs(global1.d.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0.x, 4294967295u, 54423u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 46951u)), ~global1.d)), vec4<bool>(any(!vec4<bool>(global1.a, true, false, global1.a)), _wgslsmith_f_op_f32(global1.c.x * -220f) < _wgslsmith_f_op_f32(f32(-1f) * -1306f), global1.a, !global1.a)), 13u)], true);
    let var_1 = ~(~u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-165f)), -948f)), global1.c.x, global1.c.x));
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    return var_0.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> u32 {
    global1 = Struct_3(arg_1.a, arg_1.b, vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x)), vec4<u32>(27882u, ~select(min(u_input.d, global1.d.x), ~34992u, arg_1.a), ~1u, ~(53490u | ~arg_1.d.x)));
    global1 = func_2(_wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(17690u, arg_1.b.a, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, arg_1.b.b.x, 4294967295u), u_input.b))), vec3<u32>(4294967295u, countOneBits(4294967295u), ~arg_1.b.a) ^ vec3<u32>(global1.d.x, _wgslsmith_mod_u32(u_input.b.x, global1.b.a), arg_1.b.b.x >> (u_input.c % 32u))));
    var var_0 = u_input.a;
    global3 = array<Struct_1, 15>();
    let var_1 = Struct_4(func_2(vec3<u32>(2300u, 0u, 0u)).d.yy, func_2(_wgslsmith_add_vec3_u32(~arg_1.b.b.xxy & vec3<u32>(1u, 4294967295u, arg_1.d.x), u_input.b)).b, Struct_3(global1.a, Struct_1(372u, ~max(vec4<u32>(0u, global1.b.a, arg_1.d.x, arg_1.b.b.x), global1.d)), _wgslsmith_f_op_vec2_f32(-global2.xz), ~(~vec4<u32>(u_input.b.x, 1u, 75832u, global1.d.x))), global0[_wgslsmith_index_u32(global1.d.x, 13u)], true);
    return 122658u & func_2(countOneBits(vec3<u32>(_wgslsmith_div_u32(1u, u_input.d), 1u, global1.d.x))).b.b.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = -310f;
    let var_1 = global1.b.b.x;
    let var_2 = func_2(arg_1.b.b.xyy);
    global1 = Struct_3(var_2.a, global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 0u), vec2<u32>(arg_0.x, 64472u)), 55983u)), 15u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-global2.x)) - global2.yx), ~vec4<u32>(global1.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.a, 4294967295u, arg_0.x, 1u), func_2(var_2.b.b.xyw).b.b), 12204u, arg_1.b.b.x));
    var var_3 = var_2;
    return Struct_1(func_1(!vec4<bool>(var_3.a, select(true, true, true), var_3.a, !var_2.a), Struct_3(true, var_3.b, func_2(vec3<u32>(arg_0.x, arg_0.x, 35952u)).c, firstTrailingBit(~vec4<u32>(13744u, 17477u, var_2.b.a, 25876u)))), ~abs(_wgslsmith_sub_vec4_u32(var_3.d, var_3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~vec3<u32>(72184u, 114201u, func_1(vec4<bool>(global1.a, global1.a, global1.a, global1.a), Struct_3(global1.a, Struct_1(u_input.c, vec4<u32>(29707u, global1.b.a, 17218u, 1u)), global1.c, vec4<u32>(33088u, 1u, global1.d.x, 4294967295u))) >> (~global1.d.x % 32u)), Struct_2(abs(vec2<i32>(0i, 1i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), global3[_wgslsmith_index_u32(44571u, 15u)]), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(min(314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -1330f)) + _wgslsmith_f_op_f32(f32(-1f) * -1751f)) * _wgslsmith_div_f32(346f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - global2.x)))));
    var var_2 = func_2(~_wgslsmith_add_vec3_u32(abs(global1.d.wwy) >> ((var_0.b.www & vec3<u32>(var_0.b.x, 0u, global1.d.x)) % vec3<u32>(32u)), ~vec3<u32>(0u, 6773u, 1u) << (~var_0.b.xxx % vec3<u32>(32u)))).b;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), global1.c.x, -430f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 1331f, global1.c.x)))))));
    let var_3 = Struct_4(vec2<u32>(~(~4294967295u), min(~u_input.c, var_2.b.x)), global1.b, func_2(_wgslsmith_mod_vec3_u32(reverseBits(firstLeadingBit(var_2.b.xzw)), vec3<u32>(1446u, var_2.a, global1.b.b.x ^ 4294967295u))), global0[_wgslsmith_index_u32(1u << (func_4(~var_2.b.yxx, Struct_2(~u_input.a.yx, func_4(var_0.b.xxz, global0[_wgslsmith_index_u32(36591u, 13u)], u_input.a.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i), u_input.a), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a))).b.x % 32u), 13u)], global1.a);
    var var_4 = vec2<f32>(1918f, _wgslsmith_f_op_f32(trunc(var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x);
}

