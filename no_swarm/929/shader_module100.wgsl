struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    global1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -_wgslsmith_clamp_i32(1i, -12307i, 4086i), select(_wgslsmith_add_i32(-1i, global1.b), _wgslsmith_clamp_i32(global1.c.x, -1i, -37990i), !global1.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b, u_input.b.x, u_input.a.x, 0i), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(global1.b, global1.b, -40862i, -1i), vec4<i32>(arg_1.a, u_input.b.x, -65653i, 0i)))), u_input.a), u_input.a.x, arg_1.c, !(!(!(!arg_1.d))));
    var var_0 = !arg_1.d.zw;
    let var_1 = abs(~(vec2<u32>(global0[_wgslsmith_index_u32(~46571u, 2u)], arg_0) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)]), vec2<u32>(4294967295u, 17361u)) % vec2<u32>(32u))));
    var var_2 = -vec3<i32>(abs(~(~global1.c.x)), u_input.b.x, 0i);
    var_2 = u_input.a.wxw;
    return firstLeadingBit(-2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = reverseBits(-min(-u_input.a.x, global1.b >> (19582u % 32u)) << ((arg_3 ^ _wgslsmith_sub_u32(4294967295u, ~4294967295u)) % 32u));
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_1 = Struct_1(func_3((abs(47776u) & ~arg_3) & _wgslsmith_sub_u32(arg_3, global0[_wgslsmith_index_u32(~29691u, 2u)]), arg_0), ~(-_wgslsmith_add_i32(440i, arg_2.c.x) | 78678i), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-(~arg_0.c), ~min(vec2<i32>(44237i, var_0), arg_0.c), ~u_input.b | arg_0.c), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(27947i, arg_0.b)), arg_0.c)), !arg_0.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, _wgslsmith_f_op_f32(f32(-1f) * -156f), -949f))) + vec3<f32>(_wgslsmith_f_op_f32(-642f - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1860f, -1309f), _wgslsmith_f_op_f32(-2245f - -357f), select(false, arg_2.d.x, arg_2.d.x)))), -1190f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1212f)), _wgslsmith_f_op_f32(f32(-1f) * -437f)))));
    return select(var_0, var_1.b, true);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-u_input.a, -u_input.a), u_input.a), global1.c.x, _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a.x, 13821i), vec2<i32>(u_input.b.x, func_2(Struct_1(-2147483647i, u_input.b.x, vec2<i32>(global1.c.x, global1.a), vec4<bool>(global1.d.x, false, true, true)), global1.d.x, Struct_1(global1.b, -2147483647i, vec2<i32>(-1i, -3359i), vec4<bool>(global1.d.x, global1.d.x, global1.d.x, global1.d.x)), global0[_wgslsmith_index_u32(57334u, 2u)]))), select(global1.d, global1.d, false)), vec4<u32>(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 2u)], arg_2) & _wgslsmith_mod_u32(~4294967295u, arg_2), 1u, reverseBits(select(global0[_wgslsmith_index_u32(arg_2, 2u)], arg_1.x, true) ^ _wgslsmith_add_u32(arg_1.x, 19944u)), 69553u & ~global0[_wgslsmith_index_u32(max(arg_2, arg_1.x), 2u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-arg_0));
    let var_2 = 601f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_3 = true;
    var var_4 = var_0;
    return Struct_1(-1i, -2147483647i, var_0.a.c, !vec4<bool>(all(var_4.a.d), var_2, var_0.a.d.x, 81753i == abs(var_4.a.c.x)));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(109f, -499f, -996f, 1030f) - vec4<f32>(-788f, 121f, -1000f, -537f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, -1203f, -181f, 348f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.b.xzw, arg_0.b.zzw), 0u, 1u), abs(firstLeadingBit(arg_0.b.zzz)), vec3<u32>(abs(global0[_wgslsmith_index_u32(arg_0.b.x, 2u)]), firstTrailingBit(4294967295u), 0u)), arg_0.b.x), arg_0.b);
    let var_1 = Struct_1(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 739f, 1000f, 112f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(882f, 226f, 1356f, 272f), vec4<f32>(-2111f, 1000f, -1000f, 569f), arg_0.a.d.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-862f, -1863f, 1000f, -1007f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(397f, 145f, -1000f, -679f)))), ~var_0.b.yxw, _wgslsmith_mult_u32(~1u, arg_0.b.x)).a, arg_0.a.b, ~global1.c, vec4<bool>(global1.d.x, all(global1.d.xw), false && (any(vec4<bool>(global1.d.x, false, global1.d.x, arg_0.a.d.x)) || !global1.d.x), !(!var_0.a.d.x) & arg_0.a.d.x));
    var var_2 = -97749i;
    var var_3 = !func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(223f, 1130f)), 1127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1949f)) + _wgslsmith_f_op_f32(abs(419f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f * 181f) - 149f)), ~(~(vec3<u32>(global0[_wgslsmith_index_u32(46751u, 2u)], 1u, arg_0.b.x) >> (var_0.b.zyw % vec3<u32>(32u)))), 119452u >> (~global0[_wgslsmith_index_u32(var_0.b.x, 2u)] % 32u)).d;
    var_3 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1151f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-765f, -758f))), -398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1004f, -387f)) - 288f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1198f, -767f, 264f, 150f)))))))), max(~_wgslsmith_clamp_vec3_u32(arg_0.b.xyw, ~vec3<u32>(arg_0.b.x, arg_0.b.x, 26712u), ~arg_0.b.xzw), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 46031u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40950u, 2u)], 2u)] ^ arg_0.b.x), select(abs(arg_0.b.x), 0u, !var_0.a.d.x), global0[_wgslsmith_index_u32(arg_0.b.x, 2u)])), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(arg_0.b.x, 2u)]), 2u)], 1800u), firstLeadingBit(vec2<u32>(var_0.b.x, 25606u) ^ vec2<u32>(arg_0.b.x, arg_0.b.x)))), 2u)]).d;
    return ~(~var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f - 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1019f)));
    var var_1 = !vec3<bool>(true, global1.d.x, false);
    var var_2 = 21446u;
    global1 = Struct_1(u_input.a.x | global1.b, func_4(Struct_2(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(816f, -1421f, -174f, -1667f), vec4<f32>(-995f, 1000f, 1079f, 931f)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77777u, 2u)], 2u)], 2u)], 2u)], 2u)], 103u, 1u)), global0[_wgslsmith_index_u32(max(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 2u)]), 2u)]), ~(~vec4<u32>(22144u, 5691u, global0[_wgslsmith_index_u32(15800u, 2u)], 30668u)))), reverseBits(select(~select(global1.c, global1.c, global1.d.x), -_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.a.x)), !any(vec3<bool>(false, var_1.x, var_1.x)))), !func_1(vec4<f32>(-463f, -1074f, _wgslsmith_div_f32(-776f, -235f), _wgslsmith_f_op_f32(sign(1000f))), (vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]) | vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14411u, 2u)], 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22531u, 2u)], 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(42842u, 2u)])) << ((vec3<u32>(20537u, 1u, global0[_wgslsmith_index_u32(37688u, 2u)]) & vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(8986u, 2u)])) % vec3<u32>(32u)), _wgslsmith_add_u32(firstLeadingBit(5142u), select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34611u, 2u)], 2u)], true))).d);
    var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(125531u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)] ^ 4294967295u, 2u)], countOneBits(global0[_wgslsmith_index_u32(0u, 2u)])), ~(~vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 24770u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3141u, 2u)], 2u)], 2u)], 2u)]), vec3<u32>(65715u, 4294967295u, global0[_wgslsmith_index_u32(1u, 2u)]))), ~(~(~vec3<u32>(global0[_wgslsmith_index_u32(22092u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 4020u)))), abs(3320u), abs(~(4294967295u & global0[_wgslsmith_index_u32(110298u, 2u)])) | global0[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)])), _wgslsmith_dot_vec2_u32(~vec2<u32>(29861u, global0[_wgslsmith_index_u32(0u, 2u)]), abs(vec2<u32>(21784u, 1u)))), 2u)]);
    var_2 = _wgslsmith_sub_u32(max(~global0[_wgslsmith_index_u32(30339u, 2u)] >> (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], 2u)]), 2u)] % 32u), ~4294967295u), 1u) >> (~global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62859u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 105541u) << (~63802u % 32u), 2u)] % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(global1.b, 1i, global1.b), _wgslsmith_mult_vec3_i32(u_input.a.zzw, u_input.a.zzw))));
}

