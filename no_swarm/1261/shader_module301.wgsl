struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    let var_2 = !select(vec3<bool>(true, any(vec3<bool>(true, true, false)) != true, any(vec2<bool>(true, true))), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(-284f, _wgslsmith_div_f32(arg_0, -772f), var_2.x)), arg_0, 1867f, _wgslsmith_f_op_f32(-arg_0));
    var var_4 = false;
    return 4294967295u ^ _wgslsmith_mult_u32(u_input.a.x | var_0, reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 13411u), vec2<u32>(1u, 10676u))));
}

fn func_2() -> Struct_2 {
    var var_0 = !(!(!vec4<bool>(any(vec2<bool>(true, true)), true, true, true)));
    var var_1 = true;
    var_0 = vec4<bool>((~1u << (u_input.a.x % 32u)) < firstTrailingBit(func_3(-1327f)), false, !(var_0.x && false), any(vec3<bool>(true, true && (var_0.x | false), all(vec3<bool>(true, var_0.x, false)))));
    var var_2 = Struct_3(Struct_2(Struct_1(1535f, 763f, !(!vec3<bool>(false, var_0.x, false))), -117f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - -425f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-861f)), _wgslsmith_f_op_f32(-1000f - -785f)), vec3<bool>(select(true, true, false), any(vec2<bool>(false, var_0.x)), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2066f) * _wgslsmith_div_f32(1782f, -404f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 1000f))), !var_0.wxy), select(select(vec4<bool>(true, var_0.x, false, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, false)), select(!vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(var_0.x, false, var_0.x, true), all(vec4<bool>(var_0.x, var_0.x, false, var_0.x))), var_0.x)), false, vec2<i32>(~2147483647i, _wgslsmith_div_i32(-18208i << (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u)) % 32u), abs(-2147483647i))), countOneBits(max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_clamp_i32(34042i, -48213i, 29441i), 59329i, _wgslsmith_sub_i32(-39090i, -1i), 1i))), Struct_1(_wgslsmith_f_op_f32(ceil(-154f)), _wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f - -540f))), vec3<bool>(false, true, !all(vec2<bool>(true, true)))));
    let var_3 = _wgslsmith_mod_i32(0i, -11190i);
    return var_2.a;
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = func_2();
    let var_1 = vec4<bool>(-45380i != (~(-28411i) >> (firstTrailingBit(~101022u) % 32u)), !(!var_0.a.c.x), var_0.d.c.x, var_0.a.c.x);
    let var_2 = !vec3<bool>(all(var_0.c.c), any(vec4<bool>(!var_1.x, var_0.c.c.x, var_1.x, true)), false);
    var var_3 = Struct_3(Struct_2(func_2().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b))), func_2().a, func_2().a, vec4<bool>(var_2.x, all(var_0.d.c), func_2().e.x, any(!var_0.e.xw))), any(vec3<bool>(!all(vec3<bool>(var_1.x, var_1.x, true)), !var_1.x, true)), select(vec2<i32>(~1i, ~(-33336i)), -_wgslsmith_add_vec2_i32(vec2<i32>(4853i, -2147483647i), select(vec2<i32>(0i, 26144i), vec2<i32>(2147483647i, 2147483647i), vec2<bool>(var_1.x, var_0.d.c.x))), true), -vec4<i32>(-2147483647i, 2147483647i, max(firstLeadingBit(-18582i), firstTrailingBit(-1i)), ~(-10657i)), Struct_1(2245f, var_0.a.b, select(var_0.c.c, var_0.c.c, var_1.yxz)));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.a.d.a, _wgslsmith_f_op_f32(trunc(var_3.e.a))))), arg_0, -337f) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(850f, var_0.d.b, var_3.a.b)))))))));
    return !(!var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-240f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -968f));
    let var_1 = 0i;
    var var_2 = vec2<bool>(!select(!(u_input.a.x != 30588u), true, all(vec4<bool>(true, true, true, true))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -865f)));
    var_0 = func_2().d.c.x;
    var var_3 = func_2().d.c.yz;
    let var_4 = var_1;
    let var_5 = !vec4<bool>(false, var_3.x, true, false);
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-391f - -189f), 1476f, _wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -591f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(973f, -1000f, -1097f, -322f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2395f, 1423f, -820f, -1003f) - vec4<f32>(-360f, -249f, -1175f, -268f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, 1057f, 295f, 1000f)))), !(!var_3.x)))));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

