struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = true;
    global0 = any(vec4<bool>(any(vec3<bool>(any(vec2<bool>(true, true)), true, true)), !all(vec4<bool>(false, true, false, false)) | (u_input.a.x > (0u << (u_input.a.x % 32u))), all(vec2<bool>(true, all(vec4<bool>(false, true, false, false)))), true));
    let var_0 = Struct_1(any(vec4<bool>(any(vec3<bool>(false, false, false)) || false, false, false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) + -1743f), -177f)), ~vec2<i32>(u_input.e, -_wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2054f, -332f, -508f) * vec3<f32>(1614f, 1138f, 745f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, 1095f, 312f) * vec3<f32>(2635f, -949f, 131f)), vec3<f32>(2168f, -745f, -1032f))))));
    global0 = true;
    let var_1 = ~min(u_input.c.x, 7370u);
    return countOneBits(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(~abs(var_1), 4294967295u, 0u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = u_input.d.zyw;
    let var_1 = vec2<u32>(func_3(max(-1i >> (0u % 32u), i32(-1i) * -66930i)) << (~min(1323u, ~51319u) % 32u), u_input.a.x);
    global0 = !arg_0.a;
    let var_2 = -(~(-_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, arg_0.c.x), ~u_input.d.wz)));
    var var_3 = !select(select(select(!vec3<bool>(arg_0.a, arg_0.a, true), !vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), select(vec3<bool>(false, true, true), vec3<bool>(arg_0.a, false, true), select(vec3<bool>(arg_0.a, false, true), vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, false, arg_0.a))), !(!arg_0.a)), select(!select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(true, arg_0.a, false)), !vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, !arg_0.a, all(vec2<bool>(true, arg_0.a)))), select(vec3<bool>(false, false, arg_0.a), vec3<bool>(!arg_0.a, -2147483647i <= var_2.x, false), true));
    return var_3.x;
}

fn func_1() -> bool {
    let var_0 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(u_input.b >= -1i, true)));
    var var_1 = select(u_input.d.yww, _wgslsmith_clamp_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, 75417i, -39155i)), _wgslsmith_mult_vec3_i32(u_input.d.wyy, u_input.d.wzw) | (-vec3<i32>(u_input.e, u_input.b, -1i) | -u_input.d.zyy), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b, -1i), _wgslsmith_clamp_i32(u_input.e, u_input.b, -68308i), ~u_input.b), u_input.d.wyw)), func_2(Struct_1((u_input.d.x < 2147483647i) & true, _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(709f, -1671f)))), vec2<i32>(~u_input.b, u_input.b), vec3<f32>(1234f, _wgslsmith_f_op_f32(-860f - 418f), _wgslsmith_f_op_f32(-2143f - 633f)))));
    global0 = any(vec3<bool>((reverseBits(u_input.a.x) ^ _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)) >= _wgslsmith_mult_u32(4294967295u, u_input.a.x), true, firstTrailingBit(~1u) > _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 0u)))));
    let var_2 = -2147483647i;
    var_1 = vec3<i32>(var_1.x, var_1.x, var_1.x);
    return any(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(!select(vec3<bool>(func_1(), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), false));
    var var_0 = Struct_2(Struct_1(any(vec2<bool>(all(vec4<bool>(true, false, false, false)), true)), vec2<f32>(_wgslsmith_f_op_f32(-1000f + -1417f), 546f), u_input.d.zx << (abs(u_input.a.yz) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(sign(520f)))), -591f, _wgslsmith_f_op_f32(abs(-234f)))), false, _wgslsmith_mult_u32(~0u, u_input.c.x), Struct_1(false & (101895u != u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(-1162f * 377f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-898f * 965f) - _wgslsmith_f_op_f32(1535f + 719f))), abs(firstLeadingBit(u_input.d.xz)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-610f, _wgslsmith_div_f32(744f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1019f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -824f, -217f), vec3<f32>(-326f, -677f, -1000f), false)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(349f, -175f, -222f), vec3<f32>(2090f, 453f, -1206f)))), vec3<bool>(true, 1i == u_input.d.x, true)))));
    var_0 = Struct_2(Struct_1(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.d.yz - var_0.a.d.yx), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.d.x, 335f) - var_0.a.b))), u_input.d.ww, _wgslsmith_f_op_vec3_f32(max(var_0.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-593f, var_0.a.b.x, var_0.d.b.x), var_0.a.d)))))), true, ~firstLeadingBit(u_input.a.x), var_0.d);
    var_0 = Struct_2(var_0.d, false, ~u_input.c.x >> (~((28538u << (u_input.c.x % 32u)) >> (select(u_input.a.x, var_0.c, var_0.b) % 32u)) % 32u), var_0.a);
    var var_1 = false || !func_2(Struct_1(all(vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(-var_0.a.d.zz), vec2<i32>(var_0.d.c.x, -2147483647i), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1061f, -196f, var_0.a.d.x), var_0.d.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(u_input.b & abs(-2147483647i)), -(~(-u_input.e))), ~(~u_input.d.wyw));
}

