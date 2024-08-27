struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<f32>(648f, 1000f, -587f, -543f), true, false), Struct_1(vec4<f32>(472f, -436f, 555f, -761f), false, false), Struct_1(vec4<f32>(-1000f, -834f, 867f, 226f), false, true), Struct_1(vec4<f32>(1000f, 158f, 187f, 1200f), false, false), Struct_1(vec4<f32>(1331f, 1441f, -422f, -151f), false, false), Struct_1(vec4<f32>(-974f, -2567f, -472f, -199f), false, true), Struct_1(vec4<f32>(111f, -1102f, -1484f, -257f), false, false), Struct_1(vec4<f32>(-368f, -340f, 1380f, 144f), true, true), Struct_1(vec4<f32>(490f, -829f, 971f, 976f), false, false), Struct_1(vec4<f32>(-701f, 157f, -584f, 649f), true, true), Struct_1(vec4<f32>(288f, 376f, -1224f, -288f), false, true), Struct_1(vec4<f32>(319f, 332f, -766f, -372f), false, true), Struct_1(vec4<f32>(-635f, 226f, 1648f, 2579f), false, false), Struct_1(vec4<f32>(-159f, 517f, -252f, 214f), true, false));

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(4294967295u, 58359u, 4294967295u, 1u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = !vec2<bool>(true, all(select(!vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, true, arg_0, false), false), select(arg_0, false, arg_0))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(515f)) - _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-840f - 1000f), -312f, all(vec4<bool>(false, true, false, var_0.x)))))))));
    return var_0.x;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = 0u;
    var var_1 = !vec2<bool>(func_3(var_0 == var_0), ~1i > _wgslsmith_dot_vec4_i32(-vec4<i32>(19227i, u_input.a, u_input.a, 7286i), max(vec4<i32>(u_input.a, -1i, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, -4946i, 13909i))));
    var var_2 = abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(~reverseBits(u_input.a), ~abs(0i)), _wgslsmith_mult_i32(u_input.a, countOneBits(-6635i))));
    var_2 = -64442i;
    var_1 = select(vec2<bool>(var_1.x, true), select(vec2<bool>(select(func_3(var_1.x), all(vec3<bool>(false, var_1.x, true)), true), !var_1.x), select(!vec2<bool>(var_1.x, false), vec2<bool>(arg_0.c | arg_0.c, false), vec2<bool>(all(vec3<bool>(arg_0.c, true, var_1.x)), all(vec2<bool>(arg_0.c, var_1.x)))), vec2<bool>(false, var_1.x)), select(select(vec2<bool>(var_1.x || false, !arg_0.c), select(select(vec2<bool>(var_1.x, arg_0.c), vec2<bool>(var_1.x, true), arg_0.b), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.c), false), arg_0.b), true), select(vec2<bool>(any(vec4<bool>(var_1.x, false, true, var_1.x)), !var_1.x), vec2<bool>(select(var_1.x, arg_0.b, true), true), !vec2<bool>(true, var_1.x)), select(select(vec2<bool>(arg_0.c, arg_0.b), !vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_1.x, arg_0.c)), vec2<bool>(arg_0.b, select(var_1.x, false, false)), select(!vec2<bool>(false, arg_0.c), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x)), true || var_1.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -245f);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<i32>) -> bool {
    global1 = array<vec4<u32>, 1>();
    global1 = array<vec4<u32>, 1>();
    global0 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-3966f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1152f))), _wgslsmith_div_u32(arg_0.x, 16400u) != max(arg_0.x, 4294967295u))), _wgslsmith_div_f32(-731f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(353f, 546f, 1994f, 1745f), false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-572f, 1619f)) - _wgslsmith_f_op_f32(-121f - 361f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) - _wgslsmith_div_f32(-1756f, 1471f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(select(1062f, 631f, true)), _wgslsmith_f_op_f32(-1339f - 571f), _wgslsmith_f_op_f32(1000f * 1469f), _wgslsmith_f_op_f32(1000f + 2102f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1864f, _wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(round(267f)), _wgslsmith_div_f32(-521f, -980f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(600f, -169f, -1394f, 471f) - vec4<f32>(-508f, 523f, -845f, 1127f)))))));
    var var_1 = ~(-2565i);
    return ~(-(1i << (_wgslsmith_dot_vec2_u32(arg_0.zw, arg_0.wx) % 32u))) <= reverseBits(u_input.a);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(1u), 14u)];
    let var_1 = 4294967295u;
    global1 = array<vec4<u32>, 1>();
    let var_2 = _wgslsmith_div_f32(1553f, 1f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(244f)), -577f, var_0.a.x, 1f) * var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, var_2, var_0.a.x, var_2)) + vec4<f32>(330f, -688f, var_2, -1428f)) + var_0.a))));
    return global0[_wgslsmith_index_u32(var_1, 14u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = u_input.a;
    var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a >> (40942u % 32u), u_input.a), vec2<i32>(firstTrailingBit(0i), countOneBits(-13558i))));
    var var_1 = ~max(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_0.a);
    let var_3 = Struct_1(var_2, arg_2.x, ~4294967295u == _wgslsmith_clamp_u32(min(abs(var_1.x), var_1.x), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_clamp_u32(0u, 0u, 21477u)), var_1.x));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 488f, _wgslsmith_f_op_f32(func_2(arg_0)), _wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(arg_0.a, vec4<f32>(arg_1.a.x, arg_0.a.x, var_3.a.x, arg_1.a.x)))))))), vec4<f32>(arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))), -2453f), -669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + var_2.x))) * -1082f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 39816i, 37167i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -38068i)) ^ min(u_input.a, -11727i), ~5532i));
    global0 = array<Struct_1, 14>();
    global1 = array<vec4<u32>, 1>();
    let var_1 = _wgslsmith_f_op_vec4_f32(func_5(global0[_wgslsmith_index_u32(1u, 14u)], func_4(-2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(389f, -995f, -1757f, -377f) * vec4<f32>(648f, 553f, -243f, 1000f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(467f, -114f, 1365f, -1000f), vec4<f32>(752f, 206f, -237f, 959f)))), true, func_1(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 1u)], var_0, ~vec2<i32>(4517i, -33434i))), func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(31510u, 33917u, 20691u, 1u), global1[_wgslsmith_index_u32(4294967295u, 1u)]) << (global1[_wgslsmith_index_u32(~4294967295u, 1u)] % vec4<u32>(32u)), abs(_wgslsmith_clamp_i32(-1i, u_input.a, var_0)), max(vec2<i32>(-1i, 0i), ~vec2<i32>(var_0, u_input.a)))), !vec3<bool>(true, !any(vec2<bool>(true, false)), 732f <= _wgslsmith_f_op_f32(sign(-452f)))));
    let var_2 = 15785u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -85573i, -_wgslsmith_add_i32(24463i, -3404i)), u_input.a << (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, var_2), _wgslsmith_add_vec2_u32(vec2<u32>(24261u, var_2), vec2<u32>(4155u, 4138u))) % 32u)), ~(~(~vec2<u32>(var_2, 0u))), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(27513i, -4849i, -1i) & vec3<i32>(u_input.a, var_0, -2147483647i), countOneBits(vec3<i32>(1i, -2884i, 0i)))));
}

