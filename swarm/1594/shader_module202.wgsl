struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_2 = Struct_2(2781i, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), 49098i, false, vec4<bool>(true, false, true, false), vec4<f32>(1024f, -1709f, -804f, 151f)), Struct_1(vec4<u32>(75961u, 0u, 1u, 23519u), 30817i, true, vec4<bool>(false, false, true, true), vec4<f32>(-258f, 390f, 943f, -1239f)), vec3<i32>(2147483647i, 57558i, 8909i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    global0 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2503f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.b.e.x)), -1828f), _wgslsmith_f_op_f32(sign(global1.b.e.x)))));
    var var_1 = ~u_input.a;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(floor(global1.c.e.x)), -299f, 797f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1585f, global1.c.e.x, -810f, global1.c.e.x))) + global1.b.e)));
    return select(~_wgslsmith_add_vec4_i32(-vec4<i32>(6086i, u_input.b, 1i, u_input.b), vec4<i32>(-1i, -44947i, -8031i, global1.a)), vec4<i32>(countOneBits(-4719i), _wgslsmith_div_i32(abs(global1.c.b), firstTrailingBit(0i)), -2147483647i, _wgslsmith_mult_i32(global1.b.b, firstTrailingBit(global1.a))), global1.b.d) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.a.x, ~(~global1.c.a.x), ~abs(10222u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47925u, 17698u, 4294967295u, u_input.c.x), global1.b.a), _wgslsmith_mod_u32(global1.b.a.x, u_input.a))), vec4<u32>(~abs(4294967295u), firstTrailingBit(firstTrailingBit(4294967295u)), abs(74521u), global1.b.a.x), ~(~vec4<u32>(0u, 4294967295u, 23446u, global1.b.a.x))) % vec4<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> bool {
    global1 = Struct_2(1i, global1.c, Struct_1(global1.c.a << (arg_2.a % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(func_3(), (vec4<i32>(arg_2.b, -64905i, -17810i, u_input.b) << (global1.c.a % vec4<u32>(32u))) >> (~vec4<u32>(23766u, 53215u, 12450u, global1.b.a.x) % vec4<u32>(32u))), any(vec2<bool>(!arg_0, !global1.b.d.x)), vec4<bool>(-global1.b.b == min(global1.d.x, arg_2.b), any(!global1.b.d.wyz), arg_2.c & !global1.c.d.x, arg_2.d.x && true), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(max(global1.b.e.x, 1135f)), 437f, -1091f), global1.b.e)), vec3<i32>(~arg_2.b, global1.d.x << (28431u % 32u), 0i) << (max(~select(arg_2.a.wzw, arg_2.a.wwy, vec3<bool>(global1.c.c, global1.b.d.x, global1.b.d.x)), vec3<u32>(arg_2.a.x, ~global1.c.a.x, u_input.c.x)) % vec3<u32>(32u)));
    var var_0 = Struct_2(arg_2.b, global1.c, Struct_1(vec4<u32>(46785u, ~global1.c.a.x, _wgslsmith_clamp_u32(1u, u_input.d, _wgslsmith_mod_u32(9087u, u_input.a)), u_input.a), -6640i, !arg_1, global1.c.d, global1.c.e), global1.d);
    var var_1 = Struct_1(vec4<u32>(u_input.d, 0u, 32400u, 1u >> (~(~global1.c.a.x) % 32u)), -1i, all(var_0.c.d), vec4<bool>(all(var_0.b.d.wx), global1.c.c, select(any(select(vec3<bool>(false, false, var_0.b.d.x), global1.c.d.wxy, global1.b.d.wyy)), any(vec4<bool>(arg_1, global1.c.c, arg_0, arg_1)), var_0.b.c), !(!all(arg_2.d))), arg_2.e);
    let var_2 = var_0.c.d.yw;
    var var_3 = !vec3<bool>(!arg_0, !(!(var_0.b.e.x > -641f)), var_0.c.d.x);
    return true;
}

fn func_1() -> Struct_1 {
    global1 = Struct_2(_wgslsmith_div_i32(~(-60507i >> (global1.c.a.x % 32u)), u_input.b) | select(-1i, u_input.b, all(global1.b.d.wzx)), Struct_1(_wgslsmith_clamp_vec4_u32(global1.c.a, select(vec4<u32>(u_input.c.x, 26518u, u_input.c.x, global1.b.a.x), vec4<u32>(u_input.c.x, global1.b.a.x, u_input.c.x, 22188u), select(global1.c.d, vec4<bool>(true, global1.b.c, global1.c.d.x, global1.c.d.x), global1.c.d.x)), ~(global1.c.a >> (global1.c.a % vec4<u32>(32u)))), -36949i, true, vec4<bool>(true, !(!global1.b.d.x), true, global1.b.d.x), global1.c.e), Struct_1(reverseBits(~(~global1.b.a)), select(u_input.b, _wgslsmith_mult_i32(global1.d.x, u_input.b), _wgslsmith_mult_u32(1u, u_input.c.x) >= ~global1.c.a.x), true, vec4<bool>(any(vec2<bool>(global1.b.c, true)) && (true || global1.b.d.x), func_2(global1.b.c | true, !global1.b.d.x, Struct_1(vec4<u32>(0u, u_input.d, 4294967295u, global1.b.a.x), -1i, true, vec4<bool>(true, global1.c.d.x, true, true), vec4<f32>(global1.b.e.x, global1.c.e.x, -1312f, global1.c.e.x))), global1.c.c, all(!global1.c.d.zwy)), _wgslsmith_f_op_vec4_f32(-global1.b.e)), _wgslsmith_div_vec3_i32(firstTrailingBit(global1.d), ~min(vec3<i32>(0i, global1.a, 0i) | global1.d, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -24411i, global1.b.b), global1.d))));
    var var_0 = ((1u >> (_wgslsmith_clamp_u32(~u_input.c.x, abs(28707u), min(global1.c.a.x, u_input.d)) % 32u)) << (~(1u & ~global1.c.a.x) % 32u)) > reverseBits(~47494u);
    global1 = Struct_2(~u_input.b, Struct_1(vec4<u32>(_wgslsmith_sub_u32(select(u_input.d, 3517u, global1.c.c), _wgslsmith_div_u32(u_input.c.x, global1.c.a.x)), global1.c.a.x, u_input.a, global1.b.a.x), ~func_3().x, global1.c.a.x >= abs(global1.c.a.x), !select(global1.c.d, vec4<bool>(false, global1.c.d.x, true, global1.b.c), all(global1.c.d)), vec4<f32>(-747f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.e.x)), 1768f, 626f)), Struct_1(_wgslsmith_add_vec4_u32(global1.c.a, (vec4<u32>(30443u, global1.c.a.x, u_input.a, global1.c.a.x) << (vec4<u32>(u_input.a, u_input.c.x, 59787u, 46556u) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.a, global1.c.a.x), vec4<u32>(1u, 17936u, 1u, u_input.a)) % vec4<u32>(32u))), -20203i, !global1.c.d.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(f32(-1f) * -1076f), -214f, _wgslsmith_f_op_f32(-571f * global1.b.e.x)))), select(~abs(firstLeadingBit(global1.d)), vec3<i32>(-46744i, i32(-1i) * -8099i, abs(min(global1.b.b, global1.c.b))), all(global1.b.d.yw)));
    let var_1 = -_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, global1.c.b, ~global1.c.b, u_input.b | global1.d.x), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(global1.d.x, 0i), u_input.b), global1.d.x, ~(i32(-1i) * -2147483647i), u_input.b), firstLeadingBit(firstTrailingBit(firstLeadingBit(vec4<i32>(-33860i, -4198i, 39781i, global1.b.b)))));
    var var_2 = _wgslsmith_f_op_f32(-937f - _wgslsmith_f_op_f32(-global1.b.e.x));
    return global1.b;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(func_1().e));
    global1 = arg_0;
    var var_1 = arg_0.d.xx;
    var_1 = vec2<i32>(43552i, abs(func_3().x));
    let var_2 = func_1().c;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>((~_wgslsmith_add_u32(u_input.a, u_input.d) == u_input.c.x) | global1.b.d.x, global1.c.c);
    global0 = array<Struct_1, 8>();
    var var_1 = Struct_1(vec4<u32>(~(~u_input.c.x & (u_input.d ^ 13813u)), ~_wgslsmith_sub_u32(min(1u, u_input.c.x), ~global1.c.a.x), global1.c.a.x, 1u), -2147483647i, !(!(!global1.b.d.x)), vec4<bool>(func_4(Struct_2(global1.b.b, func_1(), global0[_wgslsmith_index_u32(80672u, 8u)], countOneBits(global1.d)), ~global1.c.b), var_0.x, global1.c.c, global1.b.c), global1.b.e);
    var var_2 = func_1();
    let var_3 = !vec2<bool>(var_0.x, var_0.x);
    global0 = array<Struct_1, 8>();
    var_2 = Struct_1(vec4<u32>(global1.c.a.x, min(25388u, 1u), 1u, u_input.a), _wgslsmith_sub_i32(max(52259i, 0i), _wgslsmith_sub_i32(global1.a | u_input.b, 2147483647i)) & ~u_input.b, !func_4(Struct_2(-var_2.b, global1.c, global0[_wgslsmith_index_u32(var_2.a.x, 8u)], vec3<i32>(var_2.b, global1.b.b, var_1.b) | global1.d), ~22048i), var_1.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(min(1356f, 1381f)), _wgslsmith_f_op_f32(1429f - -390f), _wgslsmith_f_op_f32(196f * var_2.e.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1614f, -886f, var_2.e.x, global1.c.e.x)))))));
    global1 = Struct_2(_wgslsmith_clamp_i32(4715i, ~var_1.b, ~u_input.b), Struct_1(var_2.a, max(var_2.b, _wgslsmith_mod_i32(1i ^ global1.c.b, global1.c.b)), -736f != var_2.e.x, !vec4<bool>(all(vec4<bool>(var_1.d.x, global1.b.c, false, true)), false || var_3.x, any(vec3<bool>(var_1.c, var_1.d.x, var_1.d.x)), var_1.c), _wgslsmith_f_op_vec4_f32(ceil(global1.b.e))), Struct_1(abs(global1.c.a), countOneBits(2147483647i), var_3.x, func_1().d, vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -235f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1892f))), _wgslsmith_f_op_f32(f32(-1f) * -461f))), global1.d);
    global1 = Struct_2(8759i, global0[_wgslsmith_index_u32(var_1.a.x, 8u)], global0[_wgslsmith_index_u32(firstTrailingBit((var_1.a.x >> (firstTrailingBit(1u) % 32u)) << (var_2.a.x % 32u)), 8u)], global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b, 1i, global1.d.x, u_input.b), 0i, select(67441u, ~6954u, var_3.x));
}

