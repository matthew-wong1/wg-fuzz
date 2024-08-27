struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<f32, 21> = array<f32, 21>(-590f, -1689f, 1000f, 1545f, 1367f, 230f, 1639f, 743f, 1000f, 249f, -1751f, -224f, -2283f, -403f, 2236f, 317f, -228f, 1000f, -285f, 1382f, 1499f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(firstLeadingBit(~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 21u)] * _wgslsmith_f_op_f32(ceil(-137f)))))), -u_input.a);
    var var_1 = global1[_wgslsmith_index_u32(0u, 31u)];
    let var_2 = !vec4<bool>(!all(!global0.zw), global0.x, any(select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), false)), !global0.x);
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-201f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1511f, 727f)))))), min(-var_1.c, firstLeadingBit(~var_0.c)) ^ 2147483647i);
    var var_4 = global1[_wgslsmith_index_u32(var_0.a | _wgslsmith_mult_u32(0u, 4294967295u), 31u)];
    return ~0u;
}

fn func_2() -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_mod_u32(29823u, ~u_input.b)), 31u)];
    var var_1 = var_0.c;
    let var_2 = var_0.b;
    var var_3 = Struct_2(Struct_1(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b - -233f), _wgslsmith_f_op_f32(f32(-1f) * -695f)))), ~(~(-1i))), select(global0.yzx, vec3<bool>(global0.x, (u_input.b | 21454u) <= _wgslsmith_clamp_u32(1u, 23331u, var_0.a), (u_input.c.x != 1i) || true), global0.zxw), _wgslsmith_dot_vec2_u32(~vec2<u32>(~var_0.a, ~var_0.a), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b))), u_input.d.x);
    let var_4 = global1[_wgslsmith_index_u32(var_3.a.a, 31u)];
    return Struct_2(Struct_1(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 40526u, var_0.a), vec4<u32>(var_0.a, 51219u, u_input.b, u_input.b)), 7995u) << (1u % 32u), var_4.b, abs(-2147483647i)), !var_3.b, ~var_4.a, var_0.c);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(-655f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.c, u_input.b), arg_1.a.a), 21u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b - -1156f))));
    var var_1 = _wgslsmith_sub_vec3_u32(~(~(~(~vec3<u32>(72051u, 85337u, arg_1.a.a)))), ~_wgslsmith_div_vec3_u32(~(vec3<u32>(4294967295u, 8419u, arg_1.c) >> (vec3<u32>(4294967295u, arg_1.a.a, 1u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.c, u_input.b, u_input.b), vec3<u32>(4860u, u_input.b, 93245u), vec3<u32>(u_input.b, arg_1.a.a, arg_1.c)), ~vec3<u32>(u_input.b, u_input.b, 32997u))));
    global2 = array<f32, 21>();
    let var_2 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(-reverseBits(-1i), -(arg_1.d >> (var_1.x % 32u)), -2147483647i | u_input.a, arg_0), vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(-14016i), -u_input.d.x), -37947i, ~arg_1.a.c, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x, arg_0), ~(-18852i))), arg_1.b.x), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, u_input.d.x, arg_1.a.c, -1i) ^ vec4<i32>(26436i, arg_1.a.c, arg_1.a.c, arg_3), -vec4<i32>(u_input.c.x, -2147483647i, arg_1.d, 0i), max(vec4<i32>(arg_0, -8799i, -29190i, 0i), vec4<i32>(arg_1.a.c, arg_1.d, arg_1.d, u_input.a)))));
    var var_3 = vec2<bool>(!global0.x, true);
    return -max(firstLeadingBit(arg_0) >> (abs(0u) % 32u), var_2) <= 2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_sub_i32(~u_input.c.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(27406i, _wgslsmith_mult_i32(18687i, 0i), firstLeadingBit(-17374i)), 17207i & u_input.d.x, arg_1.x)), func_2(), vec2<f32>(437f, arg_0.a.b), -countOneBits(-1i));
    let var_1 = func_2().a;
    var var_2 = abs(1u);
    global2 = array<f32, 21>();
    var var_3 = 4294967295u;
    return func_2().a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = false;
    global1 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(911f, -738f, arg_0.b, arg_2.a.b)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-543f, _wgslsmith_f_op_f32(abs(1834f)), -645f, -924f)));
    global0 = vec4<bool>(true, -526f >= arg_2.a.b, true, true);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.yyy)), var_1.yzx, arg_2.b));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~_wgslsmith_add_vec4_i32(firstLeadingBit(abs(vec4<i32>(-1i, 0i, 2147483647i, u_input.d.x))), -vec4<i32>(u_input.a, 0i, 2147483647i, u_input.c.x)));
    var var_1 = global1[_wgslsmith_index_u32(~(~func_5(func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.b, 31u)], vec3<bool>(global0.x, global0.x, global0.x), u_input.b, var_0.x), vec3<i32>(-2147483647i, u_input.a, 2147483647i), Struct_1(u_input.b, -1070f, 45486i)), Struct_1(43477u, _wgslsmith_f_op_f32(round(-581f)), 0i), func_2())), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.b), func_2().c), u_input.b, 4294967295u), select(~vec3<u32>(29075u, var_1.a, 1u), select(select(vec3<u32>(var_1.a, var_1.a, 4294967295u), vec3<u32>(1u, 1u, 59605u), true), vec3<u32>(u_input.b, var_1.a, u_input.b), false), true)));
}

