struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<i32>(27668i, 9754i, 13220i)), Struct_2(vec3<i32>(0i, -11837i, 2902i)), Struct_2(vec3<i32>(-5998i, 1i, 13442i)), Struct_2(vec3<i32>(-34192i, 1i, 2147483647i)), Struct_2(vec3<i32>(0i, 1i, 2147483647i)), Struct_2(vec3<i32>(-2876i, 55024i, 23201i)), Struct_2(vec3<i32>(-1i, 2147483647i, 19499i)), Struct_2(vec3<i32>(0i, 1i, -6990i)), Struct_2(vec3<i32>(-19077i, 2147483647i, 9776i)), Struct_2(vec3<i32>(0i, i32(-2147483648), 2147483647i)), Struct_2(vec3<i32>(-55584i, i32(-2147483648), 0i)), Struct_2(vec3<i32>(2147483647i, -3530i, i32(-2147483648))), Struct_2(vec3<i32>(-20866i, 0i, -1i)), Struct_2(vec3<i32>(-1696i, 0i, -1i)), Struct_2(vec3<i32>(-1i, -1i, 52947i)), Struct_2(vec3<i32>(19690i, 2147483647i, i32(-2147483648))), Struct_2(vec3<i32>(27248i, 13255i, -47425i)), Struct_2(vec3<i32>(39898i, 5563i, 0i)), Struct_2(vec3<i32>(35018i, 17136i, -1i)), Struct_2(vec3<i32>(-16580i, 47272i, -18072i)), Struct_2(vec3<i32>(-87152i, 0i, 0i)));

var<private> global2: array<Struct_4, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global0 = array<u32, 2>();
    var var_0 = ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~0u), 0u), 2u)], 2u)], _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(32720u, u_input.a.x)), vec2<u32>(1u, ~1u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(firstTrailingBit(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)]))), u_input.a.zz), 2u)], _wgslsmith_add_u32(_wgslsmith_sub_u32(77834u, u_input.a.x), firstLeadingBit(32305u)) ^ 19049u);
    global0 = array<u32, 2>();
    var var_1 = 469f;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1518f, _wgslsmith_f_op_f32(1537f + _wgslsmith_f_op_f32(f32(-1f) * -240f))), vec2<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(f32(-1f) * -492f))))));
    return _wgslsmith_div_i32(countOneBits(-_wgslsmith_add_i32(max(-23308i, -2147483647i), _wgslsmith_mod_i32(2147483647i, -1i))), _wgslsmith_mult_i32(-2147483647i, -1i));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: vec3<bool>) -> bool {
    let var_0 = firstLeadingBit(vec4<i32>(-1i, func_3(), -arg_1.b.a.x, 26422i));
    global1 = array<Struct_2, 21>();
    var var_1 = Struct_4(~_wgslsmith_clamp_u32(countOneBits(1u), ~abs(arg_1.a), ~_wgslsmith_clamp_u32(10201u, 1u, 55420u)), arg_1.b);
    var_1 = global2[_wgslsmith_index_u32(~var_1.a, 11u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(776f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(998f, -158f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2116f, -1294f), _wgslsmith_f_op_f32(ceil(-1560f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(781f, -440f)))), _wgslsmith_div_i32(_wgslsmith_add_i32(-25170i, arg_1.b.a.x), ~var_1.b.a.x) <= arg_1.b.a.x)));
    return arg_3.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 21u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-381f, _wgslsmith_f_op_f32(abs(-1256f)), -989f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -644f, -1241f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(538f, -628f, 333f) * vec3<f32>(630f, -1414f, 321f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-281f + 1618f), 1f, 1129f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(444f, 877f, 546f)), vec3<f32>(1f, 1f, 1f), arg_0.x)), !select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_1.x, arg_1.x, true), true))), true)), all(select(!(!vec4<bool>(false, arg_0.x, arg_1.x, false)), !(!vec4<bool>(arg_1.x, arg_1.x, false, true)), vec4<bool>(false, arg_0.x && arg_0.x, func_2(arg_3.a, Struct_4(12705u, Struct_2(var_0.a)), u_input.a.x, vec3<bool>(false, arg_0.x, true)), true)))));
    let var_2 = !vec3<bool>(!func_2(~8511u, Struct_4(1u, Struct_2(arg_3.b.a)), 52805u, !vec3<bool>(arg_1.x, arg_1.x, false)), false && arg_0.x, all(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, true, arg_0.x), !arg_1.x)));
    var var_3 = reverseBits(0u);
    let var_4 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(var_0.a.x, func_3(), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 0i), arg_2.b.a), 59070i) << (_wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 64849u, arg_3.a, 4294967295u), vec4<u32>(0u, arg_2.a, 4294967295u, u_input.a.x), vec4<bool>(arg_1.x, var_2.x, false, arg_1.x)), abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(arg_3.a, 2u)], global0[_wgslsmith_index_u32(17287u, 2u)], 9751u))) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(var_0.a.x, 1088i), 62034i, 2147483647i, abs(_wgslsmith_add_i32(arg_3.b.a.x, func_3()))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -276f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 2>();
    let var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(1u)), 2u)];
    let var_2 = 24871u;
    global0 = array<u32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(~countOneBits(abs(vec3<i32>(-28135i, -31610i, -33909i)))), ~(~4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(f32(-1f) * -292f), -1098f) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1206f, 585f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-376f, -488f, var_0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-797f + 348f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), vec2<bool>(var_0, var_0), Struct_4(4294967295u, global1[_wgslsmith_index_u32(35494u, 21u)]), global2[_wgslsmith_index_u32(22792u, 11u)])))))));
}

