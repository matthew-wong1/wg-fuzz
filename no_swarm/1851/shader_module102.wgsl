struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global1 = array<f32, 20>();
    return select(~countOneBits(select(vec4<u32>(0u, 0u, u_input.a, 39263u), vec4<u32>(u_input.a, 1u, 37169u, u_input.a), vec4<bool>(false, arg_0, arg_0, arg_0))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 57232u, u_input.a, 41417u) & vec4<u32>(28635u, 65244u, 14953u, u_input.a), vec4<u32>(1u, 0u, 93113u, 59387u) | vec4<u32>(u_input.a, u_input.a, 51942u, u_input.a)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u)), arg_0) << (~firstLeadingBit(abs(vec4<u32>(1u, 6314u, u_input.a, 4294967295u) << (vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

fn func_3() -> u32 {
    global1 = array<f32, 20>();
    let var_0 = Struct_3(643f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 20u)]))))), reverseBits(~vec4<u32>(u_input.a >> (4294967295u % 32u), func_1(true).x, u_input.a, 1u)), 52421u);
    let var_1 = Struct_4(Struct_2(max(~reverseBits(var_0.c.xx), firstTrailingBit(vec2<u32>(var_0.c.x, 2657u))), u_input.a, max(vec3<i32>(0i, 0i, 0i) << (_wgslsmith_mult_vec3_u32(var_0.c.zww, var_0.c.zzz) % vec3<u32>(32u)), vec3<i32>(0i, 1i, -34564i) << (var_0.c.wzz % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-2073f + -860f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(sign(-1898f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(183f, var_0.b.a)), 162f))), Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(20305u), min(57449u, 74380u)), ~var_0.c.yw), u_input.a, max(vec3<i32>(countOneBits(-2147483647i), _wgslsmith_mod_i32(0i, 2418i), 1i), vec3<i32>(-28771i, countOneBits(-1i), i32(-1i) * -2147483647i)), var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-765f, global1[_wgslsmith_index_u32(26840u, 20u)], 494f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, var_0.a, -118f)) - vec3<f32>(var_0.a, global1[_wgslsmith_index_u32(1u, 20u)], var_0.a)))), vec4<u32>(~(~var_0.c.x), 0u, ~u_input.a, 38497u) ^ (var_0.c & var_0.c));
    global0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~var_0.c.zww, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b.a.x << (1384u % 32u), var_0.d, 1u), abs(vec3<u32>(1u, var_1.c.x, u_input.a)) | max(vec3<u32>(var_0.c.x, 10321u, 767u), vec3<u32>(43515u, 0u, 105356u)), ~(~vec3<u32>(u_input.a, 1u, 38016u)))), u_input.a | var_0.c.x);
    global0 = 1u;
    return ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(11566u, var_1.a.a.x, 36772u, 1u), firstLeadingBit(vec4<u32>(var_1.b.b, 113495u, 83156u, 0u))) << (_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 27264u) % 32u));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = any(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    let var_1 = ~(i32(-1i) * -5821i);
    let var_2 = Struct_4(Struct_2(vec2<u32>(4294967295u, ~1u), _wgslsmith_add_u32(~4294967295u, func_3()), ~(~(vec3<i32>(-15560i, var_1, var_1) >> (vec3<u32>(7069u, arg_0.x, 19109u) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(min(-280f, global1[_wgslsmith_index_u32(~u_input.a, 20u)]))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1230f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 20u)], 1488f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 20u)]), true)), _wgslsmith_f_op_f32(642f - -315f))), Struct_2(arg_0.xx, _wgslsmith_sub_u32(firstLeadingBit(~10208u), _wgslsmith_dot_vec4_u32(arg_0, arg_0)), select(select(vec3<i32>(-53909i, 2147483647i, -2147483647i), reverseBits(vec3<i32>(-34288i, var_1, -1i)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, var_1, 1i), vec3<i32>(var_1, -23795i, 23107i), vec3<i32>(var_1, var_1, 10216i)), -vec3<i32>(var_1, -33210i, -39104i)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(22506u, 20u)] + 1790f), -828f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(34487u, 20u)])) + vec3<f32>(588f, global1[_wgslsmith_index_u32(69991u, 20u)], global1[_wgslsmith_index_u32(arg_0.x, 20u)])))), ~max(firstTrailingBit(~arg_0), ~(~vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x))));
    var var_3 = all(vec4<bool>(select(true, all(vec2<bool>(true, false)), false) & true, any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), true)), !(-17635i != var_2.a.c.x) | !all(vec2<bool>(true, false)), !(all(vec2<bool>(false, false)) & true)));
    var var_4 = ~1u;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-519f)))) - global1[_wgslsmith_index_u32(min(~min(u_input.a, u_input.a), max(abs(u_input.a), ~0u)), 20u)]), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 23138u), vec4<u32>(u_input.a, 1u, u_input.a, 1u))), max(~(vec4<u32>(u_input.a, 53461u, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, 29033u) % vec4<u32>(32u))), ~func_1(false))), _wgslsmith_add_u32(func_2(vec4<u32>(77190u, 48845u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5895u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 68247u, 79548u)), u_input.a)), 10086u));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(5742i, 37717i), min(2147483647i, -46474i)), _wgslsmith_div_i32(~2147483647i, -32003i), ~(-1i), -min(-8717i, 26709i)), vec4<i32>(4295i, _wgslsmith_clamp_i32(i32(-1i) * -28800i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(-2147483647i, 28827i, -2147483647i)), reverseBits(0i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -8270i, 1i), vec3<i32>(1i, -68144i, 2147483647i))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-39835i, 15355i), ~14854i))), countOneBits(i32(-1i) * -22370i), 58042i, max(abs(0i), 2147483647i));
    let var_2 = Struct_3(1119f, Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.c.x, 20u)] - 1295f)), firstTrailingBit(reverseBits(vec4<u32>(u_input.a, 0u, 16123u, 0u)) << (func_1(any(vec4<bool>(true, true, false, false))) % vec4<u32>(32u))), 3795u);
    var var_3 = select(~abs(4664i) | (_wgslsmith_mult_i32(var_1.x, -37275i) ^ _wgslsmith_div_i32(~1i, -1i >> (1u % 32u))), -51261i, (all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)) && true) & all(vec2<bool>(true, true)));
    var_3 = 555i;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.a)), -413f))), max(~var_2.c, var_2.c >> (vec4<u32>(var_0.c.x, u_input.a, var_0.d, var_2.c.x) % vec4<u32>(32u))), var_0.c.x);
    var var_5 = Struct_2(var_0.c.yw, _wgslsmith_mod_u32(~abs(0u), u_input.a), vec3<i32>(35509i, firstLeadingBit(-1i), 1i), Struct_1(2170f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(3460u, 20u)], -331f))), var_4.b.a)));
    var var_6 = ~abs(-var_1);
    var_3 = countOneBits(~13517i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, ~(~(-2147483647i))), -(~vec2<i32>(var_6.x, 2147483647i) & vec2<i32>(-31712i, -16324i))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-75331i, ~2147483647i, _wgslsmith_mult_i32(-49667i, 0i), ~var_5.c.x), _wgslsmith_clamp_vec4_i32(var_1, var_1, var_1) & _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_5.c.x, var_5.c.x, var_6.x), var_1, vec4<i32>(var_6.x, var_5.c.x, var_6.x, var_5.c.x))), select(~(~var_1), firstTrailingBit(vec4<i32>(var_1.x, -4295i, -2147483647i, 33483i)), any(vec2<bool>(true, true)))), ~vec2<u32>(_wgslsmith_div_u32(~14507u, ~42759u), 0u), -45020i, var_6.yz);
}

