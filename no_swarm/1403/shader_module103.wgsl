struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-190f, 657f, -255f, -164f, -1032f, -959f, -1057f, -1208f, 513f, -591f, 1000f, -242f, 851f, 1011f, 1512f, 691f, -452f, 302f, -288f, -1857f, -980f, -1000f, 900f, 1000f);

var<private> global1: Struct_1;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = global2.d;
    var_0 = u_input.b.x;
    var var_1 = false;
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, -636f) * vec2<f32>(-362f, global2.a.x)), _wgslsmith_f_op_vec2_f32(round(global2.a)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.a), global2.a, vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(53670u, 24u)], global0[_wgslsmith_index_u32(32513u, 24u)]) * global2.a)))))), Struct_1(global2.c), true, _wgslsmith_add_i32(firstTrailingBit(26871i), firstTrailingBit(u_input.b.x)));
    global0 = array<f32, 24>();
    return min(-2147483647i, u_input.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> vec3<u32> {
    global1 = Struct_1(arg_0.a);
    global0 = array<f32, 24>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-global2.a), Struct_1(all(!vec3<bool>(global2.c, false, global2.b.a))), true, countOneBits(_wgslsmith_sub_i32(func_3(), -arg_3.a))), vec3<bool>(u_input.c != u_input.a, all(!vec4<bool>(arg_1.a, true, false, true)) || !any(vec4<bool>(true, false, arg_1.a, false)), false && all(vec2<bool>(false, true))), vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(408f, -218f)))), _wgslsmith_f_op_f32(global2.a.x + global2.a.x), global0[_wgslsmith_index_u32(u_input.a, 24u)], 760f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, -136f, 640f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(8044u, 24u)])), 168f)))));
    global1 = Struct_1(!arg_1.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1242f, var_0.d.x, -1012f, 564f) * var_0.c) + _wgslsmith_f_op_vec4_f32(min(var_0.d, var_0.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, global0[_wgslsmith_index_u32(u_input.a, 24u)], var_0.c.x, global2.a.x)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2164f, _wgslsmith_f_op_f32(var_0.c.x + 443f), -136f, var_0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 292f, -606f, global0[_wgslsmith_index_u32(u_input.c, 24u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global0[_wgslsmith_index_u32(u_input.c, 24u)], var_0.a.a.x, 974f))), _wgslsmith_clamp_i32(global2.d, arg_3.a, 2147483647i) < -arg_3.a))));
    return _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 1u), ~vec3<u32>(u_input.c, 51910u, 65886u)), _wgslsmith_div_vec3_u32(~(vec3<u32>(4294967295u, u_input.c, u_input.c) << (vec3<u32>(u_input.c, u_input.c, u_input.a) % vec3<u32>(32u))), abs(vec3<u32>(u_input.a, u_input.c, 74505u)) << (reverseBits(vec3<u32>(u_input.c, 31630u, u_input.c)) % vec3<u32>(32u)))), vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.c, u_input.c << (u_input.c % 32u)), 103u));
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.a + global2.a);
    let var_1 = !(true || global2.c);
    let var_2 = u_input.c;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1631f, 413f))))), global2.b, !(6215i >= _wgslsmith_add_i32(u_input.b.x | -21993i, -66229i)), 14420i);
    let var_4 = true;
    return var_3;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, u_input.a, 30998u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 5890u, 46046u), vec3<u32>(u_input.a, 7724u, 4294967295u)), vec3<u32>(17846u, 0u, u_input.c))) | vec3<u32>(~u_input.a, ~abs(4294967295u), 273u), ~vec3<u32>(24429u, u_input.c, 1u) | vec3<u32>(arg_1.x, ~50589u, u_input.a));
    var var_1 = vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - global2.a.x)))));
    var var_2 = func_4(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, 22071u, var_0.x) ^ func_2(Struct_1(true), Struct_1(global1.a), u_input.b.x, Struct_4(global2.d)), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 0u, 63145u), vec3<u32>(arg_1.x, u_input.a, var_0.x) ^ vec3<u32>(u_input.a, 1u, u_input.c))), func_2(global2.b, global2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global2.d, u_input.b.x) >> (vec3<u32>(u_input.a, arg_1.x, 27265u) % vec3<u32>(32u)), max(vec3<i32>(-28309i, global2.d, global2.d), vec3<i32>(-20039i, global2.d, 2147483647i))), Struct_4(func_3())).x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.c), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(var_0.x, u_input.a)), 1u)), 24u)]));
    var_0 = abs(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, var_0.x), _wgslsmith_clamp_u32(u_input.a, arg_1.x, 0u), select(58849u, 88795u, false)), vec3<u32>(57622u, _wgslsmith_mod_u32(u_input.a, var_0.x), var_0.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, var_0.x, u_input.c), ~vec3<u32>(14516u, 69368u, var_0.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, var_0.x, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, arg_1.x), vec3<u32>(var_0.x, 0u, 37573u)))));
    var var_3 = firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 1i), abs(global2.d >> (var_0.x % 32u)), max(-66633i, -2147483647i), -1i)) ^ vec4<i32>(~_wgslsmith_add_i32(-7628i, min(u_input.b.x, -60838i)), 16595i, ~var_2.d, -1i);
    return !vec4<bool>(select(true, false, global1.a), true, abs(u_input.c) < ~13288u, func_4(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-var_2.a.x)).b.a);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    global2 = arg_2;
    global0 = array<f32, 24>();
    let var_0 = vec4<bool>(!global1.a, !arg_3.a.c, func_1(arg_3.c.x, vec2<u32>(u_input.a, ~(u_input.c >> (u_input.a % 32u)))).x, (all(vec2<bool>(global1.a, true)) | global1.a) | !select(!arg_3.b.x, true, false));
    var var_1 = arg_2.b;
    var var_2 = global2.d;
    return Struct_1(false);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(3027i, arg_1, global2.d, global2.d) ^ vec4<i32>(arg_1, 40741i, arg_1, -63035i), vec4<i32>(-10356i, 2147483647i, 45494i, -u_input.b.x)), abs(-u_input.b.x)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(arg_2, 24u)], 656f, global0[_wgslsmith_index_u32(arg_2, 24u)], global2.a.x))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) - _wgslsmith_f_op_f32(global2.a.x - 866f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(584f, _wgslsmith_f_op_f32(ceil(var_2.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1893f), vec2<f32>(global0[_wgslsmith_index_u32(arg_2, 24u)], global0[_wgslsmith_index_u32(arg_2, 24u)])) + _wgslsmith_f_op_vec2_f32(select(global2.a, vec2<f32>(786f, -1829f), vec2<bool>(arg_0.a, false)))))));
    global2 = Struct_2(var_3, Struct_1(!func_4(~u_input.c, -156f).c), true, 54518i);
    return func_4(arg_2, -371f).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-9242i);
    var var_1 = Struct_1(!global1.a);
    var_1 = global2.b;
    var_1 = func_6(func_5(!select(func_1(-1000f, vec2<u32>(u_input.c, u_input.a)), !vec4<bool>(global1.a, true, global1.a, false), select(vec4<bool>(true, global2.c, global2.c, true), vec4<bool>(var_1.a, var_1.a, false, global2.c), global1.a)), Struct_4(global2.d), func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(81819u, u_input.c, u_input.c, 0u), abs(vec4<u32>(u_input.c, u_input.a, u_input.a, 33823u))), 643f), Struct_3(func_4(1u, global2.a.x), select(select(vec3<bool>(false, global1.a, true), vec3<bool>(global1.a, var_1.a, global2.c), var_1.a), vec3<bool>(var_1.a, global2.b.a, global2.b.a), func_1(-367f, vec2<u32>(12999u, u_input.a)).wyy), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4698u, 24u)], 2038f, global0[_wgslsmith_index_u32(u_input.a, 24u)], -1430f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global0[_wgslsmith_index_u32(12416u, 24u)], -934f, -2302f) * vec4<f32>(216f, 447f, global2.a.x, 974f)), !vec4<bool>(false, global2.c, global1.a, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(584f, -2436f, 1000f, -1000f), vec4<f32>(-979f, -1000f, -1293f, -696f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(286f, global2.a.x, -968f, global2.a.x) * vec4<f32>(global0[_wgslsmith_index_u32(38528u, 24u)], global2.a.x, global0[_wgslsmith_index_u32(u_input.c, 24u)], 102f))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(24544i, u_input.b.x, -47866i, var_0), vec4<i32>(var_0, 2147483647i, var_0, -54409i)) >> (~vec4<u32>(0u, u_input.a, u_input.c, u_input.a) % vec4<u32>(32u)), -(vec4<i32>(u_input.b.x, 2147483647i, -9056i, global2.d) ^ vec4<i32>(global2.d, 0i, -23728i, global2.d))), 2147483647i), ~u_input.c, global2.b);
    var var_2 = select(firstTrailingBit(vec3<i32>(reverseBits(u_input.b.x), 0i, firstTrailingBit(u_input.b.x))) & abs(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -32659i, 0i), vec3<i32>(var_0, var_0, 28190i))), -vec3<i32>(max(countOneBits(global2.d), 2147483647i), i32(-1i) * -global2.d, var_0), !(!(!(-488f < global0[_wgslsmith_index_u32(u_input.a, 24u)]))));
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, var_0, 59528i), vec3<i32>(82881i, _wgslsmith_clamp_i32(2147483647i, -12170i, 1i), i32(-1i) * -1i)) >> (u_input.a % 32u), ~var_2.x);
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(global2.a, vec2<f32>(global2.a.x, 1f))))), Struct_1(all(vec4<bool>(false, global2.c, global2.c, u_input.a > u_input.a))), !(false | (0i >= (u_input.b.x | -2147483647i))), ~var_3);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mult_vec3_i32(vec3<i32>(var_3, u_input.b.x, 0i), ~vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.b.x), -10697i, var_3 << (26115u % 32u))), _wgslsmith_add_vec4_u32(vec4<u32>(38019u, 0u, ~1u >> (u_input.c % 32u), ~(15896u ^ u_input.c)), vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.a) >> (_wgslsmith_mod_u32(u_input.a, 48302u) % 32u), 53314u, 1u, u_input.a)));
}

