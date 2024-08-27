struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -23242i;

var<private> global1: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(Struct_2(4294967295u, 43494u, Struct_1(vec2<i32>(8338i, -1561i), vec2<i32>(22130i, 2147483647i), vec2<bool>(true, true), vec2<f32>(-549f, -1133f))), true, i32(-2147483648))), Struct_4(Struct_3(Struct_2(4294967295u, 30895u, Struct_1(vec2<i32>(-36975i, 30549i), vec2<i32>(38903i, 0i), vec2<bool>(false, false), vec2<f32>(980f, 1647f))), false, 11652i)), Struct_4(Struct_3(Struct_2(1u, 1974u, Struct_1(vec2<i32>(-10704i, 63404i), vec2<i32>(-25116i, -1i), vec2<bool>(false, true), vec2<f32>(262f, 549f))), false, 1i)), Struct_4(Struct_3(Struct_2(25580u, 4294967295u, Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(59180i, -11996i), vec2<bool>(false, false), vec2<f32>(1086f, -940f))), false, 5818i)), Struct_4(Struct_3(Struct_2(1u, 106671u, Struct_1(vec2<i32>(1i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<bool>(true, true), vec2<f32>(230f, -660f))), true, -35836i)), Struct_4(Struct_3(Struct_2(28792u, 4294967295u, Struct_1(vec2<i32>(75730i, 0i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, false), vec2<f32>(376f, -769f))), true, -1i)), Struct_4(Struct_3(Struct_2(1u, 59991u, Struct_1(vec2<i32>(-28620i, 0i), vec2<i32>(35720i, 67119i), vec2<bool>(false, true), vec2<f32>(709f, 660f))), false, 31426i)), Struct_4(Struct_3(Struct_2(4294967295u, 0u, Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(41500i, 2147483647i), vec2<bool>(false, false), vec2<f32>(785f, 992f))), false, -1i)), Struct_4(Struct_3(Struct_2(0u, 1u, Struct_1(vec2<i32>(-1i, 0i), vec2<i32>(6237i, 24985i), vec2<bool>(false, false), vec2<f32>(2285f, 740f))), false, 1i)), Struct_4(Struct_3(Struct_2(53911u, 31450u, Struct_1(vec2<i32>(-18330i, 8649i), vec2<i32>(-35179i, 30715i), vec2<bool>(true, false), vec2<f32>(1198f, 1261f))), false, 23865i)), Struct_4(Struct_3(Struct_2(4294967295u, 0u, Struct_1(vec2<i32>(-8216i, 1i), vec2<i32>(2147483647i, 1i), vec2<bool>(true, true), vec2<f32>(628f, 1000f))), true, -23415i)), Struct_4(Struct_3(Struct_2(1u, 73922u, Struct_1(vec2<i32>(-11021i, 1i), vec2<i32>(33462i, 26626i), vec2<bool>(false, true), vec2<f32>(1000f, 1000f))), true, -31836i)), Struct_4(Struct_3(Struct_2(4294967295u, 4294967295u, Struct_1(vec2<i32>(-43929i, 1i), vec2<i32>(1i, 2147483647i), vec2<bool>(true, true), vec2<f32>(-1000f, 1000f))), false, 1i)), Struct_4(Struct_3(Struct_2(4100u, 0u, Struct_1(vec2<i32>(46461i, -1i), vec2<i32>(-4382i, 0i), vec2<bool>(true, true), vec2<f32>(-227f, 726f))), true, 0i)), Struct_4(Struct_3(Struct_2(4294967295u, 34116u, Struct_1(vec2<i32>(8868i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(true, false), vec2<f32>(476f, -2259f))), true, 39109i)), Struct_4(Struct_3(Struct_2(0u, 33690u, Struct_1(vec2<i32>(2147483647i, 1i), vec2<i32>(-15462i, 1731i), vec2<bool>(true, true), vec2<f32>(776f, -785f))), true, 1i)), Struct_4(Struct_3(Struct_2(1u, 1u, Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), -13861i), vec2<bool>(false, false), vec2<f32>(1174f, -1228f))), false, i32(-2147483648))), Struct_4(Struct_3(Struct_2(32227u, 43804u, Struct_1(vec2<i32>(69562i, 17257i), vec2<i32>(-1i, -1i), vec2<bool>(true, false), vec2<f32>(-485f, -227f))), true, 2147483647i)), Struct_4(Struct_3(Struct_2(0u, 44414u, Struct_1(vec2<i32>(30188i, 5309i), vec2<i32>(29963i, -40613i), vec2<bool>(false, false), vec2<f32>(-433f, -220f))), false, 0i)), Struct_4(Struct_3(Struct_2(36081u, 1u, Struct_1(vec2<i32>(-44247i, 3902i), vec2<i32>(0i, 1i), vec2<bool>(false, true), vec2<f32>(-1000f, 368f))), true, 1i)), Struct_4(Struct_3(Struct_2(85175u, 42251u, Struct_1(vec2<i32>(44848i, 13148i), vec2<i32>(-48184i, 6965i), vec2<bool>(true, false), vec2<f32>(-470f, 172f))), true, 0i)), Struct_4(Struct_3(Struct_2(0u, 16707u, Struct_1(vec2<i32>(5545i, -41545i), vec2<i32>(33845i, 2147483647i), vec2<bool>(true, false), vec2<f32>(-1626f, 999f))), false, i32(-2147483648))), Struct_4(Struct_3(Struct_2(9035u, 1u, Struct_1(vec2<i32>(1i, -41502i), vec2<i32>(1i, 18862i), vec2<bool>(true, true), vec2<f32>(422f, -671f))), false, -45680i)), Struct_4(Struct_3(Struct_2(0u, 1u, Struct_1(vec2<i32>(-66776i, -12731i), vec2<i32>(10615i, 2147483647i), vec2<bool>(false, true), vec2<f32>(402f, 554f))), false, -9641i)), Struct_4(Struct_3(Struct_2(10354u, 74389u, Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, true), vec2<f32>(-412f, -2395f))), true, i32(-2147483648))), Struct_4(Struct_3(Struct_2(0u, 4294967295u, Struct_1(vec2<i32>(38783i, 1i), vec2<i32>(-54512i, 6507i), vec2<bool>(true, true), vec2<f32>(499f, -840f))), false, -18536i)), Struct_4(Struct_3(Struct_2(0u, 4294967295u, Struct_1(vec2<i32>(1i, 15136i), vec2<i32>(-35689i, i32(-2147483648)), vec2<bool>(false, false), vec2<f32>(983f, -1251f))), true, 0i)), Struct_4(Struct_3(Struct_2(48815u, 65432u, Struct_1(vec2<i32>(0i, -13974i), vec2<i32>(-3049i, 1329i), vec2<bool>(false, false), vec2<f32>(456f, -793f))), false, 2147483647i)), Struct_4(Struct_3(Struct_2(1u, 0u, Struct_1(vec2<i32>(-47159i, 1i), vec2<i32>(1i, -25294i), vec2<bool>(false, true), vec2<f32>(1000f, 684f))), false, 0i)), Struct_4(Struct_3(Struct_2(0u, 1u, Struct_1(vec2<i32>(-34727i, -20157i), vec2<i32>(-25294i, -44199i), vec2<bool>(false, true), vec2<f32>(-1000f, 1751f))), true, -1i)), Struct_4(Struct_3(Struct_2(1u, 1u, Struct_1(vec2<i32>(-1i, 0i), vec2<i32>(0i, -1i), vec2<bool>(false, true), vec2<f32>(501f, 1869f))), false, 2147483647i)), Struct_4(Struct_3(Struct_2(1u, 4294967295u, Struct_1(vec2<i32>(i32(-2147483648), 33290i), vec2<i32>(-4230i, -88936i), vec2<bool>(true, false), vec2<f32>(-2756f, 366f))), false, 49815i)));

var<private> global2: array<i32, 15>;

var<private> global3: array<u32, 8>;

var<private> global4: array<Struct_4, 22>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(step(-1240f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(209f * _wgslsmith_div_f32(-786f, -184f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)), _wgslsmith_f_op_f32(trunc(-804f)))), firstTrailingBit(~u_input.b) < arg_0.x))));
    let var_1 = select(select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 8u)] > ~25729u), any(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true))), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true), true);
    return vec3<bool>(true != !all(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x))), !all(!vec3<bool>(var_1.x, true, false)), true);
}

fn func_2() -> Struct_2 {
    var var_0 = select(select(vec3<bool>(!(u_input.b == 1u), all(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_3(vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 8u)], global3[_wgslsmith_index_u32(1u, 8u)])), vec3<bool>(true, true, false))), true), !vec3<bool>(any(vec4<bool>(false, false, false, true)), true, func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(18118u, 8u)], global3[_wgslsmith_index_u32(26952u, 8u)]), vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b))).x), select(func_3(~vec3<u32>(4294967295u, u_input.b, global3[_wgslsmith_index_u32(40303u, 8u)])), vec3<bool>(true, 0u <= u_input.b, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)))));
    let var_1 = u_input.b;
    return Struct_2(0u, ~global3[_wgslsmith_index_u32(~(~53299u) << (~_wgslsmith_add_u32(u_input.b, global3[_wgslsmith_index_u32(0u, 8u)]) % 32u), 8u)], Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(0i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, var_1), 15u)]), _wgslsmith_div_vec2_i32(~vec2<i32>(-59788i, u_input.a.x), ~u_input.c)), firstLeadingBit(select(~vec2<i32>(-21010i, -2147483647i), u_input.c, true && var_0.x)), !func_3(_wgslsmith_div_vec3_u32(vec3<u32>(var_1, 1u, 12335u), vec3<u32>(u_input.b, 1u, 31571u))).zy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(117f, -948f), vec2<f32>(-1000f, 219f))))))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(u_input.a | countOneBits(_wgslsmith_clamp_vec2_i32(max(u_input.c, vec2<i32>(global2[_wgslsmith_index_u32(0u, 15u)], -1i)), vec2<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 15u)], -6046i), max(vec2<i32>(1i, 9474i), u_input.a))), ~(max(u_input.c, u_input.a) ^ (u_input.a << (vec2<u32>(54240u, 38747u) % vec2<u32>(32u)))) | u_input.a, vec2<bool>(all(vec3<bool>(true, true, false)), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, true), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    return Struct_3(func_2(), true, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 15u)], 1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    var var_0 = !(!arg_1.b & false);
    let var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.b, u_input.b, 684u, 9337u)), ~vec4<u32>(u_input.b, 26475u, 20469u, u_input.b)), vec4<u32>(35362u, 1u | u_input.b, countOneBits(u_input.b), min(4294967295u, 1u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 8u)], 8u)], u_input.b, global3[_wgslsmith_index_u32(arg_1.a.b, 8u)]) | vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 8u)], 29833u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.a.b, 8u)], 8u)], u_input.b), vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 8u)], global3[_wgslsmith_index_u32(arg_1.a.b, 8u)], 4294967295u, 29392u) << (vec4<u32>(0u, 0u, global3[_wgslsmith_index_u32(13416u, 8u)], u_input.b) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(trunc(func_1().a.c.d.x));
    var var_3 = arg_0;
    var var_4 = Struct_1(vec2<i32>(reverseBits(_wgslsmith_div_i32(~global2[_wgslsmith_index_u32(7016u, 15u)], u_input.a.x >> (var_1 % 32u))), firstTrailingBit(select(var_3.x | 2147483647i, 1i, !arg_1.b))), vec2<i32>(i32(-1i) * -35990i, abs(arg_0.x)), select(!arg_1.a.c.c, arg_1.a.c.c, arg_1.a.c.c.x), arg_1.a.c.d);
    return var_4.c.x;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<i32>) -> StorageBuffer {
    let var_0 = func_2();
    let var_1 = abs(vec4<i32>(_wgslsmith_sub_i32(arg_2.x, global2[_wgslsmith_index_u32(var_0.a, 15u)]), global2[_wgslsmith_index_u32(27308u ^ _wgslsmith_clamp_u32(~4294967295u, arg_1.x, _wgslsmith_mod_u32(u_input.b, 0u)), 15u)], -(~(-21211i)) >> ((~14513u >> (global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(arg_1.x, 8u)], 8u)] % 32u)) % 32u), ~arg_2.x));
    let var_2 = u_input.a.x;
    global1 = array<Struct_4, 32>();
    var var_3 = Struct_1(-_wgslsmith_sub_vec2_i32(u_input.a, func_1().a.c.b << (_wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 8u)], 8u)], 8u)], 0u), arg_1) % vec2<u32>(32u))), vec2<i32>(~reverseBits(global2[_wgslsmith_index_u32(4294967295u, 15u)]), select(-2147483647i, var_1.x, var_0.c.d.x < 1105f)) & -_wgslsmith_sub_vec2_i32(~arg_2.zy, -arg_2.zy), vec2<bool>(-(var_1.x & u_input.c.x) <= _wgslsmith_add_i32(1i, u_input.a.x >> (global3[_wgslsmith_index_u32(0u, 8u)] % 32u)), all(!select(vec4<bool>(var_0.c.c.x, var_0.c.c.x, false, arg_0), vec4<bool>(false, arg_0, true, false), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.d.x, _wgslsmith_f_op_f32(-var_0.c.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(109f, 770f), var_0.c.d), _wgslsmith_f_op_vec2_f32(select(var_0.c.d, var_0.c.d, vec2<bool>(var_0.c.c.x, true)))))));
    return StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-reverseBits(vec3<i32>(-8846i, var_0.c.b.x, var_3.b.x)), vec3<i32>(~var_2, ~u_input.a.x, _wgslsmith_sub_i32(var_3.b.x, var_0.c.a.x))), var_1.xwx), vec4<f32>(_wgslsmith_f_op_f32(-func_1().a.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -435f), var_0.c.d.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.d.x * func_2().c.d.x), 1034f, false)), _wgslsmith_div_f32(var_0.c.d.x, var_3.d.x)), _wgslsmith_f_op_vec2_f32(select(var_3.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.d.x), _wgslsmith_div_f32(825f, var_3.d.x)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-774f, 137f), var_3.d))), func_1().b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(true != func_4(_wgslsmith_mult_vec4_i32(min(vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 8u)], 15u)], -2147483647i, -2147483647i, 16459i), vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(5028u, 15u)], u_input.a.x, u_input.a.x)), vec4<i32>(-1i, -45458i, u_input.c.x, -1i) ^ vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(67483u, 8u)], 15u)], 24571i, 2147483647i, 2147483647i)), func_1()), vec2<u32>(firstLeadingBit(func_2().b) ^ global3[_wgslsmith_index_u32(_wgslsmith_div_u32(25425u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(64953u, 1u), 8u)], 8u)]), 8u)], _wgslsmith_sub_u32(firstLeadingBit(u_input.b), firstTrailingBit(1u))), max(vec4<i32>(~(-1i), u_input.c.x, ~(~19458i), i32(-1i) * -u_input.a.x), select(~vec4<i32>(u_input.a.x, 9175i, u_input.a.x, 5920i), -reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 15u)], 37906i, 1i, -5450i)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true))));
}

