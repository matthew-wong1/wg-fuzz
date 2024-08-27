struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<f32, 19>;

var<private> global2: u32;

var<private> global3: u32 = 8404u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_add_i32(u_input.e, min(i32(-1i) * -22859i, firstLeadingBit(1i)) << (_wgslsmith_dot_vec3_u32(arg_2, max(vec3<u32>(8507u, arg_3.x, 55934u), vec3<u32>(1u, 1u, 33467u))) % 32u)) >> (~firstLeadingBit(~4454u) % 32u);
    let var_1 = _wgslsmith_div_vec4_u32(min(countOneBits(~vec4<u32>(arg_2.x, arg_2.x, u_input.c.x, arg_3.x)), max(abs(vec4<u32>(arg_2.x, 1u, 1u, 4294967295u)), vec4<u32>(arg_2.x, 40450u, 44408u, u_input.b.x)) | select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, 1831u, 767u), vec4<u32>(arg_2.x, arg_3.x, u_input.c.x, arg_2.x), vec4<u32>(u_input.c.x, u_input.c.x, arg_3.x, arg_2.x)), ~vec4<u32>(0u, arg_3.x, 3680u, u_input.c.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), abs(select(abs(vec4<u32>(arg_3.x, arg_3.x, 43728u, 9685u)), select(vec4<u32>(1u, arg_2.x, u_input.b.x, arg_2.x), vec4<u32>(arg_3.x, 71860u, 4294967295u, 27825u), false), select(arg_1, vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(arg_1.x, false, arg_1.x, false)))) << (~(~vec4<u32>(arg_3.x, 0u, u_input.c.x, u_input.c.x) >> (firstLeadingBit(vec4<u32>(0u, arg_2.x, u_input.b.x, arg_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = array<f32, 16>();
    let var_2 = arg_1.zzy;
    let var_3 = vec4<bool>(!(!(!all(vec4<bool>(arg_1.x, true, arg_1.x, true)))), var_2.x, _wgslsmith_add_i32(u_input.d.x, _wgslsmith_sub_i32(-2147483647i, ~0i)) <= ~arg_0, all(arg_1.zy));
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_5 {
    var var_0 = (_wgslsmith_clamp_u32(~arg_1, abs(arg_1), 10412u) < _wgslsmith_div_u32(arg_1, u_input.c.x)) && true;
    global3 = 1u;
    global1 = array<f32, 19>();
    var var_1 = !(any(vec4<bool>(true, arg_1 == 1u, -29737i > u_input.d.x, func_3(u_input.e, vec4<bool>(true, true, false, false), u_input.b, vec2<u32>(1u, 47902u)))) && !(_wgslsmith_f_op_f32(select(-1527f, -1488f, true)) >= global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 107361u), 16u)]));
    let var_2 = ~43302u;
    return Struct_5(_wgslsmith_clamp_i32(abs(select(-7841i, -30788i, any(vec3<bool>(true, false, true)))), 2147483647i, u_input.a), Struct_2(Struct_1(u_input.d.zz, i32(-1i) * -2147483647i), Struct_1(vec2<i32>(firstLeadingBit(u_input.d.x), -u_input.a), u_input.d.x), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.d.x, u_input.a), u_input.a), ~u_input.a), Struct_1(firstLeadingBit(u_input.d.yz | vec2<i32>(u_input.e, -1i)), ~u_input.e), Struct_1(vec2<i32>(-u_input.a, _wgslsmith_mod_i32(u_input.a, 43149i)), 2147483647i)), Struct_1(u_input.d.zz, u_input.a), 50888u, u_input.b.xz);
}

fn func_4(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = Struct_4(Struct_1(_wgslsmith_mult_vec2_i32(~reverseBits(u_input.d.zz), firstLeadingBit(max(u_input.d.xy, arg_0.b.b.a))), select(_wgslsmith_mult_i32(~(-4962i), u_input.e), 2147483647i, true)));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u ^ (arg_0.d >> (23712u % 32u)), 16u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.c.x, 19u)])))))), 151f, true));
    global0 = array<f32, 16>();
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(select(u_input.b.x, 23694u, true), 16u)], _wgslsmith_f_op_f32(-387f - 798f)))));
    return vec4<bool>(false, (675f == global1[_wgslsmith_index_u32(arg_0.d, 19u)]) | true, true, !func_3(_wgslsmith_div_i32(u_input.d.x, var_1.e.b), vec4<bool>(false, any(vec2<bool>(false, true)), true, all(vec4<bool>(false, false, true, true))), u_input.b, vec2<u32>(1u, u_input.b.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_1 {
    global2 = u_input.b.x;
    var var_0 = all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 19u)] < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(107760u, 16u)]), true, arg_0.x, arg_0.x), vec4<bool>(true, !arg_0.x, true, any(arg_0.zz)), !func_4(func_2(vec4<f32>(355f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(52337u, 19u)], 198f), u_input.c.x))));
    global3 = reverseBits(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 61690u, 4294967295u), vec3<u32>(arg_1.x, 65394u, arg_1.x)), ~1u), u_input.b.x));
    var_0 = true;
    global2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, ~0u), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_1.x, 19u)])), _wgslsmith_f_op_f32(trunc(-901f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(floor(-1502f)))), countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(65795u, u_input.c.x, 0u, 1u)), ~vec4<u32>(arg_1.x, 1u, u_input.b.x, u_input.c.x)))).e.x);
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-572f, 1260f), -1211f))), _wgslsmith_f_op_f32(sign(663f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-283f, global1[_wgslsmith_index_u32(80981u, 19u)], global1[_wgslsmith_index_u32(16159u, 19u)], 503f))), u_input.c.x).d, 16u)], _wgslsmith_f_op_f32(f32(-1f) * -715f)), 1094f), arg_1.x).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec4<u32>(abs(u_input.b.x), 4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_add_vec2_u32(vec2<u32>(15375u, 1u), vec2<u32>(u_input.c.x, u_input.b.x))))), func_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), vec4<u32>(_wgslsmith_sub_u32(~u_input.c.x, ~25193u), 35081u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(36743u, u_input.c.x, 1u, u_input.b.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(1u, u_input.c.x, 7894u, u_input.c.x)))), func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, -849f, -267f, 225f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], -1142f, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]))))), 3798u).c, Struct_1(_wgslsmith_add_vec2_i32(-min(vec2<i32>(-1i, 1i), u_input.d.zx), vec2<i32>(~u_input.d.x, -1i << (u_input.b.x % 32u))), u_input.d.x), Struct_1(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1179f, 2544f, global0[_wgslsmith_index_u32(4294967295u, 16u)], 1013f)), _wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(1u, 24962u))).c.a, -(~1i)));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(22601u, 16u)], 1670f, 1063f, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 16u)], -1000f, -2028f, global0[_wgslsmith_index_u32(14729u, 16u)]), vec4<bool>(false, true, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(1341f - -1188f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-591f, -915f), _wgslsmith_f_op_f32(898f + global1[_wgslsmith_index_u32(71120u, 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(108f, 485f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(37611u, 19u)] - -568f) + -860f)), u_input.c.x > u_input.b.x)), select(~(~26268u ^ _wgslsmith_mod_u32(u_input.c.x, 0u)), 4294967295u, !(true && func_3(var_0.b.a.x, vec4<bool>(false, false, false, false), u_input.b, vec2<u32>(0u, u_input.b.x)))));
    let var_2 = var_0.d.a.x;
    global2 = ~25952u;
    var_1 = Struct_5(var_0.d.a.x, var_1.b, var_1.b.b, ~reverseBits(min(var_1.e.x, 45232u ^ u_input.c.x)), _wgslsmith_sub_vec2_u32(select(abs(var_1.e), var_1.e, vec2<bool>(true, true)), ~(~u_input.c)) | ~var_1.e);
    var_1 = func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-444f, global1[_wgslsmith_index_u32(0u, 19u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b.x, 19u)] * 1000f), 751f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 19u)] * 1045f), _wgslsmith_f_op_f32(f32(-1f) * -1155f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], 213f, -311f, global1[_wgslsmith_index_u32(4294967295u, 19u)]) * vec4<f32>(global0[_wgslsmith_index_u32(var_1.e.x, 16u)], global0[_wgslsmith_index_u32(74269u, 16u)], -539f, -236f)))), vec4<f32>(531f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_1.e.x, u_input.c.x)), 16u)], 461f, _wgslsmith_f_op_f32(f32(-1f) * -314f)))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~0u, 1u), ~(~35218u)));
    global2 = max(u_input.b.x | 4294967295u, u_input.c.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(45930u, 19u)], 1677f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)])))))))));
    var var_4 = Struct_3((countOneBits(vec2<u32>(var_1.e.x, 1u) | u_input.b.yz) | ~(~vec2<u32>(24574u, u_input.b.x))) << (_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 0u), select(vec2<u32>(2720u, 51739u), var_1.e, vec2<bool>(true, true))), ~vec2<u32>(4294967295u, var_1.e.x)) % vec2<u32>(32u)), u_input.b & max(vec3<u32>(22409u, 4294967295u, var_1.d), ~u_input.b), func_2(vec4<f32>(_wgslsmith_f_op_f32(-682f + 156f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, var_1.e.x, 0u, 94598u), vec4<u32>(28252u, u_input.c.x, 4294967295u, u_input.c.x))), 16u)], var_3.x, 500f), 89270u).b, Struct_2(Struct_1(vec2<i32>(var_1.b.d.a.x, var_0.d.a.x), u_input.d.x), var_0.a, func_1(func_4(Struct_5(-24864i, var_1.b, Struct_1(var_1.c.a, var_1.c.a.x), var_1.d, u_input.b.xz)).xww, countOneBits(vec4<u32>(4294967295u, 83169u, 11965u, u_input.c.x))), func_2(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.c.x), 19u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_f32(var_3.x * 1026f)), ~0u).b.d, func_1(vec3<bool>(true, true, true), max(~vec4<u32>(37135u, 1u, 14722u, u_input.c.x), vec4<u32>(5338u, 7754u, 87226u, var_1.e.x)))), Struct_1(-var_1.b.d.a, func_1(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), min(_wgslsmith_mult_vec4_u32(vec4<u32>(10285u, var_1.d, 0u, u_input.b.x), vec4<u32>(60524u, u_input.c.x, var_1.d, u_input.c.x)), reverseBits(vec4<u32>(119230u, 10321u, 1u, 1u)))).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, ~(~var_4.a.x), ~vec3<i32>(~2147483647i, var_1.a, -_wgslsmith_sub_i32(var_1.a, var_4.c.a.a.x)), _wgslsmith_mult_i32(-max(-2147483647i, var_0.d.b) ^ ~_wgslsmith_mod_i32(0i, u_input.a), max(var_1.c.a.x, var_0.a.a.x)));
}

