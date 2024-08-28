struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, false, false, true, false, false);

var<private> global1: array<i32, 18> = array<i32, 18>(-20315i, -9929i, i32(-2147483648), 8559i, -26145i, 27889i, 13194i, -63734i, i32(-2147483648), -36481i, -32702i, 29451i, 0i, i32(-2147483648), 0i, 2147483647i, 1i, i32(-2147483648));

var<private> global2: array<i32, 10> = array<i32, 10>(-1i, -1i, -2298i, -10944i, 31311i, 0i, i32(-2147483648), -53192i, i32(-2147483648), 6596i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec3<i32>(u_input.a, ~(~_wgslsmith_add_i32(u_input.a, global2[_wgslsmith_index_u32(70575u, 10u)])), global1[_wgslsmith_index_u32(1u, 18u)]));
    let var_1 = false == any(!select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(73145u, 7u)]), !vec2<bool>(global0[_wgslsmith_index_u32(37895u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(65008u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])));
    var var_2 = vec4<u32>(0u, 357u, 5652u, ~(~1u));
    var_2 = abs(vec4<u32>(var_2.x, ~_wgslsmith_dot_vec3_u32(var_2.wzz, _wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, 4294967295u, var_2.x), var_2.zyz)), abs(var_2.x), _wgslsmith_sub_u32(32248u, var_2.x)));
    let var_3 = Struct_2(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(var_2.x, var_2.x), vec2<u32>(49982u, 0u), var_1), var_2.zz), Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.a, vec3<i32>(u_input.a, 30626i, global2[_wgslsmith_index_u32(var_2.x, 10u)])) >> (var_2.zxx % vec3<u32>(32u)), vec3<i32>(-1i, 23679i, _wgslsmith_dot_vec2_i32(var_0.a.yx, vec2<i32>(var_0.a.x, -23212i))))));
    return _wgslsmith_clamp_i32(-u_input.a, u_input.a, -u_input.a << (~4294967295u % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(~(_wgslsmith_dot_vec3_u32(min(vec3<u32>(2125u, 16695u, 46863u), vec3<u32>(1586u, 2889u, 9249u)), abs(vec3<u32>(28364u, 61045u, 23954u))) >> (_wgslsmith_div_u32(56810u, 1u) % 32u)));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(abs(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(1u, 10u)], u_input.a) << (firstTrailingBit(32906u) % 32u)), reverseBits(-2147483647i)), select(_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(4787i, 37548i)), vec2<i32>(-2147483647i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(var_0, 10u)], u_input.a))), vec2<i32>(max(1i, 17049i), u_input.a), select(vec2<bool>(true, true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(88472u, 7u)], global0[_wgslsmith_index_u32(var_0, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(53464u, 7u)], global0[_wgslsmith_index_u32(var_0, 7u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0, 7u)], global0[_wgslsmith_index_u32(10010u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(22571u, 7u)], global0[_wgslsmith_index_u32(14493u, 7u)]), false)), true)));
    var_1 = func_3();
    return Struct_1(vec3<i32>(_wgslsmith_mod_i32(abs(0i), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(var_0, 10u)], global1[_wgslsmith_index_u32(1u, 18u)])) >> (~(~1u) % 32u), firstLeadingBit(~(~0i)), 0i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> vec2<u32> {
    global0 = array<bool, 7>();
    global2 = array<i32, 10>();
    var var_0 = ~(global1[_wgslsmith_index_u32(~arg_0.a.x & arg_0.a.x, 18u)] ^ 39579i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-304f)), -1666f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(884f + -2483f)))))));
    global1 = array<i32, 18>();
    return _wgslsmith_div_vec2_u32(arg_1.a | arg_1.a, firstLeadingBit(abs(arg_0.a)) | (~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.x, 4294967295u), arg_0.a) & ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, 1u), vec2<u32>(4294967295u, arg_1.a.x))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(select(func_4(Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(10059u, 61803u), vec2<u32>(1u, 48228u)), func_2()), Struct_2(vec2<u32>(1u, 1u), func_2()), ~1u), vec2<u32>(25824u, firstLeadingBit(24374u)) >> (select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(42628u, 6775u), true == global0[_wgslsmith_index_u32(77822u, 7u)]) % vec2<u32>(32u)), !select(!vec2<bool>(true, global0[_wgslsmith_index_u32(11184u, 7u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(2255u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(19385u, 7u)], false), vec2<bool>(global0[_wgslsmith_index_u32(69281u, 7u)], global0[_wgslsmith_index_u32(99844u, 7u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(38090u, 7u)]), global0[_wgslsmith_index_u32(0u, 7u)]))), func_2());
    var var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(57690u, var_0.a.x, var_0.a.x, var_0.a.x), firstLeadingBit(vec4<u32>(var_0.a.x, var_0.a.x, 0u, var_0.a.x))) | vec4<u32>(firstTrailingBit(var_0.a.x), 4294967295u, countOneBits(0u), max(var_0.a.x, 0u)), max(vec4<u32>(11440u, var_0.a.x ^ 1u, 16514u >> (var_0.a.x % 32u), 15595u), ~vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 4294967295u)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(723f, -970f, 277f), vec3<f32>(431f, -1778f, 151f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1553f, 1667f, -1000f), vec3<f32>(-836f, -389f, -171f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-778f - 271f)), 137f, -368f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(246f, 790f, 1318f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(714f, -1304f, -1441f) + vec3<f32>(-1245f, 246f, -132f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, -1000f, 736f)))));
    let var_3 = var_0.b;
    var var_4 = Struct_1(firstLeadingBit(firstLeadingBit(vec3<i32>(1i, 1i, arg_0.a.x))) << (var_1.xww % vec3<u32>(32u)));
    return -349f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 18>();
    var var_0 = !(all(!select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(21267u, 7u)], global0[_wgslsmith_index_u32(50443u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false))) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(0u, 18u)], u_input.a, 2147483647i)))) * _wgslsmith_f_op_f32(-289f * 2102f)) > _wgslsmith_f_op_f32(-1f)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(20784u, min(_wgslsmith_mod_u32(1u, 15750u), _wgslsmith_clamp_u32(4294967295u, reverseBits(~75795u), 54253u))), 7u)];
    let var_1 = Struct_2(countOneBits(~firstLeadingBit(vec2<u32>(43495u, 4006u))), func_2());
    var_0 = false;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(-1263f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-553f * -879f), _wgslsmith_f_op_f32(sign(-271f))) * _wgslsmith_f_op_f32(abs(1000f)))), 270f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f + 796f)), _wgslsmith_f_op_f32(f32(-1f) * -191f))))));
    global2 = array<i32, 10>();
    var var_3 = var_1;
    let var_4 = vec2<i32>(_wgslsmith_sub_i32(u_input.a, global1[_wgslsmith_index_u32(var_3.a.x, 18u)]), ~var_3.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1272f - 1009f), var_2.x), 512f)), ~firstLeadingBit(vec3<u32>(max(7698u, var_3.a.x), ~var_3.a.x, var_3.a.x)), 26185u, _wgslsmith_f_op_f32(-1000f * var_2.x));
}

