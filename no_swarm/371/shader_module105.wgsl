struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1860f, -799f, vec2<i32>(-7295i, 38457i), 251f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_4(-972f, _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(-696f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-835f)), -834f)))), -vec2<i32>(global0.c.x, _wgslsmith_mult_i32(firstLeadingBit(global0.c.x), global0.c.x)), arg_0);
    var var_1 = Struct_2(min(-vec4<i32>(-u_input.a.x, var_0.c.x << (0u % 32u), u_input.a.x, 20092i), -min(countOneBits(vec4<i32>(var_0.c.x, -52255i, -2147483647i, global0.c.x)), ~vec4<i32>(1i, 2147483647i, 0i, 19205i))), select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(true, true), !(-26202i > _wgslsmith_clamp_i32(-88474i, u_input.a.x, u_input.a.x))), !vec2<bool>(true, all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, -1049f, _wgslsmith_div_f32(848f, arg_0), _wgslsmith_f_op_f32(floor(arg_0))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2266f, var_0.a) * var_1.d.zw));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, -557f));
    let var_4 = any(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -900f)) >= _wgslsmith_f_op_f32(select(var_0.a, -709f, false)), var_1.c.x));
    return var_1.b;
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    global0 = Struct_4(global0.d, arg_0.a.x, global0.c, global0.b);
    let var_0 = u_input.a.x;
    global0 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(461f)) + -779f), -1085f)))), -1089f, select(~global0.c, max(u_input.a, global0.c), func_3(_wgslsmith_f_op_f32(select(-409f, _wgslsmith_f_op_f32(abs(arg_0.a.x)), true)))), -1764f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(127f, -642f, false)))) + vec2<f32>(-1904f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), -587f)))));
    let var_2 = abs(-vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, u_input.a.x), vec3<i32>(u_input.a.x, -1i, 37100i)), 1i, -2193i));
    return vec2<i32>(0i, _wgslsmith_add_i32(abs(_wgslsmith_dot_vec2_i32(abs(u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-6019i, -2147483647i), vec2<i32>(var_2.x, var_0), global0.c))), var_0));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    global0 = Struct_4(-419f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(980f - _wgslsmith_f_op_f32(floor(-922f)))), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_3.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-532f, arg_3.a) + vec2<f32>(-1094f, arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1099f * -1070f))) * 292f));
    var var_0 = vec3<bool>(arg_2, 255f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(322f, global0.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b)) - _wgslsmith_f_op_f32(800f - -2033f))), all(vec4<bool>(arg_2, false, !(!arg_2), all(vec2<bool>(arg_2, arg_2)) | !arg_2)));
    let var_1 = vec2<u32>(361u << (_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 1u), ~(~0u)) % 32u), ~arg_0);
    let var_2 = Struct_2(-max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -32241i, -1i, u_input.a.x), vec4<i32>(arg_3.c.x, u_input.a.x, arg_3.c.x, u_input.a.x)), vec4<i32>(-29242i, -2147483647i, 0i, 7688i)) << (min(~vec4<u32>(23070u, 48596u, 1u, 19589u), _wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_0, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, 78119u, var_1.x)), vec4<u32>(arg_0, 0u, arg_0, 23099u) & vec4<u32>(arg_0, arg_0, 0u, var_1.x))) % vec4<u32>(32u)), func_3(765f), vec2<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)) == (_wgslsmith_f_op_f32(min(-233f, -1191f)) <= _wgslsmith_f_op_f32(sign(-480f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(-623f, arg_3.a)), _wgslsmith_f_op_f32(-global0.a), -1025f, 192f))) - vec4<f32>(global0.b, _wgslsmith_f_op_f32(212f + _wgslsmith_div_f32(1558f, -506f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1000f)), _wgslsmith_f_op_f32(arg_3.d + -470f))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_2.d.xz * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.d.yx)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1u, _wgslsmith_div_f32(global0.d, global0.a), (u_input.a.x | _wgslsmith_add_i32(2147483647i, firstTrailingBit(global0.c.x))) < -abs(29093i), Struct_4(global0.d, -154f, reverseBits(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), global0.c, global0.c)), _wgslsmith_f_op_f32(-global0.d)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1628f)) + _wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_f32(global0.d - 130f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f * global0.b)));
    let var_2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(vec3<u32>(_wgslsmith_sub_u32(18297u, 1u), firstLeadingBit(0u), 1u))), _wgslsmith_sub_vec3_u32(~(~select(vec3<u32>(4294967295u, 27841u, 18696u), vec3<u32>(69242u, 49330u, 3862u), var_0.b.x)), vec3<u32>(1u, 1u, 1u)));
    var var_3 = vec2<u32>(abs(4294967295u), ~var_2 ^ firstLeadingBit(abs(1u) >> ((var_2 | var_2) % 32u)));
    let var_4 = Struct_4(var_0.d.x, var_0.d.x, ~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c.x, -48777i), u_input.a, vec2<i32>(4078i, 59856i)), u_input.a, select(var_0.c, vec2<bool>(var_0.c.x, var_0.b.x), vec2<bool>(true, false))) >> (~firstTrailingBit(reverseBits(vec2<u32>(var_3.x, 34142u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(-809f)));
    var var_5 = Struct_3(~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_3.x, 94641u), 10384u)));
    var var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-572f - _wgslsmith_div_f32(1066f, -522f)), _wgslsmith_f_op_f32(round(var_1.x)))));
    var var_7 = min(abs(countOneBits(vec4<u32>(min(var_3.x, 3270u), ~var_3.x, ~0u, ~0u))), select(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_5.a, 1u, 3057u, 1u), vec4<u32>(var_5.a, var_5.a, 689u, 49198u))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_5.a, 424u, var_3.x, var_3.x), vec4<u32>(var_2, var_5.a, 0u, var_2), ~vec4<u32>(1u, 1u, 4294967295u, var_3.x)), firstLeadingBit(~vec4<u32>(var_3.x, var_2, 4294967295u, var_5.a))), -1000f >= var_4.d));
    var var_8 = ~vec3<u32>(var_7.x, var_3.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_6.a.x, -320f, _wgslsmith_f_op_f32(1368f + var_4.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.d, 1046f, global0.a) + vec3<f32>(-832f, var_1.x, var_1.x)), var_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(797f + 909f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 457f)), -1401f), select(!select(vec3<bool>(true, false, var_0.c.x), vec3<bool>(false, true, var_0.c.x), vec3<bool>(var_0.b.x, true, true)), vec3<bool>(all(vec2<bool>(var_0.c.x, var_0.c.x)), var_0.b.x, var_0.c.x), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.b.x, false), any(vec4<bool>(var_0.b.x, var_0.c.x, false, var_0.c.x)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_6.a + vec2<f32>(var_1.x, global0.a)) * var_1.zy)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, var_4.b, true)) * _wgslsmith_f_op_f32(-var_6.a.x)), var_4.b))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_div_f32(_wgslsmith_div_f32(var_4.d, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0.c.x))), _wgslsmith_f_op_f32(-global0.a)), var_6.a.x, _wgslsmith_f_op_f32(1350f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f + var_1.x)))));
}

