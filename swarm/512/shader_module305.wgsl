struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, vec4<f32>(116f, -667f, 191f, 836f), vec4<u32>(41495u, 9574u, 0u, 63309u), 1147f), -2043f, Struct_1(true, vec4<f32>(861f, 1000f, -176f, 141f), vec4<u32>(47629u, 1u, 1u, 45227u), 335f), -3732i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    let var_0 = arg_1.a;
    global0 = Struct_2(var_0, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-global0.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.b.x), -299f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(202f)), _wgslsmith_f_op_f32(ceil(arg_1.b)), select(false, global0.a.a, arg_0.c))))), arg_1.c, firstTrailingBit(_wgslsmith_clamp_i32(arg_0.d, -(26294i ^ arg_1.d), min(_wgslsmith_mod_i32(arg_0.d, global0.d), -1i))));
    global0 = Struct_2(Struct_1(!arg_1.c.a, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d + var_0.d), _wgslsmith_f_op_f32(min(155f, 1245f)))), _wgslsmith_f_op_f32(f32(-1f) * -337f), 1751f, _wgslsmith_f_op_f32(arg_0.e.x + _wgslsmith_f_op_f32(-var_0.d))), ~firstTrailingBit(vec4<u32>(4294967295u, 0u, 4294967295u, 32208u)), -191f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(trunc(-1755f))), Struct_1(!(_wgslsmith_f_op_f32(step(-284f, var_0.b.x)) > _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1.c.b)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, var_0.d, global0.c.d, 1632f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c.b.x, arg_1.a.b.x, -1000f, -2077f), vec4<f32>(arg_1.c.b.x, var_0.d, var_0.d, -905f))))), global0.c.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1299f, global0.c.d)), -146f, min(0u, global0.c.c.x) > ~0u))), ~(i32(-1i) * -1i));
    global0 = arg_1;
    global0 = arg_1;
    return arg_1.c.d;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mod_i32(u_input.b.x, -global0.d);
    global0 = Struct_2(global0.c, global0.c.d, Struct_1(_wgslsmith_f_op_f32(-910f - global0.a.d) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(global0.a.a, global0.a.a, true, true), u_input.b.yy, global0.c.a, -52539i, vec2<f32>(global0.a.b.x, 1890f)), Struct_2(Struct_1(false, global0.a.b, vec4<u32>(global0.c.c.x, global0.c.c.x, 16544u, 1u), -1000f), -372f, global0.c, -1i), vec2<u32>(67336u, 32168u), false)))), _wgslsmith_div_vec4_f32(global0.c.b, global0.c.b), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(global0.a.c, vec4<u32>(4294967295u, 1u, global0.c.c.x, 55444u)) << ((vec4<u32>(global0.a.c.x, global0.a.c.x, 4294967295u, global0.a.c.x) & vec4<u32>(1u, global0.c.c.x, 1u, global0.c.c.x)) % vec4<u32>(32u)), abs(~global0.c.c)), global0.b), -global0.d);
    var_0 = _wgslsmith_dot_vec4_i32(max(abs(select(-vec4<i32>(global0.d, global0.d, 2147483647i, -7564i), -vec4<i32>(u_input.b.x, -1i, global0.d, global0.d), vec4<bool>(global0.a.a, global0.c.a, true, global0.c.a))), u_input.a), _wgslsmith_add_vec4_i32(u_input.a, ~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.d, 1i, global0.d, 8232i), u_input.a))));
    var_0 = _wgslsmith_dot_vec4_i32(-u_input.a, u_input.a) ^ global0.d;
    var_0 = 2147483647i;
    return -_wgslsmith_sub_i32(min(global0.d, ~firstLeadingBit(0i)), ~u_input.a.x);
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = false;
    var var_1 = reverseBits(_wgslsmith_mult_i32(~(~2147483647i), func_2())) > global0.d;
    let var_2 = _wgslsmith_mod_vec2_u32(global0.c.c.wy, abs(vec2<u32>(2573u, _wgslsmith_mod_u32(global0.a.c.x, 26741u))) & ~(~(~vec2<u32>(4294967295u, arg_0.a.x))));
    var_1 = true;
    let var_3 = Struct_2(Struct_1(any(vec4<bool>(4294967295u <= arg_0.a.x, global0.c.d >= 1166f, !var_0, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.b)), ~((vec4<u32>(arg_0.b.a.c.x, global0.c.c.x, global0.c.c.x, global0.c.c.x) ^ vec4<u32>(1u, 4294967295u, var_2.x, var_2.x)) << (~vec4<u32>(16721u, global0.c.c.x, global0.a.c.x, var_2.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) - _wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.d, arg_0.c.x)))), _wgslsmith_f_op_f32(ceil(988f)), global0.c, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.d, arg_0.b.d, -1i)), vec3<i32>(firstTrailingBit(abs(global0.d)), _wgslsmith_div_i32(~arg_0.b.d, 61520i), firstTrailingBit(arg_0.b.d))));
    return Struct_2(Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(true, true, false, false), u_input.a.zx, var_3.a.a, 2147483647i, arg_0.c), arg_0.b, vec2<u32>(var_3.c.c.x, 14573u), true)), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1224f, arg_0.b.b)))), -1142f), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~0u, ~var_2.x, _wgslsmith_mod_u32(0u, 8062u)), abs(abs(vec4<u32>(global0.c.c.x, var_2.x, global0.c.c.x, 9378u)))), _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(-222f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b)) * -1100f), _wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(global0.a.a, false, global0.a.a, false), u_input.c.zw, false, 0i, arg_0.c), Struct_2(global0.c, global0.a.d, Struct_1(false, var_3.c.b, global0.c.c, arg_0.b.c.d), 25762i), var_2, select(var_0, true, var_3.a.a))))), arg_0.b.c, firstTrailingBit(var_3.d) >> (var_3.c.c.x % 32u));
}

fn func_4(arg_0: Struct_4) -> u32 {
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(global0.c.d < _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_vec4_f32(global0.c.b - vec4<f32>(-247f, _wgslsmith_div_f32(1764f, global0.b), _wgslsmith_f_op_f32(819f * -1000f), _wgslsmith_f_op_f32(-351f * global0.c.b.x))), ~global0.c.c << ((global0.c.c | vec4<u32>(global0.c.c.x, global0.a.c.x, global0.a.c.x, global0.c.c.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b.x - -921f) * _wgslsmith_f_op_f32(global0.b - global0.a.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.b.x, global0.c.d), _wgslsmith_f_op_f32(272f + _wgslsmith_f_op_f32(-global0.b))), -1000f)), global0.a, _wgslsmith_sub_i32(6685i, u_input.b.x));
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 0u), ~vec2<u32>(39756u, global0.c.c.x) << ((vec2<u32>(global0.c.c.x, 0u) ^ vec2<u32>(global0.a.c.x, global0.c.c.x)) % vec2<u32>(32u))), func_4(Struct_4(vec3<u32>(global0.a.c.x, 0u, global0.a.c.x), func_1(Struct_4(global0.c.c.xxx, Struct_2(global0.c, 1288f, Struct_1(global0.c.a, vec4<f32>(-1474f, 578f, global0.c.b.x, global0.b), global0.c.c, -611f), 15266i), vec2<f32>(global0.a.b.x, 467f), global0.a.a)), _wgslsmith_f_op_vec2_f32(global0.a.b.wz * global0.a.b.yw), all(vec3<bool>(false, true, false)))), func_4(Struct_4(vec3<u32>(global0.a.c.x, global0.c.c.x, 42730u), Struct_2(global0.c, global0.b, global0.c, -57314i), _wgslsmith_div_vec2_f32(global0.a.b.wz, global0.c.b.ww), true))) << (~firstTrailingBit(vec3<u32>(12484u, 1u, ~28281u)) % vec3<u32>(32u));
    let var_1 = global0.c.c.x;
    global0 = func_1(Struct_4(min(max(global0.c.c.zyx, global0.a.c.ywy), global0.a.c.xwy) ^ ~vec3<u32>(global0.c.c.x, var_0.x, var_0.x), func_1(Struct_4(global0.c.c.xyw, func_1(Struct_4(vec3<u32>(global0.c.c.x, 10566u, 54833u), Struct_2(Struct_1(true, vec4<f32>(global0.a.b.x, global0.b, 1251f, 123f), global0.c.c, -863f), 1475f, Struct_1(true, vec4<f32>(global0.c.b.x, global0.a.d, 1033f, -1269f), global0.c.c, global0.c.d), -54555i), vec2<f32>(-1360f, 977f), global0.c.a)), _wgslsmith_div_vec2_f32(global0.c.b.ww, global0.a.b.yz), all(vec3<bool>(global0.a.a, global0.c.a, global0.c.a)))), global0.c.b.yw, !func_1(Struct_4(vec3<u32>(1u, 30465u, var_0.x), Struct_2(global0.a, -1473f, global0.a, u_input.c.x), vec2<f32>(-992f, -417f), global0.a.a)).a.a));
    global0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_vec4_f32(-global0.a.b), ~vec4<u32>(firstTrailingBit(71206u), var_0.x | 4294967295u, ~var_0.x, ~global0.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-808f)))))), func_1(Struct_4(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 8690u, var_0.x), vec4<u32>(2971u, 30809u, 28945u, 503u)), 0u, 0u), Struct_2(global0.a, -1000f, Struct_1(global0.a.a, vec4<f32>(global0.a.d, 876f, -460f, global0.b), vec4<u32>(4294967295u, 1u, 1u, global0.a.c.x), -2280f), 2147483647i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(global0.c.b.yy)))), global0.c.a)).b, global0.c, min(u_input.c.x, max(func_2(), 0i)));
    var var_2 = global0.c.b.zyw;
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<u32>(global0.a.c.x, _wgslsmith_add_u32(4294967295u, var_0.x)), reverseBits(vec2<u32>(global0.a.c.x, firstLeadingBit(global0.a.c.x)))), vec2<f32>(global0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f - global0.a.d) * 337f))));
}

