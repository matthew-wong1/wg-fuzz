struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_4,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1104f))), Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.wy, u_input.a.yz, u_input.a.xz), ~(u_input.a.xx ^ vec2<u32>(u_input.a.x, u_input.b)))));
    global0 = !(!vec4<bool>(global0.x, any(vec4<bool>(true, true, arg_1, false)), firstLeadingBit(56137u) != _wgslsmith_mult_u32(1u, var_0.b.a.x), 56202u >= (56086u << (u_input.b % 32u))));
    var var_1 = Struct_5(_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), ~firstLeadingBit(select(vec4<i32>(-41558i, -67876i, 58461i, -1i), vec4<i32>(-1i, 0i, -71697i, -4054i), true))), -1i, var_0, _wgslsmith_f_op_f32(trunc(-550f)), var_0.b);
    var_1 = Struct_5(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.b, _wgslsmith_div_i32(var_1.a.x, var_1.a.x), min(-1i, 26627i), abs(var_1.b)), vec4<i32>(firstTrailingBit(-var_1.b), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.a.x, var_1.a.x), 18644i), ~(-42712i), var_1.a.x)), var_1.a.x, var_1.c, _wgslsmith_f_op_f32(-var_0.a), Struct_1(~u_input.a.yy));
    var var_2 = false;
    return true;
}

fn func_2() -> Struct_4 {
    global0 = vec4<bool>(any(!select(!global0.zy, vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x))), true || (u_input.a.x <= u_input.a.x), true, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(953f, -810f, -346f, -118f) * vec4<f32>(1807f, -148f, 1000f, -613f)))), global0.x));
    global0 = !(!select(!(!vec4<bool>(true, true, true, global0.x)), vec4<bool>(global0.x, global0.x, global0.x, true), select(all(vec4<bool>(true, false, global0.x, global0.x)), all(global0.zwz), func_3(vec4<f32>(-124f, -405f, 1213f, 1898f), global0.x))));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1127f)))));
    var var_1 = Struct_2(global0.x);
    let var_2 = _wgslsmith_add_i32(abs(-(firstTrailingBit(-1i) << (u_input.b % 32u))), ~1i);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(968f, -948f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(340f * 1741f), _wgslsmith_f_op_f32(abs(-750f))))))), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(49747u, 42640u & u_input.a.x), ~vec2<u32>(28636u, u_input.a.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> i32 {
    global0 = !vec4<bool>(any(global0.zww), global0.x, false, true);
    global0 = vec4<bool>(select(false, ~arg_1.b.a.x != 4294967295u, !func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, arg_1.a, arg_1.a, -1222f))), true)), (_wgslsmith_add_i32(0i, -2147483647i) > firstTrailingBit(13385i >> (arg_1.b.a.x % 32u))) & false, func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1041f, -982f, -257f, 272f) - vec4<f32>(arg_1.a, arg_0.x, 143f, 116f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, arg_1.a, arg_1.a, arg_1.a))), vec4<f32>(_wgslsmith_f_op_f32(select(-2883f, -1354f, global0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(265f - 1064f), _wgslsmith_f_op_f32(f32(-1f) * -753f)))), false), !(!(!all(global0.wy))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1202f, arg_0.x, -1000f, 484f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1465f, arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_1.a, arg_1.a, arg_0.x) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a, -846f, arg_1.a, -861f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1777f, var_0.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(1608f * var_0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(func_2().a, _wgslsmith_f_op_f32(-arg_0.x), var_0.x, _wgslsmith_f_op_f32(arg_1.a + 837f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1000f, 1630f, 407f) - vec4<f32>(arg_0.x, -465f, 1074f, var_0.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a, -471f, -2244f, -1230f), vec4<f32>(arg_1.a, var_0.x, var_0.x, 1204f)))))));
    let var_1 = ~1u;
    return 2147483647i;
}

fn func_1() -> vec4<bool> {
    var var_0 = u_input.a.xwy;
    let var_1 = ~func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, 1243f, -1821f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, 731f, 137f))))), func_2());
    global0 = vec4<bool>(global0.x, all(!vec4<bool>(true, true, true, global0.x)), true, global0.x);
    var_0 = ~vec3<u32>(var_0.x, (select(var_0.x, var_0.x, global0.x) >> (0u % 32u)) >> (~reverseBits(1u) % 32u), _wgslsmith_mult_u32(var_0.x, _wgslsmith_mult_u32(~4294967295u, min(4294967295u, 0u))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1258f))))), Struct_2(any(!(!vec4<bool>(false, false, global0.x, global0.x)))));
    return !select(!(!select(vec4<bool>(var_2.b.a, global0.x, false, false), vec4<bool>(var_2.b.a, false, global0.x, true), vec4<bool>(var_2.b.a, global0.x, var_2.b.a, true))), !select(select(vec4<bool>(var_2.b.a, global0.x, var_2.b.a, var_2.b.a), vec4<bool>(true, false, true, global0.x), vec4<bool>(global0.x, true, var_2.b.a, global0.x)), vec4<bool>(global0.x, global0.x, false, true), !vec4<bool>(true, var_2.b.a, global0.x, var_2.b.a)), !select(true, var_2.b.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = func_2();
    global0 = func_1();
    var var_1 = var_0.b.a.x;
    global0 = vec4<bool>(all(global0.xyx), func_1().x, all(global0.yyz), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(25221i, 30159i) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.b.a.x, 8480u), var_0.b.a.x << (var_0.b.a.x % 32u)) % 32u), 1i ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(-37669i, 16002i, 5081i, 26879i), vec4<i32>(3990i, 0i, -2173i, -8633i))));
}

