struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: vec4<f32> = vec4<f32>(-303f, 3139f, -926f, 1360f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = arg_0;
    var var_1 = true;
    var var_2 = !(!(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))));
    let var_3 = _wgslsmith_f_op_f32(global1.x * 1739f);
    let var_4 = arg_2.yx;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3), 1375f, global1.x, _wgslsmith_f_op_f32(var_3 + -1571f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, var_3, global1.x) * vec4<f32>(-359f, -1696f, -1323f, global1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -1115f, global1.x, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, var_3, global1.x) + vec4<f32>(2163f, -795f, -1477f, global1.x))))));
}

fn func_3() -> vec4<f32> {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.c), countOneBits(vec2<i32>(~48780i, 0i))), u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(~59149u, ~0u, 0u), vec3<u32>(0u, 4294967295u, ~u_input.b)) % 32u), ~u_input.d.x);
    let var_1 = reverseBits(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(var_0.x, -1i)));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~58201u, 0u, u_input.b), ~vec3<u32>(reverseBits(u_input.b) & reverseBits(26827u), ~select(798u, u_input.b, true), ~u_input.b));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(~0u), abs(~(2709u >> (1u % 32u))), reverseBits(abs(firstTrailingBit(var_2.x))), abs(1u)), vec4<u32>(~1u, u_input.b, ~4294967295u & _wgslsmith_mod_u32(0u, var_2.x), _wgslsmith_add_u32(~(var_2.x | u_input.b), ~11822u))), 13u)];
    var var_4 = Struct_1(var_3.a & firstLeadingBit(~vec3<u32>(var_2.x, 18028u, var_2.x)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(392f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) * _wgslsmith_f_op_f32(-global1.x))), -2169f));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global0[_wgslsmith_index_u32(16925u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], vec3<i32>(u_input.c, 1i, 61325i), Struct_1(vec3<u32>(4294967295u, 69452u, u_input.b))))) - _wgslsmith_div_vec4_f32(vec4<f32>(-469f, 520f, -309f, -541f), _wgslsmith_f_op_vec4_f32(func_3()))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2100f, -1913f, _wgslsmith_f_op_f32(abs(-642f)), _wgslsmith_f_op_vec4_f32(func_3()).x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 780f, _wgslsmith_f_op_f32(global1.x + global1.x), 646f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, global1.x), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-555f - arg_0.x)))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(global1.x - global1.x));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1430f + -630f), _wgslsmith_f_op_f32(-639f - 1055f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-848f)))))), global1.x, _wgslsmith_f_op_f32(sign(685f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1010f - global1.x) - arg_0.x) * _wgslsmith_f_op_f32(floor(-679f))))));
    let var_1 = arg_2.zw;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, 747f)), -706f, _wgslsmith_f_op_f32(sign(-2091f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1012f - 644f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.x, arg_0.x), _wgslsmith_f_op_f32(min(var_0.x, arg_0.x)), 1675f, -815f))));
    return Struct_1(countOneBits(vec3<u32>(1878u, ~(arg_1 ^ arg_1), firstLeadingBit(_wgslsmith_add_u32(35919u, u_input.b)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, 985f)) + _wgslsmith_f_op_f32(-2390f * global1.x)), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-623f * -1659f), -1127f)), _wgslsmith_f_op_vec3_f32(trunc(global1.wxy)), false)), 119843u, select(vec4<bool>((4294967295u < arg_1.a.x) & false, !all(vec2<bool>(true, true)), 0u >= (1u & arg_1.a.x), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)));
    let var_1 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(firstLeadingBit(u_input.a.x)), i32(-1i) * -1i, 0i << (~u_input.b % 32u), _wgslsmith_add_i32(-29653i, _wgslsmith_sub_i32(arg_0.x, 7198i))), select(-(vec4<i32>(arg_0.x, 12993i, 1i, -11905i) >> (vec4<u32>(4294967295u, var_0.a.x, 64032u, 0u) % vec4<u32>(32u))), vec4<i32>(arg_0.x, 3205i, 4912i, u_input.d.x) | -vec4<i32>(-24671i, u_input.c, -2147483647i, arg_0.x), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), ~(~(-vec4<i32>(-49371i, u_input.d.x, 60197i, 23459i))));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-804f + 1482f), _wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-global1.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 247f, 759f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1347f, -518f, global1.x, var_0.x)))), true)));
    let var_1 = ~(~u_input.b);
    let var_2 = global0[_wgslsmith_index_u32(1u, 13u)];
    var var_3 = -u_input.c;
    var var_4 = -func_4(u_input.a.zy, func_1(global1.zwy, _wgslsmith_div_u32(abs(22595u), 35767u), vec4<bool>(false, global1.x == -736f, true, true)));
    global1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1921f, _wgslsmith_f_op_f32(floor(2666f)), 216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_vec4_f32(func_2(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], vec3<i32>(u_input.a.x, 2147483647i, u_input.d.x), Struct_1(vec3<u32>(var_2.a.x, var_2.a.x, u_input.b)))).x)) + 693f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(func_1(var_0.wxz, var_1, vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.a.xz, vec2<u32>(1u, u_input.b)), 13u)], u_input.a, Struct_1(var_2.a))).x, global1.x, 756f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1608f), 1461f, 355f, -212f))), select((_wgslsmith_f_op_f32(floor(global1.x)) < var_0.x) & true, true, true)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(func_1(vec3<f32>(global1.x, var_0.x, 283f), var_2.a.x, vec4<bool>(false, false, true, true)), func_1(global1.yyz, 6951u, vec4<bool>(false, true, true, true)), ~vec3<i32>(u_input.c, -7155i, u_input.d.x), func_1(vec3<f32>(331f, 306f, 709f), u_input.b, vec4<bool>(true, true, true, true)))).x, global1.x))));
    var var_6 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.b, ~firstTrailingBit(var_2.a.x)), ~(~vec3<u32>(var_1 >> (112976u % 32u), _wgslsmith_mod_u32(u_input.b, var_1), ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.zwx, vec2<i32>(0i, i32(-1i) * -67290i));
}

