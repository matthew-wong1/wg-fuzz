struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, true, true, false, true, false, false, false, true, true, true, true, true, false, false, true, true);

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<i32>(2147483647i, 22959i, 1i), vec2<f32>(-1279f, 143f)), Struct_3(vec3<i32>(22576i, i32(-2147483648), 27498i), vec2<f32>(2962f, -1030f)), Struct_3(vec3<i32>(-1i, i32(-2147483648), 8483i), vec2<f32>(-1000f, 1781f)), Struct_3(vec3<i32>(-25897i, -38455i, 12666i), vec2<f32>(1000f, 186f)), Struct_3(vec3<i32>(1i, 1i, -1i), vec2<f32>(469f, -362f)), Struct_3(vec3<i32>(-10691i, -1i, 1i), vec2<f32>(329f, 445f)), Struct_3(vec3<i32>(-1i, 0i, 19773i), vec2<f32>(-812f, -665f)), Struct_3(vec3<i32>(-10582i, 0i, -61605i), vec2<f32>(-851f, 1219f)), Struct_3(vec3<i32>(27384i, -18892i, 12201i), vec2<f32>(-642f, -211f)), Struct_3(vec3<i32>(1i, 553i, 1i), vec2<f32>(-1756f, 1703f)), Struct_3(vec3<i32>(1i, 4278i, -1i), vec2<f32>(-577f, 2274f)), Struct_3(vec3<i32>(-1i, 2147483647i, 0i), vec2<f32>(-1401f, 2233f)), Struct_3(vec3<i32>(-35145i, 24857i, -2071i), vec2<f32>(-1656f, 288f)), Struct_3(vec3<i32>(2147483647i, 1i, -13406i), vec2<f32>(-200f, 409f)), Struct_3(vec3<i32>(-1i, -9070i, -7633i), vec2<f32>(-338f, 1377f)), Struct_3(vec3<i32>(59417i, -12784i, 21969i), vec2<f32>(-348f, -225f)), Struct_3(vec3<i32>(98097i, -10366i, -1i), vec2<f32>(512f, -1214f)), Struct_3(vec3<i32>(0i, 0i, 27029i), vec2<f32>(2379f, -1554f)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> bool {
    return arg_3 == _wgslsmith_f_op_f32(arg_3 - 1f);
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = select(!select(!(!vec2<bool>(global1[_wgslsmith_index_u32(60803u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], false), func_3(1i, Struct_2(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], true), vec4<i32>(arg_0, 10876i, u_input.c, 4285i)), -10739i, vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), u_input.c), 9906u, -1000f)), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), vec2<bool>(true, true), select(vec2<bool>(global1[_wgslsmith_index_u32(58847u, 18u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 18u)]), false))), select(vec2<bool>(!all(vec2<bool>(global1[_wgslsmith_index_u32(26476u, 18u)], true)), !any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(64175u, 18u)]))), select(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], false)), vec2<bool>(false, global1[_wgslsmith_index_u32(1627u, 18u)]), any(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)]))), vec2<bool>(!any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], false, false, true)), true)), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], true), !vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33340u, 9u)], 18u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])), !select(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28887u, 9u)], 18u)], false), vec2<bool>(false, false), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 18u)]), vec2<bool>(all(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 18u)])), true)));
    global2 = array<Struct_3, 18>();
    var var_1 = ~_wgslsmith_div_vec4_i32(firstLeadingBit(~(~vec4<i32>(arg_0, u_input.c, 42401i, 145i))), countOneBits(vec4<i32>(arg_0, _wgslsmith_add_i32(987i, u_input.c), arg_0, arg_0)));
    global0 = array<u32, 9>();
    let var_2 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(72384i, arg_0, 76354i, u_input.c) & vec4<i32>(-40332i, -18359i, var_1.x, var_1.x), abs(vec4<i32>(2147483647i, 2147483647i, 33471i, u_input.c))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-8362i, -1i, arg_0, 0i), ~vec4<i32>(arg_0, -1192i, u_input.c, var_1.x), vec4<i32>(u_input.c, -1i, arg_0, 12682i))), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-36492i, var_1.x, -18630i, arg_0), vec4<i32>(2116i, arg_0, -2147483647i, var_1.x), vec4<i32>(var_1.x, 26032i, -2147483647i, u_input.c) ^ vec4<i32>(-1i, 20381i, arg_0, u_input.c))), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_1.x, arg_0, -2147483647i, 2147483647i) & vec4<i32>(-1i, 0i, -2147483647i, 1i)) << (~(~vec4<u32>(28520u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 1u)) % vec4<u32>(32u)), vec4<i32>(-1i, firstTrailingBit(23570i) | abs(-2147483647i), u_input.c, -2147483647i)));
    return !vec2<bool>(!(!(true && var_0.x)), !any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], var_0.x)));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(~(-(~(~vec3<i32>(arg_3.x, arg_3.x, u_input.c)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1081f, arg_0), vec2<f32>(arg_0, arg_2), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64506u, 9u)], 18u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, -1269f), vec2<f32>(arg_2, 842f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(681f, arg_0) * vec2<f32>(arg_0, 2987f)))))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 18u)];
    let var_2 = vec4<bool>((27699u << (global0[_wgslsmith_index_u32(~min(u_input.b.x, u_input.a), 9u)] % 32u)) <= ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b & vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65599u, 9u)], 9u)], u_input.a)), false, true, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(170f, arg_0, var_1.b.x, var_1.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(305f, arg_2, arg_0, 935f) + vec4<f32>(-321f, arg_0, var_1.b.x, -1063f))), vec4<f32>(384f, _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x, _wgslsmith_f_op_f32(step(-1676f, -821f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, 883f, -986f, arg_0))))));
    var var_4 = _wgslsmith_dot_vec3_u32(u_input.b.xxx, u_input.b.zyw);
    return Struct_2(Struct_1(select(var_2.zy, select(var_2.wx, vec2<bool>(var_2.x, false), select(arg_1.x, var_2.x, false)), !(!var_2.ww)), vec4<i32>(min(~u_input.c, max(var_1.a.x, u_input.c)), -43139i, var_1.a.x, max(2147483647i, var_1.a.x))), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(~(-29827i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -34848i, arg_3.x, var_0.a.x), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, -13217i))), ~(-1i) << (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(44006u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24683u, 9u)], 9u)], 4294967295u), 9u)] % 32u)), select(!select(arg_1, !var_2.xy, true), arg_1, arg_1.x), arg_3.x);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> i32 {
    var var_0 = max(abs(~(~min(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 12730u), u_input.b.wxz))), (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], u_input.a)), ~u_input.a, global0[_wgslsmith_index_u32(1u, 9u)] << (50706u % 32u)) ^ u_input.b.xyz) ^ vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, 0u), 9u)], ~(~34549u), 0u));
    var var_1 = func_4(arg_1.x, !select(!select(vec2<bool>(arg_0, false), vec2<bool>(false, true), true), func_2(max(14260i, -26970i)), any(vec3<bool>(arg_0, arg_0, true))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(sign(-315f))), -(min(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(u_input.c, u_input.c, u_input.c)) ^ vec3<i32>(~u_input.c, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(38475i, u_input.c)))));
    var_0 = vec3<u32>(global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(50649u, 126988u)), 9u)] | u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstLeadingBit(17482u), firstLeadingBit(972u), firstLeadingBit(~4294967295u)), max(9696u, 77239u)), 1u);
    var_0 = _wgslsmith_div_vec3_u32(u_input.b.xzx, abs(select(~vec3<u32>(63593u, 107u, global0[_wgslsmith_index_u32(4294967295u, 9u)]), firstLeadingBit(firstLeadingBit(vec3<u32>(4294967295u, u_input.a, u_input.b.x))), true)));
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(-15132i, var_1.d), _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.c, 0i, 0i) | vec3<i32>(u_input.c, -2147483647i, 1i)), var_1.a.b.wzx), -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yy)));
    return ~_wgslsmith_mod_i32(0i, min(1i, -4083i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -702f);
    var var_1 = Struct_3(vec3<i32>(u_input.c, func_1(!(!global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 * -1307f), -284f, _wgslsmith_f_op_f32(-var_0))), i32(-1i) * -abs(2147483647i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -1323f), vec2<f32>(-159f, var_0), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -943f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -495f))), select(!global1[_wgslsmith_index_u32(u_input.a, 18u)], true, false || global1[_wgslsmith_index_u32(u_input.a, 18u)]))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) * _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-190f, -566f, false)))))));
    let var_2 = func_4(411f, vec2<bool>(true, global1[_wgslsmith_index_u32(~(34613u ^ u_input.a), 18u)]), var_0, vec3<i32>(1i, ~max(0i, 1i), reverseBits(-3527i))).a;
    let var_3 = Struct_3(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(var_2.b.wzw ^ ~var_1.a, max(var_1.a, ~vec3<i32>(-8454i, var_2.b.x, 0i))), ~select(min(vec3<i32>(5331i, 1i, u_input.c), var_2.b.zxx), vec3<i32>(-4106i, -1i, 0i), global1[_wgslsmith_index_u32(~103423u, 18u)])), var_1.b);
    var var_4 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(0u, 4294967295u)), firstLeadingBit(u_input.b.zy)), 4402u, 0u, global0[_wgslsmith_index_u32(0u, 9u)]);
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -(~vec3<i32>(var_2.b.x, var_5.b.x, var_3.a.x)), firstLeadingBit(_wgslsmith_add_i32(1i, 0i)), 4294967295u, 886f);
}

