struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1() -> vec2<u32> {
    return vec2<u32>(firstLeadingBit(0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 43639u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 40954u)), _wgslsmith_add_u32(140u, u_input.b.x), select(u_input.b.x, u_input.b.x, true)), vec3<u32>(1u, _wgslsmith_mult_u32(15120u, 69788u), 33558u)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1095f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f * 1288f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1113f - -476f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1272f)))))))), 1f));
    var var_1 = !(!vec2<bool>(!all(vec4<bool>(false, true, true, true)), true));
    var var_2 = vec4<f32>(1f, 1f, 1f, 1f);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), 165f, -1247f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -587f, -510f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0, var_0, 506f) - vec4<f32>(948f, 232f, -954f, -140f)), !vec4<bool>(true, true, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(953f, 184f), _wgslsmith_f_op_f32(max(var_0, 869f)), _wgslsmith_f_op_f32(var_2.x - var_0), _wgslsmith_f_op_f32(-var_0)))))));
    var var_3 = vec4<bool>(var_1.x, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 26358i, u_input.a), vec3<i32>(31616i, u_input.a, u_input.a)) < -1i) & true, any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x)), true)), false);
    return 501f;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, arg_2.a, 1u), 4294967295u), !(!arg_1) & !(!arg_2.c.x), _wgslsmith_div_vec3_f32(vec3<f32>(300f, -1446f, 2158f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-654f, -1185f, -238f))), arg_2.d.c, true)))));
    let var_1 = arg_0.x;
    var var_2 = arg_2;
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_2.b, -78957i, _wgslsmith_mod_i32(-u_input.a, arg_3.a.x) << (~_wgslsmith_mod_u32(var_2.d.a.x, var_2.a) % 32u)), arg_2.b);
    var_2 = arg_2;
    return Struct_1(_wgslsmith_mult_vec2_u32(select(u_input.b, ~arg_2.d.a << (var_2.d.a % vec2<u32>(32u)), !(!vec2<bool>(var_0.a.b, var_2.d.b))), var_0.a.a), arg_1, vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1126f + var_2.d.c.x) + 564f), _wgslsmith_div_f32(-1291f, 1874f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(min(_wgslsmith_clamp_u32(u_input.b.x, 0u, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u)), min(~6491u, u_input.b.x)), 19942u), !(!any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(959f, -1319f, true)), _wgslsmith_f_op_f32(f32(-1f) * -597f), 1f))));
    var var_1 = ~reverseBits(~u_input.a);
    let var_2 = Struct_4(var_0);
    var_1 = 2147483647i;
    let var_3 = func_2(func_1(), false, Struct_2(61221u, ~u_input.a, vec4<bool>(abs(u_input.a) != 1i, true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), !(!var_2.a.b)), var_2.a), Struct_5(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i) | ~vec2<i32>(u_input.a, -935i), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 8648i), true), vec2<i32>(u_input.a, u_input.a), min(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 9715i))))));
    var_1 = 55850i;
    var_1 = -1158i;
    var var_4 = Struct_5(abs(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, 0i)), ~(-vec2<i32>(2147483647i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_4.a), 1u, var_2.a.c.yx, vec4<i32>(firstLeadingBit(32427i) & u_input.a, u_input.a, -_wgslsmith_mod_i32(35535i, -6739i), -8514i) | ((_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_4.a.x, var_4.a.x, -16430i), vec4<i32>(u_input.a, var_4.a.x, 1i, 0i)) ^ vec4<i32>(-2147483647i, u_input.a, 32633i, u_input.a)) >> ((~vec4<u32>(var_0.a.x, var_2.a.a.x, 19771u, 1618u) << (vec4<u32>(4294967295u, 1u, 17319u, var_0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

