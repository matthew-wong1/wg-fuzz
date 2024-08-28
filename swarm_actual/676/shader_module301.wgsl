struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<i32, 2>;

var<private> global2: array<u32, 2>;

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-25077i, 4294967295u, 22843u, vec4<f32>(-298f, 1000f, 587f, 1183f)), Struct_1(-1i, 1u, 4294967295u, vec4<f32>(-1771f, -1424f, -362f, 292f)), Struct_1(1i, 0u, 1u, vec4<f32>(-328f, -500f, 1276f, 598f)), Struct_1(52228i, 29168u, 1u, vec4<f32>(1267f, 243f, 1727f, 355f)), Struct_1(-1i, 6036u, 1u, vec4<f32>(-743f, -559f, -357f, 1119f)), Struct_1(2147483647i, 4294967295u, 0u, vec4<f32>(-572f, -1453f, -1000f, 722f)), Struct_1(i32(-2147483648), 45326u, 16031u, vec4<f32>(533f, -1008f, -1980f, -1421f)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = ~_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(arg_0.a, -2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 2u)], -23308i)), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a, -2147483647i, arg_0.a, -19043i), -vec4<i32>(global1[_wgslsmith_index_u32(arg_0.b, 2u)], 0i, 2147483647i, -2147483647i), vec4<i32>(-1i, 2147483647i, u_input.a, arg_0.a)), ~(-vec4<i32>(1i, global1[_wgslsmith_index_u32(0u, 2u)], 2147483647i, 1i))));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), u_input.b.zwx, vec3<u32>(1u, 0u, 1u) | u_input.b.xyz), ~vec3<u32>(_wgslsmith_div_u32(arg_0.b, 39982u), _wgslsmith_mod_u32(1u, 10365u), 4294967295u), ~(~u_input.b.zxx) ^ abs(_wgslsmith_mult_vec3_u32(u_input.b.xyz, vec3<u32>(100036u, 36593u, arg_0.b))));
    let var_2 = global4[_wgslsmith_index_u32(firstLeadingBit(~global2[_wgslsmith_index_u32(~countOneBits(u_input.b.x), 2u)]), 7u)];
    global3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + var_2.d.x)), var_2.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1480f, _wgslsmith_f_op_f32(abs(arg_0.d.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.d.x + -398f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-arg_0.d.x))), -210f), arg_0.d));
    let var_3 = i32(-1i) * -1i;
    return _wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(4294967295u, 2u)], -24207i) | var_3, abs(~var_2.a), 1i, var_3), abs(vec4<i32>(var_2.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-34475i, u_input.a, arg_0.a), vec3<i32>(var_3, arg_0.a, global1[_wgslsmith_index_u32(1u, 2u)])), vec3<i32>(34437i, 1i, u_input.a)), firstLeadingBit(var_2.a >> (var_2.c % 32u)), _wgslsmith_add_i32(~var_3, arg_0.a))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = ~func_3(global0[_wgslsmith_index_u32(u_input.b.x, 1u)]) & -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(28011i, u_input.a, arg_2, u_input.a), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2210u, 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15843u, 2u)], 2u)], u_input.a)), vec4<i32>(arg_2, u_input.a, u_input.a, 70091i)), _wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 2u)], -40186i, global1[_wgslsmith_index_u32(35720u, 2u)]), select(vec4<i32>(35492i, 22793i, arg_1.a, arg_1.a), vec4<i32>(arg_1.a, u_input.a, -1i, arg_1.a), arg_3)));
    var var_1 = global4[_wgslsmith_index_u32(0u, 7u)];
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_1.b, reverseBits(0u << (arg_0 % 32u))) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(12244u, var_1.c)), u_input.b.zw) << (vec2<u32>(arg_1.c, arg_0) % vec2<u32>(32u)), ~(~reverseBits(vec2<u32>(1u, 1747u)))), 7u)];
    var var_3 = -vec3<i32>(34855i, var_2.a, _wgslsmith_div_i32(0i, 2147483647i) & global1[_wgslsmith_index_u32(~arg_1.c, 2u)]) << (~_wgslsmith_add_vec3_u32(min(u_input.b.zww, u_input.b.ywx), u_input.b.xzx) % vec3<u32>(32u));
    return global4[_wgslsmith_index_u32(69301u, 7u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = func_2(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(0u, 1u)), 1u), func_2(abs(4294967295u), global0[_wgslsmith_index_u32(0u, 1u)], -global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(35750u, firstLeadingBit(14872u)), 2u)], all(vec3<bool>(true, true, false))), _wgslsmith_div_i32(~(~(-1012i)), 6831i), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1.d.x, -718f)), _wgslsmith_f_op_f32(826f * 1000f))) == -290f));
    let var_1 = countOneBits(_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, var_0.b));
    let var_2 = global3.wxy;
    let var_3 = select(vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(397f, -893f)), _wgslsmith_f_op_f32(-var_2.x)) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1167f, arg_1.d.x)))), false, false, select(true, true, any(vec4<bool>(false, false, true, false)))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(!(!all(vec4<bool>(true, true, false, true))), false, !(!all(vec2<bool>(true, false))), false));
    var var_4 = _wgslsmith_dot_vec4_i32(-reverseBits(-select(vec4<i32>(arg_1.a, arg_0, 0i, -57151i), vec4<i32>(-50938i, -16356i, -6292i, 53840i), var_3)), ~func_3(arg_1));
    return var_3.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = Struct_1(-global1[_wgslsmith_index_u32(u_input.b.x, 2u)], ~u_input.b.x, ~(firstTrailingBit(6930u) ^ global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u << (global2[_wgslsmith_index_u32(u_input.b.x, 2u)] % 32u), ~13267u), 2u)]), _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 270f, _wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_div_f32(-146f, -1000f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(998f, global3.x, 2135f, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, arg_0, 1155f, 860f) + vec4<f32>(-717f, 1599f, global3.x, global3.x)))))));
    let var_2 = !(!func_4(u_input.a, func_2(global2[_wgslsmith_index_u32(35186u, 2u)], Struct_1(u_input.a, var_1.c, 48808u, vec4<f32>(var_1.d.x, -1521f, arg_0, -1000f)), -1i, true), Struct_1(1i, var_0, 0u, var_1.d)) && all(vec3<bool>(func_4(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46565u, 2u)], 2u)], Struct_1(-22068i, var_1.b, 4294967295u, var_1.d), global0[_wgslsmith_index_u32(var_1.c, 1u)]), true, any(vec4<bool>(true, false, false, false)))));
    global4 = array<Struct_1, 7>();
    let var_3 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(var_0, 2u)], 4294967295u, 18210u, 1u)), u_input.b, select(vec4<bool>(var_2, false, true, var_2), vec4<bool>(false, false, false, var_2), vec4<bool>(var_2, var_2, var_2, var_2))), ~u_input.b), vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_0, 2u)], var_0), _wgslsmith_sub_u32(0u, var_0), 0u) & firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(var_1.c, 2u)], var_1.c, 50353u, 36815u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(1248f));
    let var_1 = _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, -(global1[_wgslsmith_index_u32(u_input.b.x, 2u)] & -43500i))), vec2<i32>(-1i, ~(~u_input.a | _wgslsmith_div_i32(u_input.a, 12153i))));
    var var_2 = true;
    let var_3 = func_1(-2184f);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(~((u_input.b.xzw << (u_input.b.yyz % vec3<u32>(32u))) ^ ~vec3<u32>(42810u, 62958u, 4294967295u))), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.d.yy, _wgslsmith_f_op_vec2_f32(exp2(var_4.d.xx)))))), var_4.b, _wgslsmith_div_vec4_i32(~countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_4.b, 2u)], var_1.x, u_input.a, -2147483647i), vec4<i32>(1i, 2147483647i, 0i, u_input.a))), vec4<i32>(_wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(-1i, var_4.a, 0i)), global1[_wgslsmith_index_u32(~u_input.b.x, 2u)], min(var_4.a, global1[_wgslsmith_index_u32(firstTrailingBit(45774u), 2u)]), _wgslsmith_mod_i32(~(-4957i), -var_3.a))));
}

