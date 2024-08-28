struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 5326i, 0i, 2147483647i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(63574u, 21774u), select(_wgslsmith_clamp_vec2_u32(u_input.b.yz, vec2<u32>(92122u, 1u), vec2<u32>(u_input.b.x, 0u)), u_input.b.yy, vec2<bool>(false, arg_0.x))), vec2<u32>(reverseBits(u_input.b.x & 0u), u_input.b.x)), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~u_input.a.x), ~vec2<i32>(10062i, global1.x)), global1.x, ~(-u_input.a.x >> (47988u % 32u))), false, select(arg_0, vec3<bool>(arg_0.x, true, !(u_input.b.x == 1u)), false), 390f);
    return -(i32(-1i) * -32461i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = i32(-1i) * -11928i;
    var var_1 = arg_1;
    let var_2 = false;
    var var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-297f - arg_3.e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.e, var_1.e, true)))))), -1695f, _wgslsmith_f_op_f32(trunc(arg_3.e))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e, var_1.e, 210f, var_4.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, -463f, var_1.e, var_3.e) + vec4<f32>(306f, 237f, 1000f, 1000f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, 556f, arg_0.e, var_1.e)) * vec4<f32>(_wgslsmith_f_op_f32(962f + arg_0.e), -627f, _wgslsmith_div_f32(var_3.e, 989f), arg_1.e)))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: i32) -> bool {
    global0 = array<vec3<u32>, 6>();
    let var_0 = vec2<i32>(-_wgslsmith_clamp_i32(1i, u_input.a.x, global1.x << (20983u % 32u)), -27761i);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-20353i, select(firstTrailingBit(var_0.x), global1.x, arg_2.x), _wgslsmith_clamp_i32(global1.x, -1i, -24637i)), ~_wgslsmith_clamp_i32(-24514i, var_0.x | arg_3, 56538i)) & -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, 17848i, arg_3), ~vec3<i32>(-20758i, global1.x, u_input.a.x)), var_0.x);
    global1 = -firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-11693i, -arg_3, u_input.a.x, 10118i), min(-vec4<i32>(var_0.x, u_input.a.x, arg_3, -14941i), vec4<i32>(22448i, var_0.x, u_input.a.x, var_0.x))));
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1383f);
    var var_1 = select(!((u_input.a.x < -u_input.a.x) & true), true, true != func_5(1328f, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(0u, vec4<i32>(u_input.a.x, global1.x, u_input.a.x, -1i), false, vec3<bool>(false, true, true), -1333f), Struct_1(u_input.b.x, vec4<i32>(34788i, 67018i, 5820i, global1.x), true, vec3<bool>(false, true, false), 251f), func_3(vec3<bool>(true, false, true)), Struct_1(u_input.b.x, vec4<i32>(global1.x, 0i, 66330i, u_input.a.x), false, vec3<bool>(false, false, false), -1085f))), vec3<bool>(false, false, true), 0i));
    let var_2 = Struct_1(u_input.b.x, _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(u_input.a.x), -select(12387i, u_input.a.x, false), min(_wgslsmith_div_i32(global1.x, u_input.a.x), firstTrailingBit(global1.x)), abs(2147483647i)), vec4<i32>(59787i, _wgslsmith_div_i32(-14283i, 58339i) >> (0u % 32u), -1i, (u_input.a.x << (u_input.b.x % 32u)) | select(2147483647i, -22713i, true))), all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -977f);
    global0 = array<vec3<u32>, 6>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2476f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e - var_0) - -2705f) + -1042f)) * 2097f);
    return Struct_1(1u, vec4<i32>(_wgslsmith_mult_i32(select(u_input.a.x, var_2.b.x, true), global1.x), -2147483647i, 9093i, (global1.x | 0i) >> (8849u % 32u)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(8177u, 1u, var_2.a, u_input.b.x) >> (vec4<u32>(0u, u_input.b.x, 74383u, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b.x, 85524u, var_2.a), vec4<u32>(var_2.a, var_2.a, 74692u, u_input.b.x)), ~vec4<u32>(4294967295u, var_2.a, 0u, 40452u)) % vec4<u32>(32u)), true, select(select(vec3<bool>(false || var_2.d.x, -441f <= var_3, true), !vec3<bool>(false, var_2.c, var_2.c), !var_2.d.x), select(select(!vec3<bool>(true, var_2.c, true), select(var_2.d, var_2.d, false), var_2.c), select(vec3<bool>(true, false, var_2.c), var_2.d, vec3<bool>(var_2.c, true, var_2.d.x)), any(select(var_2.d.xz, vec2<bool>(var_2.c, var_2.c), var_2.c))), any(!(!vec4<bool>(false, var_2.c, false, var_2.c)))), _wgslsmith_f_op_f32(floor(-251f)));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(countOneBits(~u_input.b.zz | (vec2<u32>(0u, arg_2.a) & vec2<u32>(arg_3.x, 4294967295u))), _wgslsmith_add_vec2_u32(u_input.b.yx, select(u_input.b.zy, min(u_input.b.yy, vec2<u32>(arg_0.a, arg_0.a)), false))), vec4<i32>(2147483647i, _wgslsmith_mod_i32(-34498i, _wgslsmith_mod_i32(global1.x, ~arg_0.b.x)), arg_0.b.x, 1i), any(!arg_0.d.zz), select(arg_2.d, func_2().d, arg_2.d), _wgslsmith_f_op_f32(ceil(-523f)));
    var var_2 = 238f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e, arg_2.e, -129f) - vec3<f32>(arg_0.e, var_1.e, 255f)) + vec3<f32>(1472f, _wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1711f))))));
    var var_4 = max(~(~select(vec4<u32>(0u, arg_0.a, 9247u, arg_2.a), vec4<u32>(0u, 12541u, var_1.a, arg_0.a), vec4<bool>(true, var_0, false, false))), select(~vec4<u32>(1u, 1u, 71180u, var_1.a), ~vec4<u32>(arg_2.a, u_input.b.x, arg_3.x, var_1.a), true)) & vec4<u32>(var_1.a, arg_0.a, abs(_wgslsmith_dot_vec2_u32(u_input.b.xx, arg_3 >> (u_input.b.zx % vec2<u32>(32u)))), min(_wgslsmith_sub_u32(38405u, 1u) << (min(1u, arg_3.x) % 32u), 1u));
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = true;
    var var_1 = arg_0;
    global0 = array<vec3<u32>, 6>();
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.e, var_1.e)), arg_0.e))), -726f, -511f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, -1000f, arg_0.e, arg_2.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(854f, arg_0.e, var_1.e, arg_2.x))))) + vec4<f32>(_wgslsmith_f_op_f32(855f * 1942f), _wgslsmith_f_op_f32(arg_2.x * -432f), _wgslsmith_div_f32(arg_0.e, 1119f), var_1.e)))));
    var_1 = func_6(func_2(), -137f, func_2(), ~vec2<u32>(~1u, firstTrailingBit(_wgslsmith_div_u32(var_1.a, u_input.b.x))));
    return global1.wy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -global1.wy, func_1(Struct_1(5399u, vec4<i32>(-5201i, global1.x, 49833i, u_input.a.x), false, vec3<bool>(false, false, false), -1000f), vec3<i32>(-1i, global1.x, 1i) ^ global1.wwz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-604f, -1000f, -425f)))) < u_input.a.x, global1.x != global1.x);
    global1 = _wgslsmith_sub_vec4_i32(-select(vec4<i32>(-u_input.a.x, ~27410i, func_2().b.x, ~u_input.a.x), vec4<i32>(global1.x, 0i & global1.x, u_input.a.x, ~(-29859i)), var_0.x), reverseBits(-(~_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(global1.x, global1.x, global1.x, global1.x)))));
    global0 = array<vec3<u32>, 6>();
    var_0 = !vec3<bool>(true, var_0.x, var_0.x);
    let var_1 = func_6(Struct_1(u_input.b.x, ~(-(vec4<i32>(-74358i, -21612i, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, global1.x, global1.x, global1.x))), var_0.x, !select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, var_0.x), var_0.x), !vec3<bool>(true, false, var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1134f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(981f, _wgslsmith_f_op_f32(min(375f, 1f)))))), func_2(), ~(~(~u_input.b.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~firstLeadingBit(global1.ywx))));
}

