struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> f32 {
    global0 = arg_1;
    var var_0 = 1f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(1f)), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))) & true, _wgslsmith_f_op_f32(f32(-1f) * -477f));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(18861u, arg_1), 1u);
    global0 = ~4294967295u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f - -628f) * var_1.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a + var_1.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(696f))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-279f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), var_1.a)))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    global0 = 4294967295u;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(816f)) + _wgslsmith_f_op_f32(func_3(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), u_input.a.x)));
    var var_1 = 4294967295u;
    var_1 = 1u;
    let var_2 = vec4<i32>(~59190i, _wgslsmith_sub_i32(~1i, ~2253i), countOneBits(_wgslsmith_mod_i32(reverseBits(firstTrailingBit(1i)), -1657i)), -1006i);
    return arg_0.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_sub_u32(101830u, _wgslsmith_mult_u32(~u_input.a.x, 21785u));
    global0 = _wgslsmith_mod_u32(firstTrailingBit(53387u), u_input.a.x);
    let var_0 = Struct_1(405f, false, arg_1.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1150f, arg_0), vec2<f32>(arg_1.c, arg_0)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, -2185f), vec2<f32>(arg_1.c, 720f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.c)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(558f, arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, arg_0)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f)), any(!vec4<bool>(var_0.b, false, !var_0.b, u_input.a.x < 0u)), arg_0);
    return select(select(!vec2<bool>(!arg_1.b, !arg_1.b), select(!select(vec2<bool>(arg_1.b, false), vec2<bool>(var_2.b, var_2.b), false), select(vec2<bool>(var_0.b, true), vec2<bool>(true, var_0.b), vec2<bool>(arg_1.b, false)), !select(true, true, var_2.b)), vec2<bool>(true, true)), vec2<bool>(false, true), all(vec4<bool>(!(!arg_1.b), false, var_0.b, var_2.a <= -248f)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    global0 = u_input.a.x;
    global0 = u_input.a.x;
    var var_0 = Struct_1(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f - arg_3.x)))), all(arg_0), 274f);
    var_0 = Struct_1(arg_3.x, !all(!select(vec4<bool>(var_0.b, arg_0.x, true, false), vec4<bool>(var_0.b, false, arg_1.x, var_0.b), vec4<bool>(false, false, arg_1.x, var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1181f))) - arg_3.x) + var_0.a));
    global0 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(442f * arg_3.x) + arg_3.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3.x)), _wgslsmith_f_op_f32(abs(var_0.a))))), arg_0.x, 1000f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1232f - arg_1.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1233f + 684f) - arg_0.c)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(arg_1.a, -1000f))) + _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), 1u))), true, -1128f)), vec3<bool>(true, false, any(select(select(vec4<bool>(false, arg_1.b, true, arg_1.b), vec4<bool>(arg_0.b, false, arg_1.b, true), false), !vec4<bool>(true, arg_0.b, true, arg_0.b), select(vec4<bool>(true, arg_1.b, true, false), vec4<bool>(arg_0.b, false, true, arg_1.b), arg_1.b)))), _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, 45695i), _wgslsmith_add_i32(-24940i, 3239i)) << (~(63939u ^ u_input.a.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1.c, arg_0.c, arg_0.b)), _wgslsmith_f_op_f32(-462f * 682f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-arg_2.zx)))), 1487f, -304f));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_add_vec3_u32(firstTrailingBit(select(select(vec3<u32>(4294967295u, u_input.a.x, 26376u), ~vec3<u32>(9013u, 23251u, u_input.a.x), var_0.b), (u_input.a ^ vec3<u32>(1u, 1u, u_input.a.x)) >> (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<bool>(arg_0.b, !arg_0.b, true))), ~(~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 11563u), vec3<u32>(u_input.a.x, 1u, u_input.a.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_2);
    let var_4 = var_1;
    return var_4;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(-1i, 1i), vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(reverseBits(vec2<i32>(-44063i, 8524i))), max(~vec2<i32>(-2147483647i, -10116i), ~vec2<i32>(-2147483647i, 63349i))), -50726i), vec2<i32>(2147483647i, -_wgslsmith_div_i32(-8538i >> (1u % 32u), -1i)));
    let var_1 = ~(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-49648i, -8433i, var_0.x, -2147483647i)), abs(vec4<i32>(-1i, var_0.x, 0i, var_0.x)), -vec4<i32>(var_0.x, -1i, var_0.x, 3187i)) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(-27041i, 2147483647i, var_0.x, 59374i), vec4<i32>(var_0.x, -31020i, var_0.x, 15816i))) | max(firstTrailingBit(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 0i), vec4<i32>(-52303i, -2147483647i, var_0.x, -2415i), vec4<i32>(var_0.x, 17269i, var_0.x, -31820i)), vec4<i32>(var_0.x, var_0.x, 1i, 16598i))), ~firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(5247i, var_0.x, var_0.x, -2147483647i), vec4<i32>(var_0.x, var_0.x, 1i, var_0.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_1(Struct_1(1151f, false, arg_1.a), arg_0, vec3<f32>(284f, -205f, arg_0.a)).a, 630f) - _wgslsmith_f_op_f32(-524f - arg_0.a)), var_1.x < ~_wgslsmith_sub_i32(14804i, -13526i))), arg_0.b, _wgslsmith_f_op_f32(trunc(-1083f)));
    var var_3 = false;
    var_2 = func_1(arg_1, Struct_1(func_1(arg_1, Struct_1(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, arg_1.b, true), u_input.a.x)), !arg_1.b, _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, var_2.a, arg_1.c)), vec3<f32>(var_2.a, arg_1.a, arg_1.a)))).a, true, arg_1.c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, _wgslsmith_f_op_f32(var_2.a * arg_0.a), _wgslsmith_f_op_f32(sign(arg_1.a)))))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(_wgslsmith_add_i32(~(-1i), _wgslsmith_sub_i32(-34569i, 11339i)), 2147483647i, firstTrailingBit(0i) ^ -1i, -(~2025i))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(max(u_input.a.x, 0u), ~98219u, ~11802u, u_input.a.x), reverseBits(vec4<u32>(48180u, u_input.a.x, u_input.a.x, u_input.a.x)))), 26567i, vec2<i32>(-28902i, ~func_6(Struct_1(522f, true, 1081f), func_1(Struct_1(535f, false, -1339f), Struct_1(414f, false, -1303f), vec3<f32>(1707f, 902f, 746f)))), vec3<i32>(-1i) * -vec3<i32>(~3743i, ~(-1i), 0i));
}

