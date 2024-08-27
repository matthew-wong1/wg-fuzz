struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = firstLeadingBit(u_input.d.xw);
    var var_1 = vec4<bool>(arg_0 == 19879i, all(vec3<bool>(true, true, true)) | true, !any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)), !all(vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, false)))));
    var_1 = !vec4<bool>(var_1.x, true && var_1.x, false, var_1.x);
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(arg_1.a, 10894i, 36844i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-32111i, -16825i), var_0))));
    var_1 = select(select(select(vec4<bool>(!var_1.x, u_input.a < 4294967295u, true, any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), select(select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, var_1.x, false, true)), vec4<bool>(var_1.x, true, false, true), var_1.x), select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, false, var_1.x, true), true))), !select(!vec4<bool>(false, var_1.x, false, true), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false)), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, true), vec4<bool>(false, true, false, var_1.x))), select(!select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, false)), vec4<bool>(all(vec4<bool>(true, var_1.x, var_1.x, true)), any(var_1.wx), true, true), vec4<bool>(!var_1.x, false, var_1.x & var_1.x, true))), !select(!vec4<bool>(false, var_1.x, false, var_1.x), !(!vec4<bool>(true, var_1.x, var_1.x, false)), var_1.x), !vec4<bool>(select(!var_1.x, var_1.x, select(var_1.x, var_1.x, false)), all(var_1.zx), var_1.x, false));
    return select(select(vec4<bool>(true, true, false, !(true & var_1.x)), vec4<bool>(var_1.x, !var_1.x & var_1.x, all(select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, var_1.x, false, true), vec4<bool>(false, false, var_1.x, var_1.x))), all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), true), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), any(select(vec2<bool>(!var_1.x, 27269u > u_input.a), vec2<bool>(false, !var_1.x), var_1.x)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), 29227u > u_input.c.x)), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), ~u_input.a > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 27733u, 2734u, 0u), vec4<u32>(105125u, 0u, 0u, u_input.c.x)), true), func_3(~u_input.d.x, Struct_1(_wgslsmith_clamp_i32(-2147483647i, 0i, 2166i))));
    var var_1 = Struct_1(0i);
    var_1 = Struct_1(~arg_0);
    var var_2 = Struct_1(-36629i);
    var var_3 = Struct_1(~var_1.a);
    return Struct_1(arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = !vec2<bool>(any(select(func_3(-2147483647i, arg_3), select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(arg_1.x, false, false, arg_1.x), arg_1.x), func_3(-1i, arg_3))), all(vec3<bool>(u_input.c.x > u_input.a, all(vec4<bool>(true, true, true, false)), true)));
    return 0u << (_wgslsmith_mult_u32(~firstTrailingBit(firstTrailingBit(u_input.a)), _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.c), u_input.c)) % 32u);
}

fn func_5(arg_0: vec3<f32>, arg_1: u32) -> vec3<f32> {
    let var_0 = -1302f;
    let var_1 = Struct_1(firstTrailingBit(11762i));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.x))));
    var var_4 = vec3<i32>(0i, _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(-5930i, u_input.d.x), 1i), select(vec2<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.d.x), abs(-25898i)), ~abs(u_input.d.xy), vec2<bool>(var_2, var_1.a > -32441i))), -111391i);
    return arg_0;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1358f)), _wgslsmith_f_op_f32(-587f - -504f), -731f)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-192f, -796f, true)))), -1104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(720f + -1354f) * _wgslsmith_f_op_f32(-1745f - 2689f)))), func_4(func_2(-2147483647i), vec2<bool>(true, true), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x), func_2(u_input.b.x)) | (countOneBits(_wgslsmith_div_u32(u_input.a, 0u)) ^ _wgslsmith_sub_u32(u_input.a, ~196u))));
    var var_1 = func_2(~1i);
    var var_2 = var_0.x;
    let var_3 = Struct_1(1i);
    let var_4 = var_0.x;
    return ~u_input.c.wz;
}

fn func_6(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = max(_wgslsmith_mult_vec2_i32(u_input.d.xw, ~vec2<i32>(reverseBits(-90788i), -2342i)), ~u_input.b.yx);
    let var_1 = countOneBits(-select(2147483647i, -u_input.b.x, false)) != var_0.x;
    var var_2 = arg_1;
    let var_3 = ~vec3<u32>(arg_0.x, ~(~arg_0.x), max(arg_0.x & arg_0.x, _wgslsmith_mult_u32(4294967295u, u_input.a))) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zzy, u_input.c.xzy), ~u_input.a, u_input.a), ~u_input.c.xyx) ^ ~(~firstLeadingBit(u_input.c.wyy))) % vec3<u32>(32u));
    let var_4 = !var_1;
    return func_2(-_wgslsmith_mod_i32(-7295i, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true)));
    let var_1 = func_6(func_1(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-728f, _wgslsmith_f_op_f32(ceil(-276f))))))));
    let var_2 = Struct_1(var_1.a);
    var var_3 = vec4<u32>(u_input.c.x, u_input.c.x, ~(~1u), 8780u);
    let var_4 = u_input.c.zyy & (_wgslsmith_div_vec3_u32(~(var_3.zxz | var_3.xzy), countOneBits(u_input.c.zzw)) << (reverseBits(firstLeadingBit(~var_3.zyy)) % vec3<u32>(32u)));
    var_3 = vec4<u32>(1u, 1u ^ var_4.x, countOneBits(13277u & _wgslsmith_sub_u32(68659u, max(var_3.x, 1u))), select(var_3.x, 6310u, var_0.x));
    let var_5 = var_2;
    let var_6 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, -1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-418f, -347f), -414f) + vec2<f32>(503f, _wgslsmith_f_op_f32(sign(-824f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1151f, -680f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1724f, -1360f), vec2<f32>(1346f, 1345f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -159f), 1019f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1173f, 375f, -304f)), countOneBits(15351u))).yx))), !(!var_0)));
    var_3 = ~vec4<u32>(~_wgslsmith_div_u32(~87267u, _wgslsmith_div_u32(var_3.x, 0u)), 1u, max(func_4(Struct_1(var_2.a), !vec2<bool>(var_0.x, var_0.x), reverseBits(vec3<i32>(var_1.a, 58414i, var_2.a)), var_2), abs(45906u) & var_3.x), _wgslsmith_div_u32(min(~1u, min(u_input.a, 5588u)), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -(~u_input.b));
}

