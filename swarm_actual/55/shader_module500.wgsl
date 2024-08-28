struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = u_input.c.x;
    var var_1 = -1i;
    let var_2 = !select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(true, true));
    return vec3<bool>(!var_2.x, false, true);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, var_0));
    let var_2 = ~(u_input.b >> (u_input.b % 32u)) << (abs(11900u) % 32u);
    var var_3 = Struct_2(arg_1, !(!(!select(vec3<bool>(false, arg_1.e.x, arg_0), vec3<bool>(arg_0, arg_1.a, false), arg_0))), any(!select(vec4<bool>(arg_1.a, arg_0, true, arg_0), vec4<bool>(true, arg_0, arg_1.a, true), vec4<bool>(arg_0, true, false, true))) | any(!(!vec3<bool>(arg_1.a, false, true))), arg_1.c <= -958f, select(!(!select(arg_1.e, vec2<bool>(arg_0, true), vec2<bool>(false, arg_0))), select(select(vec2<bool>(arg_1.a, arg_0), vec2<bool>(arg_0, false), 18942u >= arg_1.d), select(!vec2<bool>(false, arg_1.a), select(vec2<bool>(false, true), vec2<bool>(arg_1.e.x, true), true), vec2<bool>(arg_1.e.x, true)), countOneBits(85773u) != _wgslsmith_mod_u32(arg_1.d, arg_1.d)), !any(!vec4<bool>(arg_1.e.x, arg_1.a, false, false))));
    var_3 = Struct_2(Struct_1(arg_0, 1317f, 164f, arg_1.d, !select(var_3.a.e, vec2<bool>(true, true), var_3.a.e)), func_3(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.d), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 34565u), vec2<u32>(var_3.a.d, 64926u)))), false, -1i == -u_input.d.x, vec2<bool>(!any(var_3.b), any(func_3(firstTrailingBit(vec2<u32>(var_3.a.d, 73405u))))));
    return var_3.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = func_2(!(!(!(!arg_2.b.x))), Struct_1(false, -183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1058f * _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_f_op_f32(-128f * _wgslsmith_f_op_f32(-146f - arg_2.a.b))), 1u, vec2<bool>(false, !(!arg_2.a.a))));
    var var_1 = func_2(false, arg_2.a);
    var var_2 = u_input.d.xy;
    var var_3 = select(vec3<i32>(1i, 1i, abs(-u_input.c.x)) >> (vec3<u32>(arg_0.d, 6985u, countOneBits(~arg_2.a.d)) % vec3<u32>(32u)), abs(vec3<i32>(-1i) * -reverseBits(vec3<i32>(u_input.c.x, 0i, -1i))), !vec3<bool>(arg_1.e.x, !(var_0.c <= -623f), true));
    var var_4 = _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(var_1.d, 77603u, 44841u, 5082u)), firstLeadingBit(vec4<u32>(29227u, arg_0.d, var_0.d, 51809u)))), select(~(~countOneBits(vec4<u32>(1u, 4294967295u, 63323u, var_0.d))), vec4<u32>(select(~0u, _wgslsmith_sub_u32(4294967295u, 10332u), true), 75808u, 4294967295u, ~(~1u)), true));
    return _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(arg_2.a.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * arg_2.a.c) * _wgslsmith_f_op_f32(1285f + arg_0.b)))), vec2<f32>(var_0.c, _wgslsmith_f_op_f32(501f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1484f, 1525f)), -1558f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1180f, -1000f) * vec2<f32>(293f, 904f)), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(false, 359f, 2427f, u_input.a, vec2<bool>(true, true)), Struct_1(false, -1070f, 545f, u_input.b, vec2<bool>(false, false)), Struct_2(Struct_1(true, -814f, -296f, 12035u, vec2<bool>(true, true)), vec3<bool>(true, true, false), false, true, vec2<bool>(true, false)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(769f, 1434f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-176f, -738f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1228f, 421f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1154f, 178f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2196f, 100f), vec2<f32>(732f, 1306f), true))))))));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = -2147483647i <= ((_wgslsmith_sub_i32(countOneBits(u_input.c.x), abs(u_input.d.x)) << (min(~1u, ~4294967295u) % 32u)) >> (~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(67486u, 1u, u_input.a)), max(u_input.b, u_input.b)) % 32u));
    let var_3 = 1i;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-var_1), -115f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_1, _wgslsmith_f_op_vec2_f32(func_1(Struct_1(true, -852f, 811f, u_input.b, vec2<bool>(var_2, false)), func_2(var_2, Struct_1(var_2, var_1, var_0.x, u_input.b, vec2<bool>(true, var_2))), Struct_2(Struct_1(var_2, -1000f, var_1, u_input.a, vec2<bool>(false, var_2)), vec3<bool>(true, var_2, true), true, var_2, vec2<bool>(false, true)))).x)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), -1399f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1044f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_2, var_0.x, -253f, u_input.b, vec2<bool>(var_2, true)), Struct_1(false, var_0.x, 1239f, 67834u, vec2<bool>(false, false)), Struct_2(Struct_1(var_2, -307f, -1213f, u_input.b, vec2<bool>(false, var_2)), vec3<bool>(true, var_2, true), true, true, vec2<bool>(var_2, var_2))))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(869f, 2266f) + vec2<f32>(var_0.x, 163f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1280f)))) * vec2<f32>(-1393f, -889f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -141f)))))));
    var var_4 = Struct_2(Struct_1(all(vec3<bool>(var_2, false, func_2(false, Struct_1(var_2, -253f, var_1, 51268u, vec2<bool>(false, false))).a)), var_1, _wgslsmith_f_op_f32(var_0.x + -529f), u_input.b, !vec2<bool>(true, all(vec3<bool>(true, var_2, var_2)))), !(!vec3<bool>(true, !var_2, select(var_2, false, var_2))), func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 16210u), ~vec2<u32>(u_input.b, 59520u))).x, true, vec2<bool>(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.d.x, u_input.c.x), -35789i) > var_3, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(0u, countOneBits(select(vec3<u32>(4294967295u, var_4.a.d, 54083u) >> (vec3<u32>(0u, 35346u, 1591u) % vec3<u32>(32u)), vec3<u32>(var_4.a.d, var_4.a.d, 1u) & vec3<u32>(91616u, 4294967295u, u_input.a), !vec3<bool>(var_4.c, var_2, true)) | vec3<u32>(firstLeadingBit(86621u), ~41926u, 28663u)), vec3<f32>(_wgslsmith_f_op_f32(-690f - var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_vec2_f32(func_1(var_4.a, Struct_1(false, 1190f, var_4.a.b, 4129u, var_4.b.xy), Struct_2(var_4.a, var_4.b, var_4.c, true, vec2<bool>(var_2, true)))).x)), var_1));
}

