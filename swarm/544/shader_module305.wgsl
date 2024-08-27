struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-537f, vec2<bool>(false, true), 97600u), Struct_1(-1304f, vec2<bool>(false, false), 52550u), Struct_1(-490f, vec2<bool>(false, false), 0u), Struct_1(-275f, vec2<bool>(false, true), 46852u), Struct_1(-534f, vec2<bool>(false, false), 1u), Struct_1(165f, vec2<bool>(true, true), 66036u), Struct_1(103f, vec2<bool>(false, false), 31187u), Struct_1(-379f, vec2<bool>(true, false), 5431u), Struct_1(500f, vec2<bool>(false, true), 10575u), Struct_1(799f, vec2<bool>(false, false), 0u), Struct_1(-712f, vec2<bool>(true, true), 23242u), Struct_1(-917f, vec2<bool>(false, false), 48406u), Struct_1(397f, vec2<bool>(false, false), 4294967295u), Struct_1(1000f, vec2<bool>(false, true), 24545u), Struct_1(-913f, vec2<bool>(true, false), 1u), Struct_1(1055f, vec2<bool>(true, false), 74277u), Struct_1(603f, vec2<bool>(false, true), 4294967295u), Struct_1(573f, vec2<bool>(false, false), 0u), Struct_1(-924f, vec2<bool>(false, false), 44916u), Struct_1(224f, vec2<bool>(false, false), 0u), Struct_1(-1437f, vec2<bool>(false, true), 4629u), Struct_1(155f, vec2<bool>(true, false), 58772u), Struct_1(-1442f, vec2<bool>(true, false), 31756u), Struct_1(1099f, vec2<bool>(false, true), 0u), Struct_1(1226f, vec2<bool>(false, false), 4294967295u));

var<private> global1: Struct_2 = Struct_2(vec2<u32>(1u, 29634u), vec2<i32>(-50552i, 2147483647i), vec2<f32>(-1332f, -427f));

var<private> global2: u32;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec3<bool> {
    global3 = Struct_2(vec2<u32>(73098u, max(0u, 29763u)), ~vec2<i32>(-27832i, global3.b.x), global1.c);
    var var_0 = 1i;
    var var_1 = _wgslsmith_sub_i32(-1i, 0i);
    let var_2 = all(!(!vec2<bool>(u_input.a.x <= global1.b.x, false)));
    global0 = array<Struct_1, 25>();
    return !vec3<bool>(true, _wgslsmith_f_op_f32(-global3.c.x) > global1.c.x, true);
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global0 = array<Struct_1, 25>();
    let var_0 = !(!((u_input.a.x != 2147483647i) | arg_0));
    var var_1 = global0[_wgslsmith_index_u32(~0u, 25u)];
    let var_2 = select(!(!vec3<bool>(true, global1.b.x <= u_input.a.x, any(vec3<bool>(arg_0, true, var_0)))), select(select(select(vec3<bool>(var_1.b.x, var_0, false), !vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(false, var_1.b.x, true), vec3<bool>(true, false, var_0), vec3<bool>(false, false, var_0))), vec3<bool>(global3.b.x <= 2147483647i, var_1.b.x, !var_1.b.x), false), select(func_3(), vec3<bool>(any(vec4<bool>(arg_0, false, true, var_1.b.x)), arg_0 || true, false), var_1.b.x), vec3<bool>(var_0, func_3().x, _wgslsmith_f_op_f32(-global1.c.x) == _wgslsmith_div_f32(var_1.a, -1000f))), !select(!vec3<bool>(false, var_1.b.x, var_0), !(!vec3<bool>(false, var_1.b.x, var_0)), vec3<bool>(!arg_0, true, arg_0)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-784f * -1231f))))) - var_1.a) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.x), 1000f, true))));
    return !select(select(select(select(vec4<bool>(arg_0, var_0, var_2.x, var_1.b.x), vec4<bool>(var_2.x, var_0, false, true), var_0), !vec4<bool>(var_1.b.x, true, var_2.x, true), var_1.b.x), !select(vec4<bool>(var_2.x, arg_0, var_1.b.x, var_0), vec4<bool>(var_1.b.x, true, var_2.x, var_0), arg_0), select(select(vec4<bool>(true, var_2.x, false, var_0), vec4<bool>(false, var_1.b.x, false, var_1.b.x), vec4<bool>(var_2.x, var_1.b.x, false, var_1.b.x)), !vec4<bool>(var_2.x, var_0, var_0, var_1.b.x), any(var_2))), select(select(!vec4<bool>(var_1.b.x, var_2.x, var_1.b.x, arg_0), vec4<bool>(false, true, false, var_1.b.x), !vec4<bool>(false, var_2.x, arg_0, false)), vec4<bool>(true, true, -519f < global1.c.x, true), select(vec4<bool>(true, true, false, var_0), select(vec4<bool>(false, var_0, var_1.b.x, var_0), vec4<bool>(var_1.b.x, false, false, true), true), vec4<bool>(arg_0, false, false, var_2.x))), !(!vec4<bool>(var_1.b.x, false, var_0, arg_0)));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = 482f;
    let var_1 = Struct_2(~global1.a ^ vec2<u32>(global3.a.x, 1u), firstLeadingBit(~(global3.b << (~global1.a % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(arg_1 - arg_1))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + var_1.c.x)), !(!arg_2.xy), max(_wgslsmith_dot_vec2_u32(global1.a, ~var_1.a) >> (global1.a.x % 32u), ~(~(~50860u))));
    var var_3 = Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(~var_2.c, global1.a.x), vec2<u32>(global1.a.x, u_input.b)), firstTrailingBit(-_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.a.yw), reverseBits(global3.b))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.c))));
    let var_4 = global0[_wgslsmith_index_u32(u_input.b, 25u)];
    return Struct_2(global3.a, _wgslsmith_sub_vec2_i32(u_input.a.wy, -(~u_input.a.yy)), global3.c);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global1 = func_4(!select(select(func_2(arg_0.x), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, true, true)), func_2(true), select(func_2(arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, true), !vec4<bool>(false, true, arg_0.x, arg_0.x))), -265f, !(!func_2(false)), any(!select(func_2(false).wx, vec2<bool>(arg_0.x, arg_0.x), false)));
    var var_0 = ~12608u;
    var var_1 = func_4(vec4<bool>(false, false, !any(func_2(false)), true), global1.c.x, !select(vec4<bool>(true, true, arg_0.x, arg_0.x), func_2(false), vec4<bool>(-2147483647i == global3.b.x, true, true, true)), 42105u < global1.a.x);
    let var_2 = vec4<bool>(arg_0.x, (~4294967295u << (~(var_1.a.x << (10385u % 32u)) % 32u)) > global1.a.x, arg_0.x, false);
    let var_3 = Struct_2(~vec2<u32>(_wgslsmith_div_u32(~u_input.b, 1u), 1u), firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(global1.b << (vec2<u32>(55854u, global1.a.x) % vec2<u32>(32u)), -vec2<i32>(var_1.b.x, -21691i)), ~max(vec2<i32>(36520i, u_input.a.x), vec2<i32>(global1.b.x, -51993i)), -_wgslsmith_mult_vec2_i32(vec2<i32>(global1.b.x, u_input.a.x), vec2<i32>(var_1.b.x, global1.b.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f) - _wgslsmith_f_op_f32(abs(global3.c.x))))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global1 = func_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(-383f)), 723f, _wgslsmith_f_op_f32(f32(-1f) * -946f), _wgslsmith_f_op_f32(sign(-500f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(731f * -196f), global1.c.x, global3.c.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, global3.c.x, -886f, global1.c.x) + vec4<f32>(global3.c.x, global3.c.x, global1.c.x, global3.c.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(449f, global1.c.x, global3.c.x, 1674f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2725f, -672f, -374f, 781f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -340f, 619f, 1134f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-573f, 2273f, -157f, 337f), vec4<f32>(-767f, 509f, 1206f, global1.c.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1016f), global3.c.x, _wgslsmith_f_op_f32(-global3.c.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, global1.c.x), _wgslsmith_f_op_f32(abs(var_1.x)))))) != -254f;
    let var_3 = i32(-1i) * -(-22865i ^ min(-18515i & global3.b.x, 1i));
    let var_4 = select(!(!(!vec3<bool>(true, var_2, false))), select(!(!func_3()), vec3<bool>(!(!var_2), true, any(vec2<bool>(var_2, var_2))), !vec3<bool>(var_2, var_2, select(var_2, var_2, var_2))), !(313f <= global3.c.x));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f - -442f)))), vec2<bool>(-40513i == var_3, all(vec3<bool>(false, select(false, true, true), true))), 60751u);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x, -1000f, ~(~global3.a), var_1, ~1u ^ u_input.b);
}

