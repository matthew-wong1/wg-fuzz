struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = select(arg_1.d.x, select(false, all(select(arg_1.d.zy, arg_1.d.yz, vec2<bool>(arg_1.e, false))) || true, ~(~arg_0) <= ((arg_0 ^ arg_0) ^ abs(1u))), true);
    var var_1 = _wgslsmith_sub_i32(~(i32(-1i) * -10997i), arg_1.a);
    var_1 = countOneBits(2705i);
    var_1 = arg_1.b.x;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c)))))));
    return 1i;
}

fn func_2() -> vec4<u32> {
    var var_0 = ~func_3(~54808u, Struct_1(0i, vec2<i32>(0i, 11972i), _wgslsmith_f_op_f32(-532f - 1167f), vec3<bool>(false, true, false), false), max(-27i, 1i)) | _wgslsmith_mult_i32(select(0i, 1i, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false))), -(~(-50145i << (u_input.a.x % 32u))));
    let var_1 = Struct_1(countOneBits(0i), vec2<i32>(-2147483647i, -_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -37433i, 1i, -28951i), vec4<i32>(-28959i, 18407i, 19417i, 2147483647i)), 8047i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-987f - -1987f))), vec3<bool>(!(!all(vec3<bool>(true, false, true))), true, true), true);
    let var_2 = _wgslsmith_f_op_f32(-1319f + _wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-919f))), !all(var_1.d.yz))));
    var var_3 = u_input.a.x;
    var_3 = 1u;
    return min(select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u) & vec4<u32>(29592u, 1u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), ~vec4<u32>(16497u, 0u, 21222u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x << (21004u % 32u), ~28162u, u_input.a.x), var_1.e), ~vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(4294967295u, ~u_input.a.x), u_input.a.x, u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(690f))), -1261f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) * _wgslsmith_div_f32(1000f, arg_1)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.c)))))));
    let var_1 = 71923u;
    var var_2 = Struct_1(arg_2.x, -select(arg_0.b, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 3112i) ^ arg_2.yx, firstTrailingBit(vec2<i32>(24802i, arg_2.x))), arg_0.e), _wgslsmith_f_op_f32(f32(-1f) * -863f), arg_0.d, true);
    var_0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1989f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(min(243f, arg_0.c)), var_2.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(453f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(798f, _wgslsmith_f_op_f32(-var_2.c)))));
    var var_3 = firstLeadingBit(vec4<i32>(arg_0.b.x, -(arg_0.b.x | _wgslsmith_mult_i32(arg_0.a, 0i)), firstLeadingBit(abs(_wgslsmith_add_i32(1i, 0i))), _wgslsmith_mod_i32(48972i & var_2.b.x, i32(-1i) * -var_2.b.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.c, -175f, 205f, -1000f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = vec2<bool>((-40392i == _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1546i), -vec2<i32>(arg_0.a, -2147483647i))) || !all(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_1)), arg_0.d.x);
    let var_1 = ~countOneBits(2811i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, 1000f, -448f, _wgslsmith_f_op_f32(509f * arg_0.c)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-132f, 1270f, arg_0.c, arg_0.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, 325f, 1000f) * vec4<f32>(arg_0.c, -293f, 1000f, arg_0.c)))))) * _wgslsmith_f_op_vec4_f32(func_4(arg_0, -1653f, -vec4<i32>(var_1, var_1, var_1, -28298i) << (countOneBits(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32839u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 24202u))) % vec4<u32>(32u)), func_2())));
    var var_3 = all(!vec3<bool>(all(vec4<bool>(var_0.x, true, true, arg_1)), arg_1, arg_0.e));
    var var_4 = _wgslsmith_div_vec4_u32(countOneBits(~(vec4<u32>(71325u, 29088u, u_input.a.x, 10841u) & vec4<u32>(u_input.a.x, 79542u, u_input.a.x, 7330u))), ~(vec4<u32>(2318u, _wgslsmith_mod_u32(33870u, u_input.a.x), u_input.a.x | 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(0u, 4294967295u))) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 24338u, 4294967295u, u_input.a.x))));
    return func_3(~max(4294967295u, ~func_2().x), arg_0, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-_wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_div_i32(19877i, -65214i)), -1i), ~firstLeadingBit(vec2<i32>(1i, i32(-1i) * -54533i)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1266f * 1951f), 1188f))), select(vec3<bool>(true, true, !all(vec2<bool>(false, false))), select(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true), vec3<bool>(true, all(vec2<bool>(false, true)), true), false), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true)), any(vec3<bool>(true, false, false)));
    var var_1 = vec3<u32>(abs(0u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(94225u, 46601u, u_input.a.x, u_input.a.x), vec4<u32>(82464u, 0u, 27220u, u_input.a.x), false), vec4<u32>(416u, 4294967295u, u_input.a.x, 0u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) << (8955u % 32u), u_input.a.x);
    var var_2 = 2147483647i;
    var_1 = ~_wgslsmith_sub_vec3_u32(~(u_input.a ^ (vec3<u32>(4294967295u, var_1.x, 4294967295u) ^ u_input.a)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(27434u, u_input.a.x, 4294967295u), vec3<u32>(var_1.x, var_1.x, 0u), u_input.a)));
    let var_3 = var_0;
    var var_4 = true;
    var var_5 = max(countOneBits(vec3<i32>(var_0.b.x, 2147483647i, 19508i)) | vec3<i32>(~var_3.a, var_3.b.x, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(6812i, 1i), var_3.b), 2715i), vec3<i32>(-28795i, ~(-23119i), 1i))) | firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_3.a, var_3.a, var_3.a)), vec3<i32>(var_0.a, var_0.a, var_3.b.x)), var_0.a, countOneBits(func_1(Struct_1(var_3.b.x, vec2<i32>(0i, var_3.a), -104f, vec3<bool>(false, false, var_0.e), var_0.d.x), true))));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c - -455f) + -870f)))) * _wgslsmith_f_op_f32(-914f - 1645f));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.x, 7116u), _wgslsmith_clamp_u32(var_1.x, var_1.x, select(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(0u, 4294967295u, var_1.x), vec3<u32>(12629u, u_input.a.x, u_input.a.x)), ~u_input.a), var_0.d.x)));
}

