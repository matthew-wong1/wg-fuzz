struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = vec3<bool>(true, 27173i >= _wgslsmith_dot_vec2_i32(u_input.e.xw, u_input.d.xy), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) * _wgslsmith_f_op_f32(arg_0.x - -1359f)) * 1146f);
    var var_2 = var_1;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_1)), arg_0.x)), arg_0.x), any(vec3<bool>(-2147483647i >= u_input.d.x, all(var_0), true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_3 = _wgslsmith_f_op_f32(max(-1348f, 391f));
    return !(!(!(!var_0.yx)));
}

fn func_2(arg_0: i32) -> bool {
    return all(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, 429f, -731f) + vec3<f32>(837f, -513f, 572f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(242f, 418f, -661f))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(u_input.d.www);
    var var_1 = -abs(select(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, var_0.a.x, -22467i), vec4<i32>(2147483647i, u_input.d.x, 1i, -1i), u_input.e), vec4<i32>(var_0.a.x, u_input.d.x, u_input.d.x, -31091i), vec4<bool>(false, true, true, false)), max(vec4<i32>(u_input.e.x, var_0.a.x, u_input.d.x, -10844i), u_input.d), countOneBits(4042u) == (u_input.b ^ 34800u)));
    var var_2 = any(vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true)), all(vec3<bool>(true, true, true)), true, !func_2(var_0.a.x)));
    var_0 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(9722i, var_0.a.x, -9757i) << (vec3<u32>(1u, 6109u, u_input.b) % vec3<u32>(32u)), u_input.d.zyz), reverseBits(firstLeadingBit(vec3<i32>(43171i, var_0.a.x, u_input.a)))), reverseBits(vec3<i32>(u_input.a >> (1405u % 32u), _wgslsmith_mult_i32(-2147483647i, -1i), -31997i))));
    var var_3 = ~firstLeadingBit(~firstTrailingBit(vec3<u32>(u_input.b, u_input.c.x, u_input.b)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1472f, -952f, -429f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(422f, -1341f, -356f) - vec3<f32>(-1000f, 929f, -254f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-100f, -765f, -740f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1613f, -649f, 255f))))), vec4<bool>(func_2(33474i), true, _wgslsmith_dot_vec2_i32(select(var_1.wx, var_0.a.yx, vec2<bool>(false, true)), ~vec2<i32>(-31959i, -54625i)) >= -var_1.x, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-899f, -970f, 699f) * vec3<f32>(-541f, -1000f, 158f))).x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true), vec3<bool>(true && func_3(vec3<f32>(408f, 752f, -666f)).x, !any(vec4<bool>(false, false, false, false)), !func_3(vec3<f32>(150f, -1009f, -426f)).x)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(675f, 1832f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, 129f) + arg_0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(114f, arg_0.a.x) + _wgslsmith_f_op_f32(step(1000f, arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(round(-1454f))))), !arg_0.b, arg_0.b.wxx);
    var_0 = arg_0;
    var var_1 = Struct_3(func_1(-u_input.e.xwy), vec3<i32>(u_input.a ^ _wgslsmith_dot_vec3_i32(-u_input.d.zzx, _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 51920i, -1i), u_input.d.yyz, u_input.d.wxx)), 41507i, firstTrailingBit(-326i)));
    var var_2 = Struct_3(func_1(-vec3<i32>(-18788i, ~var_1.b.x, -55755i)), firstTrailingBit(_wgslsmith_sub_vec3_i32(-var_1.b, abs(var_1.b))) | ~(-abs(vec3<i32>(u_input.e.x, 0i, u_input.d.x))));
    var_0 = func_1(u_input.e.wyy);
    return Struct_3(var_1.a, vec3<i32>(abs(_wgslsmith_mod_i32(i32(-1i) * -26821i, u_input.a | var_1.b.x)), var_1.b.x, var_1.b.x ^ _wgslsmith_clamp_i32(var_2.b.x, 15832i, ~57730i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_div_vec3_i32(vec3<i32>(abs(-8912i), ~u_input.e.x, firstLeadingBit(5905i)), u_input.d.yxw)));
    var var_1 = func_3(var_0.a.a);
    let var_2 = func_1(var_0.b).c.x;
    var_1 = !(!var_0.a.c.yy);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(func_4(var_0.a).a.a.yx)));
    var_3 = vec2<f32>(-2650f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-292f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1556f)) * var_0.a.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, 0i);
}

