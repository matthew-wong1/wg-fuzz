struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(-698f, ~reverseBits(-u_input.d.x), _wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(u_input.a.x, 0u)), u_input.a.x, ~1u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2596f, -1046f) - vec2<f32>(-705f, 1741f)), vec2<f32>(1506f, -1774f)))))), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_sub_u32(var_0.c, 26340u);
    let var_2 = !(!vec4<bool>(_wgslsmith_add_i32(u_input.d.x, -17278i) <= u_input.d.x, ~1u < (u_input.a.x & var_1), false, select(var_0.e.x, false, 0i >= var_0.b)));
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(204f, -990f, var_0.d.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, -448f, 2666f) - vec3<f32>(-452f, 1126f, 1256f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(626f, var_0.d.x, var_0.a) * vec3<f32>(var_0.a, var_0.a, var_0.d.x))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(643f, -91387i << (u_input.c.x % 32u), ~max(countOneBits(49698u), 33968u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-361f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -744f) + _wgslsmith_f_op_f32(280f + arg_0))) - vec2<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -229f))), select(vec3<bool>(false, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), all(vec3<bool>(true, true, true))), false));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1157f)), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-868f + -1312f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1720f, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-814f, var_0.d.x, var_0.a) * vec3<f32>(arg_0, -362f, arg_0)), var_0.e)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, var_1.x));
    var var_3 = u_input.d.wy;
    let var_4 = vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x);
    return Struct_1(-1000f, 5081i, var_0.c, vec2<f32>(-337f, var_1.x), vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_3()))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(2110f)), _wgslsmith_f_op_f32(f32(-1f) * -2861f))), !any(!vec2<bool>(true, var_0.e.x)), var_0.e.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(max(-1000f, -940f)));
    var var_1 = func_2(_wgslsmith_div_f32(192f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1591f)).a - 727f)));
    var var_2 = !vec3<bool>(true, var_0.e.x && false, _wgslsmith_mod_u32(arg_1, ~var_0.c) > 0u);
    var var_3 = 659f;
    return func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - 1348f), _wgslsmith_f_op_f32(-var_0.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_1.d;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1100f), func_2(-645f).a), _wgslsmith_mult_i32(13838i, ~_wgslsmith_add_i32(-u_input.d.x, ~(-2147483647i))), arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 138f)))), !(!arg_1.e));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-543f, 1500f, 440f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1123f, var_0.x, -404f) - vec3<f32>(arg_1.d.x, arg_1.d.x, 193f))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f + -2313f) + var_2.x))), func_1(~((var_1.c & 1u) << (u_input.c.x % 32u)), var_1.c, select(vec2<bool>(true, true), vec2<bool>(u_input.d.x < u_input.d.x, arg_0.x), var_1.e.xx)).b, var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d)), var_1.e);
    var var_3 = vec2<u32>(~func_1(abs(~4294967295u), var_1.c, select(!vec2<bool>(true, arg_0.x), !vec2<bool>(true, arg_0.x), select(var_1.e.yz, var_1.e.zz, arg_1.e.x))).c, arg_1.c);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-383f, 181f), _wgslsmith_f_op_f32(1183f - var_2.x), _wgslsmith_f_op_f32(trunc(106f)), var_1.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x >= reverseBits(~(~max(u_input.b.x, u_input.b.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(var_0, var_0), func_1(~4294967295u, 36613u ^ u_input.b.x, vec2<bool>(var_0, var_0))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(step(1018f, 749f))), -2159f, -993f, -529f))));
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

