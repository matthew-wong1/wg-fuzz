struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!all(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.b.x) * arg_0.a) - _wgslsmith_div_vec2_f32(arg_0.a, arg_0.b.zz))))), _wgslsmith_f_op_vec3_f32(arg_0.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(-507f, -2133f, -368f)), vec3<f32>(arg_0.b.x, -230f, 665f)) - arg_0.b)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b.yz, var_1.a)), var_1.b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(true && any(vec4<bool>(false, false, false, true)), any(vec4<bool>(false, false, false, false)), true), true), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), true);
    let var_1 = Struct_1(vec2<f32>(2190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(arg_0.b, _wgslsmith_f_op_vec3_f32(round(arg_0.b)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b) * vec3<f32>(1109f, 338f, 1578f)) * arg_2.b)));
    var var_2 = vec3<f32>(arg_2.b.x, 551f, -1000f);
    var var_3 = Struct_1(arg_0.a, vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_2.x))))))));
    let var_4 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(~u_input.a ^ _wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), -1i >> (select(countOneBits(11001u), 70563u, false) % 32u)));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_div_u32(~(~1u), 4294967295u), abs(_wgslsmith_add_u32(55322u, 0u))), vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 8479u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(19015u, 5073u), ~vec2<u32>(75670u, 1u))), 7737u, 1u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = ~func_3(func_1(func_1(arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1621f)) - _wgslsmith_f_op_f32(-arg_0.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a, vec2<f32>(276f, -1000f)) + arg_3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, arg_3.a.x, 1128f) + arg_3.b))));
    var var_1 = arg_0;
    var_1 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(921f, _wgslsmith_f_op_f32(-342f + var_1.a.x)) - _wgslsmith_f_op_vec2_f32(max(var_1.b.yz, _wgslsmith_f_op_vec2_f32(-arg_0.a)))), _wgslsmith_div_vec3_f32(arg_3.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.b.x, -993f, 1376f), vec3<f32>(161f, -1965f, arg_1)), vec3<bool>(true, true, true))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1868f - 468f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x - arg_1) - _wgslsmith_f_op_f32(round(var_1.a.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.b.x)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(arg_1, 682f, -254f), false)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.b.x, 791f, arg_1))))))));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(1348f)), 935f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1590f, arg_1, arg_0.a.x)), vec3<f32>(arg_0.a.x, arg_3.b.x, -693f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1244f, 373f, 1185f) + _wgslsmith_f_op_vec3_f32(max(arg_0.b, var_2.b))))));
    return vec3<f32>(_wgslsmith_f_op_f32(floor(320f)), _wgslsmith_f_op_f32(-2113f - _wgslsmith_f_op_f32(512f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b.x))))), 1430f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1836f, -1000f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2109f, 247f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-804f, 129f)), vec2<f32>(324f, -267f)))), vec3<f32>(719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f + 411f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-795f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -2132f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -930f))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(func_2(func_1(Struct_1(vec2<f32>(1756f, 1939f), var_0.b)), 456f, Struct_1(vec2<f32>(619f, _wgslsmith_f_op_f32(f32(-1f) * -661f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-595f, var_0.a.x, var_0.b.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.xy - var_0.a)), var_0.b))));
    var var_2 = (reverseBits(_wgslsmith_div_u32(1u, firstTrailingBit(1763u))) < 33529u) && select(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), !(-u_input.a > _wgslsmith_mod_i32(-2147483647i, u_input.a)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(func_1(Struct_1(var_1.b.zx, vec3<f32>(-554f, var_0.a.x, 369f))).a, vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-124f + var_1.a.x)), true)), var_0.b.xz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_1.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1573f, var_0.a.x, var_1.a.x), var_1.b, vec3<bool>(true, false, true))), true)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.x, var_0.a.x, -131f)))))));
    var var_3 = select(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(54111u, 1486u, 75351u, 1u), vec4<u32>(1176u, 23270u, 77107u, 17184u))), abs(vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(true, 1020f == _wgslsmith_f_op_f32(-var_1.b.x), !(-1i >= u_input.a), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))) & true));
    let var_4 = vec3<bool>(true, -_wgslsmith_dot_vec2_i32(vec2<i32>(-14253i, 0i), vec2<i32>(-2147483647i, 0i)) == ~(~2147483647i), false);
    let var_5 = var_0.a;
    var var_6 = 1u;
    var var_7 = countOneBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(234f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -498f)))))));
}

