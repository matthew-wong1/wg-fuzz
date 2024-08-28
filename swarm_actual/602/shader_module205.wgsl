struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, abs(abs(u_input.b))), 9265i, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, 106272i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.c)) & countOneBits(0i)), ~29829i ^ _wgslsmith_sub_i32(abs(1i), u_input.b.x));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(3334f, 1974f, -637f) - vec3<f32>(721f, 382f, 897f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1529f, -1263f, 196f))))), vec2<f32>(1255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-904f + _wgslsmith_f_op_f32(min(1195f, -1329f))))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(99020u, 1u, 3368u))), 1u, firstLeadingBit(86598u)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_div_f32(-1376f, 468f))), -1789f), -1544f)), select(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), false), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, true, any(global0[_wgslsmith_index_u32(4294967295u, 5u)])), false), vec4<bool>(!select(false, true, true), true, true, true)));
    var_1 = Struct_2(vec3<f32>(596f, 1f, -522f), var_1.a.zz, var_1.c & vec3<u32>(var_1.c.x, _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(27865u, var_1.c.x, 48046u), var_1.c)), 73647u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + var_1.b.x)))), !vec4<bool>(var_1.e.x, firstTrailingBit(24675i) < var_0.x, _wgslsmith_f_op_f32(ceil(var_1.d)) > _wgslsmith_f_op_f32(-1615f - var_1.d), true));
    var var_2 = reverseBits(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -1324i, _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)) << (1u % 32u)), 1i, u_input.b.x, firstTrailingBit(-18357i)));
    var var_3 = true;
    return var_1.e.x;
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    global0 = array<vec3<bool>, 5>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 242f, 144f) - vec3<f32>(-918f, arg_0.c, -1441f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 105f, -810f))))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-346f)), _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2781f * arg_1.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_add_i32(u_input.a.x, -63068i), func_3(), _wgslsmith_f_op_f32(select(arg_1.a.x, arg_1.a.x, arg_1.e.x))))) + vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_1.a.x)))), -843f)));
    global0 = array<vec3<bool>, 5>();
    var var_1 = vec2<i32>(34464i, 45297i >> (reverseBits(reverseBits(arg_1.c.x)) % 32u));
    let var_2 = -(~0i);
    let var_3 = 2147483647i;
    return 7078i;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(~(func_2(vec4<i32>(-30321i, arg_0.a, 3478i, -2147483647i), Struct_2(vec3<f32>(484f, arg_0.c, 300f), vec2<f32>(arg_0.c, arg_0.c), vec3<u32>(25043u, 0u, 48026u), 530f, vec4<bool>(true, arg_0.b, arg_0.b, false)), vec2<bool>(true, true), Struct_2(vec3<f32>(arg_0.c, arg_0.c, -1253f), vec2<f32>(arg_0.c, 147f), vec3<u32>(75306u, 35213u, 18690u), 1685f, vec4<bool>(true, false, true, arg_0.b))) & _wgslsmith_mult_i32(-334i, 1i)), reverseBits(6008i)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c))));
    var var_1 = arg_0;
    global0 = array<vec3<bool>, 5>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, var_1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1378f, var_1.c, var_0.c)), false)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_0.c, var_0.c)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, var_1.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, arg_0.c, var_1.c)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.c, _wgslsmith_f_op_f32(sign(-1365f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, arg_0.c))) + vec2<f32>(_wgslsmith_f_op_f32(-1000f * 204f), _wgslsmith_f_op_f32(arg_0.c - 528f)))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 16341u, 1u), vec3<u32>(1u, 1u, 1u)), countOneBits(min(vec3<u32>(0u, 10378u, 0u), vec3<u32>(4294967295u, 67793u, 26771u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-1347f + -1000f)))) - _wgslsmith_f_op_f32(-var_1.c)), select(!vec4<bool>(true, any(vec4<bool>(var_0.b, arg_0.b, var_1.b, var_1.b)), any(vec3<bool>(true, var_0.b, var_0.b)), all(vec3<bool>(false, false, false))), select(vec4<bool>(true, any(vec3<bool>(false, false, true)), 3221i < var_0.a, true), vec4<bool>(arg_0.b, arg_0.b, var_0.b, false), select(vec4<bool>(arg_0.b, arg_0.b, true, var_0.b), !vec4<bool>(false, var_0.b, true, var_1.b), var_0.b)), select(true, !var_0.b, !var_0.b == var_1.b)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.a), var_2.a, !(var_2.e.x & all(var_2.e.zy)))), var_2.a.yx, var_2.c & ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.c.x, var_2.c.x, 45519u), var_2.c)), var_0.c, !vec4<bool>(false & !var_0.b, !(u_input.b.x >= 2147483647i), all(var_2.e), func_3()));
    return Struct_2(_wgslsmith_div_vec3_f32(var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a * _wgslsmith_f_op_vec3_f32(-var_3.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1410f) + var_0.c), _wgslsmith_f_op_f32(floor(var_0.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.zx + _wgslsmith_f_op_vec2_f32(step(var_3.b, vec2<f32>(-209f, 688f)))))), firstLeadingBit(max(_wgslsmith_clamp_vec3_u32(var_3.c, var_3.c, vec3<u32>(1u, 9470u, var_3.c.x)) | _wgslsmith_sub_vec3_u32(vec3<u32>(47820u, var_3.c.x, 1u), var_3.c), ~_wgslsmith_mult_vec3_u32(var_3.c, var_3.c))), 1072f, vec4<bool>(!((var_3.e.x || false) & any(vec2<bool>(var_2.e.x, var_0.b))), select(!(var_1.c >= -284f), true, true & var_3.e.x), true, true));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = arg_1.a.yx;
    var var_1 = -18505i;
    let var_2 = min(-arg_0, _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, u_input.c), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -1i | arg_0, _wgslsmith_mod_i32(-3843i, arg_0))) | ~_wgslsmith_sub_i32(-1i, max(28522i, arg_0)));
    let var_3 = !(!vec2<bool>(all(select(vec4<bool>(true, true, arg_1.e.x, false), arg_1.e, vec4<bool>(arg_1.e.x, false, true, arg_1.e.x))), !arg_1.e.x != arg_1.e.x));
    global0 = array<vec3<bool>, 5>();
    return StorageBuffer(_wgslsmith_mult_i32(~reverseBits(var_2), -_wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_mult_i32(select(abs(u_input.a.x) ^ abs(-1i), ~12617i, true), ~(-u_input.c)), func_1(Struct_1(-52474i, u_input.a.x >= u_input.c, 1000f)));
}

