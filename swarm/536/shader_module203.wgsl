struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> vec3<f32> {
    var var_0 = select(select(!(!select(vec3<bool>(false, true, global0.x), vec3<bool>(true, false, global0.x), false)), select(!select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, global0.x)), vec3<bool>(any(vec3<bool>(global0.x, global0.x, false)), global0.x & false, select(global0.x, global0.x, global0.x)), select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), !vec3<bool>(false, global0.x, global0.x))), vec3<bool>(global0.x, global0.x, global0.x)), select(!(!select(vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, global0.x), global0.x)), select(select(!vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, false, global0.x)), !vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, !global0.x)), !vec3<bool>(true, global0.x, all(vec2<bool>(true, global0.x)))), vec3<bool>(global0.x, true, !global0.x));
    var var_1 = _wgslsmith_f_op_f32(max(1795f, -1000f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1111f)))), var_0.x)));
    var_1 = global0.x;
    let var_2 = !any(var_0.xx);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(139f, -1000f, -1579f))));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, var_3.a.x, 1000f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, var_3.a.x)), var_3.a.x, _wgslsmith_f_op_f32(-881f - 414f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.a.x, var_3.a.x, -997f))) * _wgslsmith_f_op_vec3_f32(var_3.a - var_3.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3.a), _wgslsmith_f_op_vec3_f32(select(var_3.a, vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x), var_0.x && var_0.x)), (var_0.x != true) || var_2)))), vec3<bool>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, 17238i, -86744i), ~arg_0.a) >= (max(arg_0.a, 0i) >> (1u % 32u)), var_0.x, true)));
}

fn func_2(arg_0: bool) -> Struct_4 {
    global0 = vec3<bool>(!global0.x, arg_0, true);
    var var_0 = 4294967295u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))) * _wgslsmith_f_op_vec3_f32(func_3(Struct_5(abs(11786i)), min(-7i, ~1i)))));
    let var_2 = abs(vec3<i32>(_wgslsmith_mod_i32(select(1i, ~(-25226i), false), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-17142i, 2147483647i, -2147483647i, -1577i), vec4<i32>(-5276i, -10386i, 19592i, 52611i)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(26301i, 2147483647i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(16066i, -1i, -15820i))), _wgslsmith_mod_i32(reverseBits(_wgslsmith_div_i32(-42224i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 2650i, 1i), vec4<i32>(-1i, 2147483647i, 2147483647i, -32590i)) >> (1u % 32u))));
    var var_3 = vec4<u32>(~(~(~abs(1u))), firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, ~1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 13271u, 0u)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(85081u, u_input.a), vec2<u32>(u_input.a, 47830u)), _wgslsmith_div_u32(u_input.a, firstLeadingBit(39690u)))), reverseBits(~16866u));
    return Struct_4(vec4<bool>(select(true, var_2.x < select(1i, 21083i, arg_0), !(global0.x || arg_0)), global0.x, false, true));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> f32 {
    global0 = !arg_0;
    let var_0 = min(_wgslsmith_add_i32(1i | (select(-8540i, -2147483647i, false) | 0i), ~countOneBits(_wgslsmith_sub_i32(4706i, -81367i))), _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(select(vec4<i32>(9042i, -59103i, -20040i, -1i), vec4<i32>(1i, 2147483647i, -1i, -1i), false), vec4<i32>(1i, 1i, 1i, 1i)), ~vec4<i32>(min(-4564i, 1i), _wgslsmith_add_i32(-20380i, -16118i), 1i, -2573i)));
    var var_1 = true;
    var var_2 = i32(-1i) * -var_0;
    var var_3 = func_2(true);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-372f, arg_2.x) - -945f)), _wgslsmith_div_f32(arg_2.x, arg_2.x)), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(vec3<bool>(any(vec2<bool>(!global0.x, true)), true, global0.x), ~(~vec4<u32>(~u_input.a, ~u_input.a, min(47265u, u_input.a), _wgslsmith_mult_u32(70101u, 23087u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, 337f, 2658f, 887f)))))));
    let var_1 = Struct_5(-firstTrailingBit(~1i));
    let var_2 = u_input.a;
    var var_3 = ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_2, var_2, u_input.a) >> (vec3<u32>(var_2, 937u, 39031u) % vec3<u32>(32u)), abs(vec3<u32>(u_input.a, var_2, 60096u)))));
    let var_4 = Struct_1(_wgslsmith_add_u32(~u_input.a, 16072u) ^ ~7316u, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1304f, 647f) + _wgslsmith_f_op_f32(-589f - -1535f)))), -102f), select(select(func_2(global0.x).a.wwz, vec3<bool>(func_2(false).a.x, !global0.x, !global0.x), select(!vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, global0.x), global0.x), true)), vec3<bool>(any(select(vec3<bool>(false, false, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(true, false, global0.x))), !all(vec4<bool>(global0.x, true, global0.x, true)), !global0.x), !(!(!vec3<bool>(true, global0.x, false)))));
    var var_5 = Struct_2(max(var_4.a, 1u), select(!vec4<bool>(false, global0.x, true && var_4.c.x, global0.x), !select(!vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, false, true, var_4.c.x), select(vec4<bool>(true, var_4.c.x, var_4.c.x, var_4.c.x), vec4<bool>(global0.x, global0.x, var_4.c.x, var_4.c.x), global0.x)), all(select(!vec2<bool>(global0.x, false), var_4.c.xz, 30978u > u_input.a))), var_4.a);
    var_3 = vec3<u32>(var_5.a, u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), vec4<u32>(4294967295u, var_4.a, 6911u, 53902u)), _wgslsmith_clamp_u32(~(~1u), max(_wgslsmith_div_u32(52937u, var_2), 1u), _wgslsmith_div_u32(4294967295u, select(0u, var_2, var_4.c.x))), firstLeadingBit(u_input.a)));
}

