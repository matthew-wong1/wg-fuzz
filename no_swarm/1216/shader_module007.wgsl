struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1423f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = countOneBits(countOneBits(~abs(vec3<u32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = arg_1.a.x;
    global0 = var_1;
    let var_2 = _wgslsmith_f_op_f32(-arg_1.a.x);
    let var_3 = arg_0;
    return true;
}

fn func_2() -> f32 {
    global0 = -930f;
    global0 = -735f;
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(max(-770f, 1357f))), _wgslsmith_f_op_f32(-1160f - 1165f), -115f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-188f, -978f, 225f)))))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), true), true))), select(!vec4<bool>(func_3(Struct_1(vec3<f32>(-129f, -195f, -1260f), vec4<bool>(true, false, false, true), vec2<i32>(-66129i, -6952i)), Struct_1(vec3<f32>(214f, -1480f, 980f), vec4<bool>(true, true, false, true), vec2<i32>(-1i, 20601i))), true, true, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(false, false, true, false)), false, false), vec4<bool>(true, true, true, true)), true), vec2<i32>(_wgslsmith_clamp_i32(0i, reverseBits(86283i), ~_wgslsmith_add_i32(2147483647i, -22897i)), 1i >> (u_input.a % 32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(987f - 1252f) - _wgslsmith_f_op_f32(f32(-1f) * -1029f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a.x)), -411f, all(vec2<bool>(false, var_0.b.x))))), _wgslsmith_f_op_f32(-var_0.a.x)));
    var var_1 = u_input.a;
    return -1059f;
}

fn func_1(arg_0: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1374f, 810f, false)))), var_0.x), vec4<bool>(true, any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), true, !func_3(Struct_1(vec3<f32>(749f, var_0.x, var_0.x), vec4<bool>(true, false, false, false), vec2<i32>(-90157i, -6448i)), Struct_1(vec3<f32>(var_0.x, 1416f, var_0.x), vec4<bool>(true, true, false, true), vec2<i32>(1i, 35788i)))), firstLeadingBit(-max(_wgslsmith_clamp_vec2_i32(vec2<i32>(21983i, -23788i), vec2<i32>(-19332i, 2147483647i), vec2<i32>(-2147483647i, 2144i)), ~vec2<i32>(2147483647i, 2147483647i))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_1.a, vec3<f32>(-129f, var_1.a.x, -616f), var_1.b.yyy))))), vec4<bool>(false, var_1.b.x, true, !(!var_1.b.x)), var_1.c);
    var_2 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(802f, 280f, -278f), _wgslsmith_f_op_vec3_f32(vec3<f32>(154f, var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), 219f, _wgslsmith_f_op_f32(max(var_1.a.x, var_2.a.x))))), select(vec4<bool>(var_2.b.x, false, true, any(select(var_1.b, var_2.b, var_2.b))), select(select(!var_1.b, var_2.b, !var_2.b), !(!var_2.b), vec4<bool>(true, false, var_2.b.x, true)), any(vec2<bool>(!var_1.b.x, var_1.b.x))), var_2.c);
    var var_3 = var_2.b.x;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-398f, -2024f, -1000f), var_2.a, var_1.b.wzw))))))), _wgslsmith_f_op_vec3_f32(-var_2.a), var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-31867i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(~4294967295u)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-351f, -2168f, -1058f))) * vec3<f32>(-582f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1164f + -1361f) - -1029f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1463f + -919f)))), select(vec4<bool>(true, true, all(vec3<bool>(true, true, true)) | true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), 1u <= abs(u_input.a)), vec2<i32>(-_wgslsmith_add_i32(1i, 1i), _wgslsmith_add_i32(-min(3088i, 15936i), max(countOneBits(18877i), max(22262i, 17701i)))));
    var var_2 = !all(!select(!var_1.b, var_1.b, true));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(var_1.a * var_1.a)), select(select(var_1.b, select(select(var_1.b, vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x), var_1.b), !var_1.b, true), true), !(!select(vec4<bool>(false, false, true, var_1.b.x), vec4<bool>(var_1.b.x, true, false, false), var_1.b.x)), true), -(select(-vec2<i32>(var_1.c.x, -2147483647i), firstTrailingBit(var_1.c), true) | (vec2<i32>(-1i) * -var_1.c)));
    var var_4 = _wgslsmith_f_op_f32(-var_3.a.x);
    var var_5 = !var_1.b.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-403f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(5470u, _wgslsmith_add_u32(u_input.a, firstTrailingBit(u_input.a) & 4294967295u), ~(~max(4294967295u, 14711u))), countOneBits(abs(_wgslsmith_sub_i32(var_1.c.x, -26734i))), -28553i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.xy) * vec2<f32>(var_1.a.x, -491f)))), _wgslsmith_sub_i32(1i, select(-8588i, 2147483647i >> (~u_input.a % 32u), false && !var_1.b.x)));
}

