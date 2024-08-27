struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> bool {
    let var_0 = vec2<bool>(_wgslsmith_div_u32(u_input.c.x, 1u) < 3776u, true);
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 38995i), 1i), -1i, ~(~(-1i))));
    var_1 = -33535i | u_input.a.x;
    return var_0.x;
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-417f, -1655f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-387f, 2193f) - vec2<f32>(272f, -423f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-976f, 1739f), vec2<f32>(-277f, 1503f))))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-373f, _wgslsmith_f_op_f32(floor(-964f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(544f, -1384f)), vec2<f32>(467f, -829f)))))));
    let var_1 = -385f;
    var var_2 = select(vec3<bool>(true, !select(any(vec2<bool>(true, false)), true, any(vec2<bool>(true, true))), false), vec3<bool>(true, true, true), vec3<bool>(true, !(21249u == max(arg_0, 1u)), true | any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true))));
    let var_3 = vec3<u32>(arg_0, 1u, ~(~arg_0));
    var_2 = !select(!(!(!vec3<bool>(false, var_2.x, true))), !vec3<bool>(!var_2.x, var_2.x, var_2.x), !(!vec3<bool>(false, var_2.x, true)));
    return false;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-642f, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(min(arg_0, -452f)), 1481f, -1028f) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + 1598f), _wgslsmith_f_op_f32(floor(-186f)), _wgslsmith_f_op_f32(max(arg_0, -1365f)))))), ~u_input.a.yxw, reverseBits(vec3<i32>(u_input.a.x, u_input.a.x << (22238u % 32u), u_input.a.x) >> (vec3<u32>(u_input.c.x | u_input.c.x, _wgslsmith_div_u32(70012u, u_input.b), u_input.b | u_input.b) % vec3<u32>(32u))));
    var var_1 = !vec3<bool>(false || any(vec4<bool>(false, false, true, true)), func_2(), func_3(arg_1.x, 19026i));
    var var_2 = vec2<u32>(~_wgslsmith_sub_u32(arg_1.x, abs(u_input.b >> (var_0.a % 32u))), 10216u);
    var var_3 = var_0;
    let var_4 = vec2<u32>(select(arg_1.x, 1u, false), ~firstLeadingBit(_wgslsmith_clamp_u32(var_3.a, u_input.c.x, 35801u) & ~var_2.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))), var_3.b.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.b.x))))), _wgslsmith_f_op_f32(trunc(364f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(8914u ^ u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-890f, -950f, -409f, 376f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(896f, 422f, -701f, 1656f), vec4<f32>(-1324f, 105f, -400f, 143f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1154f, -548f, -532f, -1607f) - vec4<f32>(1000f, 531f, 356f, -282f))))), countOneBits(countOneBits(vec3<i32>(u_input.a.x << (53875u % 32u), -28428i, -9911i >> (1u % 32u)))), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, abs(2147483647i), abs(0i)), vec3<i32>(1i, -29374i, min(-52455i, u_input.a.x)), vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.wwz, vec3<i32>(u_input.a.x, u_input.a.x, 0i)), 1i))));
    let var_1 = -(-(~abs(u_input.a.x)) ^ 1i);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(func_1(var_0.b.x, vec2<u32>(9565u >> ((~22676u ^ ~u_input.b) % 32u), _wgslsmith_add_u32(~(u_input.c.x << (41081u % 32u)), var_0.a))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x))))) - 731f);
    var_3 = var_0.b.x;
    var var_4 = var_0;
    let var_5 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.b, ~var_4.a), u_input.c.x, _wgslsmith_div_u32(var_0.a, abs(33175u))), _wgslsmith_div_vec3_u32(~vec3<u32>(4403u, 1u, 1u), abs(vec3<u32>(var_4.a, 38054u, u_input.c.x))) & (min(vec3<u32>(6340u, 23360u, var_0.a), vec3<u32>(var_0.a, u_input.b, var_4.a)) ^ (vec3<u32>(93965u, u_input.c.x, 5207u) | vec3<u32>(4294967295u, var_0.a, 15391u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.b)) * vec4<f32>(_wgslsmith_f_op_f32(round(886f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(548f, -1444f)), var_4.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4.b.x + 613f))))), _wgslsmith_sub_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, var_0.d.x, var_4.d.x), vec3<i32>(2739i, -42367i, -2147483647i)), var_4.c, vec3<bool>(var_2, true, var_2)) | ~abs(var_4.d), u_input.a.xyz), u_input.a.yww);
    var var_6 = vec4<u32>(~(~var_0.a), 12309u, _wgslsmith_dot_vec3_u32(~((vec3<u32>(u_input.b, u_input.c.x, var_5.a) | vec3<u32>(0u, var_4.a, var_0.a)) & ~vec3<u32>(4294967295u, 1u, 21121u)), ~vec3<u32>(0u, 1u, u_input.b)), 30899u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(16072i, i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(var_4.b.xwz * vec3<f32>(var_0.b.x, -1787f, var_5.b.x)));
}

