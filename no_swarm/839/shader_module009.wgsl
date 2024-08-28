struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    return reverseBits(6463u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = ~vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.a.x >> (u_input.d.x % 32u)), _wgslsmith_dot_vec3_u32(reverseBits(u_input.c >> (u_input.c % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(u_input.d.zyy, vec3<u32>(82978u, u_input.c.x, u_input.a.x)) & u_input.c), u_input.a.x);
    var var_2 = max(31400u, 15007u);
    var var_3 = Struct_4(true, u_input.d, var_1.x, _wgslsmith_f_op_f32(step(var_0.c, var_0.a)), var_1.x);
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c * var_3.d)))));
    return select(vec4<bool>(arg_1.x, !(!var_3.a), false, !(!all(vec3<bool>(true, arg_1.x, true)))), !vec4<bool>(arg_1.x, !arg_1.x, true, true), select(vec4<bool>(-1373f != _wgslsmith_f_op_f32(-var_0.c), !arg_1.x, false, arg_1.x), !select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.x, true, true, false), false), select(select(!vec4<bool>(var_3.a, false, var_3.a, true), select(vec4<bool>(arg_1.x, arg_1.x, false, var_3.a), vec4<bool>(var_3.a, arg_1.x, true, false), vec4<bool>(true, var_3.a, true, false)), arg_1.x), vec4<bool>(var_3.a, true, var_3.a, false || arg_1.x), true)));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = firstLeadingBit(firstLeadingBit(u_input.d.x));
    let var_1 = Struct_2(12572i, Struct_1(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))) <= _wgslsmith_f_op_f32(min(-1000f, 1654f))), u_input.a.x, Struct_1(arg_0), Struct_1(true));
    var var_2 = !vec3<bool>(arg_0, !(-2147483647i >= u_input.e), any(!(!vec2<bool>(true, arg_0))));
    var_2 = vec3<bool>(1u < _wgslsmith_add_u32(u_input.c.x, ~var_0 & var_0), select(arg_0, !var_1.e.a, false), all(select(!(!vec4<bool>(var_2.x, true, false, false)), vec4<bool>(var_1.b.a, true, select(var_1.e.a, false, var_2.x), 7519i <= var_1.a), func_3(Struct_3(arg_1.x, -1i, 1000f), !vec3<bool>(var_2.x, true, arg_0)))));
    var_2 = vec3<bool>(!arg_0, true, ~0u < min(_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.xy >> (vec2<u32>(var_0, 4294967295u) % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, u_input.c.x), vec2<u32>(var_0, var_0)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.c, 1u), u_input.a.yw))));
    return Struct_4(select(~u_input.d.x != countOneBits(max(u_input.d.x, 4294967295u)), var_1.b.a, var_2.x), u_input.a, _wgslsmith_sub_u32(firstLeadingBit(reverseBits(10061u)), _wgslsmith_add_u32(abs(u_input.d.x), select(1u, var_0, arg_0))) >> (1933u % 32u), -147f, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_mult_vec4_u32(select(max(u_input.a, ~(~vec4<u32>(15988u, u_input.c.x, 4294967295u, u_input.a.x))), vec4<u32>(firstLeadingBit(33136u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(u_input.d.x, 7438u)), func_1(!vec4<bool>(var_0, false, var_0, true)), u_input.c.x), false), u_input.d);
    let var_2 = vec2<f32>(_wgslsmith_div_f32(167f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1898f);
    let var_3 = func_2(!(!(all(vec4<bool>(false, true, var_0, var_0)) | (var_0 && var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), 1f, 1811f)));
    let var_4 = func_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1414f, var_2.x, 609f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_3.d, -884f), vec3<f32>(var_3.d, var_2.x, -2171f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.d, 1319f, -1000f), vec3<f32>(var_2.x, var_3.d, 1921f)))))));
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1467f, var_4.d, -1233f)))) + vec3<f32>(_wgslsmith_f_op_f32(396f + var_4.d), var_2.x, _wgslsmith_f_op_f32(-var_2.x))) * vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(var_4.d, -1696f, !var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + -839f), _wgslsmith_f_op_f32(var_4.d + var_3.d)))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_f_op_f32(-226f * var_3.d))));
    var var_6 = Struct_5(var_3.a || all(vec2<bool>(!var_0, var_4.a)), Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), var_3.d)) == _wgslsmith_f_op_f32(var_3.d * -334f), vec4<u32>(35602u, 62423u, abs(~var_1.x), 1u), _wgslsmith_sub_u32(~abs(1u), func_2(var_4.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 306f, 421f))).e), 325f, ~(~(~u_input.c.x))), Struct_1(var_3.a));
    var_6 = Struct_5(var_4.a, func_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(var_5)))))), Struct_1(_wgslsmith_f_op_f32(-func_2(var_4.a, vec3<f32>(-1284f, -839f, -431f)).d) < 1875f));
    var var_7 = var_6.b;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(reverseBits(vec3<u32>(62500u, u_input.a.x, 4294967295u) | vec3<u32>(4294967295u, var_6.b.c, 77u))), -vec4<i32>(-1i, u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), u_input.b), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.e, u_input.e)) >> (var_6.b.b.xz % vec2<u32>(32u)), -_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.e)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.e, 2147483647i)))), var_7.d, abs(min(vec3<u32>(37045u, u_input.d.x, ~var_1.x), var_1.zwx)));
}

