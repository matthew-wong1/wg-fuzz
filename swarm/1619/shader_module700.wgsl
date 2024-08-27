struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), 1u, vec2<bool>(false, true), Struct_1(vec2<i32>(i32(-2147483648), 8293i), vec2<f32>(-529f, 2160f), vec2<f32>(-1000f, 163f), vec3<f32>(443f, -411f, 1195f)), vec3<f32>(-534f, -594f, -1106f));

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(vec2<i32>(2147483647i, 696i), vec2<f32>(1422f, 519f), vec2<f32>(1348f, -1401f), vec3<f32>(526f, -641f, -486f)), Struct_2(vec2<bool>(false, false), 3346u, vec2<bool>(true, true), Struct_1(vec2<i32>(5229i, 1i), vec2<f32>(-1000f, -1027f), vec2<f32>(-2111f, -1016f), vec3<f32>(-132f, 367f, 1102f)), vec3<f32>(304f, -462f, 1892f)), false, Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(1409f, 678f), vec2<f32>(1166f, -719f), vec3<f32>(-1000f, -714f, -1000f)), vec4<u32>(0u, 23972u, 1u, 1u)), Struct_3(Struct_1(vec2<i32>(13538i, 8834i), vec2<f32>(492f, -183f), vec2<f32>(-726f, -125f), vec3<f32>(-130f, 794f, -225f)), Struct_2(vec2<bool>(false, false), 45816u, vec2<bool>(true, false), Struct_1(vec2<i32>(1i, 26287i), vec2<f32>(-461f, 1459f), vec2<f32>(1568f, -254f), vec3<f32>(1749f, -1205f, -538f)), vec3<f32>(1060f, -1175f, -705f)), true, Struct_1(vec2<i32>(28866i, 2147483647i), vec2<f32>(-333f, 754f), vec2<f32>(180f, -629f), vec3<f32>(1896f, -1000f, -1104f)), vec4<u32>(1u, 29211u, 1u, 17798u)), Struct_3(Struct_1(vec2<i32>(-1i, 25755i), vec2<f32>(-1639f, 162f), vec2<f32>(652f, 1591f), vec3<f32>(226f, 1171f, 738f)), Struct_2(vec2<bool>(false, false), 64752u, vec2<bool>(true, false), Struct_1(vec2<i32>(-1i, 26833i), vec2<f32>(278f, 1098f), vec2<f32>(-274f, 340f), vec3<f32>(590f, -833f, -1169f)), vec3<f32>(977f, 176f, 174f)), true, Struct_1(vec2<i32>(22478i, 1473i), vec2<f32>(913f, 1344f), vec2<f32>(1000f, -1763f), vec3<f32>(992f, 586f, -454f)), vec4<u32>(1u, 52177u, 0u, 4294967295u)), Struct_3(Struct_1(vec2<i32>(-1i, 73317i), vec2<f32>(1348f, 552f), vec2<f32>(-1783f, -1034f), vec3<f32>(-771f, -1073f, -205f)), Struct_2(vec2<bool>(true, false), 11997u, vec2<bool>(false, true), Struct_1(vec2<i32>(2147483647i, 49860i), vec2<f32>(-1672f, -1047f), vec2<f32>(394f, 1000f), vec3<f32>(-927f, -378f, -973f)), vec3<f32>(1680f, 745f, 1187f)), false, Struct_1(vec2<i32>(43403i, -19780i), vec2<f32>(-1109f, 326f), vec2<f32>(323f, -276f), vec3<f32>(304f, 248f, 1038f)), vec4<u32>(0u, 18269u, 4294967295u, 29103u)), Struct_3(Struct_1(vec2<i32>(1i, -65429i), vec2<f32>(-840f, -323f), vec2<f32>(1031f, 813f), vec3<f32>(-362f, -1225f, 1750f)), Struct_2(vec2<bool>(false, false), 1u, vec2<bool>(false, true), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<f32>(-285f, -1136f), vec2<f32>(256f, 1035f), vec3<f32>(233f, 1000f, -1000f)), vec3<f32>(1000f, 1089f, -2484f)), true, Struct_1(vec2<i32>(21754i, -21252i), vec2<f32>(-1860f, 264f), vec2<f32>(-719f, 1000f), vec3<f32>(736f, 231f, -2143f)), vec4<u32>(16030u, 41794u, 82043u, 34214u)));

var<private> global2: Struct_4;

var<private> global3: array<bool, 25>;

var<private> global4: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    global4 = select(!(!vec4<bool>(any(arg_0), any(arg_0.yxx), true, !global4.x)), select(select(select(vec4<bool>(global2.b, false, global3[_wgslsmith_index_u32(global0.b, 25u)], global3[_wgslsmith_index_u32(global0.b, 25u)]), vec4<bool>(global2.b, true, global4.x, global2.b), arg_0), !select(arg_0, vec4<bool>(true, true, global2.b, arg_0.x), false), !global3[_wgslsmith_index_u32(global0.b, 25u)] | !global2.b), arg_0, ~max(117944u, global0.b) <= reverseBits(17417u)), !(!select(arg_0, vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 25u)], true, global4.x, true), arg_0)));
    var var_0 = vec3<bool>(true, any(global4.zyw), false);
    return _wgslsmith_mod_vec4_i32(vec4<i32>(1i, abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, global2.a, -1i), -vec3<i32>(0i, -7833i, global0.d.a.x))), _wgslsmith_mod_i32(select(global2.a, global2.a, global0.a.x) | 2147483647i, global0.d.a.x), ~firstLeadingBit(-3514i)), vec4<i32>(-(~(-45291i)), _wgslsmith_div_i32(min(29037i, 1i), global2.a), _wgslsmith_mod_i32(1i, global0.d.a.x) >> (1u % 32u), ~global2.a) | _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, 3170i, u_input.a), vec4<i32>(u_input.b, global2.a, u_input.a, u_input.b))), ~(-vec4<i32>(7161i, 29329i, -1i, -2147483647i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = any(select(global0.a, vec2<bool>((u_input.c >= 78793u) | (global4.x | true), global2.b), global4.wy));
    let var_1 = global1[_wgslsmith_index_u32(~countOneBits(0u) | abs(min(global0.b, firstLeadingBit(10093u))), 5u)];
    let var_2 = ~vec4<u32>(36132u, ~_wgslsmith_clamp_u32(1u, 108560u, 21669u) ^ max(24247u, ~4130u), _wgslsmith_mod_u32(reverseBits(abs(1u)), abs(abs(1u))), firstTrailingBit(select(var_1.e.x, _wgslsmith_div_u32(global0.b, global0.b), true)));
    var var_3 = ~global0.b;
    let var_4 = countOneBits(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(4294967295u, 1u), ~_wgslsmith_dot_vec4_u32(var_1.e, vec4<u32>(22647u, 1u, 23241u, 4294967295u)))) & var_1.b.b;
    return !global4.wy;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_2(!vec2<bool>(false, all(vec4<bool>(true, true, true, true))), 0u, func_4(arg_0, _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(45367i), arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(50366i, global0.d.a.x, global0.d.a.x), vec3<i32>(u_input.a, 2147483647i, global0.d.a.x)), u_input.b), ~func_3(vec4<bool>(arg_1.x, true, global0.c.x, global3[_wgslsmith_index_u32(global0.b, 25u)])))), Struct_1(vec2<i32>(global0.d.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.a, arg_0.a), 7961i)), vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(min(global0.e.x, 348f))), _wgslsmith_f_op_vec2_f32(min(arg_0.b, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, global0.d.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(940f, -1638f), vec2<f32>(global0.d.d.x, global0.d.d.x))))), vec3<f32>(global0.d.d.x, _wgslsmith_f_op_f32(global0.e.x + -289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.e.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d + arg_0.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d)) * arg_0.d)));
    let var_1 = !(!select(vec4<bool>(func_4(Struct_1(vec2<i32>(-2538i, -2147483647i), arg_0.b, vec2<f32>(411f, 892f), vec3<f32>(global0.d.b.x, -2141f, var_0.e.x)), vec4<i32>(-26283i, u_input.d, global2.a, 0i)).x, true, true, !var_0.a.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, global2.b, global4.x), vec4<bool>(global0.a.x, false, global3[_wgslsmith_index_u32(u_input.c, 25u)], false), vec4<bool>(false, false, global2.b, global4.x)), false), true));
    let var_2 = true;
    var var_3 = ~global0.d.a;
    let var_4 = arg_0;
    return Struct_3(var_4, Struct_2(!(!vec2<bool>(global0.a.x, global2.b)), 20463u, global4.zz, Struct_1(global0.d.a, var_4.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.d.b))), arg_0.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.b.x * var_4.b.x), -201f, global0.e.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.d)))), all(!(!select(vec2<bool>(true, arg_1.x), arg_1.xy, arg_1.x))), Struct_1(var_4.a, var_0.d.b, arg_0.b, vec3<f32>(479f, var_4.d.x, 397f)), vec4<u32>(u_input.c, global0.b, _wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 73571u, 42648u), ~vec4<u32>(33118u, 4294967295u, u_input.c, u_input.c))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_0.b, var_0.b)), vec2<u32>(1110u, 61535u) >> (vec2<u32>(global0.b, 0u) % vec2<u32>(32u))), 1u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 499f;
    let var_1 = Struct_1(global0.d.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -780f), 1000f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(global0.d.c, vec2<f32>(-1000f, arg_3.c.x), vec2<bool>(true, global2.b))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_2.d.xx, vec2<f32>(global0.d.c.x, arg_3.b.x), true)), vec2<f32>(arg_3.b.x, arg_2.b.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1066f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, -1000f, arg_2.d.x) * arg_3.d), vec3<f32>(global0.e.x, 1690f, _wgslsmith_div_f32(873f, 246f)))));
    var var_2 = arg_0.e.zy;
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -1532f), _wgslsmith_f_op_f32(arg_2.d.x * -288f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-369f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.c.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.x, -652f, var_1.d.x)), vec3<f32>(_wgslsmith_f_op_f32(1500f * arg_0.a.d.x), -1302f, var_1.b.x)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
    return global0.d;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = min(-_wgslsmith_mult_vec3_i32(-vec3<i32>(23203i, global2.a, -47456i) | -vec3<i32>(global0.d.a.x, -1i, 98i), vec3<i32>(1i, -32933i, 1i) << (vec3<u32>(u_input.c, u_input.c, global0.b) % vec3<u32>(32u))), vec3<i32>(-u_input.e | -u_input.a, global0.d.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.d.a.x, -17621i, 0i), vec3<i32>(-11524i, -2147483647i, global2.a)), vec3<i32>(57965i, 0i, 2147483647i)), _wgslsmith_mult_i32(u_input.b, 44445i ^ u_input.a))));
    global2 = Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(var_0, var_0)), -reverseBits(var_0)), ~vec3<i32>(var_0.x >> (global0.b % 32u), min(14839i, -1i), arg_0.a.x & var_0.x)), 2147483647i != max(-_wgslsmith_mod_i32(arg_0.a.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 15074i, global2.a), -var_0)));
    let var_1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_div_vec2_u32(~vec2<u32>(9986u, u_input.c), ~vec2<u32>(0u, 1u))), vec2<u32>(_wgslsmith_add_u32(u_input.c, _wgslsmith_mod_u32(~global0.b, 36550u)), 2394u));
    global1 = array<Struct_3, 5>();
    let var_2 = Struct_4(reverseBits(~(-_wgslsmith_sub_i32(var_0.x, global2.a))), global2.b);
    return Struct_2(global4.zw, u_input.c, vec2<bool>(func_4(Struct_1(vec2<i32>(-2147483647i, 25779i), _wgslsmith_f_op_vec2_f32(step(arg_0.d.xx, vec2<f32>(-578f, global0.d.c.x))), vec2<f32>(arg_0.d.x, -1029f), _wgslsmith_div_vec3_f32(vec3<f32>(-1353f, -1939f, arg_0.d.x), arg_0.d)), abs(vec4<i32>(global0.d.a.x, 0i, arg_0.a.x, var_2.a))).x, true), arg_0, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, arg_0.d.x, global0.e.x))) + _wgslsmith_f_op_vec3_f32(-global0.e)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = firstTrailingBit(vec4<u32>(0u, 19410u, u_input.c, global0.b));
    global1 = array<Struct_3, 5>();
    var var_1 = func_6(func_5(func_2(global0.d, !(!vec3<bool>(global3[_wgslsmith_index_u32(11376u, 25u)], arg_2.x, global3[_wgslsmith_index_u32(u_input.c, 25u)]))), global4.yzy, Struct_1(global0.d.a, func_2(global0.d, global4.wxz).b.d.b, _wgslsmith_f_op_vec2_f32(-arg_1.xx), _wgslsmith_f_op_vec3_f32(global0.d.d + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-486f, -953f, arg_1.x)))), global0.d));
    global2 = Struct_4(-2147483647i, !any(select(vec4<bool>(global0.c.x, global0.c.x, true, arg_0.x), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 25u)], true, global2.b, false), true)));
    var var_2 = Struct_3(global0.d, Struct_2(func_6(func_5(global1[_wgslsmith_index_u32(func_2(Struct_1(var_1.d.a, var_1.e.zx, vec2<f32>(-578f, var_1.d.d.x), var_1.e), arg_0).e.x, 5u)], !arg_2, global0.d, global0.d)).a, _wgslsmith_mod_u32(~(~var_1.b), var_1.b), func_6(Struct_1(vec2<i32>(u_input.d, 58651i), vec2<f32>(var_1.e.x, global0.d.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1620f, var_1.e.x)), _wgslsmith_f_op_vec3_f32(var_1.d.d + arg_1.yyz))).a, func_2(Struct_1(vec2<i32>(37390i, -2147483647i) ^ global0.d.a, _wgslsmith_f_op_vec2_f32(-global0.e.yx), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(689f, global0.d.d.x))), var_1.e), !(!arg_0)).a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.d.d * vec3<f32>(890f, global0.d.b.x, 286f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), -489f, global0.e.x))), true, global0.d, ~_wgslsmith_mod_vec4_u32(var_0, ~vec4<u32>(u_input.c, var_0.x, u_input.c, global0.b)));
    return ~((~var_2.e.xzz | ~vec3<u32>(global0.b, 2663u, global0.b)) >> (var_2.e.ywz % vec3<u32>(32u)));
}

fn func_7(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.d - arg_2.d) - func_5(global1[_wgslsmith_index_u32(func_1(select(vec3<bool>(false, false, global4.x), !global4.zyz, !global0.a.x), vec4<f32>(_wgslsmith_f_op_f32(abs(global0.d.c.x)), arg_0, arg_2.d.x, _wgslsmith_f_op_f32(floor(global0.d.d.x))), select(vec3<bool>(true, true, global0.a.x), !global4.xyw, select(global4.yzz, global4.yzy, global4.xxw))).x, 5u)], select(select(!vec3<bool>(global0.c.x, false, global2.b), !global4.wxz, true || global4.x), !vec3<bool>(global0.c.x, true, global2.b), global4.wwx), func_2(global0.d, vec3<bool>(false, global0.c.x && true, arg_1.x > global0.b)).a, func_2(arg_2, select(global4.wzx, vec3<bool>(global4.x, global2.b, global3[_wgslsmith_index_u32(arg_1.x, 25u)]), global0.c.x)).a).d);
    global1 = array<Struct_3, 5>();
    var var_1 = Struct_4(18769i, global2.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1491f, global0.e.x)) + _wgslsmith_f_op_f32(round(arg_2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.c.x * -1592f))))));
    var_1 = Struct_4(select(arg_2.a.x, ~0i, true), global3[_wgslsmith_index_u32(firstTrailingBit(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, arg_1.x, 1u, global0.b), vec4<u32>(u_input.c, global0.b, arg_1.x, global0.b)))), 25u)]);
    return Struct_4(_wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(-5499i), 1i) ^ (global2.a & 0i), ~17405i, var_1.a), -1167f != _wgslsmith_f_op_f32(trunc(-565f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(!(!(!(!vec2<bool>(global0.a.x, true)))), _wgslsmith_mod_u32(4294967295u, u_input.c), vec2<bool>(false, max(32050i, -u_input.b) <= u_input.b), global0.d, global0.d.d);
    let var_0 = 4294967295u;
    let var_1 = global0.d;
    global1 = array<Struct_3, 5>();
    global3 = array<bool, 25>();
    let var_2 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1077f - _wgslsmith_div_f32(2854f, var_1.c.x)))), func_1(!select(select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(global0.b, 25u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(global0.b, 25u)], true), global2.b), global4.xyw, false), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), var_1.c.x, 861f, _wgslsmith_div_f32(177f, _wgslsmith_f_op_f32(global0.e.x * 1273f))), select(!vec3<bool>(global2.b, global3[_wgslsmith_index_u32(var_0, 25u)], true), global4.wyw, vec3<bool>(true, global4.x || global0.c.x, select(true, false, true)))), func_5(global1[_wgslsmith_index_u32(select(39327u, _wgslsmith_add_u32(func_2(global0.d, vec3<bool>(true, true, global2.b)).e.x, ~var_0), true), 5u)], vec3<bool>(!(1u <= var_0), global2.b, func_2(Struct_1(vec2<i32>(-2147483647i, 3892i), global0.d.d.xz, vec2<f32>(-1964f, -244f), vec3<f32>(-725f, 184f, var_1.d.x)), global4.yyy).b.a.x), Struct_1(func_5(global1[_wgslsmith_index_u32(~global0.b, 5u)], vec3<bool>(global0.c.x, true, true), Struct_1(var_1.a, vec2<f32>(-1151f, var_1.d.x), global0.d.c, vec3<f32>(var_1.b.x, var_1.d.x, var_1.b.x)), func_5(global1[_wgslsmith_index_u32(var_0, 5u)], global4.yxz, global0.d, Struct_1(vec2<i32>(global2.a, -48507i), vec2<f32>(757f, global0.e.x), vec2<f32>(global0.d.c.x, 1000f), global0.e))).a, _wgslsmith_f_op_vec2_f32(-global0.e.xz), global0.d.d.zz, vec3<f32>(-619f, -2848f, func_5(global1[_wgslsmith_index_u32(19627u, 5u)], vec3<bool>(true, true, global3[_wgslsmith_index_u32(35575u, 25u)]), Struct_1(vec2<i32>(var_1.a.x, 0i), global0.d.c, var_1.d.zy, vec3<f32>(985f, global0.d.c.x, var_1.b.x)), Struct_1(var_1.a, vec2<f32>(-140f, -365f), global0.d.c, vec3<f32>(-358f, -478f, 1973f))).b.x)), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.x, 2147483647i), vec2<i32>(global0.d.a.x, global2.a)), vec2<i32>(var_1.a.x, -1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1467f, 882f) + var_1.c) * var_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-145f, -445f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-935f, -280f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, -847f, 1210f) * global0.e)))));
    let var_3 = !(!(!global3[_wgslsmith_index_u32(var_0, 25u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(361f - func_5(Struct_3(Struct_1(global0.d.a, vec2<f32>(global0.e.x, -249f), global0.e.yy, global0.e), Struct_2(vec2<bool>(false, false), 15408u, vec2<bool>(global2.b, global3[_wgslsmith_index_u32(global0.b, 25u)]), Struct_1(global0.d.a, vec2<f32>(667f, global0.e.x), vec2<f32>(global0.d.b.x, global0.d.d.x), vec3<f32>(706f, var_1.d.x, global0.d.b.x)), vec3<f32>(var_1.c.x, -478f, -1149f)), global2.b, Struct_1(vec2<i32>(-24778i, var_2.a), vec2<f32>(global0.e.x, var_1.b.x), var_1.c, var_1.d), vec4<u32>(0u, u_input.c, u_input.c, 71846u)), global4.xyw, global0.d, global0.d).b.x))), -358f));
}

