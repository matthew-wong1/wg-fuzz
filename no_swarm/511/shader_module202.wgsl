struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(48017u, true, Struct_1(vec3<i32>(-1i, -59465i, 44256i), vec4<f32>(-459f, 248f, -578f, 802f), vec4<i32>(10377i, -16333i, 1i, -1i), vec2<u32>(0u, 1u), -125f), -1103f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> i32 {
    global0 = Struct_3(45625u ^ _wgslsmith_dot_vec2_u32(arg_1.b.c.d, ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), arg_1.b.c.d)), !(arg_1.a & global0.b), Struct_1(vec3<i32>(_wgslsmith_div_i32(1i >> (global0.c.d.x % 32u), _wgslsmith_div_i32(-42309i, arg_1.c.x)), i32(-1i) * -u_input.a, -8250i), global0.c.b, (vec4<i32>(2328i, -1i, u_input.a, -31055i) >> ((vec4<u32>(0u, 1u, arg_1.b.a, 41197u) | vec4<u32>(4294967295u, 0u, arg_0, arg_1.b.c.d.x)) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(abs(vec4<u32>(66151u, arg_1.b.a, global0.c.d.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.a, arg_0, global0.c.d.x, arg_0), vec4<u32>(4294967295u, arg_0, 43101u, 4294967295u))) % vec4<u32>(32u)), arg_1.b.c.d, -569f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.e.x * _wgslsmith_f_op_f32(-arg_1.e.x)))));
    return countOneBits(global0.c.a.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = global0.c.c;
    var var_1 = global0.c.d;
    var_1 = (vec2<u32>(var_1.x, _wgslsmith_clamp_u32(global0.a, var_1.x, ~global0.a)) & abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.c.x, arg_1.c.x), _wgslsmith_div_vec2_u32(global0.c.d, vec2<u32>(var_1.x, 4294967295u)), global0.c.d ^ global0.c.d))) << (~arg_1.c % vec2<u32>(32u));
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-840f - _wgslsmith_f_op_f32(ceil(-383f)))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(803f, global0.c.b.x)) - global0.d))));
    let var_3 = global0.a;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(599f, 361f, _wgslsmith_f_op_f32(ceil(global0.d)), _wgslsmith_f_op_f32(-global0.c.e)) * global0.c.b));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    global0 = Struct_3(global0.a, global0.b, Struct_1(countOneBits(~vec3<i32>(global0.c.a.x, u_input.a, -1i)), vec4<f32>(_wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(select(arg_2.x, -646f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, arg_0.x))), arg_0.x, 1f), global0.c.c, vec2<u32>(global0.c.d.x, max(countOneBits(global0.a), _wgslsmith_mult_u32(4294967295u, global0.c.d.x))), arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(arg_3, Struct_2(global0.c.a.x, arg_1.yx, vec2<u32>(4294967295u, 0u)))).x + _wgslsmith_f_op_f32(-global0.c.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1059f))));
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1))));
    global0 = Struct_3(_wgslsmith_mult_u32(7373u << (abs(global0.c.d.x) % 32u), ~(~_wgslsmith_mod_u32(global0.a, 24960u))), global0.b, global0.c, arg_1.x);
    global0 = Struct_3(88780u, _wgslsmith_sub_u32(firstLeadingBit(global0.c.d.x) << ((global0.a | 33929u) % 32u), global0.c.d.x) >= firstTrailingBit((global0.a << (7284u % 32u)) << (1u % 32u)), global0.c, var_0.a.x);
    global0 = Struct_3(~(~_wgslsmith_dot_vec2_u32(global0.c.d, vec2<u32>(global0.a, 60669u))), global0.b, global0.c, arg_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.d)) * -780f) - arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -1635f)))));
}

fn func_2() -> Struct_5 {
    global0 = Struct_3(0u, !global0.b, Struct_1(global0.c.a, global0.c.b, -vec4<i32>(~global0.c.c.x, _wgslsmith_add_i32(global0.c.a.x, 0i), global0.c.c.x, i32(-1i) * -1i), ~vec2<u32>(global0.a, 21088u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-383f)))))), _wgslsmith_f_op_f32(func_5(global0.c.b.xw, vec3<f32>(_wgslsmith_f_op_f32(sign(global0.d)), 198f, global0.d), _wgslsmith_f_op_vec4_f32(func_4(global0.b, Struct_2(func_3(19378u, Struct_4(true, Struct_3(global0.c.d.x, global0.b, Struct_1(global0.c.c.zwy, vec4<f32>(global0.d, 1117f, global0.c.e, global0.d), vec4<i32>(u_input.a, global0.c.a.x, 0i, u_input.a), global0.c.d, 691f), global0.c.e), vec3<i32>(2003i, u_input.a, -26977i), vec4<bool>(global0.b, true, false, false), vec4<f32>(-333f, 1208f, -1309f, global0.c.b.x))), _wgslsmith_f_op_vec2_f32(-global0.c.b.zz), max(global0.c.d, vec2<u32>(62154u, global0.a))))), global0.b)));
    global0 = Struct_3(global0.a, global0.b, global0.c, _wgslsmith_f_op_vec4_f32(func_4(global0.b, Struct_2(func_3(32750u, Struct_4(global0.b, Struct_3(24626u, true, Struct_1(vec3<i32>(u_input.a, global0.c.c.x, u_input.a), vec4<f32>(global0.c.e, 1000f, -434f, global0.d), global0.c.c, global0.c.d, -1191f), -1915f), vec3<i32>(u_input.a, 45079i, 2147483647i), vec4<bool>(global0.b, global0.b, true, global0.b), global0.c.b)), _wgslsmith_f_op_vec2_f32(max(global0.c.b.wx, global0.c.b.wz)), max(select(vec2<u32>(40722u, global0.a), vec2<u32>(0u, 0u), global0.b), select(vec2<u32>(global0.c.d.x, 4294967295u), vec2<u32>(4514u, global0.a), vec2<bool>(global0.b, global0.b)))))).x);
    global0 = Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(17557u, global0.c.d.x), ~5117u, ~37785u, 11200u), firstTrailingBit(~vec4<u32>(1u, global0.c.d.x, global0.a, 63471u))), (~vec4<u32>(2770u, global0.c.d.x, global0.c.d.x, 1u) >> (max(vec4<u32>(1u, 4294967295u, global0.a, 4294967295u), vec4<u32>(global0.a, global0.c.d.x, 11279u, 10048u)) % vec4<u32>(32u))) ^ ~vec4<u32>(global0.c.d.x, global0.a, global0.a, global0.c.d.x)), ~(-1i) > firstTrailingBit(34525i), Struct_1(firstTrailingBit(vec3<i32>(u_input.a, func_3(global0.c.d.x, Struct_4(true, Struct_3(1u, global0.b, Struct_1(vec3<i32>(42755i, 39867i, 0i), global0.c.b, vec4<i32>(global0.c.c.x, 16355i, 1i, global0.c.a.x), global0.c.d, global0.d), -143f), global0.c.a, vec4<bool>(true, false, global0.b, global0.b), global0.c.b)), i32(-1i) * -53259i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-865f, 1076f, -127f, 745f))), -(~global0.c.c << ((vec4<u32>(4294967295u, global0.a, 0u, global0.a) >> (vec4<u32>(global0.a, 8223u, global0.c.d.x, 22517u) % vec4<u32>(32u))) % vec4<u32>(32u))), min(vec2<u32>(global0.c.d.x << (0u % 32u), _wgslsmith_sub_u32(global0.c.d.x, 37222u)), ~vec2<u32>(1u, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b.x) * _wgslsmith_f_op_f32(-808f + global0.d)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1535f * global0.d))))), -234f);
    let var_0 = Struct_2(countOneBits(~0i), global0.c.b.wx, vec2<u32>(global0.c.d.x, 40219u));
    global0 = Struct_3(1u, global0.b, Struct_1(vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(var_0.a), -11599i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, u_input.a, -9638i, global0.c.a.x) >> (vec4<u32>(0u, global0.c.d.x, global0.c.d.x, var_0.c.x) % vec4<u32>(32u)), vec4<i32>(-39931i, 2147483647i, -2147483647i, 1i) >> (vec4<u32>(global0.c.d.x, 31144u, var_0.c.x, 4294967295u) % vec4<u32>(32u)))), global0.c.b, _wgslsmith_clamp_vec4_i32(max(global0.c.c, vec4<i32>(-22596i, var_0.a, 1i, 1i) >> (vec4<u32>(var_0.c.x, 4294967295u, 4294967295u, 5334u) % vec4<u32>(32u))), firstTrailingBit(countOneBits(vec4<i32>(-8341i, u_input.a, u_input.a, -37113i))), reverseBits(vec4<i32>(1i, -2147483647i, global0.c.a.x, u_input.a))), _wgslsmith_add_vec2_u32(global0.c.d, abs(vec2<u32>(global0.a, var_0.c.x))), 243f), _wgslsmith_f_op_f32(213f - var_0.b.x));
    return Struct_5(global0.c.b.zyy);
}

fn func_1(arg_0: bool) -> Struct_5 {
    return func_2();
}

fn func_6(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_1.a.x, -43295i, abs(arg_1.a.x)), abs(arg_1.c.wzy));
    var var_1 = Struct_4(true, Struct_3(firstLeadingBit(_wgslsmith_add_u32(global0.a, 4294967295u)), global0.b, Struct_1(vec3<i32>(global0.c.a.x, arg_1.a.x, -24737i >> (arg_1.d.x % 32u)), arg_2, vec4<i32>(~arg_1.c.x, u_input.a, u_input.a << (4294967295u % 32u), 1i), firstLeadingBit(arg_1.d), _wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(arg_0.a.x * arg_2.x))), 1264f), vec3<i32>(var_0.x, arg_1.a.x, ~var_0.x), select(vec4<bool>(!global0.b, !(!global0.b), true, false), !vec4<bool>(select(global0.b, true, false), !global0.b, true, global0.b || true), false), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -913f, arg_2.x, 743f))), vec4<bool>(global0.b, !global0.b, !global0.b, true))));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-global0.c.c.x, -11450i), 10407i, var_0.x);
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), arg_2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b.c.b.x - var_1.e.x), 103f)))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.x, 212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-846f * _wgslsmith_f_op_f32(floor(518f)))), 1461f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_2))))), true));
    return StorageBuffer(firstTrailingBit(vec3<u32>(0u, _wgslsmith_clamp_u32(global0.c.d.x, firstTrailingBit(49788u), global0.c.d.x & 46257u), var_1.b.a)), _wgslsmith_f_op_vec4_f32(-arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_1(!global0.b), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-u_input.a, _wgslsmith_div_i32(-1i, 2147483647i), ~global0.c.a.x), 13841i, -2147483647i), _wgslsmith_f_op_vec4_f32(func_4(true, Struct_2(-2147483647i, _wgslsmith_f_op_vec2_f32(-global0.c.b.yy), global0.c.d))), global0.c.c, reverseBits(~(~vec2<u32>(1u, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.e)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-881f, -195f, _wgslsmith_div_f32(-1896f, global0.d), _wgslsmith_f_op_f32(-global0.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1277f, -125f, global0.d))), _wgslsmith_f_op_vec4_f32(abs(global0.c.b))), all(vec4<bool>(true, false, global0.b, false)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global0.c.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.d, -366f, 291f, -2673f)))))))));
}

