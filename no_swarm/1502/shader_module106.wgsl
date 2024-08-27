struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec4<u32>, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - -1410f), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(717f))), _wgslsmith_f_op_f32(step(-468f, _wgslsmith_f_op_f32(sign(arg_0.b)))), -1000f) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1707f, arg_1, 266f, 1837f) + vec4<f32>(625f, arg_0.b, arg_0.b, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_1, -1531f, -885f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, arg_1, -2107f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -409f, arg_0.b) - vec4<f32>(-1492f, arg_1, -1000f, arg_0.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_0.b, arg_0.b, arg_1))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-424f, -950f, -427f, -394f))), vec4<f32>(-856f, 527f, -1175f, arg_1), select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), false)))))));
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-954f, 1614f, -519f, arg_1), vec4<f32>(arg_0.b, 905f, 1236f, 106f), arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1653f, 1132f, 1118f, var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(402f, -283f, false)), _wgslsmith_f_op_f32(step(arg_0.b, var_0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * var_0.x), -2023f)))));
    var var_2 = firstLeadingBit(vec2<i32>(2147483647i, -1i));
    return 10289u;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    let var_0 = select(select(vec2<bool>(true, true), !vec2<bool>(true, arg_1.x > arg_1.x), false), vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), !vec2<bool>(any(vec3<bool>(false, false, false)), any(vec2<bool>(true, false))), true));
    global0 = array<vec4<u32>, 7>();
    var var_1 = vec2<u32>((func_3(Struct_1(vec3<bool>(true, var_0.x, var_0.x), -1148f, global0[_wgslsmith_index_u32(u_input.a, 7u)]), _wgslsmith_div_f32(-174f, 1339f)) << (4294967295u % 32u)) & u_input.a, ~(~select(1u, u_input.a, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xy)), arg_1.xz))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.wz))), arg_1.wx, var_0))));
    global0 = array<vec4<u32>, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, var_2.x, var_0.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1707f * 140f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1.a.x, vec4<f32>(arg_1.b.b, arg_1.b.b, arg_1.a.x, arg_1.b.b))))) * arg_1.a.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, -545f, false))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.b.b, 302f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -1394f, arg_1.b.b, -731f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b.b, arg_1.a.x, arg_1.a.x, arg_1.b.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1147f, -1211f, arg_1.b.b, arg_1.b.b) + vec4<f32>(arg_1.b.b, 754f, arg_1.b.b, arg_1.a.x)), false)))));
    global0 = array<vec4<u32>, 7>();
    let var_2 = ~vec3<u32>(_wgslsmith_div_u32(arg_1.c.x, 1u), u_input.a, _wgslsmith_add_u32(~arg_1.c.x, 1u));
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x - arg_1.a.x))), var_1.a.x, _wgslsmith_f_op_f32(select(arg_1.b.b, _wgslsmith_f_op_f32(-arg_1.a.x), all(vec4<bool>(arg_1.d.x, false, false, arg_1.b.a.x)))), var_1.a.x) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b, -1989f, 410f, var_1.a.x)))))));
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = select(true, !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), false))) | (any(vec4<bool>(false, false, false, true)) | all(vec4<bool>(false, true, true, false))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -330f))), arg_0.a)) - func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(41830i, -9220i), vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(1i, 1i)), Struct_3(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a.wzz)), Struct_1(vec3<bool>(true, false, false), -1588f, global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<u32>(0u, u_input.a), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1922i, 1668i, -4720i, 88963i)), firstTrailingBit(vec4<i32>(-56463i, 86472i, 14179i, 1i)))).a));
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 998f, _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x))), Struct_1(select(vec3<bool>(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0.a.x >= arg_0.a.x)), 377f, _wgslsmith_clamp_vec4_u32(reverseBits(~global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<u32>(abs(u_input.a), ~u_input.a, firstTrailingBit(4294967295u), 0u), _wgslsmith_sub_vec4_u32(~vec4<u32>(31509u, u_input.a, 22525u, u_input.a), global0[_wgslsmith_index_u32(37410u, 7u)]))), vec2<u32>(max(4294967295u, u_input.a), ~(~u_input.a)), select(select(vec4<bool>(all(vec2<bool>(false, true)), true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false));
    var var_3 = var_2.b;
    var var_4 = var_3.c.xz;
    return -(vec3<i32>(i32(-1i) * -25615i, -(i32(-1i) * -25061i), -firstLeadingBit(3464i)) << (vec3<u32>(_wgslsmith_mult_u32(~4294967295u, ~u_input.a), max(1u, _wgslsmith_add_u32(0u, var_4.x)), ~(~39998u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-2147483647i, -3587i, -1i), true)) | _wgslsmith_div_vec3_i32(~vec3<i32>(1i, 1i, 1i) ^ func_4(func_1(vec2<i32>(-33892i, 104678i), Struct_3(vec3<f32>(178f, -1198f, -439f), Struct_1(vec3<bool>(false, true, false), 1165f, global0[_wgslsmith_index_u32(0u, 7u)]), vec2<u32>(u_input.a, 35146u), vec4<bool>(true, false, false, true)), vec4<i32>(2147483647i, -1i, -473i, -1i))), max(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-13769i, 13120i, -50422i), vec3<i32>(1i, -21075i, -26454i))), vec3<i32>(2900i, -2147483647i, _wgslsmith_add_i32(-2147483647i, 2493i))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_2(397f, vec4<f32>(712f, 2799f, 1145f, 912f))), 1f, -759f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-403f, -1640f, -183f), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))))))), Struct_1(select(vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true), vec3<bool>(true, 1i >= var_0.x, any(vec3<bool>(true, false, true))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-453f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-947f, -1000f, -1571f, 2712f) * vec4<f32>(239f, -1029f, -1697f, -285f)))) * -493f), max(vec4<u32>(reverseBits(u_input.a), ~4294967295u, firstTrailingBit(42746u), _wgslsmith_sub_u32(u_input.a, u_input.a)), vec4<u32>(countOneBits(11479u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~u_input.a, 1u))), reverseBits(~((vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, u_input.a)) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)))), vec4<bool>(true, true, false, true));
    var_0 = max(vec3<i32>(_wgslsmith_add_i32(0i, ~var_0.x), var_0.x, max(1198i, _wgslsmith_sub_i32(var_0.x, 1i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, -45308i), vec3<i32>(var_0.x, -2147483647i, 0i) & vec3<i32>(var_0.x, var_0.x, var_0.x)) << (vec3<u32>(1u, reverseBits(_wgslsmith_add_u32(u_input.a, 1u)), ~var_1.b.c.x) % vec3<u32>(32u)));
    var_0 = -(func_4(func_1(~vec2<i32>(48027i, 26640i), var_1, ~vec4<i32>(-2147483647i, -2147483647i, 8386i, var_0.x))) & ~(select(vec3<i32>(var_0.x, var_0.x, 5484i), vec3<i32>(var_0.x, -41531i, -1i), var_1.d.x) & _wgslsmith_mod_vec3_i32(vec3<i32>(-46527i, var_0.x, 2147483647i), vec3<i32>(var_0.x, var_0.x, var_0.x))));
    var var_2 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(countOneBits(abs(8534u)), ~10043u << (_wgslsmith_dot_vec4_u32(var_1.b.c, var_1.b.c) % 32u))), vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.a, u_input.a)), abs(min(var_1.c, var_1.b.c.xw)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

