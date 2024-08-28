struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1379f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1397f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(847f - -1211f) + _wgslsmith_f_op_f32(floor(-1578f)))), 1835f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1164f + 188f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -668f))))));
    let var_0 = _wgslsmith_dot_vec4_u32(select(~reverseBits(vec4<u32>(u_input.b.x, 1u, u_input.d, 4294967295u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, 7520u), ~vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, u_input.b.x)), (u_input.a >= -10396i) && true), abs(~countOneBits(vec4<u32>(u_input.d, u_input.b.x, 6802u, 0u)))) >> (u_input.d % 32u);
    let var_1 = all(!select(vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(true, true, true), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false))));
    global0 = 875f;
    return 15625u << ((firstTrailingBit(~(~0u)) << (_wgslsmith_sub_u32(var_0, 0u) % 32u)) % 32u);
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = select(vec4<bool>(true, func_3() >= firstLeadingBit(~0u), arg_1.a.b, ~23678i == _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_div_i32(u_input.c, -39493i))), vec4<bool>(true, !arg_1.a.b, false, true), arg_1.a.b);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1184f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(250f)) - 1000f)));
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(338f, -1605f, 171f, -379f) - vec4<f32>(-982f, -967f, -1509f, 1019f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-891f, -605f, -267f, -1026f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(993f, 1319f, 1203f, 568f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1660f, -1068f, -402f, 1136f))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(-1268f, 601f)), _wgslsmith_f_op_f32(-492f - -1967f), _wgslsmith_f_op_f32(trunc(815f)), _wgslsmith_f_op_f32(332f + -1161f))))));
    var var_3 = arg_1;
    return countOneBits(vec2<u32>(~11416u, 1u));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_3 {
    global0 = 1616f;
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1503f), -764f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1225f) - _wgslsmith_f_op_f32(-574f - -585f)) + -932f), 1f));
    var var_1 = Struct_1(-abs(6787i), all(vec2<bool>(true, true)));
    var_1 = Struct_1(32720i, any(vec4<bool>(782u != u_input.b.x, arg_2.b, true, var_0.x < -428f)) | true);
    let var_2 = arg_0.a;
    return Struct_3(arg_2);
}

fn func_1() -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1481f, 2277f, 24984u == u_input.b.x))))), 414f);
    var var_1 = func_4(Struct_3(Struct_1(u_input.a, true | any(vec4<bool>(true, false, true, true)))), ~reverseBits(func_2(u_input.b.x, Struct_3(Struct_1(u_input.c, false)))), Struct_1(-u_input.c, any(vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true))));
    let var_2 = Struct_2(abs(~(~(~u_input.b.yy))), vec2<bool>(true, true));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_3 = var_0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1960f);
    return 37838u | ~_wgslsmith_sub_u32(~func_2(var_2.a.x, Struct_3(Struct_1(var_1.a.a, var_3))).x, _wgslsmith_add_u32(1u, ~u_input.d));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = -906f;
    var var_0 = ~select(~(abs(vec4<u32>(arg_3, 1u, 4294967295u, 1u)) | vec4<u32>(u_input.b.x, 1u, arg_0, arg_0)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, arg_3, 57117u, 63411u), ~vec4<u32>(51694u, arg_3, 3455u, u_input.d)), all(vec4<bool>(arg_2, arg_2, true, arg_2)) | true);
    let var_1 = Struct_3(func_4(func_4(func_4(Struct_3(Struct_1(2147483647i, arg_2)), var_0.zz, func_4(Struct_3(Struct_1(-1i, arg_2)), vec2<u32>(arg_3, var_0.x), Struct_1(-10532i, true)).a), vec2<u32>(0u, arg_3), func_4(func_4(Struct_3(Struct_1(0i, true)), vec2<u32>(arg_0, 45284u), Struct_1(-32332i, arg_2)), func_2(arg_0, Struct_3(Struct_1(arg_1, arg_2))), Struct_1(u_input.c, true)).a), var_0.xz, func_4(func_4(Struct_3(Struct_1(u_input.a, arg_2)), u_input.b.xy & vec2<u32>(4294967295u, arg_3), func_4(Struct_3(Struct_1(-2147483647i, arg_2)), vec2<u32>(4294967295u, 24109u), Struct_1(-1i, false)).a), ~vec2<u32>(arg_0, var_0.x), Struct_1(arg_1, arg_2 & arg_2)).a).a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1552f - -1215f))), _wgslsmith_f_op_f32(trunc(-243f)), !func_4(var_1, var_0.yw, Struct_1(var_1.a.a, false)).a.b)) - -1632f));
    let var_2 = true;
    return func_4(Struct_3(func_4(func_4(Struct_3(var_1.a), u_input.b.xx, func_4(var_1, u_input.b.zz, Struct_1(u_input.c, false)).a), vec2<u32>(_wgslsmith_div_u32(43127u, arg_0), max(49288u, 4294967295u)), Struct_1(arg_1 ^ u_input.c, arg_2)).a), ~_wgslsmith_mult_vec2_u32(vec2<u32>(25094u, u_input.d) & ~var_0.wx, firstLeadingBit(vec2<u32>(arg_0, 1u))), var_1.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(u_input.d, 5719i, !(func_1() == u_input.b.x), ~u_input.b.x));
    let var_1 = all(select(!select(!vec4<bool>(var_0.a.b, var_0.a.b, var_0.a.b, var_0.a.b), !vec4<bool>(false, var_0.a.b, true, var_0.a.b), !var_0.a.b), !vec4<bool>(true, func_4(Struct_3(Struct_1(u_input.a, var_0.a.b)), u_input.b.xx, Struct_1(0i, var_0.a.b)).a.b, any(vec2<bool>(false, false)), any(vec4<bool>(var_0.a.b, var_0.a.b, var_0.a.b, var_0.a.b))), !(firstTrailingBit(5785i) != u_input.a)));
    var var_2 = vec2<f32>(387f, _wgslsmith_f_op_f32(1040f * _wgslsmith_f_op_f32(f32(-1f) * -539f)));
    var var_3 = u_input.b;
    var var_4 = var_0.a.b;
    global0 = _wgslsmith_f_op_f32(-var_2.x);
    var var_5 = func_5(1u, u_input.a >> (u_input.b.x % 32u), var_0.a.b, var_3.x);
    var var_6 = vec3<bool>(var_5.b, true, false);
    var var_7 = Struct_4(func_4(Struct_3(Struct_1(~var_0.a.a, false)), u_input.b.yy, func_5(~u_input.b.x, -3707i, all(vec4<bool>(var_1, true, false, true)), 4294967295u >> ((var_3.x << (u_input.b.x % 32u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0u), 45318u, var_2.x, var_2.x);
}

