struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: u32) -> vec2<i32> {
    let var_0 = vec2<i32>(-min(~1i, 1i), reverseBits(-77370i));
    var var_1 = (true && any(!(!vec4<bool>(arg_0.x, true, true, arg_0.x)))) || false;
    let var_2 = select(!(!arg_0), !select(arg_0, select(!arg_0, arg_0, !arg_0.x), arg_0), vec2<bool>(all(select(select(vec2<bool>(true, true), arg_0, vec2<bool>(true, false)), !vec2<bool>(false, arg_0.x), true)), all(!(!vec2<bool>(false, arg_0.x)))));
    return var_0;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    var var_0 = vec2<i32>(u_input.a >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(min(vec4<u32>(1u, 1u, 61002u, 56578u), vec4<u32>(1u, 0u, 1u, 23368u))), ~vec4<u32>(1u, 1u, 1u, 1u)) % 32u), u_input.a);
    var_0 = _wgslsmith_add_vec2_i32(arg_1.yz, func_3(vec2<bool>(true, true), _wgslsmith_mult_vec3_u32(vec3<u32>(67487u, 0u, 18100u), select(vec3<u32>(69484u, 1u, 17012u), vec3<u32>(1227u, 35648u, 0u), vec3<bool>(false, true, true))), ~(~68191u))) << (vec2<u32>(countOneBits(_wgslsmith_mult_u32(~47059u, 0u)), 4294967295u) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-399f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + 153f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1045f)), true))))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    var var_0 = (~vec3<u32>(~arg_2.a, arg_0, arg_2.a) >> (vec3<u32>(firstTrailingBit(1u), ~_wgslsmith_mod_u32(33732u, arg_2.a), arg_2.a) % vec3<u32>(32u))) ^ ~(~vec3<u32>(_wgslsmith_mod_u32(arg_2.a, 4165u), 4294967295u, ~4294967295u));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_2.c.a.x) + 1225f), 775f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_2.c.a.x * -1119f))))) * arg_2.c.a);
    let var_2 = all(vec3<bool>(false, select(all(vec4<bool>(true, true, false, true)), true, false), 2147483647i >= -u_input.a)) | all(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), true));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), var_1.x), arg_2.d, arg_2.c.a.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(func_2(u_input.a, abs(vec3<i32>(-2147483647i, u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-var_1.xx), arg_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f * arg_2.c.a.x) - var_1.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-241f - arg_2.c.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1306f) - _wgslsmith_f_op_f32(ceil(var_1.x)))));
    return Struct_4(0u & arg_2.a, arg_1, arg_2.c, var_1.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(max(u_input.a, i32(-1i) * -9225i), arg_2.x, -(~_wgslsmith_sub_i32(-1i, arg_2.x)), u_input.a), countOneBits(abs(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 68921i, arg_2.x, u_input.a), vec4<i32>(-2147483647i, arg_2.x, 64866i, u_input.a)), firstLeadingBit(vec4<i32>(arg_2.x, -1i, -2147483647i, arg_2.x))))));
    var_0 = arg_1;
    var_0 = Struct_4(_wgslsmith_sub_u32(abs(1u), abs(func_4(firstLeadingBit(6380u), -171f, arg_1).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1746f * _wgslsmith_f_op_f32(-1f))), func_4(~arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.c.a.x)))))), arg_1).c, -644f);
    return func_4(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(155f, 675f), _wgslsmith_f_op_f32(min(arg_1.d, var_0.d)), true))) * arg_1.b), Struct_4(2607u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))) - -589f), func_4(~(~86143u), -1298f, arg_1).c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a.x))), arg_1.c.a.x)))).c;
}

fn func_1() -> vec3<f32> {
    let var_0 = max(reverseBits(vec2<u32>(~(~40115u), 1u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(26032u, 1u, 85132u, 4294967295u)), ~(~56485u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_f32(select(369f, _wgslsmith_f_op_f32(ceil(-524f)), ~var_0.x <= (var_0.x >> (1u % 32u)))))));
    var var_2 = Struct_2(-u_input.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)), _wgslsmith_f_op_f32(-1140f + _wgslsmith_f_op_f32(min(1488f, -528f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(346f * -1144f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(995f + 146f))))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(977f)), 328f, _wgslsmith_f_op_f32(f32(-1f) * -706f)), vec3<f32>(_wgslsmith_f_op_f32(343f * 1946f), 652f, _wgslsmith_div_f32(1000f, -1360f)))), func_5(~countOneBits(vec3<u32>(var_0.x, var_0.x, var_0.x) & vec3<u32>(var_0.x, 50120u, 4294967295u)), func_4(~var_0.x & max(var_0.x, var_0.x), _wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(func_2(35313i, vec3<i32>(u_input.a, u_input.a, -2147483647i), vec2<f32>(-1972f, 643f), -629f))), Struct_4(_wgslsmith_add_u32(var_0.x, 1u), _wgslsmith_f_op_f32(1073f - -1641f), Struct_1(vec3<f32>(-742f, -138f, -557f)), _wgslsmith_f_op_f32(ceil(-618f)))), abs(-vec2<i32>(u_input.a, u_input.a)), func_4(47518u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1245f) + _wgslsmith_f_op_f32(sign(-1280f))), Struct_4(var_0.x, _wgslsmith_div_f32(-1041f, -1163f), Struct_1(vec3<f32>(-1000f, 750f, 226f)), _wgslsmith_f_op_f32(f32(-1f) * -642f))).c));
    return var_2.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-380f)) * -2288f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(167f)))), _wgslsmith_f_op_vec3_f32(func_1()), false)));
}

