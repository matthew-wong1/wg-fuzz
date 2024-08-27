struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(21459u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    var var_0 = vec2<u32>(66576u << (~(~0u) % 32u), global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~3867u), 1u)], 1u)], global0[_wgslsmith_index_u32(17739u, 1u)]), 1u)]);
    let var_1 = ~abs(min(1i, -(~u_input.a.x)));
    let var_2 = _wgslsmith_f_op_f32(-170f + 2476f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(396f - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(762f, 1922f))));
    return select(vec4<bool>(any(!vec4<bool>(false, true, var_2, var_2)) & false, any(vec3<bool>(true, true, !var_2)), select(true, false, ~var_1 >= -var_1), true), vec4<bool>(any(vec4<bool>(var_2, var_2, var_2, false)) & any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !(!var_2) || var_2, any(!vec3<bool>(true, var_2, var_2)), select(!var_2, all(vec3<bool>(true, false, var_2)), var_2) == var_2), vec4<bool>(true, false | var_2, var_0.x < (_wgslsmith_div_u32(var_0.x, var_0.x) ^ select(1u, var_0.x, true)), true | (_wgslsmith_mult_i32(17041i, var_1) > -16575i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = false;
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_1 = !func_3();
    let var_2 = Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(-1i) * -vec3<i32>(arg_0.x, arg_0.x, 2147483647i)), -10674i, -1i), Struct_1(~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(22541u, 1u)], 129010u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53455u, 1u)], 1u)], 1u)], 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20609u, 1u)], 1u)], 1u)], 41823u, 1u, 1u)) & ~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1006u, 1u)], 1u)], 6914u, 69651u))), i32(-1i) * -u_input.b.x, 5274u, Struct_1(vec4<u32>(~0u, max(73924u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)]), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(46279u, 1u)], 1u)], firstLeadingBit(4294967295u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(1602u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75409u, 1u)], 1u)], 23046u, global0[_wgslsmith_index_u32(0u, 1u)]), vec4<u32>(1u, 1u, 1u, 0u))));
    return select(var_2.b.a, vec4<u32>(15557u, abs(max(countOneBits(20532u), min(0u, global0[_wgslsmith_index_u32(var_2.d, 1u)]))), abs(41471u), var_2.d | ~4294967295u), !(!(_wgslsmith_f_op_f32(sign(1297f)) < _wgslsmith_f_op_f32(ceil(-1056f)))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = array<u32, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(669f)), _wgslsmith_f_op_f32(f32(-1f) * -588f))) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -196f))), _wgslsmith_f_op_f32(max(-1295f, -1676f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-399f, 157f, true))))), _wgslsmith_f_op_f32(-1982f + -2901f)));
    var var_1 = ~(~_wgslsmith_dot_vec3_u32(~arg_3.e.a.xwz & ~arg_1.wyz, arg_1.wyx ^ arg_1.yzx));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1411f));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, 1240f, var_0.x)), vec4<f32>(113f, _wgslsmith_f_op_f32(-var_0.x), 1000f, _wgslsmith_f_op_f32(min(-1341f, var_0.x))), any(vec4<bool>(true, true, false, true)) | true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-675f, var_0.x, var_0.x, var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)))), -318f, -1805f, _wgslsmith_f_op_f32(-var_0.x)));
    return arg_2;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<u32, 1>();
    let var_0 = Struct_2(u_input.b, func_4(global0[_wgslsmith_index_u32(4294967295u, 1u)], firstTrailingBit(firstTrailingBit(vec4<u32>(30115u, global0[_wgslsmith_index_u32(4294967295u, 1u)], 0u, 4294967295u))) ^ ~func_2(vec2<i32>(-55496i, 7016i), false, u_input.b), Struct_1(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(0u, 1u)], 1u, 4294967295u, 17401u)) | max(vec4<u32>(4081u, 60936u, 26610u, 19891u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2675u, 1u)], 1u)], global0[_wgslsmith_index_u32(48306u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]))), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(5840i, u_input.d.x, u_input.d.x) ^ u_input.c.xwy, u_input.c.xww), Struct_1(vec4<u32>(1u, global0[_wgslsmith_index_u32(14078u, 1u)], global0[_wgslsmith_index_u32(25573u, 1u)], 4294967295u)), _wgslsmith_mult_i32(u_input.c.x, 1i), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28978u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(6232u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), 1u)], 1u)]), Struct_1(~vec4<u32>(7191u, 0u, global0[_wgslsmith_index_u32(4294967295u, 1u)], 21978u)))), ~(-u_input.c.x >> (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(7251u, 1u)], 1u)], 1u)], ~4294967295u) % 32u)), (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(110184u, 1u)], 7034u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9572u, 1u)], 1u)], 1u)]), vec3<u32>(76826u, 39823u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(44879u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31309u, 1u)], 1u)], 1u)], 43128u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 0u, 1u)), 1u)]) | _wgslsmith_dot_vec4_u32(func_4(global0[_wgslsmith_index_u32(11336u, 1u)], vec4<u32>(7705u, global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u, global0[_wgslsmith_index_u32(49829u, 1u)]), Struct_1(vec4<u32>(0u, 57650u, 13307u, 23954u)), Struct_2(u_input.b, Struct_1(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10456u, 1u)], 1u)], 1u, 0u)), u_input.d.x, global0[_wgslsmith_index_u32(12840u, 1u)], Struct_1(vec4<u32>(1250u, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13581u, 1u)], 1u)])))).a, countOneBits(vec4<u32>(1u, 55310u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31090u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)])))) & ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65500u, 1u)], 1u)]), ~global0[_wgslsmith_index_u32(74531u, 1u)]), Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(11281u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 33354u, 63157u, global0[_wgslsmith_index_u32(1u, 1u)])) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54185u, 1u)], 1u)], 4294967295u, 42722u, 1u), vec4<u32>(4294967295u, 32430u, 11694u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(110179u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)])), firstLeadingBit(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24029u, 1u)], 1u)], 1u)], 2073u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(111251u, 1u)], 1u)], 1u)])), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63902u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 27997u, 32569u, 15830u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)], 45063u, global0[_wgslsmith_index_u32(2960u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)]))) % vec4<u32>(32u))));
    let var_1 = Struct_1(~vec4<u32>(~var_0.d, 1u, ~var_0.e.a.x & global0[_wgslsmith_index_u32(1u, 1u)], min(_wgslsmith_mod_u32(0u, 1u), 0u)));
    let var_2 = func_4(_wgslsmith_dot_vec3_u32(func_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_0.e.a.x, 1u, global0[_wgslsmith_index_u32(var_0.b.a.x, 1u)]), var_0.b.a), firstLeadingBit(vec4<u32>(39274u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], var_0.d, 1u)), var_0.b, Struct_2(-u_input.d, var_0.e, -var_0.a.x, global0[_wgslsmith_index_u32(0u, 1u)], var_1)).a.yxy, min(func_4(var_1.a.x, var_1.a ^ vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(15999u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.e.a.x, 1u)], 1u)]), Struct_1(var_0.b.a), Struct_2(var_0.a, Struct_1(vec4<u32>(var_1.a.x, 34257u, var_1.a.x, 4294967295u)), -45089i, var_0.d, var_0.e)).a.xzy, var_1.a.yyy)), var_1.a, Struct_1(var_1.a), var_0);
    return func_4(firstLeadingBit(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(106040u, 1u)], 4294967295u, var_0.d), reverseBits(38436u))), _wgslsmith_add_vec4_u32(vec4<u32>(~var_1.a.x ^ abs(22242u), 1u, ~(~var_1.a.x), ~var_0.b.a.x), _wgslsmith_div_vec4_u32(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], var_2.a.x, var_2.a.x, var_2.a.x)), ~func_2(u_input.a, true, var_0.a))), var_0.b, var_0);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-243f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(811f * 148f) - _wgslsmith_f_op_f32(abs(-129f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(538f, -569f)))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(-889f - -101f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1060f, 730f, 859f))), vec3<f32>(1000f, 423f, -1192f))), any(vec4<bool>(true, true, true, true))))));
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, var_0.x, -286f, 746f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1063f, var_0.x, -871f, var_0.x))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1698f, -244f, -910f, var_0.x) - vec4<f32>(var_0.x, var_0.x, -779f, var_0.x))))), func_3())));
    global0 = array<u32, 1>();
    return func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -555f, 152f, -892f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, -500f)))))), func_3().x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.d, func_5(Struct_2(-u_input.c.wxz, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, -1518f, 837f, -1065f))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-82741i, u_input.c.x), 2147483647i), max(1u, _wgslsmith_sub_u32(8992u, global0[_wgslsmith_index_u32(22107u, 1u)])), Struct_1(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(84275u, 1u)], 4294967295u)))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(26064i, 1i), _wgslsmith_add_i32(15751i, u_input.b.x)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.b.x), vec3<i32>(-49377i, 16135i, u_input.a.x), u_input.d)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 180i, 2147483647i), countOneBits(u_input.d), ~u_input.c.ywy), -u_input.c.xzz, false)), 4488u, func_4(reverseBits(31669u << (firstLeadingBit(global0[_wgslsmith_index_u32(134022u, 1u)]) % 32u)), select(firstLeadingBit(~vec4<u32>(global0[_wgslsmith_index_u32(22286u, 1u)], 77226u, global0[_wgslsmith_index_u32(82515u, 1u)], 1u)), vec4<u32>(_wgslsmith_add_u32(1385u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64550u, 1u)], 1u)], 1u)], 1u)], 1u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42276u, 1u)], 1u)], 1u)] ^ global0[_wgslsmith_index_u32(1u, 1u)], 58792u, func_1(vec4<f32>(961f, 361f, 664f, -592f)).a.x), vec4<bool>(any(vec2<bool>(true, false)), true, true, false)), Struct_1(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 1u)], 15883u, 4294967295u, global0[_wgslsmith_index_u32(23392u, 1u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u, 1u, 0u) % vec4<u32>(32u))), Struct_2(~_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), func_1(vec4<f32>(581f, -1000f, -1056f, -653f)), ~u_input.c.x >> ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)] << (23711u % 32u)) % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_1(vec4<f32>(-529f, -2113f, 2884f, -1576f)).a.x >> (select(57543u, 0u, true) % 32u), 1u)], 1u)], Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 32843u, 1u), vec4<u32>(0u, 26702u, global0[_wgslsmith_index_u32(37268u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29949u, 1u)], 1u)], 1u)], 1u)]))))));
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xyy, countOneBits(vec4<u32>(6205u, 1u, var_0.e.a.x, var_0.e.a.x)));
}

