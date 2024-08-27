struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(false, vec2<i32>(-17519i, 2147483647i), false), Struct_1(false, vec2<i32>(0i, 2147483647i), false)), Struct_2(Struct_1(true, vec2<i32>(34362i, 2147483647i), true), Struct_1(false, vec2<i32>(i32(-2147483648), 38592i), true)), Struct_2(Struct_1(false, vec2<i32>(2147483647i, 0i), true), Struct_1(false, vec2<i32>(-1096i, -11120i), false)), Struct_2(Struct_1(false, vec2<i32>(453i, 2147483647i), true), Struct_1(true, vec2<i32>(2147483647i, -71716i), true)), Struct_2(Struct_1(true, vec2<i32>(68684i, -18918i), true), Struct_1(false, vec2<i32>(4341i, 1i), true)), Struct_2(Struct_1(false, vec2<i32>(-48428i, 1i), false), Struct_1(false, vec2<i32>(2147483647i, 63264i), false)), Struct_2(Struct_1(true, vec2<i32>(-15359i, 25774i), true), Struct_1(false, vec2<i32>(58378i, -1i), true)));

var<private> global2: array<bool, 19>;

var<private> global3: u32 = 7171u;

var<private> global4: array<u32, 5> = array<u32, 5>(2723u, 0u, 1u, 25489u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    return !any(vec4<bool>(select(arg_0.x != arg_0.x, any(vec2<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 5u)], 19u)], global2[_wgslsmith_index_u32(32728u, 19u)])), all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35802u, 5u)], 19u)]))), !arg_1.a.a, ~1i > _wgslsmith_mult_i32(-2147483647i, arg_2.b.b.x), !arg_2.b.c));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 23u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2, vec4<f32>(1787f, arg_2.x, 1556f, arg_2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -626f, -696f, -921f))) - arg_2)));
    var var_2 = arg_2.x;
    var var_3 = 16594u;
    var var_4 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.wy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -1300f) - vec2<f32>(1007f, var_1.x))))), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(9356u, global4[_wgslsmith_index_u32(~4294967295u, 5u)]) >> (~(~(global4[_wgslsmith_index_u32(u_input.a, 5u)] << (u_input.b.x % 32u))) % 32u), 7u)], Struct_2(global0[_wgslsmith_index_u32(100172u, 23u)], Struct_1(global2[_wgslsmith_index_u32(u_input.a, 19u)], var_0.b, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34410u, 5u)], 19u)] && false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-903f * arg_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2145f * -422f))), _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -941f), false)), global2[_wgslsmith_index_u32(32289u, 19u)]))));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global4 = array<u32, 5>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1i, vec4<bool>(true, true, global2[_wgslsmith_index_u32(174u, 19u)], false), vec4<f32>(1000f, 1123f, -623f, 781f), arg_0)) + -227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2649f)))), vec2<f32>(_wgslsmith_f_op_f32(step(-1277f, _wgslsmith_f_op_f32(select(1000f, 1606f, true)))), -242f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * 1041f), _wgslsmith_f_op_f32(f32(-1f) * -265f))));
    global3 = ~13351u;
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-224f, var_0.x)) * vec2<f32>(1f, 1f))))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-135f)) + var_0.x)));
    var var_1 = ~(~(~countOneBits(_wgslsmith_add_vec2_u32(u_input.b.xz, vec2<u32>(0u, 21834u)))));
    return select(!select(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(36477u, 19u)], global2[_wgslsmith_index_u32(35671u, 19u)], global2[_wgslsmith_index_u32(75423u, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 19u)]), vec3<bool>(false, true, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(33494u, 19u)], global2[_wgslsmith_index_u32(var_1.x, 19u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 19u)], true)), select(vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 19u)], true, global2[_wgslsmith_index_u32(22935u, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(var_1.x, 19u)], false), true), var_0.x < -238f), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], true, global2[_wgslsmith_index_u32(var_1.x, 19u)]), !vec3<bool>(global2[_wgslsmith_index_u32(38491u, 19u)], true, true), vec3<bool>(false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 19u)], true))), select(!select(!vec3<bool>(false, global2[_wgslsmith_index_u32(67473u, 19u)], false), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(74397u, 19u)]), !global2[_wgslsmith_index_u32(u_input.a, 19u)]), select(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], false), vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 19u)], true, true), global2[_wgslsmith_index_u32(~63694u, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, global4[_wgslsmith_index_u32(1u, 5u)]), vec3<u32>(2702u, 59666u, global4[_wgslsmith_index_u32(var_1.x, 5u)])), 19u)], false, !global2[_wgslsmith_index_u32(var_1.x, 19u)]), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(8246u, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 5u)], 19u)], true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.x, 5u)], 19u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 19u)], false, global2[_wgslsmith_index_u32(1u, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(29800u, 19u)], true, true), false))), select(vec3<bool>(true, any(vec2<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 19u)], false)), true), !(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(1u, 19u)])), select(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_1.x, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(7335u, 19u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 19u)], false), select(vec3<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], 19u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 5u)], 19u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(31467u, 19u)]), true)))), !(any(!vec2<bool>(true, global2[_wgslsmith_index_u32(2227u, 19u)])) == true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(func_1(_wgslsmith_mult_i32(29190i, 0i))) & false, false & all(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(7873u, 19u)], true, false))), true);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b), 23u)];
    global3 = _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, select(4294967295u, 4294967295u, true) << (1u % 32u)), 5u)], select(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, firstLeadingBit(u_input.a), _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 5u)], 0u), 1u), min(vec4<u32>(0u, global4[_wgslsmith_index_u32(u_input.a, 5u)], global4[_wgslsmith_index_u32(0u, 5u)], 34098u) & vec4<u32>(u_input.a, 1u, 1u, 1u), vec4<u32>(u_input.b.x, 4294967295u, 0u, 1u))), _wgslsmith_mult_u32(firstTrailingBit(~u_input.a), 4294967295u), true));
    var var_2 = 203f;
    let var_3 = Struct_1(false, _wgslsmith_div_vec2_i32(~vec2<i32>(-15139i, -1i), vec2<i32>(var_1.b.x >> (~1u % 32u), min(countOneBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(178i, 0i, 0i, var_1.b.x), vec4<i32>(-1i, var_1.b.x, -1i, var_1.b.x))))), !(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(32677u, 5u)], 19u)] || all(vec2<bool>(false, var_1.c))));
    let var_4 = var_3;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-192f + -632f), -1052f))) + 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_5))))), true)), _wgslsmith_clamp_vec2_i32(var_4.b, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.b.x, -2147483647i), -vec2<i32>(14576i, var_1.b.x)), max(-var_4.b, var_4.b)), ~vec2<i32>(3774i, var_3.b.x) & abs(firstTrailingBit(vec2<i32>(21177i, var_3.b.x)))));
}

