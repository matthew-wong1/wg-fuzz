struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(-758f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_1(global1.a);
    let var_1 = var_0.a;
    var var_2 = (all(vec2<bool>(all(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)))) & any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false))) & true;
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(745f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.a, 116f, true))))));
    return abs(vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, 5599i)), max(vec2<i32>(2147483647i, 15535i), arg_0) | vec2<i32>(arg_0.x, 2147483647i)), arg_0.x));
}

fn func_2() -> f32 {
    var var_0 = vec2<i32>(-1i, _wgslsmith_mod_i32(u_input.a, -u_input.a)) & (vec2<i32>(u_input.a, 1i) >> (countOneBits(vec2<u32>(~u_input.b, u_input.b)) % vec2<u32>(32u)));
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.a, 0i, -13409i)) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(-1i, 13053i, 1522i)), -vec3<i32>(u_input.a, -1i, u_input.a)), _wgslsmith_add_vec3_i32(-(vec3<i32>(var_0.x, u_input.a, u_input.a) << (vec3<u32>(u_input.b, u_input.b, 903u) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_i32(vec3<i32>(1i, -76945i, -11774i), vec3<i32>(40417i, var_0.x, -1i)))), ~u_input.a);
    var var_1 = vec4<f32>(-1487f, _wgslsmith_f_op_f32(floor(-1004f)), -1545f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-global1.a)) * 294f) + global0.x));
    let var_2 = true;
    var_0 = -select(firstTrailingBit(func_3(-vec2<i32>(u_input.a, -16167i))), ~countOneBits(~vec2<i32>(var_0.x, -1i)), !(!vec2<bool>(false, var_2)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    var var_0 = ~u_input.b;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), 197f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))));
    let var_3 = vec2<u32>(u_input.c, u_input.c);
    let var_4 = !arg_0.x;
    return var_4;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = -422f;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1601f, _wgslsmith_f_op_f32(f32(-1f) * -1172f), 662f))));
    var var_1 = (func_4(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), true), Struct_1(_wgslsmith_f_op_f32(func_2()))) && true) & true;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(244f, global2.a, 929f)), vec3<f32>(834f, 401f, 174f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, -1235f, -1140f)), vec3<f32>(global0.x, -628f, -1882f), vec3<bool>(true, false, false))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2756f))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(-1i == u_input.a) || true;
    let var_1 = !(_wgslsmith_clamp_i32(-12926i, u_input.a, _wgslsmith_div_i32(-u_input.a, -1i)) <= 1i);
    let var_2 = func_1(func_1(arg_1, global2.a), _wgslsmith_f_op_f32(-2851f - 870f));
    var var_3 = func_1(func_1(func_1(var_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_f32(arg_0.a * arg_1.a)), _wgslsmith_f_op_f32(func_2()));
    let var_4 = var_2;
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    global2 = Struct_1(194f);
    let var_0 = func_5(func_1(func_5(func_1(Struct_1(2337f), -173f), Struct_1(global0.x)), global2.a), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a))), _wgslsmith_f_op_f32(-arg_2.a)))));
    var var_1 = ~arg_1.zxy;
    var_1 = ~reverseBits(vec3<i32>(~(-18226i), arg_1.x, -2147483647i ^ u_input.a) & arg_1.zzy);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global2.a, global1.a)), global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -294f, arg_2.a) - vec3<f32>(-1011f, 118f, 901f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(612f, global0.x, -1657f)))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(929f, arg_2.a, 781f), vec3<f32>(-1399f, -1367f, global2.a), vec3<bool>(true, false, true)))))))));
    return ((_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1913f, 1501f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a)))) | true) != ((max(firstLeadingBit(-2361i), arg_1.x) != arg_0) | func_4(vec3<bool>(true, true, true), func_1(Struct_1(983f), -1169f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(-703f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(-1312f + -1429f))), global2.a);
    var var_0 = func_6(-min(-30941i, select(-10879i, -16237i, false)), ~vec4<i32>(-2248i, ~(-13840i), u_input.a, _wgslsmith_sub_i32(u_input.a, -2147483647i)), func_5(Struct_1(-427f), func_1(Struct_1(global2.a), global0.x))) | (((2147483647i != min(u_input.a, 14724i)) && all(vec4<bool>(true, true, true, true))) | all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

