struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(0u), Struct_2(8666u), Struct_2(30185u), Struct_2(1u), Struct_2(1u), Struct_2(99113u), Struct_2(25510u), Struct_2(65330u), Struct_2(8853u), Struct_2(44932u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    let var_0 = arg_1.b;
    let var_1 = !all(!vec3<bool>(true, 50638u < arg_0.a, 17842u < arg_0.a));
    let var_2 = _wgslsmith_mod_i32(arg_1.a, u_input.a.x) | arg_1.a;
    global0 = array<Struct_2, 10>();
    var var_3 = select(vec4<bool>(var_1, var_1, false, all(vec2<bool>(true, true)) || var_1), select(!select(select(vec4<bool>(var_1, true, false, false), vec4<bool>(false, true, true, var_1), vec4<bool>(true, var_1, var_1, var_1)), select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(var_1, var_1, var_1, true), var_1), vec4<bool>(false, true, true, true)), vec4<bool>(all(!vec3<bool>(var_1, false, false)), true, var_1, true), vec4<bool>(!all(vec4<bool>(true, false, var_1, false)), true & (var_1 & var_1), (var_1 & var_1) != true, !(!var_1))), var_1);
    return false;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = min(vec4<i32>(u_input.a.x, max(-abs(u_input.a.x), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a.x, 50877i), vec2<i32>(27175i, u_input.a.x), true), ~vec2<i32>(u_input.a.x, u_input.a.x))), -_wgslsmith_dot_vec3_i32(reverseBits(u_input.a), ~u_input.a), -34214i), vec4<i32>(_wgslsmith_dot_vec2_i32(-(~u_input.a.zz), -u_input.a.yz), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -11738i), vec4<i32>(-492i, -3436i, -28115i, -1i)) & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(u_input.a.x, 1i)), countOneBits(u_input.a.x), u_input.a.x));
    var var_1 = ~arg_3.x;
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(max(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a & vec3<i32>(u_input.a.x, -59888i, 23706i), ~u_input.a)), 49180i), ~1i);
    let var_3 = max(max(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, var_0.x, -17181i), vec3<i32>(u_input.a.x, -1i, -2147483647i) | u_input.a, true), _wgslsmith_add_vec3_i32(u_input.a, var_0.wxw)), -u_input.a.x), reverseBits(1i));
    let var_4 = !vec4<bool>(!(!(!arg_2)), any(vec3<bool>(true, true, true)), arg_2, arg_2);
    return arg_0;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, -1184f, -1171f, -1417f)), vec2<bool>(true, true), func_3(global0[_wgslsmith_index_u32(4294967295u, 10u)], Struct_3(0i, vec4<f32>(1000f, 1159f, -721f, -1000f), global0[_wgslsmith_index_u32(1u, 10u)], vec2<u32>(66076u, 38490u))) & true, vec2<u32>(12730u, 1u))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(839f, -496f, 1280f, 629f) - vec4<f32>(-141f, 2259f, -842f, -190f)))), vec4<f32>(_wgslsmith_f_op_f32(-929f - 1279f), -412f, 871f, _wgslsmith_f_op_f32(166f - 143f))))), Struct_2(7033u), vec2<u32>(_wgslsmith_div_u32(reverseBits(4294967295u), 1u), ~(~(~0u))));
    let var_1 = Struct_3(~(-30184i), _wgslsmith_f_op_vec4_f32(round(var_0.b)), var_0.c, _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.d.x, var_0.c.a), ~vec2<u32>(var_0.c.a, 0u)), _wgslsmith_clamp_vec2_u32(select(var_0.d & vec2<u32>(var_0.d.x, 4294967295u), vec2<u32>(3594u, var_0.d.x), true), _wgslsmith_div_vec2_u32(var_0.d | var_0.d, var_0.d), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.d.x, 1u), ~var_0.d)), firstLeadingBit(~vec2<u32>(4294967295u, var_0.d.x))));
    return var_1.b;
}

fn func_1(arg_0: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(285f)), var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(426f + -291f))))));
    var var_1 = Struct_2(~(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 33538u, 6079u, 1u), vec4<u32>(4294967295u, 16474u, 4294967295u, 24273u)), 6324u)));
    var_1 = Struct_2(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(43811u, 49945u)), vec2<u32>(var_1.a, var_1.a))), vec2<u32>(~63719u, _wgslsmith_div_u32(12125u, 1u)) & vec2<u32>(1u, _wgslsmith_sub_u32(var_1.a, 1u))));
    let var_2 = Struct_3(_wgslsmith_dot_vec3_i32(u_input.a, firstLeadingBit(firstLeadingBit(u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, -456f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-301f, 453f), var_0.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1735f, -1669f))))))), Struct_2(~11815u), abs(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.a, 0u), ~vec2<u32>(9453u, var_1.a) >> (~vec2<u32>(var_1.a, var_1.a) % vec2<u32>(32u)))));
    return ~vec3<u32>(76050u, ~(~_wgslsmith_mult_u32(4294967295u, 0u)), var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_mod_vec3_u32(countOneBits(~countOneBits(vec3<u32>(32285u, 8307u, 0u))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), reverseBits(_wgslsmith_add_vec3_u32(func_1(false), vec3<u32>(1u, 1u, 1u)))));
    var var_2 = func_3(global0[_wgslsmith_index_u32(var_1.x, 10u)], Struct_3(-24409i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(478f, 1665f, 620f, 1088f), vec4<f32>(-1000f, 1121f, -217f, 377f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(950f, -851f, -1000f, -255f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(126f, 494f, -556f, -1000f) + vec4<f32>(238f, -1730f, -466f, -568f))))), Struct_2(_wgslsmith_clamp_u32(var_1.x, var_1.x >> (81877u % 32u), 1u)), select(_wgslsmith_clamp_vec2_u32(var_1.xz, vec2<u32>(20029u, 4294967295u), var_1.zy) << (min(var_1.xx, var_1.xy) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(func_1(true).yy, vec2<u32>(var_1.x, var_1.x) | var_1.yx), select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-906f, 582f, 682f, 211f) - vec4<f32>(-1161f, -1000f, -1334f, -385f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-316f, -557f, -474f, -194f), vec4<f32>(1121f, -1000f, -874f, 293f), false))) + vec4<f32>(_wgslsmith_f_op_f32(step(-2209f, 704f)), -732f, _wgslsmith_f_op_f32(min(1000f, 964f)), _wgslsmith_div_f32(1180f, 528f))))));
    global0 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~(firstTrailingBit(var_0) & ~var_0), ~var_0), var_1.x, _wgslsmith_add_vec4_u32(min(vec4<u32>(_wgslsmith_mod_u32(var_1.x, 4294967295u), var_1.x, _wgslsmith_mult_u32(var_1.x, var_1.x), 0u), firstLeadingBit(select(vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, 21077u, var_1.x), true))), _wgslsmith_div_vec4_u32((vec4<u32>(var_1.x, 1u, 1u, var_1.x) & vec4<u32>(33440u, var_1.x, var_1.x, 1u)) ^ vec4<u32>(4294967295u, 1u, 15520u, 25177u), vec4<u32>(var_1.x, _wgslsmith_clamp_u32(1u, var_1.x, 46389u), 4294967295u, max(31614u, var_1.x)))));
}

