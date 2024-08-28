struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: array<f32, 6> = array<f32, 6>(-577f, 383f, 435f, 1130f, 1000f, 1192f);

var<private> global1: Struct_2 = Struct_2(-1i, vec3<u32>(4294967295u, 35743u, 1u));

var<private> global2: array<u32, 13> = array<u32, 13>(17642u, 1u, 87283u, 0u, 4294967295u, 4294967295u, 47771u, 16001u, 1u, 538u, 30289u, 59948u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    var var_0 = arg_3.x;
    var var_1 = _wgslsmith_clamp_vec2_i32(select(abs(_wgslsmith_div_vec2_i32(u_input.a.zy, ~u_input.a.yz)), ~vec2<i32>(max(-2147483647i, -40651i), ~(-45915i)), true), vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global1.a, 64448i, 8647i, global1.a)), vec4<i32>(-u_input.b, -66738i, _wgslsmith_mod_i32(-19092i, -41992i), 0i)), global1.a & ~(~u_input.b)), u_input.a.ww);
    let var_2 = vec3<f32>(_wgslsmith_div_f32(1000f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~4294967295u), 6u)]), -927f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 6u)])));
    global0 = array<f32, 6>();
    return global2[_wgslsmith_index_u32(global1.b.x, 13u)];
}

fn func_3() -> vec4<f32> {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(~(~global1.a), -countOneBits(u_input.b), _wgslsmith_mult_i32(u_input.b, firstLeadingBit(u_input.b)), u_input.a.x);
    global0 = array<f32, 6>();
    var var_1 = vec2<i32>(-global1.a, countOneBits(u_input.a.x));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17037u, 13u)], 13u)], 6u)], 1189f, 1065f)))))));
    let var_3 = _wgslsmith_mult_vec4_u32(abs(firstLeadingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(34501u, global1.b.x, 45967u, global1.b.x), reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(68448u, 13u)], global1.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], global1.b.x))))), vec4<u32>(global2[_wgslsmith_index_u32(global1.b.x, 13u)], global1.b.x, _wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(global1.b.x, 11807u)), _wgslsmith_sub_u32(global1.b.x, ~global1.b.x)) & vec4<u32>(32685u, firstLeadingBit(global1.b.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(43633u, 13u)], global1.b.x, 1u, global2[_wgslsmith_index_u32(39704u, 13u)]), vec4<u32>(4294967295u, 4294967295u, 13486u, global2[_wgslsmith_index_u32(global1.b.x, 13u)])), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)]));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1183f, 398f, 1364f, var_2.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(534f, 1005f, global0[_wgslsmith_index_u32(global1.b.x, 6u)], 308f), vec4<f32>(var_2.a.x, global0[_wgslsmith_index_u32(1u, 6u)], -947f, -1695f))))), vec4<f32>(2031f, _wgslsmith_f_op_f32(var_2.a.x + -1000f), -1111f, 1f), select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(4294967295u, 6u)] != var_2.a.x), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = u_input.a.zz | min(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, 28168i), countOneBits(2147483647i)), vec2<i32>(arg_2.e, 0i)), vec2<i32>(-arg_2.e, ~arg_2.e) | _wgslsmith_div_vec2_i32(u_input.a.xy, abs(u_input.a.wz)));
    let var_1 = Struct_1(true, arg_0.b, select(select(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.b.x > 1328f), !select(arg_0.c, vec3<bool>(false, arg_0.a, false), true), vec3<bool>(true, arg_0.a, true)), arg_0.c, all(!select(vec2<bool>(true, false), vec2<bool>(true, true), arg_0.c.xz))));
    var var_2 = var_1;
    global1 = Struct_2(var_0.x, _wgslsmith_add_vec3_u32(~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 13u)], 13u)], arg_1, 17442u), vec3<u32>(arg_3.x, arg_1, 1u))), ~(_wgslsmith_add_vec3_u32(global1.b, global1.b) << (vec3<u32>(arg_3.x, 17978u, global2[_wgslsmith_index_u32(global1.b.x, 13u)]) % vec3<u32>(32u)))));
    var var_3 = var_2.b.x >= _wgslsmith_div_f32(120f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_2.b.x, -692f, false)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] - 1000f), arg_0.c.x && true)))));
    return arg_2;
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(248f - -741f), -509f, _wgslsmith_f_op_f32(round(arg_3.a.a.x))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.a.xx);
    var var_2 = global1.b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-446f, 2026f)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 6u)])), _wgslsmith_f_op_f32(175f + -603f), -281f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.a.x, 1f, var_0.a.x, _wgslsmith_f_op_f32(abs(801f))) * _wgslsmith_f_op_vec4_f32(floor(arg_3.b))));
    var var_4 = Struct_2(arg_2 ^ -(~(-30056i)), global1.b);
    return Struct_1(arg_1, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), global0[_wgslsmith_index_u32(~0u, 6u)])))), -1088f, 898f, _wgslsmith_f_op_f32(-866f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.a.x - 853f)))), vec3<bool>(true, false, true));
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(u_input.a.yz, _wgslsmith_add_i32(~u_input.b, abs(global1.a)) <= 1i, -35387i, func_4(Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(global1.b.x, 6u)], global0[_wgslsmith_index_u32(global1.b.x, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 6u)]), vec4<f32>(-539f, 1021f, global0[_wgslsmith_index_u32(23478u, 6u)], 1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(672f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12857u, 13u)], 6u)], global0[_wgslsmith_index_u32(9283u, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 13u)], 6u)]), vec4<f32>(1554f, global0[_wgslsmith_index_u32(global1.b.x, 6u)], 1132f, 153f), vec4<bool>(false, true, true, true)))), vec3<bool>(true, true, true)), func_2(global1.b.x, vec3<bool>(true, true, true), 9918u, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1275f, global0[_wgslsmith_index_u32(0u, 6u)], 169f) * vec3<f32>(-414f, global0[_wgslsmith_index_u32(global1.b.x, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15476u, 13u)], 6u)]))), _wgslsmith_f_op_vec4_f32(func_3()), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], 491f, 555f) - vec3<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70519u, 13u)], 6u)], global0[_wgslsmith_index_u32(48599u, 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19711u, 13u)], 6u)]))), global1.a), ~firstTrailingBit(vec2<u32>(30556u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 13u)], 13u)]))));
    global1 = Struct_2(max(u_input.b, ~global1.a), firstLeadingBit(global1.b));
    global1 = Struct_2(u_input.b, vec3<u32>(38954u, global2[_wgslsmith_index_u32(~1u & (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(15040u, 13u)], 13u)], 13u)] & 0u), 13u)], ~max(1u, abs(global1.b.x))));
    var var_1 = u_input.a;
    var_1 = u_input.a;
    return Struct_3(_wgslsmith_f_op_vec3_f32(-func_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, var_0.c.x)), var_0.c), max(4294967295u, 4294967295u), func_4(Struct_1(true, var_0.b, var_0.c), global1.b.x, func_4(Struct_1(var_0.a, var_0.b, var_0.c), 0u, Struct_4(Struct_3(vec3<f32>(665f, global0[_wgslsmith_index_u32(33933u, 6u)], -542f)), vec4<f32>(1548f, var_0.b.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86164u, 13u)], 6u)], 632f), Struct_3(vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(24228u, 6u)], -795f)), Struct_3(var_0.b.yzz), u_input.b), vec2<u32>(global2[_wgslsmith_index_u32(global1.b.x, 13u)], global2[_wgslsmith_index_u32(global1.b.x, 13u)])), vec2<u32>(global1.b.x, global2[_wgslsmith_index_u32(0u, 13u)]) << (vec2<u32>(global2[_wgslsmith_index_u32(global1.b.x, 13u)], 0u) % vec2<u32>(32u))), firstLeadingBit(global1.b.xy & vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global1.b.x, 13u)]))).c.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(1i, global1.b & _wgslsmith_sub_vec3_u32(global1.b, global1.b));
    let var_0 = func_1();
    var var_1 = Struct_3(vec3<f32>(global0[_wgslsmith_index_u32(global1.b.x, 6u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1460f) * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1073f * 2106f), var_0.a.x))), var_0.a.x));
    var var_2 = Struct_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(global1.b.x >= 1u, func_5(vec2<i32>(1i, -2147483647i), false, u_input.b, Struct_4(var_0, vec4<f32>(var_0.a.x, var_0.a.x, 526f, var_1.a.x), Struct_3(vec3<f32>(global0[_wgslsmith_index_u32(global1.b.x, 6u)], 1927f, var_1.a.x)), var_0, -1i)).c.x, true, false))), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(658f + _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, global0[_wgslsmith_index_u32(1u, 6u)]), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 13u)], 13u)]), 6u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4832u, 6u)] + -1053f))), _wgslsmith_f_op_f32(-var_0.a.x)), !vec3<bool>(any(vec4<bool>(true, true, true, true)) && any(vec3<bool>(false, true, true)), false, (var_1.a.x <= -1412f) | true));
    var var_3 = func_4(func_5(-vec2<i32>(73355i, 21268i), var_2.a || any(!vec4<bool>(true, var_2.a, true, var_2.c.x)), -_wgslsmith_add_i32(u_input.a.x, func_4(Struct_1(false, var_2.b, vec3<bool>(var_2.c.x, var_2.c.x, false)), global1.b.x, Struct_4(Struct_3(var_0.a), vec4<f32>(var_0.a.x, -1000f, 252f, var_0.a.x), var_0, var_0, u_input.a.x), vec2<u32>(4294967295u, 25169u)).e), Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-462f, -1704f, var_0.a.x))), func_4(Struct_1(var_2.c.x, var_2.b, var_2.c), ~0u, Struct_4(Struct_3(vec3<f32>(301f, -1939f, var_1.a.x)), var_2.b, var_0, var_0, global1.a), global1.b.xy | vec2<u32>(1u, 4294967295u)).b, var_0, Struct_3(_wgslsmith_f_op_vec3_f32(var_2.b.xzy + var_1.a)), 41935i)), global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global1.b.x, 13u)], 13u)], ~1u)), 13u)], func_4(func_5(u_input.a.yz, _wgslsmith_f_op_f32(-var_2.b.x) > _wgslsmith_f_op_vec4_f32(func_3()).x, u_input.b, func_4(func_5(u_input.a.wx, var_2.a, -1i, Struct_4(var_0, var_2.b, Struct_3(var_1.a), Struct_3(vec3<f32>(642f, global0[_wgslsmith_index_u32(global1.b.x, 6u)], var_0.a.x)), 10608i)), ~98978u, Struct_4(var_0, var_2.b, Struct_3(vec3<f32>(-819f, var_1.a.x, var_2.b.x)), Struct_3(vec3<f32>(-734f, var_0.a.x, global0[_wgslsmith_index_u32(31248u, 6u)])), global1.a), vec2<u32>(global2[_wgslsmith_index_u32(94450u, 13u)], global2[_wgslsmith_index_u32(global1.b.x, 13u)]))), abs(global1.b.x), func_4(Struct_1(any(vec4<bool>(var_2.c.x, false, var_2.c.x, var_2.c.x)), _wgslsmith_div_vec4_f32(var_2.b, vec4<f32>(var_0.a.x, global0[_wgslsmith_index_u32(26038u, 6u)], -1602f, -384f)), var_2.c), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.b ^ vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], 599u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 13u)], 13u)], 13u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u, 9287u) >> (vec3<u32>(global2[_wgslsmith_index_u32(59159u, 13u)], 34335u, global2[_wgslsmith_index_u32(global1.b.x, 13u)]) % vec3<u32>(32u))), 13u)], Struct_4(func_1(), func_4(Struct_1(var_2.a, vec4<f32>(var_0.a.x, -1671f, var_2.b.x, -453f), var_2.c), 4294967295u, Struct_4(var_0, var_2.b, var_0, var_0, -2147483647i), vec2<u32>(global1.b.x, global2[_wgslsmith_index_u32(0u, 13u)])).b, func_4(Struct_1(false, var_2.b, vec3<bool>(false, var_2.a, false)), 54299u, Struct_4(var_0, vec4<f32>(var_1.a.x, var_1.a.x, -934f, 1032f), var_0, var_0, 0i), global1.b.yz).a, var_0, -u_input.b), global1.b.yx), ~global1.b.zy), vec2<u32>(~(~global2[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_mult_u32(func_2(~global1.b.x, !var_2.c, global1.b.x, func_5(vec2<i32>(global1.a, global1.a), var_2.a, u_input.a.x, Struct_4(Struct_3(vec3<f32>(1075f, var_0.a.x, 1827f)), var_2.b, Struct_3(var_1.a), Struct_3(var_2.b.ywx), global1.a)).c), ~(1u >> (global2[_wgslsmith_index_u32(global1.b.x, 13u)] % 32u))))).a;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f + _wgslsmith_f_op_f32(floor(func_1().a.x)))), var_1.a.x);
    global2 = array<u32, 13>();
    var_4 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(869f))) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstLeadingBit(68113u), 6u)], 1549f)));
    global2 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(var_1.a)));
}

