struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<bool>;

var<private> global2: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_2(arg_2.b.yz);
    global0 = _wgslsmith_f_op_vec2_f32(ceil(var_0.a));
    global1 = vec2<bool>(select(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, arg_2.a), arg_0.a, -arg_2.a) >= _wgslsmith_mod_i32(firstTrailingBit(2147483647i), min(23001i, 7189i)), true, global1.x), !all(!(!vec2<bool>(global1.x, true))));
    var var_1 = (i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, -28423i), abs(u_input.b.x))) >> (reverseBits(~(~1u)) % 32u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(abs(1000f)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.d.a, arg_1.a, vec2<bool>(global1.x, global1.x))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-763f, arg_2.e.a.x), arg_0.b.xz))))), vec3<bool>(!any(!vec3<bool>(global1.x, false, false)), global1.x, !all(vec2<bool>(true, true))), _wgslsmith_mult_u32(_wgslsmith_div_u32(57097u, 4294967295u), 75093u));
    return _wgslsmith_f_op_f32(floor(1000f));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(31465i, ~9654i, ~u_input.b.x), u_input.b.x), ~_wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.xz >> (vec2<u32>(u_input.c, 15993u) % vec2<u32>(32u)))));
    let var_1 = Struct_3(-824f, Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - 1556f)), vec2<f32>(_wgslsmith_f_op_f32(-574f * global0.x), global0.x))), !vec3<bool>(arg_0.x, global1.x, global1.x), 0u);
    var var_2 = _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-676f * var_1.b.a.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_4(u_input.b.x, vec3<f32>(1606f, 1154f, global0.x), global0.x, Struct_1(vec2<f32>(1016f, var_1.a)), Struct_2(vec2<f32>(global0.x, 804f))), var_1.b, Struct_4(var_0.x, vec3<f32>(-1177f, 615f, 594f), 1016f, Struct_1(var_1.b.a), var_1.b))), -314f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, global0.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-338f, global0.x)))))));
    var var_4 = Struct_4(-1272i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, 266f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -826f, 273f)), true || arg_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2835f, var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1325f)))), _wgslsmith_f_op_f32(min(var_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-998f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(min(var_1.a, var_1.b.a.x)))))), var_3, Struct_2(var_1.b.a));
    return 1u;
}

fn func_1() -> f32 {
    global2 = 4812u;
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(442f, global0.x))))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-147f, global0.x)));
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(u_input.b.x), -66405i, ~13282i), vec3<i32>(min(u_input.b.x, -16676i), -u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), -vec3<i32>(~37161i, -2147483647i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))) << ((~(~func_2(vec4<bool>(global1.x, false, false, global1.x))) >> (~(~firstTrailingBit(1u)) % 32u)) % 32u);
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1005f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f + global0.x) - _wgslsmith_f_op_f32(func_3(Struct_4(u_input.b.x, vec3<f32>(922f, 1702f, var_0.x), var_0.x, Struct_1(vec2<f32>(-710f, -891f)), Struct_2(vec2<f32>(global0.x, -1411f))), Struct_2(vec2<f32>(global0.x, 884f)), Struct_4(-4102i, vec3<f32>(var_0.x, 466f, 286f), global0.x, Struct_1(vec2<f32>(-1225f, var_0.x)), Struct_2(vec2<f32>(-156f, global0.x))))))), -587f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * global0.x), _wgslsmith_f_op_f32(-var_0.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1808f - -507f)) * global0.x))) + global0.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a - _wgslsmith_f_op_vec2_f32(-arg_0.a)));
    let var_1 = arg_2;
    global2 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(~(~vec3<u32>(1u, 41995u, arg_3))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, arg_3, arg_3), abs(vec3<u32>(u_input.a, 87923u, arg_3)), vec3<u32>(arg_3, 31400u, 0u) | vec3<u32>(4294967295u, 58019u, arg_3)), _wgslsmith_sub_vec3_u32(u_input.d.yyy, ~vec3<u32>(arg_3, arg_3, 0u))), _wgslsmith_clamp_vec3_u32(~u_input.d.zww, ~(~vec3<u32>(35777u, 0u, arg_3)) << (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.d.x, arg_3, u_input.d.x), u_input.d.xyx, global1.x), u_input.d.wxz, vec3<u32>(arg_3, 4294967295u, arg_3)) % vec3<u32>(32u)), u_input.d.xzx));
    var var_2 = select(~max(u_input.d.zz, vec2<u32>(abs(1u), func_2(vec4<bool>(false, true, true, global1.x)))), u_input.d.ww, !select(!(!vec2<bool>(true, global1.x)), !(!vec2<bool>(arg_1, false)), any(!vec3<bool>(global1.x, true, global1.x))));
    let var_3 = -(~(~(-42244i)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.a - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - global0.x), _wgslsmith_f_op_f32(step(-1121f, var_0.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-285f, _wgslsmith_f_op_f32(global0.x * 300f));
    var var_1 = -vec4<i32>(~7207i, countOneBits(1479i) | u_input.b.x, -u_input.b.x ^ u_input.b.x, u_input.b.x);
    let var_2 = global0.x;
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-474f, var_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, var_0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x)))))), !all(!vec2<bool>(global1.x, global1.x)), Struct_4(-(~min(-14369i, -71733i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(756f * -428f), -524f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -497f, var_0.x), vec3<f32>(var_0.x, var_0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -1326f), vec3<f32>(-1065f, var_0.x, global0.x), true)))), var_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1646f, var_0.x)))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_0.x)))), ~abs(~abs(u_input.a)));
    var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(var_3.a)))));
    var_1 = vec4<i32>(39195i, -(~(~max(37128i, u_input.b.x))), 1i & abs(u_input.b.x), abs(-(_wgslsmith_sub_i32(5673i, 57365i) | u_input.b.x)));
    var var_4 = select(!(!vec3<bool>(any(vec3<bool>(global1.x, false, false)), 8073u == u_input.c, false)), vec3<bool>(true, global1.x, !(~u_input.d.x <= u_input.a)), any(!(!vec3<bool>(false, global1.x, false))));
    global1 = vec2<bool>(!var_4.x, global1.x);
    var_4 = vec3<bool>(any(select(vec4<bool>(!global1.x, all(vec3<bool>(var_4.x, var_4.x, global1.x)), true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_4.x, global1.x, var_4.x, true), vec4<bool>(var_4.x, false, true, false), vec4<bool>(false, false, true, global1.x)), select(vec4<bool>(false, global1.x, var_4.x, global1.x), vec4<bool>(false, var_4.x, false, global1.x), vec4<bool>(false, false, false, var_4.x)), vec4<bool>(true, true, var_4.x, global1.x)))), all(!(!select(vec4<bool>(var_4.x, false, false, global1.x), vec4<bool>(global1.x, var_4.x, false, true), false))), all(select(!select(vec4<bool>(true, var_4.x, false, var_4.x), vec4<bool>(true, false, var_4.x, global1.x), vec4<bool>(false, true, false, true)), !select(vec4<bool>(false, var_4.x, false, false), vec4<bool>(global1.x, true, true, var_4.x), vec4<bool>(true, global1.x, false, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_4(var_1.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(546f, var_3.a.x, global0.x))), 132f, Struct_1(vec2<f32>(1033f, global0.x)), Struct_2(vec2<f32>(var_3.a.x, -253f))), func_4(Struct_1(vec2<f32>(531f, global0.x)), false, Struct_4(35055i, vec3<f32>(var_3.a.x, -1351f, var_3.a.x), global0.x, Struct_1(vec2<f32>(var_0.x, var_0.x)), Struct_2(vec2<f32>(-100f, var_0.x))), u_input.a), Struct_4(3788i, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a.x, var_3.a.x, global0.x))), -685f, Struct_1(vec2<f32>(-446f, 1143f)), func_4(Struct_1(var_3.a), global1.x, Struct_4(u_input.b.x, vec3<f32>(-619f, var_3.a.x, 1000f), 1880f, Struct_1(vec2<f32>(324f, 1891f)), Struct_2(vec2<f32>(-756f, 1060f))), 4294967295u)))))), ~(-vec3<i32>(u_input.b.x, -1i, 65015i) ^ -vec3<i32>(var_1.x, u_input.b.x, -2848i)) ^ vec3<i32>(max(u_input.b.x, u_input.b.x | u_input.b.x), -17100i, u_input.b.x));
}

