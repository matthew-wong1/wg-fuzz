struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = true;
    let var_1 = select(!select(select(select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(var_0, false, var_0, true), false), !vec4<bool>(true, var_0, false, false), var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(false, false, var_0, true)), var_0), true), select(!select(vec4<bool>(var_0, true, false, false), !vec4<bool>(true, var_0, var_0, var_0), true), !(!vec4<bool>(var_0, var_0, var_0, false)), select(vec4<bool>(var_0 | false, var_0, true | var_0, var_0), vec4<bool>(true, all(vec3<bool>(var_0, true, false)), !var_0, !var_0), !var_0)), vec4<bool>(true, false, false, true));
    var var_2 = -arg_1.x;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(505f, _wgslsmith_f_op_f32(-arg_0.x), false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - 526f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x + 161f)))))), vec2<bool>(var_1.x, var_0), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0)) + vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), arg_0))));
    var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -1318f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(732f - var_3.a.x))), 259f), select(select(!(!vec2<bool>(var_3.b.x, var_0)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(var_0, var_3.b.x), true), false), vec2<bool>(true, var_0), var_1.zz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)));
    return var_1.ywz;
}

fn func_2() -> vec2<bool> {
    let var_0 = -_wgslsmith_clamp_vec2_i32(-(~(-vec2<i32>(-10821i, -2147483647i))), reverseBits(vec2<i32>(min(u_input.a, -9124i), u_input.a)), select(-countOneBits(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-19154i, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)), abs(vec2<i32>(39269i, 0i))), true));
    let var_1 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-154f, -1244f)), _wgslsmith_f_op_f32(floor(-1261f)), _wgslsmith_f_op_f32(f32(-1f) * -349f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, 225f, -930f)))))), var_0);
    let var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_0, abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, -46716i), vec2<i32>(var_0.x, 52453i), firstTrailingBit(vec2<i32>(-1i, var_0.x))))), ~abs(var_0));
    let var_3 = firstTrailingBit((var_0 ^ vec2<i32>(var_2.x, var_2.x)) >> ((select(vec2<u32>(25688u, 4294967295u), vec2<u32>(10162u, 99521u), var_1.x) | _wgslsmith_add_vec2_u32(vec2<u32>(53997u, 1u), vec2<u32>(54807u, 19810u))) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_add_i32(-2147483647i, 59822i)), ~var_2.x << (~0u % 32u)), ~vec2<i32>(-31935i, max(12245i, var_2.x)));
    let var_4 = true;
    return select(vec2<bool>(true, false), var_1.xx, true == all(!(!var_1)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = !vec4<bool>(true, arg_0.x, true, !(select(false, false, false) | arg_0.x));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1341f)), -1053f));
    var var_2 = vec2<u32>(~_wgslsmith_mult_u32(~firstTrailingBit(1u), min(1u, 0u)), 1u);
    var var_3 = ~(~countOneBits(vec3<u32>(~var_2.x, _wgslsmith_sub_u32(4294967295u, var_2.x), 1u)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, var_1, -579f, 526f), vec4<f32>(var_1, -849f, -264f, var_1))) * vec4<f32>(var_1, var_1, var_1, var_1)))), vec2<bool>(arg_0.x, all(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(852f, 2111f, -1207f)), min(vec2<i32>(1i, arg_1), vec2<i32>(2147483647i, -1i))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) - vec3<f32>(-115f, 688f, -1279f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 284f, var_1)))) - vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(var_1, 593f))), _wgslsmith_f_op_f32(var_1 + -1447f), -1450f)));
    return Struct_1(var_4.a, !vec2<bool>(true && !var_4.b.x, !arg_0.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(var_4.c.x * -293f), _wgslsmith_div_f32(-986f, -452f))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = func_4(select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), any(select(func_2(), vec2<bool>(true, false), false))), ~(~u_input.a));
    return func_4(func_4(!vec2<bool>(!var_0.b.x, false), arg_0.x).b, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1889f * -744f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1046f, 1f)))), -1071f);
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, 176f, 717f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1394f, var_0.x, 1258f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 191f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, 893f, 589f, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(349f, var_0.x, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 788f, var_0.x) * vec4<f32>(1430f, var_0.x, var_0.x, -124f))))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(max(1677f, var_0.x))) != var_0.x, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1472f - 771f)), var_0.x, 166f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 331f, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 521f), -365f, -207f))));
    let var_2 = func_1(~(abs(max(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(10129i, u_input.a, u_input.a))) ^ ((vec3<i32>(0i, u_input.a, 1i) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)) & vec3<i32>(u_input.a, 5705i, -10991i))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, -563f, var_1.c.x, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_2.c.x, _wgslsmith_f_op_f32(2135f - var_2.c.x), var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.c.x, var_2.c.x, -1000f, var_0.x), var_2.a)), var_1.a)))), vec2<bool>(-1000f < _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_1.c.x - var_2.a.x)), all(!vec2<bool>(false, var_2.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-func_1(vec3<i32>(1i, u_input.a, u_input.a)).c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.c, var_1.c))), !select(vec3<bool>(var_2.b.x, var_1.b.x, var_2.b.x), vec3<bool>(var_1.b.x, var_2.b.x, true), false))), _wgslsmith_f_op_vec3_f32(-var_1.c)));
    var_1 = var_2;
    let var_3 = var_1.a.x;
    let var_4 = Struct_1(var_2.a, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c - _wgslsmith_f_op_vec3_f32(var_2.a.xzy + vec3<f32>(-189f, var_0.x, 967f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.a.wyy)))), ~vec2<i32>(~1i, -6445i)).yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, 353f), var_2.a.x, _wgslsmith_f_op_f32(-299f - var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a >> (~4294967295u % 32u));
}

