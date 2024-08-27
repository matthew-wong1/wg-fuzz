struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<f32> {
    var var_0 = reverseBits(min(u_input.a, ~(~vec4<i32>(u_input.b, 2147483647i, u_input.a.x, -22455i))));
    var var_1 = vec2<bool>(true, true);
    let var_2 = countOneBits(vec4<u32>(~firstTrailingBit(4294967295u), ~(~32903u), 1u, _wgslsmith_add_u32(~88572u, 2299u)) << (~(~vec4<u32>(0u, 25610u, 79993u, 23006u)) % vec4<u32>(32u)));
    var_1 = select(!(!vec2<bool>(true, u_input.a.x >= var_0.x)), !select(vec2<bool>(any(vec2<bool>(false, var_1.x)), !var_1.x), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), false), vec2<bool>(true, true), !vec2<bool>(var_1.x, var_1.x)), !select(vec2<bool>(false, true), vec2<bool>(false, true), var_1.x)), vec2<bool>(!(!var_1.x || false), var_1.x));
    var var_3 = Struct_2(!vec3<bool>(false, any(!vec2<bool>(true, var_1.x)), true));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-360f, -103f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-276f, 2039f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(302f, 1000f), vec2<f32>(1898f, 123f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-699f, 536f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, 1249f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1812f, 1101f), vec2<f32>(1000f, 697f))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -105f) * _wgslsmith_f_op_f32(f32(-1f) * -2600f)), Struct_1(any(vec3<bool>(false, false, true)) & any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))), vec3<bool>(true, any(vec2<bool>(true, true)), false)), 196f, 274f);
    var_0 = Struct_3(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-588f * -909f), _wgslsmith_div_f32(940f, var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - 913f)))), var_0.b, _wgslsmith_f_op_f32(1000f * 1543f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-531f + arg_0.x) + -1098f) * -1103f)));
    var var_1 = min(~(-vec4<i32>(2587i, 2147483647i & u_input.a.x, u_input.a.x, ~u_input.a.x)), vec4<i32>(abs(-49116i), (-15132i & u_input.a.x) | max(abs(u_input.b), -2974i), abs(~u_input.b), _wgslsmith_mult_i32(firstLeadingBit(-32941i), ~u_input.b)));
    var_1 = select(select(select(u_input.a, vec4<i32>(38762i, max(2147483647i, -1i), abs(var_1.x), ~var_1.x), false), select(u_input.a, abs(vec4<i32>(u_input.a.x, var_1.x, 0i, u_input.b)), select(vec4<bool>(var_0.b.a, true, true, var_0.b.c.x), vec4<bool>(true, var_0.b.a, var_0.b.c.x, var_0.b.a), !var_0.b.c.x)), all(select(select(vec2<bool>(false, var_0.b.c.x), vec2<bool>(true, false), var_0.b.c.x), select(vec2<bool>(true, var_0.b.a), vec2<bool>(var_0.b.c.x, false), true), !var_0.b.a))), u_input.a, true);
    let var_2 = var_0.b;
    return vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(-835f)));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-341f, -1378f))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, 2341f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, 353f, -889f)), vec4<u32>(1u, 1u, 1u, 1u))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(545f, 1708f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-828f, -145f)))))))), any(vec2<bool>(false, true))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -827f)), var_0.x);
    var var_1 = vec2<f32>(-300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_0.x, var_1.x), vec3<f32>(1694f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 1388f, 364f), vec3<f32>(-453f, 324f, var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(305f, var_0.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1075f, -445f, -1130f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 938f, var_1.x), vec3<f32>(159f, 170f, var_1.x)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1000f, var_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-994f, 422f, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_0.x, 1000f), vec3<f32>(-1000f, 1391f, 962f))))));
    return !vec2<bool>(arg_1, select(all(!vec3<bool>(false, arg_1, false)), _wgslsmith_div_f32(-1257f, var_1.x) >= _wgslsmith_f_op_f32(min(-960f, var_2.x)), !any(vec2<bool>(true, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_1(countOneBits(u_input.a.x), all(vec2<bool>(true, true))), vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), any(vec4<bool>(false, false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(2481u, ~_wgslsmith_dot_vec3_u32(max(firstLeadingBit(vec3<u32>(4294967295u, 85958u, 1u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 15933u, _wgslsmith_div_u32(4294967295u, 2971u))), ~_wgslsmith_div_vec2_u32(~select(vec2<u32>(13698u, 24445u), vec2<u32>(1u, 4294967295u), true), vec2<u32>(~4294967295u, ~23964u)), -739f);
}

