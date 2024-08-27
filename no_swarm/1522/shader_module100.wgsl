struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = -1035f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_1.c, arg_1.b.x))), arg_1.a, !(!(global0.x <= 1i)))), arg_1.b, 111f, false);
    var var_2 = Struct_1(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c))) - _wgslsmith_f_op_f32(995f * _wgslsmith_f_op_f32(abs(-863f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 1572f, var_1.c, var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), var_1.a.x, all(vec2<bool>(false, true))))), arg_0.x);
    var_2 = Struct_1(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-3393f, _wgslsmith_f_op_f32(exp2(var_2.a.x))), var_2.b.x)), _wgslsmith_div_f32(-432f, _wgslsmith_f_op_f32(sign(arg_1.c))), _wgslsmith_f_op_f32(round(var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), var_2.b.x, !(u_input.b.x >= (~0i ^ _wgslsmith_add_i32(u_input.b.x, 4498i))));
    var_2 = arg_1;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.c, var_2.b.x), var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1971f), !(!any(arg_0)))), _wgslsmith_f_op_f32(min(-1394f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(445f - _wgslsmith_f_op_f32(-var_2.b.x))))))));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    let var_0 = vec3<i32>(global0.x, arg_0, max(-2147483647i, -1i));
    global0 = var_0.xz;
    global0 = min(countOneBits(select(~var_0.xz, max(~vec2<i32>(u_input.b.x, u_input.b.x), select(vec2<i32>(1i, global0.x), vec2<i32>(arg_0, u_input.b.x), false)), vec2<bool>(true, true))), ~var_0.zz);
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -410f), -559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), Struct_1(vec3<f32>(1008f, -1000f, 149f), vec4<f32>(-628f, 1000f, 435f, 163f), 1973f, false), u_input.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-416f, 1f, 364f, _wgslsmith_f_op_f32(1000f - -999f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1386f, 1734f, 496f, 1113f)))))), 117f, !(true | any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false))));
    global0 = ~((var_0.zy | _wgslsmith_mult_vec2_i32(~u_input.b.yx, _wgslsmith_mod_vec2_i32(var_0.yx, vec2<i32>(var_0.x, -1i)))) | vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.zy), u_input.b.ww), -(~(-1i))));
    return vec2<i32>(13135i, -4406i);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    global0 = func_2(-2147483647i);
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -251f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, arg_0, arg_0, 137f))))))));
    let var_1 = Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_f_op_f32(270f * var_0.x)), arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -459f)), 1f, -1000f, _wgslsmith_f_op_f32(ceil(-549f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -2059f, 1000f, var_0.x) * vec4<f32>(-209f, arg_0, 404f, -382f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 482f, var_0.x, arg_0), vec4<f32>(-766f, 2144f, 1000f, -821f)), vec4<bool>(true, true, true, true))), vec4<f32>(1515f, 1215f, -1258f, _wgslsmith_f_op_f32(step(992f, var_0.x))))), -459f, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c, -2642f, var_1.b.x), var_0.wwz)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, -266f, _wgslsmith_f_op_f32(step(arg_0, var_0.x))))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(736f + 816f) * _wgslsmith_f_op_f32(min(-1082f, arg_0))) + var_1.b.x)), all(!vec3<bool>(true, false, var_1.d)));
    var var_3 = global0.x;
    return _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(~(-global0.x), 1i));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-644f, -1177f, -982f), vec3<f32>(1190f, -1542f, -421f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1112f, 1135f, 782f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(549f)), -810f), true);
    var_0 = Struct_1(var_0.b.zwy, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c, -1000f, var_0.a.x, var_0.c))), _wgslsmith_f_op_vec4_f32(sign(var_0.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(var_0.b)))), _wgslsmith_f_op_vec4_f32(-var_0.b)))), -726f, any(vec3<bool>(!(-2147483647i <= arg_0), u_input.d.x < arg_1.x, !var_0.d)));
    var var_1 = Struct_1(vec3<f32>(var_0.c, _wgslsmith_div_f32(-3523f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -889f)), _wgslsmith_f_op_f32(round(420f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.c, var_0.a.x)), 985f), 1370f, -197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + var_0.b))), 2197f, var_0.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(var_0.b.zzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-640f, _wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-var_1.c))), -1940f))));
    var var_3 = vec2<bool>(var_1.d, select(true, false, select(!var_1.d, select(false, var_1.d, true) || all(vec2<bool>(var_1.d, false)), var_0.d)));
    return -2266i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(_wgslsmith_mult_vec2_i32(reverseBits(~u_input.b.ww ^ ~vec2<i32>(-2147483647i, global0.x)), -u_input.b.wz));
    global0 = vec2<i32>(-u_input.b.x, ~abs(_wgslsmith_mod_i32(i32(-1i) * -8531i, ~u_input.b.x)));
    global0 = u_input.b.yw;
    var var_0 = 4294967295u;
    var var_1 = 975f;
    var var_2 = vec4<u32>(countOneBits(8166u), u_input.a.x, ((u_input.d.x << ((42146u ^ u_input.d.x) % 32u)) << (select(91910u, ~4294967295u, true) % 32u)) >> (~43873u % 32u), ~(24016u << (u_input.c % 32u)));
    let var_3 = -1065f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, var_3, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, var_3, _wgslsmith_f_op_f32(-var_3), var_3) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, -153f, var_3, -1559f)), vec4<f32>(-1871f, 840f, -647f, -387f)))))), firstLeadingBit(func_4(-func_1(var_3, vec3<u32>(1u, 6104u, u_input.a.x)), u_input.a, ~select(u_input.b, vec4<i32>(u_input.b.x, 0i, 2147483647i, 8887i), vec4<bool>(true, true, true, false)))));
}

