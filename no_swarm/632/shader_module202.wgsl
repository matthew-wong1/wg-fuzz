struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<i32, 7> = array<i32, 7>(11294i, 0i, -1i, 19874i, 16717i, -1i, -1i);

var<private> global3: array<Struct_1, 4>;

var<private> global4: array<i32, 4> = array<i32, 4>(-1i, 19804i, 0i, 4453i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1820f + -251f) + -1251f)), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) - _wgslsmith_f_op_f32(-1725f * 288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2523f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -993f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(-784f)), -468f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(719f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(961f)))))));
    var var_1 = !(!vec2<bool>(global0.x, false && global0.x));
    let var_2 = var_0.x;
    global1 = 65242u;
    return vec3<bool>(_wgslsmith_f_op_f32(round(1321f)) < 979f, _wgslsmith_f_op_f32(2075f * _wgslsmith_f_op_f32(min(614f, 1390f))) != var_0.x, false);
}

fn func_2(arg_0: f32) -> vec3<u32> {
    var var_0 = vec3<bool>(global0.x, !all(!vec2<bool>(global0.x, global0.x)), global0.x);
    let var_1 = any(select(var_0.xx, var_0.xz, vec2<bool>(false, any(!vec3<bool>(global0.x, true, global0.x)))));
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~abs(u_input.b), ~1u), _wgslsmith_add_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.e, 18739u)), u_input.c)), 4u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 471f), u_input.e, select(any(!func_3(vec4<bool>(false, true, var_0.x, var_1), global3[_wgslsmith_index_u32(6950u, 4u)], 52598u)), var_0.x, true));
    let var_3 = arg_0;
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(71179u, u_input.a.x), vec2<u32>(u_input.c.x, var_2.c))) ^ u_input.a.wx, firstLeadingBit(vec2<u32>(var_2.a.c << (u_input.a.x % 32u), ~u_input.b))), firstLeadingBit(u_input.c)), 4u)];
    return ~select(vec3<u32>(reverseBits(firstLeadingBit(var_4.c)), var_4.c, ~countOneBits(u_input.b)), u_input.a.xyz, global0.x);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -421f)))))) - -781f);
    global3 = array<Struct_1, 4>();
    var var_1 = ~(~(~firstTrailingBit(~vec2<u32>(1u, 46237u))));
    let var_2 = global0.x;
    global3 = array<Struct_1, 4>();
    return global3[_wgslsmith_index_u32(1u, 4u)];
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global3 = array<Struct_1, 4>();
    var var_0 = arg_0;
    var_0 = Struct_1(21393i, -1i, firstTrailingBit(~reverseBits(1u)));
    global3 = array<Struct_1, 4>();
    let var_1 = vec4<bool>(select(abs(countOneBits(u_input.e)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~u_input.a), true) > 61356u, !any(vec2<bool>(true, true)), global0.x, false);
    return Struct_2(Struct_1(global4[_wgslsmith_index_u32(arg_0.c, 4u)], -1i, var_0.c | _wgslsmith_add_u32(~72473u, arg_0.c)), _wgslsmith_f_op_f32(-1113f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), abs(max(arg_0.c, _wgslsmith_sub_u32(42102u, var_0.c) >> (~var_0.c % 32u))), -1233i >= max(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, global4[_wgslsmith_index_u32(1110u, 4u)], u_input.d.x), vec3<i32>(global4[_wgslsmith_index_u32(u_input.e, 4u)], -30643i, -15900i)) ^ 0i));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = max(u_input.a, vec4<u32>(0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), vec4<u32>(10270u, 4294967295u, u_input.e, 40154u)), ~4294967295u | ~arg_1.c, 99768u)) ^ (u_input.a << (_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(1u, 3852u, arg_3.c, 1u), vec4<u32>(arg_1.a.c, u_input.b, arg_1.c, 72810u), vec4<bool>(false, false, arg_3.d, global0.x)), u_input.a, ~(~vec4<u32>(arg_1.c, arg_3.c, arg_3.c, 29524u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-169f - arg_3.b) - -1006f), _wgslsmith_f_op_f32(step(arg_1.b, 146f)), -1408f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(861f, -1161f, -153f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, -1842f, 662f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b, arg_3.b, -698f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.b, 160f, 1276f))), !global0.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, -370f), vec3<f32>(arg_3.b, 836f, 100f)))))));
    var var_2 = vec4<bool>(all(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.d, true, arg_1.d, false), select(select(vec4<bool>(global0.x, false, arg_3.d, false), vec4<bool>(false, global0.x, arg_3.d, false), true), vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(arg_1.d, arg_3.d, false, false)))), any(vec3<bool>(all(!vec3<bool>(arg_3.d, false, true)), true, true & func_5(arg_3.a).d)), !global0.x, arg_3.d);
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b * arg_3.b) - 414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.b))), _wgslsmith_f_op_f32(-116f - _wgslsmith_f_op_f32(f32(-1f) * -327f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.b, var_1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2192f, _wgslsmith_f_op_f32(arg_1.b - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_div_f32(arg_3.b, -1113f))) - vec4<f32>(arg_1.b, arg_1.b, var_1.x, arg_1.b)));
    var var_4 = arg_1;
    return Struct_2(func_4(118f, ~select(vec3<u32>(var_0.x, arg_3.c, var_0.x), ~u_input.a.xxy, -2385f <= var_1.x), ~firstLeadingBit(39996u) ^ ~var_0.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.c, var_4.c, 102u) << (vec3<u32>(3043u, 85107u, 1u) % vec3<u32>(32u)), vec3<u32>(arg_3.a.c, 4294967295u, var_0.x) ^ ~vec3<u32>(4294967295u, var_4.a.c, 4294967295u), u_input.a.zzw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1033f * -452f))))), ~(~((4294967295u << (0u % 32u)) | arg_1.a.c)), (arg_3.c & ~4294967295u) > arg_1.a.c);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = func_6(~min(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_1.a, global2[_wgslsmith_index_u32(u_input.e, 7u)]), vec2<i32>(29835i, 1i)), vec2<i32>(_wgslsmith_div_i32(arg_1.a, -2147483647i), arg_1.b)), func_5(func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-802f)))), _wgslsmith_mult_vec3_u32(func_2(506f), vec3<u32>(u_input.a.x, arg_1.c, arg_1.c) & vec3<u32>(4294967295u, 69469u, arg_0.x)), ~arg_0.x, _wgslsmith_sub_vec3_u32(~u_input.a.wwx, u_input.a.zwy ^ arg_0.xzy))), arg_1.b, Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x | arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.zw, vec2<u32>(4294967295u, 52138u)), arg_0.x, 1u), _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.a), min(u_input.a, u_input.a))), 4u)], _wgslsmith_f_op_f32(f32(-1f) * -840f), arg_0.x, (arg_0.x >= 4294967295u) & true));
    global1 = arg_0.x;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(17361i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, u_input.d.x, 42709i, arg_1.a), vec4<i32>(-1i, 2147483647i, 30292i, 0i), global0.x), _wgslsmith_add_vec4_i32(u_input.d, u_input.d))), func_4(var_0.b, vec3<u32>(arg_1.c | select(u_input.a.x, 25414u, global0.x), ~_wgslsmith_mult_u32(var_0.a.c, var_0.a.c), ~var_0.a.c), _wgslsmith_sub_u32(~(~1u), _wgslsmith_clamp_u32(abs(17679u), ~0u, var_0.c & 0u)), ~_wgslsmith_sub_vec3_u32(abs(u_input.a.xww), ~vec3<u32>(u_input.e, 12108u, 23502u))).a);
    return select(~(1i ^ _wgslsmith_sub_i32(countOneBits(var_0.a.b), 0i)), arg_1.a, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 4>();
    var var_0 = func_1(u_input.a, Struct_1(u_input.d.x, global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.c.x, 0u, 570u)), 4u)] << (countOneBits(~u_input.e) % 32u), _wgslsmith_dot_vec3_u32(u_input.a.xzw, (u_input.a.wxz | u_input.a.xwy) | _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 15378u, u_input.b), u_input.a.www))));
    let var_1 = Struct_2(Struct_1(reverseBits(-_wgslsmith_sub_i32(-2147483647i, 0i)), 33325i, reverseBits(func_5(global3[_wgslsmith_index_u32(select(12831u, u_input.e, true), 4u)]).a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-486f, -407f))) + _wgslsmith_f_op_f32(trunc(138f))), 5775u, global0.x);
    var var_2 = var_1.d;
    var var_3 = var_1;
    var var_4 = Struct_2(global3[_wgslsmith_index_u32(~1u, 4u)], var_3.b, 37760u, select(true, var_1.d, global0.x));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(var_3.b * var_4.b))))))), _wgslsmith_f_op_f32(floor(var_4.b)));
    var var_6 = -(~abs(func_4(_wgslsmith_f_op_f32(-337f - -718f), vec3<u32>(27202u, 4294967295u, var_1.c), var_1.c | var_4.c, ~vec3<u32>(var_4.c, 78557u, 1u)).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_5)), var_1.b), u_input.d, _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(abs(u_input.b), 4u)] >> ((489u >> (1u % 32u)) % 32u), 2477i) ^ min(var_3.a.a, var_4.a.a));
}

