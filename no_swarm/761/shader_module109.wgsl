struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.b, min(~min(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(0u, 0u)), ~u_input.a.zy)));
    let var_1 = ~var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(302f, _wgslsmith_f_op_f32(-arg_1.b.a.a), 522f, 677f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a.a, 391f, 1000f, arg_1.b.a.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1577f, -1000f, arg_1.b.a.a, arg_1.c.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-441f, -276f, 1676f, arg_1.b.a.a), vec4<f32>(-1331f, 1000f, arg_1.c.a.a, 767f)) - vec4<f32>(383f, arg_1.c.a.a, arg_1.c.a.a, arg_1.b.a.a)), arg_1.a.x && true)), vec4<f32>(_wgslsmith_div_f32(arg_1.c.a.a, _wgslsmith_f_op_f32(f32(-1f) * -905f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.a.a, -1107f))), arg_1.c.a.a, _wgslsmith_div_f32(arg_1.b.a.a, _wgslsmith_f_op_f32(-arg_1.b.a.a))), arg_1.a)));
    return _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1136f + _wgslsmith_f_op_f32(-arg_1.c.a.a)) * arg_1.b.a.a));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = vec3<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), true, true);
    var var_1 = _wgslsmith_mult_vec3_u32(u_input.c, max(~(~u_input.a.zzw), u_input.c) << (~(~vec3<u32>(u_input.b.x, u_input.c.x, 34294u)) % vec3<u32>(32u)));
    let var_2 = vec2<i32>(arg_0.x, arg_0.x);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) * _wgslsmith_f_op_f32(func_3(select(0u, 10839u, var_0.x), Struct_3(vec4<bool>(true, true, var_0.x, var_0.x), Struct_2(Struct_1(-633f)), Struct_2(Struct_1(-1998f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1016f + -952f), _wgslsmith_f_op_f32(-1948f + -442f), true)), 1590f))));
    var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(2757u), 64793u, ~30121u), ~u_input.a.wwz) >> (u_input.a.wzx % vec3<u32>(32u)), min(vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(26817u, _wgslsmith_sub_u32(u_input.b.x, u_input.a.x)), ~var_1.x | _wgslsmith_clamp_u32(var_1.x, var_1.x, 24932u)), u_input.a.xyx));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1211f), _wgslsmith_f_op_f32(-var_3), true)) - var_3));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = func_2(-(~(-arg_2.xz | (vec2<i32>(337i, -1i) | arg_2.zw))));
    var var_1 = arg_3.a.a;
    var_1 = 233f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(466f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(arg_3.a.a + -955f)))));
    return -2538f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(6001i, -2147483647i), (vec2<i32>(10558i, 7393i) >> (vec2<u32>(u_input.b.x, u_input.a.x) % vec2<u32>(32u))) & vec2<i32>(-2147483647i, 41583i))), select(vec3<bool>(true, true, !all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(true, false, true)), any(vec2<bool>(true, select(true, true, true)))), abs(vec4<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, -20218i), vec3<i32>(-1i, -11090i, -9611i)), _wgslsmith_mult_i32(~34632i, _wgslsmith_mod_i32(1i, -14553i)), 0i ^ select(11177i, 38345i, true))), Struct_2(func_2(firstTrailingBit(-vec2<i32>(-2147483647i, -31552i))))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(reverseBits(_wgslsmith_clamp_u32(76052u, u_input.b.x, u_input.a.x)), ~_wgslsmith_div_u32(0u, 1u)), 50806u << (firstTrailingBit(~u_input.b.x) % 32u), 3313u, 26781u), u_input.a);
    var_1 = u_input.a;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(-244f, var_0)), 858f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + var_0));
    var_1 = ~reverseBits(~u_input.a);
    return func_2(firstTrailingBit(vec2<i32>(-19047i, 47192i)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a, arg_2.a.a, arg_2.a.a) - vec3<f32>(arg_3.a.a, -1356f, arg_3.a.a))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_3.a.a, 618f), vec3<f32>(1018f, arg_0.x, arg_2.a.a))))));
    let var_1 = Struct_2(func_2(vec2<i32>(-2147483647i, 1i)));
    var_0 = _wgslsmith_f_op_vec3_f32(step(arg_0, arg_0));
    var_0 = arg_0;
    let var_2 = var_1;
    return any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -445f < _wgslsmith_f_op_f32(step(var_0.x, arg_3.a.a)))) && true;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(arg_0);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(arg_0.a)));
    var var_2 = vec3<bool>(arg_1.x, true, !arg_1.x);
    var_1 = arg_0;
    let var_3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_6(Struct_1(_wgslsmith_f_op_f32(-488f * _wgslsmith_f_op_f32(f32(-1f) * -1813f))), vec3<bool>(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, -541f, 450f)), func_1(), Struct_2(Struct_1(300f)), Struct_2(Struct_1(844f))), true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, -1i, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, 7249u) << (u_input.a.x % 32u), ~_wgslsmith_mult_u32(0u, u_input.b.x)), u_input.a.wy), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.a)), _wgslsmith_f_op_f32(-var_0.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.a, var_0.a.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(228f, 797f))))));
}

