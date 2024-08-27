struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(460f, 531f, vec4<i32>(1i, 15073i, 6761i, -36701i), true), Struct_2(-367f, 582f, vec4<i32>(0i, 26157i, 12130i, i32(-2147483648)), false), Struct_2(1155f, -821f, vec4<i32>(21768i, i32(-2147483648), 1i, 11945i), true), Struct_2(667f, 1003f, vec4<i32>(i32(-2147483648), 1i, 26475i, i32(-2147483648)), true), Struct_2(397f, 1919f, vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), true), Struct_2(-1000f, -722f, vec4<i32>(0i, 1i, 26082i, 0i), false), Struct_2(1000f, -921f, vec4<i32>(2684i, 5873i, 1i, -3421i), false), Struct_2(1000f, 713f, vec4<i32>(1i, 2147483647i, 1i, -1i), true), Struct_2(1000f, -690f, vec4<i32>(26259i, 1i, i32(-2147483648), 58721i), false), Struct_2(1000f, -741f, vec4<i32>(-10144i, i32(-2147483648), 1i, -1i), false), Struct_2(-756f, 1000f, vec4<i32>(-13197i, i32(-2147483648), 0i, 48777i), true), Struct_2(-1000f, 680f, vec4<i32>(-1i, 1i, 55668i, 51086i), false), Struct_2(-127f, -1666f, vec4<i32>(4691i, -25915i, -1i, 1i), false), Struct_2(-720f, -1603f, vec4<i32>(0i, -1i, 1i, -46178i), false), Struct_2(-532f, -446f, vec4<i32>(2147483647i, 39415i, 0i, -1i), true), Struct_2(-1217f, -679f, vec4<i32>(0i, -6696i, 0i, -54389i), false), Struct_2(308f, -1477f, vec4<i32>(11358i, 32092i, 14801i, 0i), false), Struct_2(-893f, 1000f, vec4<i32>(i32(-2147483648), 0i, 37832i, 16696i), true), Struct_2(-463f, 1222f, vec4<i32>(2147483647i, -3555i, -39005i, 72612i), true), Struct_2(1392f, 869f, vec4<i32>(-1i, -23271i, 14844i, 19085i), true), Struct_2(1152f, -140f, vec4<i32>(1i, -1i, 545i, 20431i), false), Struct_2(290f, -148f, vec4<i32>(-22504i, -1i, 33787i, 1i), true), Struct_2(302f, -435f, vec4<i32>(0i, -20923i, 2147483647i, -1i), false), Struct_2(1118f, -1219f, vec4<i32>(10293i, 0i, 0i, i32(-2147483648)), false), Struct_2(-683f, -875f, vec4<i32>(-46823i, 1i, 1i, -24923i), true));

var<private> global2: array<bool, 32> = array<bool, 32>(true, true, false, false, false, false, false, true, false, true, true, true, true, false, false, false, true, true, false, true, false, true, false, true, true, true, false, false, false, true, true, true);

var<private> global3: vec2<u32> = vec2<u32>(25871u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -20661i, u_input.d, 2147483647i)), abs(vec4<i32>(0i, u_input.d, 0i, 2147483647i)))), ~abs(-(vec2<i32>(-30383i, u_input.d) & vec2<i32>(-29544i, u_input.d))));
    global0 = min(var_0.x, countOneBits(var_0.x));
    var_0 = vec2<i32>(var_0.x, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, var_0.x, u_input.b, -52070i), _wgslsmith_mod_vec4_i32(vec4<i32>(-62205i, 2554i, -24231i, u_input.b), vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x)))), vec4<i32>(_wgslsmith_add_i32(u_input.b | u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(23943i, -1i, var_0.x, -27172i), vec4<i32>(u_input.b, u_input.d, u_input.d, var_0.x))), u_input.b, u_input.d, min(abs(33014i), firstTrailingBit(2147483647i)))));
    var var_1 = ~(~(~vec3<u32>(u_input.a, 12951u, 54727u))) << (vec3<u32>(0u, _wgslsmith_div_u32(global3.x, ~global3.x ^ firstLeadingBit(4294967295u)), _wgslsmith_div_u32(49969u, u_input.c)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, -811f, 1069f, -575f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1566f, 1521f, 1308f, 452f) + vec4<f32>(-1000f, -269f, 324f, 614f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2187f))))), -463f, -848f, _wgslsmith_f_op_f32(-1425f - _wgslsmith_f_op_f32(f32(-1f) * -1164f))), vec4<bool>(false, global2[_wgslsmith_index_u32(min(~4294967295u, u_input.a), 32u)] | !(global2[_wgslsmith_index_u32(u_input.a, 32u)] || global2[_wgslsmith_index_u32(global3.x, 32u)]), true, global2[_wgslsmith_index_u32(46283u, 32u)])));
    return ~vec2<u32>(min(u_input.c, 4294967295u), _wgslsmith_sub_u32(global3.x | u_input.a, u_input.a));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global3 = func_3() >> (vec2<u32>(0u & ~(~u_input.c), 112932u) % vec2<u32>(32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(arg_0.c * arg_0.c))), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1315f) * _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.c))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-302f)) + 662f), arg_0.c, arg_0.c, 1000f));
    global1 = array<Struct_2, 25>();
    global0 = countOneBits(reverseBits(u_input.b));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0.b, 1u)), func_3()), global3.x, arg_0.b, global3.x & 73449u);
    return select(select(vec2<bool>(global2[_wgslsmith_index_u32(27671u, 32u)], !(global2[_wgslsmith_index_u32(u_input.c, 32u)] || false)), vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)] | global2[_wgslsmith_index_u32(countOneBits(85673u), 32u)], select(!global2[_wgslsmith_index_u32(2405u, 32u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, var_1.x), 32u)], select(true, global2[_wgslsmith_index_u32(0u, 32u)], true))), !vec2<bool>(global2[_wgslsmith_index_u32(~4294967295u, 32u)], global2[_wgslsmith_index_u32(arg_0.b | arg_0.b, 32u)])), !(!select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 32u)], global2[_wgslsmith_index_u32(global3.x, 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_0.b, 32u)], global2[_wgslsmith_index_u32(u_input.c, 32u)]), global2[_wgslsmith_index_u32(45319u >> (var_1.x % 32u), 32u)])), vec2<bool>(any(!select(vec3<bool>(global2[_wgslsmith_index_u32(32596u, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 32u)], global2[_wgslsmith_index_u32(arg_0.b, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)]))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~37466u), global3.x), 32u)]));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))), -452f, !all(!vec2<bool>(false, arg_0.d))));
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1113f, -178f) * vec2<f32>(-832f, -401f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, -760f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(736f, -839f) - vec2<f32>(-105f, -167f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(909f, 1281f)))), 75137u, _wgslsmith_f_op_f32(func_4(Struct_2(-1101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1250f)), ~vec4<i32>(u_input.b, -2147483647i, 68654i, u_input.d) & reverseBits(vec4<i32>(-71i, u_input.d, -14714i, u_input.d)), !(true & global2[_wgslsmith_index_u32(96237u, 32u)])), !func_2(Struct_1(vec2<f32>(742f, -2747f), 4294967295u, 302f)))));
    global0 = ~((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 39530i, u_input.b, u_input.d) ^ vec4<i32>(-1i, u_input.b, 0i, u_input.d), vec4<i32>(-1i, 2147483647i, -2147483647i, 47959i)) >> (~33320u % 32u)) << (u_input.c % 32u));
    global2 = array<bool, 32>();
    let var_1 = var_0;
    global2 = array<bool, 32>();
    return ~vec3<u32>(51222u, _wgslsmith_div_u32(~firstLeadingBit(4294967295u), u_input.a), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, 0u) >> (firstLeadingBit(vec3<u32>(25085u, u_input.a, 0u)) % vec3<u32>(32u)), ~(vec3<u32>(65239u, global3.x, 20893u) & vec3<u32>(u_input.a, u_input.a, 13550u))), func_1()));
    global1 = array<Struct_2, 25>();
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 11954u, 0u)) << (~vec3<u32>(17349u, 14616u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(95873u, 7974u, 33016u) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global3.x, u_input.c), vec3<u32>(57650u, 0u, var_0))) ^ max(min(~vec3<u32>(1u, global3.x, 14730u), vec3<u32>(1u, u_input.a, 93605u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.c, 61733u), ~vec3<u32>(9981u, global3.x, global3.x))), ~vec3<u32>(0u, var_0, _wgslsmith_mod_u32(1u, var_0)));
    var var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(select(u_input.c, 1u, false)), reverseBits(~var_0)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, ~var_0), ~(var_1.zy | vec2<u32>(u_input.a, global3.x))));
    var var_3 = global2[_wgslsmith_index_u32(abs(32590u), 32u)];
    var_3 = !any(select(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)], true)), vec2<bool>(!global2[_wgslsmith_index_u32(var_2.x, 32u)], true), func_2(Struct_1(vec2<f32>(306f, 139f), 1u, 1178f)).x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_i32(-1i, -u_input.b)), abs(u_input.d), _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 11472u), abs(vec4<u32>(63739u, 16632u, u_input.c, 0u)), reverseBits(vec4<u32>(var_0, 0u, 4294967295u, var_0)))), vec4<u32>(4294967295u, var_1.x, var_2.x, var_1.x)));
}

