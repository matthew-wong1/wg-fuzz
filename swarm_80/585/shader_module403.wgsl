struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
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

var<private> global0: array<i32, 16>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec4<i32>(18827i, countOneBits(-21377i), 28922i & u_input.d, countOneBits(_wgslsmith_div_i32(u_input.d, u_input.d))), u_input.d, u_input.a, select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<bool>(u_input.b.x < (u_input.b.x ^ u_input.b.x), !(global0[_wgslsmith_index_u32(u_input.c, 16u)] <= 2147483647i), any(vec4<bool>(true, true, true, true))), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true)));
    let var_1 = firstLeadingBit(u_input.b.wy);
    var var_2 = Struct_3(-222f, Struct_1(-(~var_0.a), -35295i, countOneBits(_wgslsmith_add_u32(var_0.c, var_0.c) >> (var_0.c % 32u)), vec3<bool>(var_0.d.x, var_0.d.x, all(!vec4<bool>(true, var_0.d.x, false, var_0.d.x)))));
    var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + -1097f) - 857f), var_2.b);
    return 1663f;
}

fn func_2(arg_0: vec3<f32>) -> Struct_5 {
    var var_0 = Struct_4(Struct_2(~vec3<u32>(4294967295u, 33893u, ~1u), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 450f, arg_0.x, -1000f))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, countOneBits(global0[_wgslsmith_index_u32(0u, 16u)]), min(~13910i, 10757i), -2147483647i), vec4<i32>(u_input.d >> (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), countOneBits(~(-2600i)), i32(-1i) * -global0[_wgslsmith_index_u32(u_input.b.x, 16u)], ~max(u_input.d, 1i))));
    var_0 = Struct_4(Struct_2(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 96798u, var_0.a.a.x), vec3<u32>(0u, 21196u, var_0.a.a.x)), arg_0.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(var_0.a.c, vec4<f32>(-842f, var_0.a.b, -363f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1282f, 1895f, var_0.a.b, 1701f), vec4<f32>(583f, -598f, 1892f, var_0.a.b)))), any(select(vec4<bool>(true, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), vec4<bool>(true, false, false, var_0.a.d.x), vec4<bool>(true, true, false, true))))), select(select(vec3<bool>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), select(vec3<bool>(false, var_0.a.d.x, var_0.a.d.x), var_0.a.d, true), true), var_0.a.d, vec3<bool>(all(vec4<bool>(var_0.a.d.x, false, false, var_0.a.d.x)), true, any(vec4<bool>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x))))), -(~(-2147483647i)));
    let var_1 = select(vec3<bool>(true, var_0.a.d.x, true), var_0.a.d, !var_0.a.d.x);
    global0 = array<i32, 16>();
    let var_2 = abs(vec3<u32>(94316u, _wgslsmith_add_u32(~_wgslsmith_add_u32(59406u, 25565u), abs(4294967295u) << (~var_0.a.a.x % 32u)), _wgslsmith_sub_u32(reverseBits(countOneBits(4294967295u)), ~(~0u))));
    return Struct_5(var_0.a.d.x, -(~(~_wgslsmith_div_vec4_i32(vec4<i32>(-46875i, var_0.b, -52767i, 1i), vec4<i32>(-2147483647i, var_0.b, -1i, -47240i)))), Struct_1(vec4<i32>(max(0i | u_input.d, _wgslsmith_add_i32(-3117i, var_0.b)), 0i, -u_input.d, var_0.b), global0[_wgslsmith_index_u32(~u_input.c, 16u)], _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a, var_0.a.a.x, ~var_2.x, _wgslsmith_dot_vec2_u32(var_2.zz, vec2<u32>(1u, var_0.a.a.x)))), !var_0.a.d), var_2.yz, Struct_2(u_input.b.yxw, _wgslsmith_f_op_f32(-1726f * _wgslsmith_f_op_f32(-1440f + _wgslsmith_f_op_f32(-arg_0.x))), var_0.a.c, vec3<bool>(all(!vec3<bool>(false, var_1.x, false)), !any(vec3<bool>(var_0.a.d.x, false, false)), var_0.a.d.x)));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec4<i32>) -> vec4<i32> {
    global0 = array<i32, 16>();
    let var_0 = !(!vec2<bool>(true, arg_0.e.b <= arg_1));
    let var_1 = func_2(arg_0.e.c.xxw).c;
    global0 = array<i32, 16>();
    var var_2 = ~abs(var_1.a.x) > (_wgslsmith_dot_vec2_i32(vec2<i32>(~26278i, 81938i), vec2<i32>(8971i, global0[_wgslsmith_index_u32(var_1.c, 16u)]) << ((arg_0.d >> (vec2<u32>(var_1.c, arg_0.e.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (91577u % 32u));
    return min(vec4<i32>(~(~max(arg_0.b.x, global0[_wgslsmith_index_u32(1u, 16u)])), arg_2.x, ~(-2147483647i), -min(~(-52201i), -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, min(i32(-1i) * -122456i, 11867i), -firstLeadingBit(-42050i), -1i), vec4<i32>(_wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.c, 16u)], func_2(vec3<f32>(-671f, 318f, arg_1)).c.a.x), -min(468i, 1i), -abs(4237i), ~global0[_wgslsmith_index_u32(var_1.c, 16u)])));
}

fn func_1(arg_0: Struct_4) -> f32 {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_0 = func_4(func_2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1236f)), _wgslsmith_f_op_f32(arg_0.a.b - 1000f))), -1352f, arg_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)), firstLeadingBit(vec4<i32>(-53925i, abs(~arg_0.b), _wgslsmith_mult_i32(u_input.d, func_2(vec3<f32>(arg_0.a.b, -420f, -1121f)).b.x), -1i)));
    var var_1 = all(arg_0.a.d.yx);
    var var_2 = vec2<i32>(~(-8676i), arg_0.b);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1476f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-795f + 969f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.a.c.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_0 = _wgslsmith_mult_i32(20385i, ~_wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b | vec4<u32>(0u, 1u, 4294967295u, u_input.a), vec4<u32>(0u, 4294967295u, 0u, u_input.a) << (u_input.b % vec4<u32>(32u))), 16u)], -2088i));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1030f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_2(vec3<u32>(22489u, 1u, u_input.c), 284f, vec4<f32>(-597f, -913f, -531f, -839f), vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f))))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-93946i, global0[_wgslsmith_index_u32(u_input.a, 16u)], -1i, u_input.d), func_2(vec3<f32>(1254f, -1365f, -1297f)).c.a) >> (~reverseBits(vec4<u32>(10436u, u_input.a, 87670u, 55804u)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_clamp_u32(u_input.b.x, u_input.a, 4294967295u)), 16u)], _wgslsmith_sub_u32(u_input.a, 1503u), select(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2152f, 871f, -908f))).e.d, !func_2(vec3<f32>(1000f, 1973f, -1555f)).c.d, all(vec3<bool>(false, false, false)))));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c);
}

