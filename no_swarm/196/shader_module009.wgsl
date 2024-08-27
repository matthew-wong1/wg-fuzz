struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-2153f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1304f * arg_1))), !(arg_0.b && arg_0.b)))));
    let var_1 = 1061f;
    global0 = countOneBits(vec3<i32>(_wgslsmith_add_i32(-u_input.b.x, global0.x), (_wgslsmith_mult_i32(u_input.b.x, 2147483647i) & (i32(-1i) * -65982i)) & global0.x, _wgslsmith_mod_i32(min(u_input.d, _wgslsmith_mod_i32(global0.x, u_input.b.x)), _wgslsmith_dot_vec2_i32(u_input.b ^ global0.yz, -vec2<i32>(u_input.c.x, global0.x)))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1)));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1881f))), _wgslsmith_f_op_f32(-1070f - 359f), 2332f), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(920f, 2020f, -582f, -270f))))))));
    global0 = u_input.c.yyy;
    let var_1 = ~(~u_input.a.x >> (25717u % 32u));
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, var_0.b, vec4<f32>(1000f, 1000f, var_0.a.x, var_0.a.x)), var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 425f))) - _wgslsmith_f_op_vec3_f32(var_0.c.zxx + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a.zxw, vec3<f32>(var_0.a.x, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec3_f32(-var_0.c.yzw)))) * _wgslsmith_f_op_vec3_f32(var_0.a.yxx + vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x * var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
    return vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f + _wgslsmith_f_op_f32(-var_3.x))), 1138f, 285f);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = ~_wgslsmith_sub_u32(select(0u, 1u, false), 1u) ^ max(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, arg_1), vec4<u32>(32400u, 87772u, 22979u, arg_1)), vec4<u32>(1u, arg_1, 1u, 1u)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x ^ 1u)), u_input.a.x);
    var_1 = select(firstLeadingBit(abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, arg_1, u_input.a.x), firstLeadingBit(u_input.a.x)))), 55938u, all(vec2<bool>(select(var_0.b | true, false, arg_0.b), true)));
    let var_2 = _wgslsmith_mult_vec2_i32(max(vec2<i32>(-(~(-2147483647i)), firstLeadingBit(i32(-1i) * -64583i)), global0.zy), abs(vec2<i32>(~(-31917i), ~arg_2.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.a - arg_3.a)) + vec4<f32>(arg_0.c.x, arg_0.c.x, 938f, _wgslsmith_f_op_f32(sign(-755f)))))), arg_0.b, vec4<f32>(-282f, _wgslsmith_f_op_vec4_f32(func_2()).x, var_0.c.x, _wgslsmith_f_op_f32(600f * arg_3.a.x)));
    return Struct_1(vec4<f32>(-372f, 693f, -400f, -270f), all(vec4<bool>(true, arg_0.b, false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, arg_3.a.x, 494f, 761f) + vec4<f32>(arg_0.a.x, var_3.a.x, var_3.a.x, -809f)) * vec4<f32>(arg_0.c.x, var_3.a.x, var_0.a.x, 1255f)))));
}

fn func_1() -> u32 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1138f, 2106f, 1000f, 1000f)), _wgslsmith_f_op_vec4_f32(func_2())))), any(vec3<bool>(true, false, true)) & true, vec4<f32>(_wgslsmith_div_f32(-270f, -813f), _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -432f))), _wgslsmith_f_op_f32(600f + _wgslsmith_f_op_f32(f32(-1f) * -618f)))), ~u_input.a.x, -(~(~vec4<i32>(2147483647i, global0.x, u_input.c.x, u_input.b.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(964f)))), 160f, -270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-847f)))), select(any(vec3<bool>(false, true, true)), true, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, -440f, -517f, 2864f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2()))), u_input.a.x < _wgslsmith_add_u32(u_input.a.x, 0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1153f, var_0.a.x, 1000f, -230f))), var_0.a), var_0.c, false)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) + var_0.c), true, vec4<f32>(var_0.c.x, 646f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * 433f)), _wgslsmith_f_op_f32(ceil(-1391f))));
    var var_1 = Struct_1(var_0.a, select(true & any(vec3<bool>(true, false, false)), true, !(!(var_0.b & var_0.b))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-var_0.c)), vec4<f32>(_wgslsmith_f_op_f32(631f * var_0.a.x), _wgslsmith_div_f32(1038f, var_0.c.x), var_0.a.x, _wgslsmith_div_f32(436f, -858f))))));
    var_1 = func_4(func_4(Struct_1(var_0.c, true, vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -389f), var_1.a.x, _wgslsmith_f_op_f32(floor(var_1.c.x)))), 28665u, u_input.c, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1918f, -1279f, 632f, 1884f), vec4<f32>(588f, var_1.c.x, var_1.c.x, 392f)) * _wgslsmith_f_op_vec4_f32(trunc(var_1.c))), 1197f != func_4(Struct_1(var_1.a, true, var_0.c), u_input.a.x, vec4<i32>(u_input.c.x, u_input.b.x, global0.x, u_input.d), Struct_1(var_1.a, var_1.b, vec4<f32>(var_0.c.x, 137f, -251f, var_1.c.x))).a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(877f, -929f, -575f, 708f), vec4<f32>(838f, var_1.c.x, -376f, var_1.c.x), var_1.b)))), u_input.a.x, u_input.c, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, var_0.c.x, var_0.a.x, 233f))))), !(true | all(vec3<bool>(false, true, var_1.b))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_f32(f32(-1f) * -695f), -321f, var_1.a.x)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(44810u, reverseBits(u_input.a.x << (~1u % 32u))), u_input.a & min(_wgslsmith_div_vec2_u32(u_input.a, u_input.a) & ~vec2<u32>(1u, u_input.a.x), ~(u_input.a ^ u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -reverseBits(max(vec3<i32>(-u_input.c.x, -1i, u_input.b.x), u_input.c.wzz));
    let var_0 = 0i << (abs(_wgslsmith_add_u32(u_input.a.x, 12607u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(~global0.x, abs(-1i), var_0, _wgslsmith_mod_i32(global0.x, -1i)), select(~vec4<i32>(57613i, -8218i, global0.x, 44250i), u_input.c, true)) | -37368i, func_1(), u_input.c.wxz, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-323f * -437f), -762f) * 666f)));
}

