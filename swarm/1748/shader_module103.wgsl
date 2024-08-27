struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
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

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<bool, 31>;

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 1u, 1u, 1475u), vec4<u32>(15133u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(14843u, 1u, 25885u, 4294967295u), vec4<u32>(46043u, 1u, 15133u, 1u), vec4<u32>(98483u, 0u, 1u, 1u), vec4<u32>(1u, 0u, 0u, 93207u), vec4<u32>(42682u, 0u, 4219u, 1u), vec4<u32>(2167u, 60565u, 1u, 13093u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(7380u, 0u, 0u, 23770u), vec4<u32>(1u, 36732u, 67001u, 1u), vec4<u32>(25664u, 16421u, 4294967295u, 640u), vec4<u32>(0u, 50532u, 1859u, 4294967295u), vec4<u32>(3608u, 12519u, 24646u, 84025u), vec4<u32>(4294967295u, 1u, 37858u, 51935u), vec4<u32>(1u, 1u, 86656u, 4294967295u), vec4<u32>(78535u, 1791u, 103362u, 22105u), vec4<u32>(25726u, 8727u, 0u, 66274u), vec4<u32>(0u, 17170u, 0u, 6500u), vec4<u32>(65431u, 4294967295u, 19530u, 4294967295u), vec4<u32>(1u, 4294967295u, 30965u, 4025u), vec4<u32>(19100u, 17664u, 25638u, 1u), vec4<u32>(1u, 41662u, 4294967295u, 51370u), vec4<u32>(110875u, 59126u, 74224u, 0u), vec4<u32>(4903u, 43792u, 4294967295u, 2591u), vec4<u32>(0u, 36115u, 1u, 76948u), vec4<u32>(0u, 1u, 0u, 0u));

var<private> global3: vec3<i32> = vec3<i32>(1i, -27697i, -26608i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global1 = array<bool, 31>();
    let var_0 = Struct_2(max((-vec4<i32>(global3.x, 39415i, u_input.a.x, 2665i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 12769u, u_input.b.x, 1u), u_input.b) % vec4<u32>(32u))) >> ((vec4<u32>(17597u, u_input.d, u_input.d, u_input.d) << (~vec4<u32>(u_input.d, 40588u, 28748u, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), ~arg_0.a, arg_0.a, -2408i)), Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(5422i, -2147483647i, arg_0.a), min(vec3<i32>(u_input.c, u_input.c, -3590i), u_input.a)), global3.x)));
    let var_1 = u_input.b.xyz;
    let var_2 = Struct_2(var_0.a, global0[_wgslsmith_index_u32(u_input.d, 21u)]);
    var var_3 = !vec3<bool>(false, select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d, var_1.x | 1u), 31u)], select(all(vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), true, true), all(vec4<bool>(true, true, false, false))), false);
    return var_3.yz;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = -9344i < abs(-(1i ^ _wgslsmith_add_i32(u_input.c, arg_0.a)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -242f);
    var var_2 = vec2<bool>(u_input.b.x < ~u_input.d, !(global1[_wgslsmith_index_u32(abs(u_input.d) << (u_input.b.x % 32u), 31u)] || true));
    let var_3 = Struct_2(-(-_wgslsmith_div_vec4_i32(vec4<i32>(global3.x, global3.x, 0i, arg_0.a), vec4<i32>(0i, -15841i, 47821i, global3.x)) ^ abs(min(vec4<i32>(arg_0.a, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(2147483647i, arg_0.a, u_input.c, u_input.a.x)))), arg_0);
    var var_4 = all(!select(func_3(Struct_1(var_3.a.x)), !(!vec2<bool>(var_2.x, true)), !select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 31u)], global1[_wgslsmith_index_u32(u_input.d, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(17665u, 31u)]))));
    return global1[_wgslsmith_index_u32(1u, 31u)];
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(653f, -384f, global1[_wgslsmith_index_u32(11912u, 31u)])) - _wgslsmith_div_f32(266f, -580f)))) + -1113f);
    let var_1 = select(select(vec4<bool>(false, true, all(vec3<bool>(true, global1[_wgslsmith_index_u32(38179u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), arg_0.x < abs(55682u)), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], false, global1[_wgslsmith_index_u32(0u, 31u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(arg_0.x, 31u)], false, global1[_wgslsmith_index_u32(arg_0.x, 31u)])), !select(vec4<bool>(global1[_wgslsmith_index_u32(49214u, 31u)], false, global1[_wgslsmith_index_u32(arg_0.x, 31u)], false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_0.x, 31u)], global1[_wgslsmith_index_u32(58119u, 31u)])), !all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 31u)]))), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)], false, global1[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], true, false), func_2(global0[_wgslsmith_index_u32(4294967295u, 21u)]))), select(!select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(34843u, 31u)]), !vec4<bool>(global1[_wgslsmith_index_u32(51732u, 31u)], false, false, global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(13370u, 31u)], true, false)), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(17603u, 31u)], global1[_wgslsmith_index_u32(98877u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 31u)], false, false, global1[_wgslsmith_index_u32(52318u, 31u)]), global1[_wgslsmith_index_u32(77388u, 31u)])), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 31u)], true, false, global1[_wgslsmith_index_u32(29153u, 31u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, false, global1[_wgslsmith_index_u32(arg_0.x, 31u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, false, global1[_wgslsmith_index_u32(u_input.d, 31u)])), vec4<bool>(u_input.a.x <= u_input.a.x, global1[_wgslsmith_index_u32(abs(50852u), 31u)], -2147483647i <= u_input.c, global1[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(60590u, 31u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], all(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 31u)], true, false, global1[_wgslsmith_index_u32(0u, 31u)]))))), global1[_wgslsmith_index_u32(1u, 31u)]);
    global3 = firstTrailingBit(~_wgslsmith_sub_vec3_i32(~vec3<i32>(10340i, global3.x, u_input.a.x), ~_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(35356i, u_input.c, -2147483647i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(sign(2315f)), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 - var_0), var_0)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 1085f, var_0) * vec4<f32>(var_0, var_0, 2128f, 800f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 135f, var_0))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(477f, -338f, false)), _wgslsmith_div_f32(941f, var_0), 1143f))))));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 21u)];
    return Struct_1(min(reverseBits(-(~u_input.c)), ~2147483647i));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = Struct_2(vec4<i32>(u_input.c, ~firstTrailingBit(_wgslsmith_div_i32(-1i, global3.x)), -4934i, (firstTrailingBit(u_input.c) << (_wgslsmith_div_u32(49276u, u_input.b.x) % 32u)) << (u_input.b.x % 32u)), func_1(_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, 0u, u_input.d)), vec3<u32>(u_input.b.x, 72389u, u_input.d) << (u_input.b.zwy % vec3<u32>(32u))) >> (~u_input.b.xxx % vec3<u32>(32u))));
    var var_1 = _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(firstTrailingBit(51374u), ~_wgslsmith_div_u32(42648u, ~u_input.d)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1246f)), 1f, _wgslsmith_f_op_f32(-1326f - -137f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-904f, 618f, -2545f))), vec3<f32>(-287f, -1176f, -564f), vec3<bool>(true, true, true))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(879f)), _wgslsmith_f_op_f32(-1516f - 1191f), -866f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -2100f, -1108f))))), true));
    var var_3 = -1705f;
    let var_4 = ~max(abs(u_input.b.ww), vec2<u32>(~(~u_input.d), u_input.b.x));
    return StorageBuffer(~(~max(47199u, abs(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(~(~global3.x), _wgslsmith_dot_vec4_i32(min(min(vec4<i32>(global3.x, -14047i, -28579i, global3.x), vec4<i32>(u_input.a.x, u_input.a.x, global3.x, global3.x)) & vec4<i32>(-8992i, global3.x, 9943i, 16132i), ~firstLeadingBit(vec4<i32>(global3.x, global3.x, global3.x, 26814i))), ~vec4<i32>(1i, reverseBits(2147483647i), global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-24308i, global3.x, global3.x), u_input.a))));
    global0 = array<Struct_1, 21>();
    global1 = array<bool, 31>();
    var_0 = reverseBits(reverseBits(2147483647i));
    var var_1 = global0[_wgslsmith_index_u32(53051u, 21u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-535f, _wgslsmith_div_f32(-1448f, 2259f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f))));
    let var_3 = ~(~var_1.a);
    var_0 = ~(-10684i);
    var var_4 = Struct_1(~16918i);
    let x = u_input.a;
    s_output = func_4(select(!(!global1[_wgslsmith_index_u32(~0u, 31u)]), true, true), func_1(u_input.b.zzx));
}

