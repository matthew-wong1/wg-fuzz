struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, true, false), arg_0 <= 0u)), vec4<bool>(true, true, (u_input.a << (20033u % 32u)) > 0u, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true))), any(vec2<bool>(true, u_input.d == u_input.d))), select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), true), vec4<bool>(all(vec2<bool>(false, true)), true, false, false), !any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, false)))));
    var_0 = !(!(!select(vec4<bool>(false, var_0.x, false, true), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, var_0.x, false, var_0.x), var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, var_0.x, true, true), true))));
    let var_1 = _wgslsmith_div_vec3_u32(u_input.c.zzx, vec3<u32>(select(1u, _wgslsmith_mult_u32(arg_0, max(1u, arg_0)), true), 4294967295u, arg_0));
    var_0 = select(vec4<bool>(!var_0.x, !(!select(var_0.x, var_0.x, false)), any(var_0.yx), true), select(!vec4<bool>(true, u_input.c.x <= 4294967295u, true, var_0.x), !vec4<bool>(!var_0.x, true, any(vec4<bool>(true, true, var_0.x, var_0.x)), all(vec2<bool>(var_0.x, true))), vec4<bool>(true, false, all(var_0.zyx), any(select(var_0.zw, var_0.xw, var_0.yx)))), var_0.x);
    let var_2 = ~vec3<u32>(~(~u_input.c.x) & ~(~4294967295u), abs((u_input.a << (126032u % 32u)) >> (79748u % 32u)), 1u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(926f, 2040f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-816f, 318f)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_sub_u32(~max(~u_input.a, _wgslsmith_mod_u32(5465u, 1u)), arg_0.x));
    var var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(step(942f, -1616f)), false)), _wgslsmith_f_op_f32(f32(-1f) * -988f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(1u, u_input.c.x)))), false);
    var var_2 = Struct_1(var_0.a);
    var_2 = Struct_1(1u);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-121f, _wgslsmith_f_op_f32(sign(681f)), _wgslsmith_f_op_f32(round(2600f)), -1045f)))), _wgslsmith_f_op_f32(-290f * -238f), abs(~u_input.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_3.a.xzx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_3.a.xzx - var_3.a.zzw), var_3.a.xyz)))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(~reverseBits(u_input.c.x), 1u, _wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(47540u, 12565u))), u_input.c.x)));
    var var_1 = Struct_1(u_input.a);
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(-vec4<i32>(-2147483647i, u_input.d, 0i, 12166i) | -vec4<i32>(u_input.d, 1i, -20756i, 1i), abs(min(vec4<i32>(u_input.b, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, 1i, u_input.b, -2147483647i))), all(vec2<bool>(false, false)) && false), countOneBits(abs(vec4<i32>(u_input.b, -2147483647i, -16856i, u_input.d) >> (vec4<u32>(var_1.a, 1u, var_1.a, 4294967295u) % vec4<u32>(32u))))), reverseBits(min(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(4393i, u_input.b, -3232i, u_input.b), vec4<i32>(u_input.b, u_input.d, -11593i, -1347i), vec4<i32>(u_input.d, -19440i, u_input.d, 1i)), ~vec4<i32>(33067i, u_input.b, u_input.d, 48943i)), -(vec4<i32>(-2147483647i, -36314i, -2147483647i, u_input.d) << (vec4<u32>(var_1.a, u_input.a, 4294967295u, var_1.a) % vec4<u32>(32u))))), -select(select(~vec4<i32>(1i, u_input.b, u_input.d, 18613i), firstLeadingBit(vec4<i32>(u_input.b, -25995i, 1225i, u_input.b)), vec4<bool>(true, true, true, true)), vec4<i32>(u_input.d, _wgslsmith_mod_i32(-955i, 3051i), i32(-1i) * -2147483647i, firstLeadingBit(u_input.b)), all(vec4<bool>(false, true, true, false)) || true));
    var var_3 = Struct_1(1u);
    let var_4 = Struct_1(~u_input.a);
    return -309f;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))));
    var_1 = all(!(!vec2<bool>(select(false, false, false), true)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f), 926f);
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-673f + arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1446f * 1101f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -7829i;
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.c.wzw, countOneBits(~(vec3<u32>(u_input.a, 37685u, 20509u) << (vec3<u32>(34512u, 4294967295u, u_input.c.x) % vec3<u32>(32u))))));
    var_0 = select(u_input.d, -13115i, select(false, -u_input.b < ~_wgslsmith_mod_i32(-1i, -48201i), true));
    var_0 = ~(-8358i ^ _wgslsmith_mult_i32(-1i, min(u_input.d, 0i))) << (var_1.a % 32u);
    var_1 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1643f, -771f, 774f, 813f)) - vec4<f32>(-1318f, 777f, -106f, -641f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(329f, -167f, 145f, 563f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1337f, 412f, -1000f, 121f))))), 1667f, ~max(~vec4<u32>(4662u, 46840u, 1u, var_1.a), vec4<u32>(u_input.c.x, 1u, 29320u, 6927u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(395f, 671f, true)) - -451f)), _wgslsmith_f_op_f32(min(-1582f, _wgslsmith_f_op_f32(select(-2247f, _wgslsmith_div_f32(1174f, -1134f), u_input.b <= 1i)))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f))), Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.a, u_input.a), ~1u)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(-2147483647i), ~(-1i), abs(u_input.b), ~248i), firstTrailingBit(max(vec4<i32>(-57263i, u_input.d, u_input.d, 0i), vec4<i32>(14220i, -1i, 0i, u_input.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_dot_vec2_i32(~(~min(vec2<i32>(0i, u_input.d), vec2<i32>(13279i, -2965i))), -(~abs(vec2<i32>(u_input.d, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1180f, 754f, 442f))))))), var_1.a, u_input.b);
}

