struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    var var_0 = !(!(!any(vec3<bool>(false, true, true))) != any(vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)), true, arg_0.a.x <= 236f)));
    var var_1 = vec3<f32>(879f, -395f, _wgslsmith_f_op_f32(ceil(-1110f)));
    var_1 = _wgslsmith_f_op_vec3_f32(arg_0.a.zzx + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.a.xyy))))))));
    var var_2 = arg_1;
    var var_3 = all(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)) | false, false));
    return _wgslsmith_f_op_f32(floor(-1608f));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u << (u_input.a % 32u), min(~4294967295u, 1u), _wgslsmith_dot_vec2_u32(min(vec2<u32>(37109u, u_input.a), ~vec2<u32>(46742u, 8884u)), ~vec2<u32>(u_input.a, 1298u)), 56430u), vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), ~35661u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(37158u, u_input.a) ^ vec2<u32>(13474u, 1u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(18972u, u_input.a)), ~(~(~50109u)), 94401u));
    let var_1 = ~(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b) >> (vec3<u32>(u_input.a, 9832u, 1u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<i32>(u_input.b, 23700i, 2840i)))));
    let var_2 = -_wgslsmith_sub_vec2_i32(~(-vec2<i32>(var_1.x, -2147483647i)), vec2<i32>(-24197i, firstLeadingBit(var_1.x)));
    var var_3 = arg_0;
    var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1503f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(989f + _wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(469f, 751f, 1000f, 612f)), Struct_1(arg_0.a), firstLeadingBit(vec4<u32>(3519u, 46799u, u_input.a, 0u)))) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(1313f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_3.a.x, -1126f, 2326f)))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, var_3.a.x, 586f, 1205f) * _wgslsmith_f_op_vec4_f32(select(var_3.a, var_3.a, vec4<bool>(true, false, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), 469f, var_3.a.x, _wgslsmith_f_op_f32(var_3.a.x * var_3.a.x))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(!any(vec2<bool>(true, true)), true);
    var_0 = select(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, var_0.x), var_0.x), !select(!(!vec2<bool>(false, var_0.x)), vec2<bool>(false, u_input.a != 1u), select(select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false)), vec2<bool>(var_0.x, true), !var_0.x)), select(select(!(!vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, false), !vec2<bool>(true, var_0.x), var_0.x), var_0.x), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, var_0.x)), any(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)) | var_0.x));
    var var_1 = vec3<i32>(arg_0.x, 1i, _wgslsmith_clamp_i32(firstTrailingBit(min(arg_0.x, -arg_0.x)), 34227i, arg_0.x));
    var var_2 = arg_1.x;
    var var_3 = ~u_input.a;
    return Struct_1(arg_2.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = func_4(-abs(min(arg_0.yz | arg_0.zy, arg_0.ww)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 385f, arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f) + 1622f)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<f32>(-2663f, 429f, 1644f, 1149f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-1000f, 129f, -1000f, -512f)), all(arg_1.zx)))));
    var var_1 = arg_1;
    var_1 = !vec4<bool>(!arg_1.x, true, true, all(vec3<bool>(true, true, true)));
    let var_2 = var_0;
    var_1 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(arg_0.a)), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x), -135f), true))))).zy;
    var_0 = _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(-35457i ^ _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, u_input.c), _wgslsmith_add_i32(2147483647i, -21169i)), u_input.b | u_input.c, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, u_input.c), vec4<i32>(u_input.b, -29930i, -47407i, -1i)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, -5784i, 1i, 1i)), u_input.c), !vec4<bool>(!any(vec3<bool>(false, true, true)), arg_0.a.x <= _wgslsmith_f_op_f32(f32(-1f) * -361f), !(72948u > arg_2.x), all(vec2<bool>(true, true))))).yz;
    let var_1 = vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.b);
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(arg_1)).x)), _wgslsmith_f_op_f32(-func_4(vec2<i32>(var_1.x, -16407i), vec2<f32>(691f, 1612f), arg_1).a.x)), var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, -435f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_1(select(var_1, var_1, vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)))).xz - vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-289f - arg_1.a.x)))));
    return func_4(var_1.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-479f, var_0.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.wx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-718f, 805f))))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(2463f, 142f, -963f, -1650f), vec4<f32>(-341f, 1248f, 1157f, 798f)), _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(1i, 36129i, u_input.b, u_input.c) ^ vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), vec4<bool>(false, true, true, true)))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(838f - -929f), -338f, -805f, 566f)))), ~vec4<u32>(~4294967295u, u_input.a, u_input.a, 4294967295u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, 724f, var_0.a.x, var_0.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c, 0i), ~(i32(-1i) * -27721i)) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, 1u), ~1u) % 32u), -max(-20296i, _wgslsmith_sub_i32(-u_input.c, -1i << (u_input.a % 32u))), 1891f);
}

