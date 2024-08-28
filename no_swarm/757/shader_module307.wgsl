struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-447f, 1639f), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-680f, 1357f, 1091f, -895f), vec3<bool>(false, false, false)), 15214i);

var<private> global1: array<u32, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = ~(-select(arg_1.yzw ^ arg_1.wwz, vec3<i32>(1i, ~(-28925i), -68944i), arg_3));
    var_0 = vec3<i32>(_wgslsmith_mod_i32(global0.c, firstTrailingBit(-32784i)), 0i, var_0.x) >> (~abs(~vec3<u32>(global0.b.a.x, 20794u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13282u, 10u)], 10u)])) % vec3<u32>(32u));
    return Struct_4(global0.b, _wgslsmith_sub_vec3_u32(firstLeadingBit(max(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 10u)], 141907u, 4294967295u), vec3<u32>(13628u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.b.a.x, 10u)], 10u)], 43471u))), select(~(~vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(18919u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)])), vec3<u32>(1u, global0.b.a.x, ~17824u), select(vec3<bool>(false, false, global0.b.c.x), arg_3, false))), select(vec4<bool>(global0.b.c.x, false, select(true, global0.b.c.x, true), global0.b.c.x && true), !(!select(vec4<bool>(false, global0.b.c.x, false, false), vec4<bool>(arg_0, global0.b.c.x, true, false), vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x))), true), _wgslsmith_dot_vec4_i32(arg_1, arg_1));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = func_1(any(vec3<bool>((1690f >= arg_1.b.b.x) || true, true, any(vec4<bool>(false, true, false, false)))), firstLeadingBit(vec4<i32>(firstTrailingBit(arg_1.c & -1i), _wgslsmith_clamp_i32(13120i | u_input.b, -1i >> (arg_0 % 32u), 49305i), _wgslsmith_clamp_i32(15439i, ~(-1i), 2147483647i), max(arg_1.c, 2147483647i) >> (1u % 32u))), -1722f, arg_1.b.c).a;
    let var_1 = ~(~select(func_1(arg_1.b.c.x, vec4<i32>(global0.c, 1i, -1i, arg_1.c), func_1(arg_1.b.c.x, vec4<i32>(5953i, arg_1.c, arg_1.c, global0.c), global0.a.x, var_0.c).a.b.x, !vec3<bool>(global0.b.c.x, false, true)).b, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u), vec3<u32>(arg_0, 4294967295u, var_0.a.x)), ~vec3<u32>(1u, global1[_wgslsmith_index_u32(global0.b.a.x, 10u)], arg_0)), var_0.c));
    var_0 = arg_1.b;
    let var_2 = Struct_3(Struct_1(~(countOneBits(vec2<u32>(arg_0, 4294967295u)) & max(global0.b.a, var_0.a)), arg_1.b.b, global0.b.c), global0.b.b, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-274f)), _wgslsmith_f_op_f32(-var_0.b.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b.b.x, global0.a.x))))), arg_1.b, 0i));
    var var_3 = arg_1.b.b.yxz;
    return ~(~abs(41661u)) & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 10u)], 10u)];
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> vec4<f32> {
    global0 = Struct_2(global0.b.b.wy, Struct_1(vec2<u32>(func_3(max(0u, arg_1.a.x), Struct_2(arg_1.b.yw, arg_1, global0.c)), 1u), global0.b.b, arg_1.c), abs(arg_0.d));
    global1 = array<u32, 10>();
    var var_0 = _wgslsmith_f_op_f32(-331f - arg_0.a.b.x);
    global1 = array<u32, 10>();
    var var_1 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.b, func_1(true, -(~vec4<i32>(var_1.d, arg_2.x, 2147483647i, 0i)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.b.x, global0.a.x), _wgslsmith_f_op_f32(824f - arg_0.a.b.x)), vec3<bool>(false, true, true)).a.b) - vec4<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x)), _wgslsmith_f_op_f32(1000f * global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1789f)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x + 378f)))), 1864f), Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(0u), ~9126u, u_input.c), 10u)], ~global1[_wgslsmith_index_u32(max(1u, 0u), 10u)]), arg_1.b, !func_1(arg_2.b.c.x, vec4<i32>(4309i, arg_2.c, global0.c, 1i) ^ vec4<i32>(-2147483647i, arg_0.d, -1i, -11794i), 1565f, !vec3<bool>(arg_1.c.x, arg_0.c.x, false)).a.c), firstTrailingBit(-(5927i & global0.c)) >> (~u_input.a.x % 32u));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = -_wgslsmith_mult_vec4_i32(~vec4<i32>(2984i, -2147483647i, 1i, 2147483647i), ((vec4<i32>(0i, u_input.d, 16763i, -4413i) | vec4<i32>(-4659i, arg_0.c, arg_0.c, arg_0.c)) << (~vec4<u32>(u_input.c, 10960u, 1u, 6755u) % vec4<u32>(32u))) << (vec4<u32>(arg_0.b.a.x, 3020u ^ global1[_wgslsmith_index_u32(arg_0.b.a.x, 10u)], 38227u, max(34378u, 85133u)) % vec4<u32>(32u)));
    var var_1 = ~(abs(_wgslsmith_sub_u32(arg_0.b.a.x, 25065u)) >> (_wgslsmith_sub_u32(arg_0.b.a.x, u_input.a.x) % 32u));
    let var_2 = false;
    let var_3 = ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(global0.b.a.x, 0u, global1[_wgslsmith_index_u32(0u, 10u)], global0.b.a.x)), firstTrailingBit(~vec4<u32>(global0.b.a.x, 0u, global0.b.a.x, global0.b.a.x))) ^ select(reverseBits(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global0.b.a.x, arg_0.b.a.x, 44916u)), vec4<u32>(113520u, 69366u, func_4(func_1(global0.b.c.x, vec4<i32>(27488i, -1i, u_input.b, arg_0.c), global0.a.x, vec3<bool>(true, global0.b.c.x, false)), func_4(Struct_4(global0.b, vec3<u32>(arg_0.b.a.x, 60857u, 18493u), vec4<bool>(true, false, global0.b.c.x, arg_0.b.c.x), 13756i), arg_0.b, arg_0, true).b, arg_0, !global0.b.c.x).b.a.x, ~global1[_wgslsmith_index_u32(9497u, 10u)]), false);
    var var_4 = _wgslsmith_mod_i32(abs(abs(-8475i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global0.b.a.x, 10u)], u_input.c), vec2<u32>(1u, arg_0.b.a.x)) % 32u)), 0i) >> (~_wgslsmith_dot_vec2_u32(u_input.a, var_3.yz) % 32u);
    return func_4(func_1(-func_4(Struct_4(global0.b, var_3.yxw, vec4<bool>(arg_0.b.c.x, false, false, false), -1i), Struct_1(vec2<u32>(8364u, 19809u), vec4<f32>(global0.b.b.x, global0.b.b.x, arg_0.a.x, arg_0.b.b.x), arg_0.b.c), arg_0, false).c == -2147483647i, -reverseBits(~vec4<i32>(20611i, -1i, u_input.b, u_input.d)), 912f, vec3<bool>(global0.b.c.x, func_4(Struct_4(Struct_1(u_input.a, vec4<f32>(global0.b.b.x, arg_0.b.b.x, -436f, global0.a.x), global0.b.c), vec3<u32>(63790u, 4294967295u, u_input.c), vec4<bool>(false, true, false, true), u_input.b), func_1(arg_0.b.c.x, vec4<i32>(-1i, u_input.d, 24024i, -46810i), 1491f, arg_0.b.c).a, func_4(Struct_4(Struct_1(vec2<u32>(31120u, 19200u), global0.b.b, vec3<bool>(global0.b.c.x, var_2, arg_0.b.c.x)), vec3<u32>(global0.b.a.x, 1u, 0u), vec4<bool>(true, var_2, var_2, true), var_0.x), arg_0.b, Struct_2(global0.a, arg_0.b, global0.c), var_2), var_3.x == var_3.x).b.c.x, var_2)), global0.b, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.b.b.zx, vec2<f32>(-1069f, -364f))))), func_1(true, vec4<i32>(global0.c, 9925i, _wgslsmith_add_i32(41928i, u_input.b), firstLeadingBit(2147483647i)), -577f, global0.b.c).a, _wgslsmith_div_i32(i32(-1i) * -1i, firstLeadingBit(1i))), !any(vec4<bool>(true, var_2, true, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(func_1(false, vec4<i32>(_wgslsmith_add_i32(1i, -16825i), global0.c, -2147483647i, -30892i << (global0.b.a.x % 32u)), global0.a.x, vec3<bool>(true, global0.b.c.x, true)), Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_mod_u32(u_input.c, 48652u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(Struct_4(Struct_1(global0.b.a, vec4<f32>(global0.b.b.x, global0.a.x, global0.b.b.x, -1077f), global0.b.c), vec3<u32>(1u, u_input.c, 1u), vec4<bool>(false, true, global0.b.c.x, false), u_input.b), global0.b, vec2<i32>(u_input.b, global0.c), global0.b.c.x)), _wgslsmith_f_op_vec4_f32(func_2(Struct_4(global0.b, vec3<u32>(global0.b.a.x, global1[_wgslsmith_index_u32(22638u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(global0.b.c.x, true, global0.b.c.x, false), -2147483647i), global0.b, vec2<i32>(global0.c, u_input.d), global0.b.c.x)), select(vec4<bool>(global0.b.c.x, global0.b.c.x, global0.b.c.x, false), vec4<bool>(global0.b.c.x, false, false, false), false))), vec3<bool>(!global0.b.c.x, global0.b.c.x, true)), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.a - global0.b.b.zx))), global0.b, u_input.b), true));
    let var_0 = func_5(func_4(func_1(countOneBits(global0.b.a.x) <= func_1(global0.b.c.x, vec4<i32>(-36189i, global0.c, -8668i, -32063i), 1735f, global0.b.c).b.x, _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c, 1i, 26128i, u_input.b), vec4<i32>(1i, global0.c, 1i, -1i)) | -vec4<i32>(-9109i, -1i, -2147483647i, u_input.d), _wgslsmith_f_op_f32(sign(-2028f)), vec3<bool>(true, func_4(Struct_4(global0.b, vec3<u32>(global1[_wgslsmith_index_u32(14540u, 10u)], 0u, 1u), vec4<bool>(global0.b.c.x, false, false, global0.b.c.x), -1i), global0.b, Struct_2(global0.b.b.wy, global0.b, u_input.b), false).b.c.x, global1[_wgslsmith_index_u32(0u, 10u)] >= global1[_wgslsmith_index_u32(global0.b.a.x, 10u)])), global0.b, func_4(Struct_4(func_5(Struct_2(global0.a, Struct_1(vec2<u32>(0u, 25807u), vec4<f32>(583f, global0.a.x, global0.a.x, 193f), vec3<bool>(false, true, true)), global0.c)).b, vec3<u32>(16763u, global1[_wgslsmith_index_u32(4294967295u, 10u)], 1u), select(vec4<bool>(global0.b.c.x, true, true, global0.b.c.x), vec4<bool>(false, false, true, global0.b.c.x), false), u_input.d), func_1(false, vec4<i32>(u_input.d, u_input.d, global0.c, 0i), 340f, select(vec3<bool>(true, true, global0.b.c.x), vec3<bool>(false, global0.b.c.x, true), vec3<bool>(true, global0.b.c.x, global0.b.c.x))).a, Struct_2(global0.b.b.yz, Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.b.a.x, 10u)], 10u)], global1[_wgslsmith_index_u32(global0.b.a.x, 10u)]), vec4<f32>(-401f, global0.b.b.x, -822f, global0.b.b.x), vec3<bool>(false, true, global0.b.c.x)), func_4(Struct_4(global0.b, vec3<u32>(u_input.a.x, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 10u)], 10u)]), vec4<bool>(true, global0.b.c.x, true, global0.b.c.x), global0.c), Struct_1(u_input.a, global0.b.b, global0.b.c), Struct_2(global0.a, global0.b, 2147483647i), global0.b.c.x).c), global0.b.c.x), false));
    global0 = var_0;
    var var_1 = Struct_5(2147483647i);
    let var_2 = vec2<u32>(1u, countOneBits(_wgslsmith_add_u32(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b.a.x, var_0.b.a.x), vec3<u32>(global0.b.a.x, var_0.b.a.x, 0u))) << (38577u % 32u)));
    let var_3 = Struct_3(global0.b, var_0.b.b, var_0);
    let var_4 = abs(u_input.c);
    global1 = array<u32, 10>();
    var var_5 = Struct_4(Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, global0.b.a.x), global0.b.a, vec2<u32>(var_0.b.a.x, 26403u)) >> (_wgslsmith_add_vec2_u32(~var_3.c.b.a, _wgslsmith_mult_vec2_u32(var_0.b.a, vec2<u32>(1047u, var_2.x))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-var_3.c.b.b), vec3<bool>(!var_0.b.c.x, global0.b.c.x, var_3.a.c.x)), ~func_1(!any(vec2<bool>(false, false)), vec4<i32>(var_1.a, 15965i, u_input.d, var_0.c) >> ((vec4<u32>(var_2.x, 4294967295u, var_3.c.b.a.x, 22395u) >> (vec4<u32>(0u, var_3.a.a.x, var_2.x, global0.b.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(step(-835f, var_3.c.b.b.x))), var_3.c.b.c).b, !func_1(any(vec2<bool>(global0.b.c.x, false)) && !global0.b.c.x, abs(abs(vec4<i32>(u_input.b, 39636i, global0.c, var_3.c.c))), _wgslsmith_f_op_f32(-func_5(var_0).b.b.x), !var_3.a.c).c, ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a.b.x) - -294f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_5.a.b.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_4(Struct_1(vec2<u32>(0u, 87104u), var_0.b.b, vec3<bool>(true, false, true)), vec3<u32>(4294967295u, var_0.b.a.x, var_2.x), var_5.c, u_input.b), global0.b, vec2<i32>(-38397i, 1i), var_5.c.x)).x, _wgslsmith_f_op_f32(421f + var_3.a.b.x), 2149f))), _wgslsmith_f_op_vec4_f32(func_4(Struct_4(Struct_1(vec2<u32>(4294967295u, 34867u), vec4<f32>(var_0.b.b.x, -2231f, -719f, global0.a.x), var_5.c.xzy), vec3<u32>(1u, 4294967295u, 1u), vec4<bool>(true, global0.b.c.x, var_3.a.c.x, false), u_input.b), Struct_1(global0.b.a, vec4<f32>(var_5.a.b.x, 482f, 1258f, 936f), vec3<bool>(var_0.b.c.x, var_3.a.c.x, true)), func_5(var_3.c), true).b.b - _wgslsmith_f_op_vec4_f32(max(global0.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1007f, 652f, var_3.b.x, var_3.c.a.x))))))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4, 26024u, 1u), vec3<u32>(1u, 1u, global0.b.a.x)) ^ global0.b.a.x, ~(~0u), ~1u), _wgslsmith_add_vec3_u32(var_5.b, var_5.b ^ vec3<u32>(global1[_wgslsmith_index_u32(var_3.a.a.x, 10u)], var_0.b.a.x, var_3.c.b.a.x)) >> (var_5.b % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec3_u32(var_5.b, var_5.b ^ abs(vec3<u32>(62267u, var_2.x, var_2.x)))), u_input.a);
}

