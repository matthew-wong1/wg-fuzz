struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(568f, -1000f, -970f, 1294f));

var<private> global1: vec2<u32> = vec2<u32>(0u, 8414u);

var<private> global2: f32 = -1000f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<f32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_2.x) - vec2<f32>(arg_2.x, 852f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zz - vec2<f32>(arg_1.x, arg_1.x))))))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    let var_0 = countOneBits(u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-1992f)), 250f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(u_input.a.yxx >> (vec3<u32>(50882u, 1u, 20226u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(587f, 1691f, -458f), vec3<f32>(-429f, -900f, -380f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-251f, 896f, -374f) + vec3<f32>(1766f, -1257f, -1619f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-155f)), _wgslsmith_f_op_f32(-975f - 730f), _wgslsmith_f_op_f32(-825f - 1062f))))));
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(min(vec3<u32>(102105u, global1.x, u_input.b), u_input.a.yyw)), u_input.a.yyx & vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), ~(~(~u_input.a.wxx))), u_input.a.xy, var_1.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-func_2(Struct_4(true, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)))).c), _wgslsmith_f_op_f32(select(-774f, -972f, false)), _wgslsmith_f_op_f32(f32(-1f) * -913f));
    let var_1 = ~countOneBits(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_1, 4294967295u, global1.x)), u_input.a.zzy));
    var_0 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c))) - -742f), -1092f);
    var var_2 = abs(_wgslsmith_clamp_i32(arg_3.a.x | -31554i, ~u_input.c.x, u_input.c.x));
    let var_3 = arg_1;
    return !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_2 {
    global2 = -1000f;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1085f, _wgslsmith_f_op_f32(f32(-1f) * -1496f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 214f) * -575f)) - _wgslsmith_f_op_f32(f32(-1f) * -330f)));
    global1 = u_input.a.xw;
    var var_1 = countOneBits(_wgslsmith_add_u32(~1260u, 1u));
    var_1 = global1.x;
    return Struct_2(!arg_0.x, arg_0.x, vec2<f32>(var_0, _wgslsmith_f_op_f32(func_2(Struct_4(true, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))).c + 1f)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_5(select(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, 1464f, 852f)), global1.x, func_2(Struct_4(false, vec4<bool>(true, false, false, true))), Struct_5(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i), u_input.c, u_input.c), -1i)), select(vec3<bool>(false, u_input.a.x > 24928u, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), select(vec3<bool>(-1i == u_input.c.x, func_4(vec3<f32>(128f, -135f, 1371f), u_input.a.x, Struct_1(global1.x, vec2<u32>(u_input.b, global1.x), -2216f), Struct_5(u_input.c, -2147483647i)).x, false), func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(607f, -1361f, 1540f), vec3<f32>(1228f, -852f, 1022f), false)), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b, u_input.b, u_input.b, 12440u)), Struct_1(58584u, u_input.a.xx, -751f), Struct_5(vec3<i32>(13883i, arg_0, u_input.c.x), 23064i)), false)), Struct_5(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 22848i, 7766i)) ^ firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, arg_0)), vec3<i32>(u_input.c.x, 1i, arg_0)), -(u_input.c.x >> (4294967295u % 32u))));
    let var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, countOneBits(u_input.c)), _wgslsmith_clamp_vec3_i32(u_input.c, select(-u_input.c, u_input.c, !var_0.b == all(vec4<bool>(var_0.b, false, var_0.a, false))), abs(abs(vec3<i32>(1i, 32392i, arg_0))) & abs(~vec3<i32>(u_input.c.x, 50572i, arg_0))));
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.x)))));
    var var_2 = _wgslsmith_mult_u32(u_input.b, 22118u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_vec3_u32(select(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(26217u, 4294967295u, 1u), u_input.a.xyx, vec3<u32>(u_input.a.x, 1u, 4294967295u)), ~vec3<u32>(u_input.b, u_input.b, u_input.a.x), vec3<bool>(true, true, true)), ~u_input.a.xzw, all(vec3<bool>(true, true, true))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, ~global1.x), u_input.a.zzy)));
    let var_1 = var_0.a.x;
    var var_2 = true;
    let var_3 = var_0.a.x;
    let var_4 = func_1(_wgslsmith_add_i32(u_input.c.x, u_input.c.x));
    var var_5 = Struct_2(true, !(!(true | var_4.b)), vec2<f32>(func_5(vec3<bool>(false, var_4.b | var_4.a, var_4.b), Struct_5(u_input.c, max(43868i, u_input.c.x))).c.x, 732f));
    global1 = ~firstLeadingBit(reverseBits(var_0.a.xx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(~u_input.c, u_input.c), min(select(_wgslsmith_div_vec4_u32(u_input.a << (vec4<u32>(var_1, 19786u, 28432u, global1.x) % vec4<u32>(32u)), vec4<u32>(1u, 1u, var_1, 21930u) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~u_input.a, u_input.a), !vec4<bool>(var_4.b, var_4.b, var_4.b, var_4.b)), countOneBits(select(firstTrailingBit(vec4<u32>(global1.x, var_0.a.x, var_1, u_input.b)), vec4<u32>(5690u, 1u, 15902u, 15916u), var_5.a))), -311f);
}

