struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, ~6563u), arg_0.a), _wgslsmith_sub_u32(arg_0.c, ~arg_0.c) >> (arg_0.a % 32u)), max(1i, global0[_wgslsmith_index_u32(arg_0.a, 5u)]) >= (u_input.a.x | 1i), 22029u);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~arg_0.a, ~1u), select(arg_0.c, ~0u, false)), ~0u, firstTrailingBit(~38152u)), vec3<u32>(reverseBits(arg_0.c), ~select(reverseBits(1u), 1u, any(vec3<bool>(false, var_0.b, var_0.b))), arg_0.a));
    var var_2 = arg_0;
    let var_3 = vec4<u32>(77045u, var_2.a, abs(~1165u), ~(~1u));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(443f, -654f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1199f)))))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(296f, _wgslsmith_f_op_f32(f32(-1f) * -1454f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_0, true, 0u)))), 880f), _wgslsmith_f_op_f32(f32(-1f) * -698f)), !(all(vec4<bool>(false, true, true, true)) || any(vec2<bool>(true, true)))));
    let var_1 = Struct_1(arg_0 >> (1u % 32u), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(836f))) < -469f), 94562u);
    global0 = array<i32, 5>();
    let var_2 = var_1;
    return _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~1u, var_2.a), 99267u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_0, var_1.a, 0u, 19715u), vec4<u32>(59457u, var_1.a, arg_0, 1u)) & vec4<u32>(20043u, 88063u, 4294967295u, 4294967295u), ~vec4<u32>(0u, 4294967295u, 0u, var_1.c) | (vec4<u32>(var_1.c, var_2.c, arg_0, 0u) & vec4<u32>(4294967295u, 21457u, arg_0, 15112u))) & 0u);
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = Struct_1(~func_2(~(~4294967295u), abs(u_input.a)), !(!select(arg_0, arg_0, arg_0) != true), _wgslsmith_dot_vec3_u32(~(max(vec3<u32>(1813u, 46318u, 21653u), vec3<u32>(4294967295u, 4294967295u, 32290u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), min(vec3<u32>(1u, 1u, 1u), firstTrailingBit(~vec3<u32>(1u, 0u, 15432u)))));
    let var_1 = _wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(44758u, 14744u), vec2<u32>(0u, var_0.a)), var_0.c)), abs(~(~min(vec2<u32>(var_0.c, 65175u), vec2<u32>(var_0.a, 6271u)))));
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(var_0.a, var_0.a), 4294967295u, ~var_1.x), ~(~(~vec3<u32>(var_0.c, var_1.x, var_1.x)))) & var_1.x;
    var var_3 = Struct_1(var_0.c, countOneBits(_wgslsmith_dot_vec3_i32(-u_input.a.xwx, ~u_input.a.wxy)) <= max(-2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(var_1.x, 5u)], 61666i, global0[_wgslsmith_index_u32(1u, 5u)]), vec4<i32>(-42153i, u_input.a.x, -2147483647i, 31791i))), 1u);
    return ~_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, ~_wgslsmith_add_u32(var_3.a, 1u)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.c, 3159u, var_0.a)), reverseBits(vec3<u32>(0u, 1u, 13694u))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> vec4<f32> {
    var var_0 = firstTrailingBit(14167i);
    var_0 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(-countOneBits(~(-28055i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, u_input.a.x) & ~(-2147483647i), countOneBits(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(55272u, 5u)], u_input.a.x)))));
    var var_1 = Struct_1(0u, false, ~arg_2);
    var_1 = Struct_1(min(reverseBits(~var_1.a), _wgslsmith_mult_u32(reverseBits(var_1.c), max(var_1.c, arg_2))) >> ((var_1.a & var_1.a) % 32u), ~u_input.a.x > u_input.a.x, _wgslsmith_mult_u32(arg_2, firstTrailingBit(~(~arg_2))));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_2, 4294967295u)), vec2<u32>(~3843u, 4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_2, arg_2) | vec2<u32>(arg_2, arg_2)), vec2<u32>(firstTrailingBit(4294967295u), ~arg_2))), all(vec4<bool>(all(!vec4<bool>(var_1.b, false, var_1.b, true)), true, true, false)), ~(~68108u));
    return _wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - vec4<f32>(-1367f, _wgslsmith_f_op_f32(641f - _wgslsmith_f_op_f32(func_3(Struct_1(5798u, var_2.b, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(sign(arg_0.x)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~1u;
    let var_1 = Struct_1(61341u, true, 4294967295u);
    var_0 = _wgslsmith_sub_u32(28260u, 0u);
    return Struct_1(~_wgslsmith_clamp_u32(func_2(countOneBits(arg_1.c), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(15307i, u_input.a.x, 0i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), _wgslsmith_sub_u32(~35935u, ~var_1.a), 77586u), any(select(!select(vec4<bool>(arg_1.b, false, false, arg_1.b), vec4<bool>(false, arg_1.b, var_1.b, false), false), select(vec4<bool>(var_1.b, true, var_1.b, var_1.b), select(vec4<bool>(var_1.b, true, arg_1.b, true), vec4<bool>(false, var_1.b, true, false), var_1.b), vec4<bool>(var_1.b, var_1.b, true, true)), true)), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(3288f, 1000f, -1318f, -762f))), 255f, max(firstLeadingBit(67772u), func_1(false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1326f, -710f, 1881f, -490f), vec4<f32>(1000f, -1223f, -1312f, 248f))))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 38832u)), 1u), true, 13649u));
    let var_1 = _wgslsmith_f_op_f32(abs(-197f));
    global0 = array<i32, 5>();
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 519f, 481f, var_1), vec4<f32>(var_1, var_1, var_1, var_1), var_0.b)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(129f, var_1, -1420f, var_1), vec4<f32>(1530f, -2060f, var_1, var_1))) * vec4<f32>(-2538f, var_1, var_1, 758f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, var_1, var_1, -1000f) - vec4<f32>(1395f, -947f, -1527f, -370f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-844f, 1000f, var_1, 263f), vec4<f32>(-982f, var_1, var_1, var_1))))), Struct_1(var_0.a ^ 4294967295u, false, 1u));
    var_2 = Struct_1(var_2.a, !var_2.b, ~(~_wgslsmith_div_u32(~var_0.c, _wgslsmith_clamp_u32(48152u, var_2.c, 0u))));
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(var_2.a, true, var_0.c))), -338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f)), 737f), vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)))), !(!vec4<bool>(true, var_2.b, var_2.b, false)))), Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 25872u, var_0.c, var_2.c), vec4<u32>(var_2.c, var_0.c, var_2.a, 10301u)), vec4<u32>(var_0.c, var_2.c, var_0.c, var_0.c) << (select(vec4<u32>(var_2.c, var_0.a, 4294967295u, var_0.a), vec4<u32>(1u, 0u, 9435u, var_2.c), vec4<bool>(var_2.b, false, var_0.b, true)) % vec4<u32>(32u))), all(vec3<bool>(var_2.b & var_0.b, !var_0.b, false)), ~var_2.a));
    var var_4 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-623f, var_1, 211f, -2744f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1214f, var_1, var_1, var_1))))))) - vec4<f32>(-1100f, var_1, var_1, -542f)), var_3);
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

