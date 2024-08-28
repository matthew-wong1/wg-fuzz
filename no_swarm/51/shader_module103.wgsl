struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 6>;

var<private> global2: array<i32, 32>;

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, -9109i, 0i);

var<private> global4: vec2<i32> = vec2<i32>(0i, 2147483647i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<i32> {
    var var_0 = -select(_wgslsmith_add_i32(i32(-1i) * -arg_0.a.x, -_wgslsmith_mod_i32(42200i, arg_0.a.x)), 11797i, true);
    global0 = all(vec4<bool>((1i <= -arg_1.x) & (-1701f < _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 6u)] - 786f)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), true && any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true));
    var var_1 = Struct_1(min(-vec3<i32>(2147483647i, ~arg_0.a.x, _wgslsmith_mod_i32(-1i, global2[_wgslsmith_index_u32(908u, 32u)])), vec3<i32>(-2147483647i, abs(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(global3.x, -20273i, arg_0.a.x, 1i))), max(arg_0.a.x, -arg_0.a.x))));
    return _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -global2[_wgslsmith_index_u32(41677u, 32u)], max(global3.x, global4.x), abs(arg_1.x)), firstTrailingBit(var_1.a)), _wgslsmith_div_vec3_i32(vec3<i32>(abs(-36989i), 9782i, -arg_0.a.x), abs(var_1.a)) | arg_1.zzy);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    global0 = false;
    global3 = _wgslsmith_add_vec3_i32(func_3(Struct_1(-arg_1.a), ~vec4<i32>(arg_1.a.x | -1i, reverseBits(-4183i), arg_2, arg_3.a.x)), vec3<i32>(-27210i, global2[_wgslsmith_index_u32(~u_input.a, 32u)], _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(arg_3.a, vec3<i32>(global4.x, global2[_wgslsmith_index_u32(u_input.a, 32u)], arg_1.a.x)), ~vec3<i32>(36732i, 58174i, -22318i)), ~vec3<i32>(2147483647i, global3.x, global3.x))));
    var var_0 = Struct_1(arg_3.a);
    let var_1 = Struct_1(-_wgslsmith_mod_vec3_i32(func_3(arg_3, vec4<i32>(arg_1.a.x, global3.x, 1i, -1i)), arg_3.a) >> (vec3<u32>(~(~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), abs(~u_input.a)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1290f, 616f, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)]))))))));
    return vec3<bool>(true, any(select(arg_0, !vec4<bool>(arg_0.x, false, false, arg_0.x), true)) | !(!arg_0.x), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(floor(-1462f));
    global0 = func_2(!(!select(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, true, false), vec4<bool>(arg_0.x, false, false, arg_0.x)))), Struct_1(-_wgslsmith_add_vec3_i32(abs(arg_1), vec3<i32>(global3.x, global4.x, global4.x))), global2[_wgslsmith_index_u32(u_input.a, 32u)], Struct_1(arg_1)).x;
    global2 = array<i32, 32>();
    global4 = global3.zz;
    global2 = array<i32, 32>();
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, _wgslsmith_f_op_f32(1751f - 2163f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(238f, 913f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0)))), !(!vec2<bool>(arg_0.x, true)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(605f, global1[_wgslsmith_index_u32(u_input.a, 6u)]))), var_0)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-242f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(461f + global1[_wgslsmith_index_u32(4294967295u, 6u)]))))))));
}

fn func_1(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(1u, 32u)], global4.x, global3.x)), -40788i, Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(arg_0, 32u)], 1i, 1637i))), select(vec3<i32>(12679i, global4.x, global4.x), vec3<i32>(-1i, global4.x, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(false, false, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, -180f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-537f, -902f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, global1[_wgslsmith_index_u32(1u, 6u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(arg_0, 6u)]) - vec2<f32>(-658f, -958f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1422f, 1000f)))))));
    var var_1 = _wgslsmith_div_i32(func_3(Struct_1(-vec3<i32>(-20693i, global3.x, global2[_wgslsmith_index_u32(44320u, 32u)])), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(4227u, 32u)], -48161i, global4.x), vec4<i32>(global4.x, global2[_wgslsmith_index_u32(u_input.a, 32u)], -35580i, global3.x))).x ^ 0i, ~(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global4.x, global2[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<i32>(25529i, 2147483647i, 70023i)), ~(-4569i))));
    let var_2 = Struct_1(~select(-vec3<i32>(global3.x, global3.x, 2147483647i) & vec3<i32>(1i, global3.x, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(global3.x, global3.x, 0i) | vec3<i32>(11867i, 2147483647i, -13995i), firstLeadingBit(vec3<i32>(1i, -22413i, 0i))), true));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, var_0.x) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(217f - -824f))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(93120u, 6u)], _wgslsmith_f_op_f32(-450f + global1[_wgslsmith_index_u32(4294967295u, 6u)]))), 1044f));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0, 4294967295u), 6u)])) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1174f, -767f, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 6u)] + -783f)))))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    let var_0 = Struct_1(vec3<i32>(func_1(reverseBits(~u_input.a), -167f), ~(-(~1i)), ~(~global4.x)));
    global0 = 11356i <= -_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(3852u, 32u)] & (global3.x & global3.x), _wgslsmith_sub_i32(1i, -1i << (u_input.a % 32u)));
    let var_1 = reverseBits(~abs(~u_input.a));
    let var_2 = var_0;
    let var_3 = vec2<bool>((_wgslsmith_f_op_vec2_f32(func_4(vec3<bool>(true, true, false), vec3<i32>(-4969i, var_0.a.x, -2147483647i))).x < _wgslsmith_f_op_f32(min(-294f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(10761u, 6u)])))) | (377f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 6u)]) * _wgslsmith_f_op_f32(sign(-723f)))), _wgslsmith_clamp_i32(1i | _wgslsmith_dot_vec3_i32(vec3<i32>(-15858i, var_0.a.x, global4.x), vec3<i32>(global2[_wgslsmith_index_u32(var_1, 32u)], 25781i, global2[_wgslsmith_index_u32(4294967295u, 32u)])), countOneBits(-3207i), -_wgslsmith_mod_i32(-1i, -6784i)) <= var_2.a.x);
    global2 = array<i32, 32>();
    var var_4 = all(select(vec3<bool>(_wgslsmith_f_op_f32(max(120f, global1[_wgslsmith_index_u32(var_1, 6u)])) > -1993f, true, true), vec3<bool>(func_2(!vec4<bool>(false, var_3.x, false, var_3.x), var_0, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a, 32u)], global4.x), Struct_1(var_0.a)).x, true, var_3.x), select(!vec3<bool>(false, false, var_3.x), func_2(vec4<bool>(var_3.x, var_3.x, var_3.x, false), var_0, -var_2.a.x, Struct_1(vec3<i32>(-25049i, global3.x, 2147483647i))), true && var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(-418f)), _wgslsmith_f_op_f32(f32(-1f) * -854f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(66363u, 6u)]), -600f)))), _wgslsmith_clamp_vec3_i32(-var_0.a, min(-vec3<i32>(-2147483647i, global4.x, global2[_wgslsmith_index_u32(101998u, 32u)]), vec3<i32>(-var_0.a.x, 1i, abs(var_0.a.x))), var_2.a), vec4<i32>(-2147483647i, select(firstTrailingBit(-2147483647i), 1i, true) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1, 4294967295u), 1u) % 32u), global4.x, select(_wgslsmith_mod_i32(~global3.x, -global2[_wgslsmith_index_u32(var_1, 32u)]), global2[_wgslsmith_index_u32(~4294967295u, 32u)] | -global4.x, true)), firstTrailingBit(vec2<u32>(u_input.a, _wgslsmith_clamp_u32(var_1 ^ var_1, countOneBits(0u), 1u & var_1))));
}

