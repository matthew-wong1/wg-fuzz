struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<i32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5) -> bool {
    var var_0 = arg_1.d.zx;
    global2 = array<i32, 30>();
    global2 = array<i32, 30>();
    let var_1 = !arg_1.d;
    var var_2 = !arg_1.d.yxx;
    return var_0.x;
}

fn func_3() -> vec2<f32> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(1266f * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), -1000f, global0.x);
    var var_0 = Struct_4(Struct_2(vec2<i32>(-57027i, -1i), global1[_wgslsmith_index_u32(~(~0u), 7u)], global1[_wgslsmith_index_u32(~countOneBits(~53807u), 7u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(1u), u_input.b >> (1u % 32u), 0u), 7u)], vec4<i32>(~_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.d), _wgslsmith_mult_i32(-28109i, 1i), _wgslsmith_mod_i32(u_input.d & 71920i, _wgslsmith_mult_i32(1i, global2[_wgslsmith_index_u32(77318u, 30u)])), u_input.d)), _wgslsmith_div_vec3_i32((~vec3<i32>(u_input.d, u_input.d, u_input.d) ^ -vec3<i32>(2339i, global2[_wgslsmith_index_u32(18396u, 30u)], 0i)) & vec3<i32>(global2[_wgslsmith_index_u32(42951u, 30u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], u_input.d), vec2<i32>(0i, 2147483647i)), u_input.d), -firstTrailingBit(reverseBits(vec3<i32>(u_input.d, u_input.d, -1i)))), _wgslsmith_f_op_f32(-580f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1508f * global0.x) - _wgslsmith_f_op_f32(step(global0.x, 2440f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(250f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yy)))), -abs(-vec3<i32>(2147483647i, u_input.d, global2[_wgslsmith_index_u32(4294967295u, 30u)])) ^ vec3<i32>(i32(-1i) * -51751i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(2769u, 30u)], u_input.d, -1i)), vec3<i32>(1i, u_input.d, -55160i) | vec3<i32>(2147483647i, -25615i, u_input.d)), -2147483647i));
    var_0 = Struct_4(Struct_2(max(select(-var_0.e.xx, -var_0.a.e.xx, select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<i32>(min(1i, -2147483647i), -1i)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.b.d.x, var_0.a.d.c.x, 12271u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.d.c.x, u_input.b, 7804u, var_0.a.d.c.x), vec4<u32>(7036u, 4294967295u, 4294967295u, 18664u))), 7u)], Struct_1(60683u, 2147483647i, firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.c, 30425u, 59795u))), firstLeadingBit(vec2<u32>(var_0.a.c.a, 13959u))), Struct_1(1u, abs(-1i), abs(var_0.a.c.c), max(var_0.a.b.d, firstLeadingBit(u_input.a))), _wgslsmith_div_vec4_i32(-min(var_0.a.e, vec4<i32>(-2147483647i, -39074i, 0i, 51830i)), vec4<i32>(1i >> (var_0.a.c.c.x % 32u), _wgslsmith_mod_i32(9675i, -22602i), abs(var_0.b.x), global2[_wgslsmith_index_u32(19722u, 30u)] | u_input.d))), vec3<i32>(global2[_wgslsmith_index_u32(~abs(82415u) ^ u_input.a.x, 30u)], firstLeadingBit(var_0.b.x), firstTrailingBit(-2147483647i)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(ceil(var_0.c))))))), vec2<f32>(1000f, -1879f), firstLeadingBit(abs(var_0.b)));
    let var_1 = ~_wgslsmith_mult_u32(u_input.b, 19114u);
    var var_2 = !all(vec2<bool>((u_input.a.x <= 31312u) && select(true, true, true), true));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1009f, var_0.d.x), vec2<f32>(1000f, 405f))))), global0.zy)));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-394f + -1592f), arg_3.x, _wgslsmith_div_f32(735f, 441f), _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1308f, arg_3.x, arg_3.x, arg_3.x))), vec4<f32>(arg_3.x, 1192f, _wgslsmith_f_op_vec2_f32(func_3()).x, arg_1.x), true)) * vec4<f32>(arg_3.x, global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(137f - -135f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_3.x)))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(-global2[_wgslsmith_index_u32(~0u, 30u)] & 0i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f) - global0.x), 1203f, _wgslsmith_f_op_f32(-global0.x)), !vec4<bool>(true, func_2(vec4<u32>(1u, u_input.b, 4294967295u, 4294967295u), Struct_5(global0.x, 4294967295u, false, vec4<bool>(false, true, false, false))), 1u >= u_input.b, true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))))) + vec4<f32>(1880f, global0.x, global0.x, global0.x));
    let var_1 = -252f;
    let var_2 = Struct_4(Struct_2(~vec2<i32>(u_input.d, global2[_wgslsmith_index_u32(13517u, 30u)]) & firstLeadingBit(vec2<i32>(u_input.d, -2147483647i) ^ vec2<i32>(1i, -11991i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.c, 0u), vec3<u32>(86243u, u_input.b, 4294967295u), true) & vec3<u32>(1644u, u_input.a.x, 54432u), ~(~vec3<u32>(u_input.a.x, 4294967295u, 44130u))), 7u)], global1[_wgslsmith_index_u32(53272u, 7u)], global1[_wgslsmith_index_u32(abs(u_input.b), 7u)], vec4<i32>(global2[_wgslsmith_index_u32(1u | max(u_input.b, 30836u), 30u)], u_input.d, u_input.d, global2[_wgslsmith_index_u32(1u, 30u)])), -select(vec3<i32>(u_input.d, global2[_wgslsmith_index_u32(57747u, 30u)], -1i) ^ abs(vec3<i32>(-1457i, -9384i, global2[_wgslsmith_index_u32(u_input.c, 30u)])), vec3<i32>(~u_input.d, global2[_wgslsmith_index_u32(~4294967295u, 30u)], ~(-45919i)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(var_1)), var_0.zz, ~(~(-(~vec3<i32>(-20374i, global2[_wgslsmith_index_u32(u_input.c, 30u)], -16717i)))));
    global1 = array<Struct_1, 7>();
    let var_3 = var_2.d.x;
    return Struct_3(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))) != true, (0i << (var_2.a.c.d.x % 32u)) != abs(11552i)), ~vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.a.e.xw << (vec2<u32>(16900u, 93480u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(var_2.b.x, var_2.e.x))), ~(u_input.d >> (38322u % 32u)), 23004i, _wgslsmith_add_i32(37938i, var_2.b.x)), Struct_1(~(~u_input.c), var_2.b.x >> (4294967295u % 32u), vec3<u32>(~var_2.a.d.c.x, u_input.b, var_2.a.b.d.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, var_2.a.b.c.x), vec4<u32>(u_input.a.x, var_2.a.b.c.x, 0u, var_2.a.c.a)), ~28069u) >> (_wgslsmith_div_vec2_u32(u_input.a, var_2.a.b.d) % vec2<u32>(32u))), !vec4<bool>(true, all(vec2<bool>(true, true)), true, !all(vec2<bool>(false, true))), false);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = ~arg_1.b.x;
    var var_1 = Struct_2(func_1().b.ww, arg_1.c, Struct_1(_wgslsmith_dot_vec2_u32(arg_3.yz, _wgslsmith_mult_vec2_u32(arg_3.zx, vec2<u32>(u_input.c, u_input.b))), ~global2[_wgslsmith_index_u32(~30962u, 30u)] & 0i, arg_1.c.c, max(max(u_input.a, vec2<u32>(arg_1.c.c.x, 54634u)), firstLeadingBit(~arg_3.zx))), func_1().c, _wgslsmith_sub_vec4_i32(abs(arg_1.b), arg_1.b));
    var var_2 = false;
    let var_3 = arg_2.xyy;
    let var_4 = var_3;
    return Struct_2(arg_1.b.xz & -vec2<i32>(~arg_1.b.x, select(u_input.d, -2147483647i, arg_1.a.x)), func_1().c, func_1().c, func_1().c, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(global0.ww, func_1(), func_1().d, ~vec4<u32>(100562u, u_input.b, u_input.a.x, u_input.c)), -vec3<i32>(firstTrailingBit(1i), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(~1u, 30u)], -1i), ~(-18444i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(-1i, global0.yxy, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(global0.zw + vec2<f32>(global0.x, -1000f)))).x * global0.x), false)), global0.ww, vec3<i32>(-_wgslsmith_dot_vec2_i32(~vec2<i32>(17765i, global2[_wgslsmith_index_u32(u_input.a.x, 30u)]), ~vec2<i32>(6999i, -73962i)), u_input.d & _wgslsmith_clamp_i32(u_input.d, -2147483647i << (u_input.a.x % 32u), -2147483647i), ~(-46175i)));
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -539f)), func_1(), vec4<bool>(any(func_1().d), false, false, !func_2(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.b.c.x, 1u, var_0.a.c.a, 37165u), vec4<u32>(u_input.b, u_input.a.x, var_0.a.d.c.x, 4294967295u)), Struct_5(var_0.c, var_0.a.b.c.x, true, vec4<bool>(false, true, true, false)))), _wgslsmith_add_vec4_u32(~abs(~vec4<u32>(u_input.c, u_input.a.x, 38869u, u_input.c)), vec4<u32>(0u, _wgslsmith_sub_u32(1u ^ var_0.a.b.d.x, ~var_0.a.c.d.x), u_input.b, 0u)));
    global2 = array<i32, 30>();
    let var_2 = var_0;
    var var_3 = abs(17481i) >= ~(_wgslsmith_mod_i32(-1i, var_2.e.x | 0i) ^ u_input.d);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d.x, -1682f, var_2.c, 1181f), vec4<f32>(1736f, var_0.d.x, -1000f, var_2.d.x), vec4<bool>(false, false, true, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-417f, 1122f, var_0.d.x, global0.x) * vec4<f32>(global0.x, var_0.c, var_2.d.x, var_0.d.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c, 385f, var_0.d.x, var_0.d.x))) + vec4<f32>(global0.x, -573f, global0.x, 931f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, global0.x, var_2.d.x, 931f) + vec4<f32>(800f, -518f, -135f, 873f))), false))));
    var_3 = var_0.c <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(var_0.a.a.x ^ 2147483647i, var_4.zzx, select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec2_f32(-var_4.wz))).x);
    var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-608f * var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(var_2.e.x, vec3<f32>(-211f, -856f, 2545f), vec4<bool>(false, true, true, false), vec2<f32>(var_4.x, global0.x))).x), -1186f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-583f, var_4.x, -387f, -191f), vec4<f32>(989f, var_0.d.x, -1164f, -898f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -217f, var_2.c, var_2.d.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_div_u32(1u, u_input.a.x), u_input.b ^ _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 0u), ~var_0.a.b.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(130f, 203f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(486f)))), global0.x, _wgslsmith_f_op_f32(278f + -1168f)) + vec4<f32>(_wgslsmith_f_op_f32(floor(-931f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(-185f + global0.x))), -vec3<i32>(41096i, _wgslsmith_mod_i32(var_1.a.x, -81326i), 2147483647i) | (vec3<i32>(var_1.a.x, var_0.e.x, u_input.d) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, var_2.a.a.x, var_1.b.b), -vec3<i32>(var_0.a.a.x, -2147483647i, var_2.a.e.x))), ~(-vec4<i32>(abs(0i), _wgslsmith_dot_vec3_i32(var_1.e.yzw, var_0.a.e.zwz), 9396i, i32(-1i) * -1i)));
}

