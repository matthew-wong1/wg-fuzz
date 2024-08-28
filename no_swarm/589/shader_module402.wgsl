struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-1257f, 827f), vec2<f32>(-1000f, 2353f), vec2<f32>(-634f, 954f), vec2<f32>(1048f, 770f), vec2<f32>(162f, 1356f), vec2<f32>(507f, 889f), vec2<f32>(-1402f, -1000f), vec2<f32>(250f, 1380f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = !any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - arg_0.a.x);
    var var_2 = countOneBits(~firstTrailingBit(~0u));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) * -1000f), _wgslsmith_f_op_f32(625f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - var_1) + -1447f))), -503f);
    return 51497u;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: bool) -> Struct_3 {
    var var_0 = ~firstLeadingBit(1u);
    var var_1 = (arg_1.x | (func_3(Struct_2(global0[_wgslsmith_index_u32(arg_1.x, 8u)])) ^ _wgslsmith_div_u32(1u, 0u | arg_1.x))) ^ _wgslsmith_sub_u32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(95628u, 8u)])))), ~(~arg_1.x) & _wgslsmith_mod_u32(firstTrailingBit(4294967295u), reverseBits(36772u)));
    var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(arg_1.x, arg_1.x)) << (vec2<u32>(6869u, ~52176u) % vec2<u32>(32u)), firstTrailingBit(min(countOneBits(arg_1), vec2<u32>(0u, 3210u))));
    let var_2 = Struct_3(_wgslsmith_mod_u32(arg_1.x, ~arg_1.x & max(abs(arg_1.x), 3417u)), Struct_2(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, 11484u), 8u)]))));
    var var_3 = var_2;
    return Struct_3(0u, var_3.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    global0 = array<vec2<f32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b.a.x)));
    let var_1 = _wgslsmith_div_i32(min(_wgslsmith_mult_i32(u_input.a, -1i), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.x, u_input.a, u_input.a), arg_1.x)), -2147483647i);
    let var_2 = _wgslsmith_mult_vec4_u32(reverseBits(firstTrailingBit(~select(vec4<u32>(23262u, arg_2.a, arg_2.a, arg_2.a), vec4<u32>(arg_2.a, 4294967295u, 0u, 4294967295u), vec4<bool>(true, false, false, arg_0.x)))), ~vec4<u32>(firstTrailingBit(arg_2.a << (arg_2.a % 32u)), arg_2.a, arg_2.a, ~0u >> (min(30395u, 1u) % 32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.a.x, _wgslsmith_div_f32(arg_2.b.a.x, var_0), _wgslsmith_f_op_f32(round(arg_2.b.a.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, -1800f, _wgslsmith_f_op_f32(max(-299f, _wgslsmith_f_op_f32(-var_0)))))));
    return func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-33770i, 36440i), arg_1.zx), var_1, -2147483647i >> (var_2.x % 32u), arg_1.x), vec4<i32>(_wgslsmith_mult_i32(arg_1.x, -2147483647i), _wgslsmith_dot_vec3_i32(arg_1, _wgslsmith_clamp_vec3_i32(vec3<i32>(52846i, u_input.a, arg_1.x), vec3<i32>(2440i, var_1, 1i), arg_1)), _wgslsmith_div_i32(var_1 ^ 14216i, -51805i), abs(-12264i))), var_2.yw, all(vec4<bool>(true, !(var_0 > 1499f), arg_0.x, arg_0.x))).b;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<f32>, 8>();
    var var_0 = vec4<i32>(-2147483647i, arg_0, ~u_input.a, -(0i >> (~select(1u, arg_1.a, true) % 32u)));
    let var_1 = arg_1;
    var var_2 = 1u;
    let var_3 = -1589f;
    return Struct_1(arg_0, arg_2, _wgslsmith_div_vec2_i32(firstTrailingBit(~select(var_0.xw, var_0.xw, vec2<bool>(true, false))), vec2<i32>(-_wgslsmith_mod_i32(-15561i, -1i), var_0.x)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(17582i, -183f, _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.a, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(2147483647i, u_input.a))), firstTrailingBit(vec2<i32>(i32(-1i) * -5569i, u_input.a))));
    var_0 = func_5(-53671i, Struct_3(arg_0, func_4(vec3<bool>(true, true, u_input.a <= -1i), _wgslsmith_mult_vec3_i32(max(vec3<i32>(-10709i, u_input.a, var_0.c.x), vec3<i32>(28912i, var_0.c.x, var_0.a)), ~vec3<i32>(var_0.c.x, 0i, var_0.c.x)), func_2(2147483647i, _wgslsmith_div_vec2_u32(vec2<u32>(755u, arg_0), vec2<u32>(8892u, arg_0)), true), false)), func_2(u_input.a, vec2<u32>(func_2(-2147483647i, vec2<u32>(arg_0, 35409u), any(vec3<bool>(true, true, true))).a, arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 10351i, -4642i) ^ vec4<i32>(-7386i, u_input.a, -56560i, -2147483647i), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)) < ((i32(-1i) * -16981i) ^ var_0.c.x)).b.a.x);
    var_0 = func_5(10998i, Struct_3(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, arg_0), _wgslsmith_div_u32(4294967295u, 1u)), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(70905u, 8u)] + vec2<f32>(var_0.b, 368f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1464f))))), _wgslsmith_f_op_f32(f32(-1f) * -245f));
    let var_1 = vec3<i32>(_wgslsmith_add_i32(-19455i, u_input.a) >> (38424u % 32u), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(59314i, -1i, 11821i), vec3<i32>(var_0.c.x, var_0.a, u_input.a))), 2147483647i);
    let var_2 = var_0.a < ~(~(-1i));
    return Struct_1(abs(~(-4571i)), _wgslsmith_div_f32(func_4(!select(vec3<bool>(var_2, true, false), vec3<bool>(false, var_2, var_2), vec3<bool>(false, true, var_2)), select(vec3<i32>(u_input.a, -30342i, 31143i), abs(vec3<i32>(-1i, 13836i, var_1.x)), !vec3<bool>(var_2, false, true)), Struct_3(21805u << (arg_0 % 32u), Struct_2(vec2<f32>(var_0.b, -405f))), !var_2).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.b)))))), var_0.c);
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = vec2<i32>(reverseBits(1i), -max(arg_2.x, _wgslsmith_dot_vec4_i32(-arg_2, arg_2)));
    var var_1 = Struct_1(_wgslsmith_mult_i32(-2147483647i, ~func_5(-2717i, Struct_3(4294967295u, Struct_2(global0[_wgslsmith_index_u32(33700u, 8u)])), arg_0.b).c.x), arg_1, func_1(abs(_wgslsmith_mod_u32(5364u, 36199u))).c);
    let var_2 = countOneBits(max(vec3<u32>(1u, 1u, 1u), ~(~(~vec3<u32>(1u, 26407u, 38503u)))));
    return Struct_3(var_2.x, func_2(~select(-1i, arg_2.x, 197f >= var_1.b), _wgslsmith_mod_vec2_u32(reverseBits(abs(var_2.xz)), ~abs(vec2<u32>(49241u, var_2.x))), true).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(~(~_wgslsmith_mod_u32(1u, 810u))), -761f, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), ~vec4<i32>(1i, u_input.a, u_input.a, -1i) ^ vec4<i32>(-1i, -50092i, -18358i, -2147483647i)) & max(vec4<i32>(1i, u_input.a, u_input.a, min(u_input.a, u_input.a)), -vec4<i32>(31268i, 18866i, u_input.a, u_input.a)));
    let var_1 = ~_wgslsmith_sub_u32(0u >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, var_0.a, 27674u), 1u) % 32u), _wgslsmith_mult_u32(func_3(Struct_2(var_0.b.a)), 40802u));
    var var_2 = func_2(u_input.a, vec2<u32>(_wgslsmith_sub_u32(~var_0.a, _wgslsmith_mod_u32(var_1, 15338u)), ~1u) & vec2<u32>(min(~var_1, _wgslsmith_mult_u32(0u, 4294967295u)), func_2(1i, vec2<u32>(var_0.a, var_1), true).a), true);
    var var_3 = func_6(Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -508f), ~vec2<i32>(-1i, _wgslsmith_add_i32(u_input.a, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f))) * -1193f), abs(abs(vec4<i32>(-42656i, 2147483647i, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i))));
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_2.b.a.x)), func_6(Struct_1(0i, var_2.b.a.x, vec2<i32>(u_input.a, u_input.a)), 193f, vec4<i32>(-59894i, u_input.a, u_input.a, -1i)).b.a.x)), 1000f), func_5((i32(-1i) * -306i) & -u_input.a, Struct_3(52767u & var_1, func_6(Struct_1(u_input.a, 241f, vec2<i32>(u_input.a, 2147483647i)), -1415f, vec4<i32>(u_input.a, u_input.a, 43682i, -1i)).b), var_2.b.a.x).b, _wgslsmith_f_op_f32(select(var_2.b.a.x, -499f, false)), _wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.a.x))), 821f, var_3.b.a.x, -1000f) * vec4<f32>(-1446f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(200f, var_2.b.a.x)), -476f, func_2(u_input.a, vec2<u32>(var_0.a, 0u), all(vec4<bool>(true, true, true, true))).b.a.x)));
    var_0 = func_2(-_wgslsmith_mult_i32(1i >> ((var_2.a | var_1) % 32u), _wgslsmith_mod_i32(-u_input.a, u_input.a)), ~(select(select(vec2<u32>(var_0.a, 58521u), vec2<u32>(0u, var_1), vec2<bool>(false, true)), reverseBits(vec2<u32>(var_1, var_2.a)), select(vec2<bool>(false, true), vec2<bool>(true, false), true)) >> (~vec2<u32>(15159u, var_3.a) % vec2<u32>(32u))), true && any(vec2<bool>(true, true)));
    var var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, max(u_input.a, 3180i), _wgslsmith_mod_vec3_i32(-abs(~vec3<i32>(u_input.a, u_input.a, 29775i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.a, 0i, -40647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-39473i, u_input.a, 2147483647i))))));
}

