struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(-263f, Struct_1(false, -939f, 1u, -17148i), Struct_1(false, 191f, 34558u, -1815i), 24670i), Struct_2(-1299f, Struct_1(true, 484f, 111798u, 2147483647i), Struct_1(false, -574f, 4294967295u, -13591i), -13606i), Struct_2(681f, Struct_1(false, -621f, 4294967295u, -46139i), Struct_1(false, -1052f, 0u, 0i), 0i), Struct_2(1119f, Struct_1(false, -168f, 86115u, i32(-2147483648)), Struct_1(false, 587f, 9142u, -9760i), 25021i), Struct_2(-1000f, Struct_1(true, 314f, 0u, i32(-2147483648)), Struct_1(true, -1000f, 43066u, 2147483647i), -1i), Struct_2(-1610f, Struct_1(false, -572f, 1u, -1i), Struct_1(false, -291f, 4294967295u, -29771i), 14507i), Struct_2(1132f, Struct_1(true, -1005f, 0u, -15881i), Struct_1(false, 231f, 63547u, -2418i), i32(-2147483648)), Struct_2(-150f, Struct_1(true, -1000f, 28053u, 23558i), Struct_1(true, -1688f, 1u, 8865i), 28606i), Struct_2(241f, Struct_1(false, -1086f, 0u, 2147483647i), Struct_1(false, -1536f, 15001u, 0i), 2147483647i), Struct_2(1072f, Struct_1(false, 369f, 1u, -43347i), Struct_1(false, 132f, 78867u, -1i), -61635i), Struct_2(-541f, Struct_1(true, 1020f, 28459u, i32(-2147483648)), Struct_1(false, -1245f, 47979u, i32(-2147483648)), -2244i), Struct_2(471f, Struct_1(true, 1685f, 4294967295u, i32(-2147483648)), Struct_1(false, 1000f, 0u, 1i), -36916i), Struct_2(-919f, Struct_1(true, 1000f, 21329u, 51017i), Struct_1(true, 167f, 4267u, 0i), i32(-2147483648)));

var<private> global1: array<f32, 2>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(u_input.d, 13u)], Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 2u)] * -735f)) - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.d, 2u)]))), Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.c), 2u)]), u_input.c, 0i), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1422f)), abs(4294967295u), 0i), -48863i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1870f))), vec4<u32>(max(6941u, ~min(u_input.c, 13938u)), max(reverseBits(1u), u_input.d), u_input.d, u_input.d), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_clamp_u32(2941u, u_input.d, u_input.c)), 37u, 1u), 13u)]);
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    global1 = array<f32, 2>();
    let var_1 = any(!(!vec2<bool>(!var_0.b.c.a, false)));
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(select(1608f, global1[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.d)), 2u)], true || !arg_2.b.a)), arg_2.b, Struct_1(!(!(!arg_1.x)), _wgslsmith_f_op_f32(-arg_2.a), ~(1u << (arg_2.c.c % 32u)), ~u_input.b.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, u_input.e.x), u_input.e.zz), reverseBits(-(~arg_2.d)), _wgslsmith_sub_i32(0i, -18088i)));
    let var_1 = u_input.e.x;
    let var_2 = Struct_1(!(all(vec2<bool>(true, true)) == arg_2.b.a), _wgslsmith_f_op_f32(ceil(var_0.c.b)), var_0.b.c, _wgslsmith_mult_i32(u_input.e.x, _wgslsmith_mod_i32(var_0.d, -8891i)));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(func_3(), _wgslsmith_add_i32(select(arg_2.d, var_2.d | var_1, true), i32(-1i) * -1i)), -2147483647i);
    let var_4 = Struct_3(Struct_2(var_2.b, var_2, var_2, (i32(-1i) * -var_1) << (arg_0 % 32u)), Struct_2(_wgslsmith_div_f32(-1839f, _wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(arg_2.a * global1[_wgslsmith_index_u32(var_0.c.c, 2u)]), true))), Struct_1(arg_2.c.a, global1[_wgslsmith_index_u32(var_2.c, 2u)], arg_0, -7746i), arg_2.b, _wgslsmith_add_i32(u_input.b.x, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)), ~firstLeadingBit((vec4<u32>(68511u, 0u, arg_0, 4294967295u) >> (vec4<u32>(4294967295u, u_input.c, var_0.b.c, u_input.d) % vec4<u32>(32u))) & ~vec4<u32>(25937u, arg_0, arg_0, 1u)), Struct_2(_wgslsmith_f_op_f32(var_2.b * 1050f), var_2, Struct_1(var_0.c.a, var_2.b, 0u, _wgslsmith_sub_i32(firstTrailingBit(var_0.d), 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.d, var_0.d, var_1), vec4<i32>(-7661i, var_2.d, 0i, 0i) ^ vec4<i32>(-2147483647i, 0i, arg_2.c.d, 0i)) >> (0u % 32u)));
    return u_input.b.yz;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.d, arg_0), vec2<u32>(1109u, u_input.d)), ~vec2<u32>(1u, arg_0)), (0u & ~u_input.d) & 1u), 2u)]);
    var var_1 = _wgslsmith_sub_vec2_i32(countOneBits(u_input.e.zz ^ u_input.e.zx), select(func_4(u_input.c, vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_f_op_f32(-568f + global1[_wgslsmith_index_u32(25529u, 2u)]), Struct_1(false, 2232f, u_input.c, 0i), Struct_1(true, 1614f, u_input.d, u_input.e.x), func_3())), vec2<i32>(-1i, -2147483647i), select(vec2<bool>(true, true), vec2<bool>(true, true), (35124u >= arg_0) && any(vec2<bool>(false, true)))));
    let var_2 = global0[_wgslsmith_index_u32(0u | ~reverseBits((arg_0 & 18206u) ^ u_input.c), 13u)];
    let var_3 = ~var_2.b.c;
    global1 = array<f32, 2>();
    return ~(_wgslsmith_add_i32(var_2.b.d, func_3()) & -1i);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = 2147483647i | func_2(~_wgslsmith_mod_u32(arg_3, 1u) >> ((~arg_0.c << (~arg_0.c % 32u)) % 32u));
    var_0 = u_input.a;
    let var_1 = u_input.c;
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(func_1(Struct_1(true, global1[_wgslsmith_index_u32(41255u, 2u)], u_input.c, 1i), _wgslsmith_f_op_f32(317f + global1[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(34203u, 2u)]), u_input.c), -42116i), ~(-1930i), -func_3()));
    global0 = array<Struct_2, 13>();
    let var_1 = 28736u;
    let var_2 = u_input.c;
    global0 = array<Struct_2, 13>();
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 2u)]) * _wgslsmith_f_op_f32(f32(-1f) * -1056f)))), Struct_1(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 2u)] + global1[_wgslsmith_index_u32(20962u, 2u)]))), 65919u, var_0.x << (37463u % 32u)), Struct_1(!any(vec2<bool>(true, true)), -1000f, ~19718u, -_wgslsmith_mult_i32(u_input.e.x, u_input.b.x)), _wgslsmith_add_i32(~u_input.e.x, select(select(var_0.x, 46086i, false), _wgslsmith_mod_i32(7489i, 4850i), false))), global0[_wgslsmith_index_u32(var_1, 13u)], _wgslsmith_f_op_f32(f32(-1f) * -218f), ~(~max(vec4<u32>(var_2, 8873u, u_input.d, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(18679u, u_input.c, 22642u, 4294967295u), vec4<u32>(u_input.c, 76135u, u_input.c, 115021u), vec4<u32>(0u, var_2, var_1, 0u)))), global0[_wgslsmith_index_u32(var_2, 13u)]);
    global0 = array<Struct_2, 13>();
    let var_4 = Struct_2(global1[_wgslsmith_index_u32(var_1, 2u)], Struct_1(!var_3.a.b.a, -726f, var_1, ~abs(u_input.a ^ var_0.x)), Struct_1(true, _wgslsmith_f_op_f32(var_3.a.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.a) + _wgslsmith_f_op_f32(step(var_3.a.b.b, 468f)))), ~(~(~11047u)), ~u_input.e.x), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 100076u, _wgslsmith_clamp_u32(var_4.b.c, _wgslsmith_div_u32(1u, 1u), ~var_4.b.c), _wgslsmith_f_op_f32(max(var_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(-107f + var_4.c.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1665f + 430f)))));
}

