struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: bool;

var<private> global1: Struct_4;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    return 58962u;
}

fn func_2() -> Struct_4 {
    global1 = Struct_4(_wgslsmith_div_u32(global1.a, max(func_3(vec3<bool>(true, true, true), Struct_4(1u), Struct_3(Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<f32>(-100f, 1000f, 1000f)), 0i, Struct_2(Struct_1(vec2<u32>(global1.a, 0u), vec3<f32>(-1395f, -2244f, -899f)), vec4<i32>(1i, 15375i, 1i, 39118i), vec4<f32>(850f, 1226f, -158f, 1385f), Struct_1(vec2<u32>(0u, 98678u), vec3<f32>(-972f, -657f, 636f))), -34409i, vec4<u32>(54617u, u_input.a, global1.a, u_input.a))), u_input.a)));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-522f, 228f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-638f, -922f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-311f, -180f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(944f, -423f), vec2<f32>(-452f, -1000f), vec2<bool>(true, false))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(620f, -1095f) * vec2<f32>(2265f, -637f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 205f) * vec2<f32>(-462f, 1136f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-708f, -1085f) + vec2<f32>(292f, -197f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1985f, -2296f), vec2<f32>(730f, 1000f), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-306f, 232f), vec2<f32>(-537f, -2054f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-314f, -291f))))))));
    var var_1 = Struct_4(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.a, u_input.a), vec3<u32>(1u, u_input.a, global1.a)) >> (46036u % 32u), u_input.a, global1.a)));
    global0 = any(select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_4(u_input.a);
    return var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    global1 = func_2();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(arg_1.e.xzy), ~countOneBits(~vec3<u32>(arg_1.a.a.x, arg_1.c.a.a.x, u_input.a))), u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 1u), arg_1.e.x));
    var var_1 = abs(-_wgslsmith_mod_i32(-22674i, arg_1.b) | min(1i, ~_wgslsmith_div_i32(arg_0.x, -27716i)));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -761f))) < _wgslsmith_f_op_f32(trunc(709f));
    var var_3 = Struct_1(~(~(vec2<u32>(arg_2.a, 22894u) ^ vec2<u32>(global1.a, 0u)) ^ ~arg_1.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-422f, -1114f, -974f) * arg_1.c.d.b), arg_1.a.b) - _wgslsmith_f_op_vec3_f32(floor(arg_1.a.b)))));
    return _wgslsmith_add_i32(0i, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-1216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1160f)) - 980f)), 1477f);
    var var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2552i, -28078i), vec2<i32>(1i, 0i)), ~21415i), vec3<i32>(reverseBits(-28898i), 2147483647i, -84022i), ~vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -25952i, 2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -23560i, 2147483647i, 2147483647i), vec4<i32>(0i, -2147483647i, 2147483647i, 20557i))), _wgslsmith_mult_vec3_i32(-vec3<i32>(-9812i, 1521i, 2652i), max(vec3<i32>(-1i, 1i, -2147483647i) << (vec3<u32>(1u, 1u, global1.a) % vec3<u32>(32u)), -vec3<i32>(-35940i, 3418i, -44717i))), vec3<i32>(1i, 46367i, func_1(firstTrailingBit(vec2<i32>(-2147483647i, -62599i)), Struct_3(Struct_1(vec2<u32>(96991u, 4294967295u), vec3<f32>(var_0.x, var_0.x, var_0.x)), 1i, Struct_2(Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<f32>(1250f, -515f, var_0.x)), vec4<i32>(26449i, -2147483647i, -12344i, 2147483647i), vec4<f32>(var_0.x, -834f, var_0.x, -341f), Struct_1(vec2<u32>(4294967295u, u_input.a), vec3<f32>(-554f, 258f, var_0.x))), 41482i, vec4<u32>(0u, 86273u, global1.a, u_input.a)), Struct_4(1u)))));
    let var_2 = select(!vec4<bool>(any(vec2<bool>(true, true)), true, true, true), select(vec4<bool>(!all(vec4<bool>(true, true, false, true)), true, true, 4294967295u >= ~u_input.a), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, false))), true), true), any(vec3<bool>(true, true, true)));
    var var_3 = false;
    let var_4 = Struct_2(Struct_1(~vec2<u32>(_wgslsmith_sub_u32(global1.a, 48332u), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(905f * -2823f), _wgslsmith_f_op_f32(f32(-1f) * -581f), var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -1101f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(2121f))))), -firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-37989i, -1i, 0i, -1i), vec4<i32>(-49952i, 68401i, 0i, 1i), vec4<i32>(-7381i, 1i, 59025i, -17821i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(253f, var_0.x, var_0.x, var_0.x) - vec4<f32>(1379f, 1000f, var_0.x, 1320f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, -1799f, -1856f, var_0.x))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -1411f, var_0.x, var_0.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1028f, -837f, var_0.x), vec4<f32>(-501f, var_0.x, 1192f, var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1063f, var_0.x, var_0.x, var_0.x) * vec4<f32>(450f, var_0.x, 578f, var_0.x)) + vec4<f32>(728f, var_0.x, var_0.x, var_0.x)))), Struct_1(select(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), vec2<u32>(~49270u, _wgslsmith_mult_u32(0u, global1.a)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -435f, var_0.x))))));
    var_3 = _wgslsmith_f_op_f32(max(-1000f, var_0.x)) >= var_4.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_4.a.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d.b.x, var_4.c.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, 582f, var_0.x) * var_4.d.b))))));
}

