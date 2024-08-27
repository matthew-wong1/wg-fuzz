struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true));

var<private> global1: vec3<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    global1 = !select(vec3<bool>(var_0.b.x, true, true), !vec3<bool>(true, any(global0[_wgslsmith_index_u32(u_input.b, 25u)]), global1.x), true);
    var var_1 = -2147483647i;
    let var_2 = Struct_1(var_0.a, vec2<bool>((_wgslsmith_clamp_i32(-55215i, 17922i, u_input.a.x) << (abs(22327u) % 32u)) >= 0i, var_0.b.x), ~reverseBits(_wgslsmith_mod_i32(-u_input.a.x, -1i)), 1u, var_0.e);
    let var_3 = select(vec3<bool>(true, !arg_1.b.x, any(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(64968u, 1u, 16262u), 25u)])), select(select(!select(vec3<bool>(arg_1.b.x, var_0.b.x, false), vec3<bool>(true, false, true), vec3<bool>(var_2.b.x, var_2.b.x, false)), select(vec3<bool>(var_0.b.x, false, var_2.b.x), vec3<bool>(false, true, true), true), !(!vec3<bool>(false, arg_1.b.x, var_2.b.x))), select(vec3<bool>(false, all(global0[_wgslsmith_index_u32(8536u, 25u)]), all(vec3<bool>(var_0.b.x, var_2.b.x, true))), vec3<bool>(true, all(vec3<bool>(arg_1.b.x, arg_1.b.x, var_2.b.x)), !global1.x), any(vec3<bool>(arg_1.b.x, true, global1.x))), var_2.e >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1488f) * _wgslsmith_f_op_f32(arg_1.e * var_0.e))), vec3<bool>(all(vec3<bool>(any(vec4<bool>(false, var_0.b.x, var_2.b.x, true)), !var_0.b.x, all(vec2<bool>(false, arg_1.b.x)))), _wgslsmith_f_op_f32(-var_2.e) <= arg_1.e, all(!(!global0[_wgslsmith_index_u32(110759u, 25u)]))));
    return _wgslsmith_dot_vec4_i32(select(~_wgslsmith_mod_vec4_i32(u_input.a & vec4<i32>(var_0.c, var_2.c, -10035i, var_2.c), vec4<i32>(var_0.c, u_input.a.x, -31969i, 0i)), ~(vec4<i32>(-1i) * -vec4<i32>(0i, -1i, arg_1.c, 1i)), all(var_3)), vec4<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.c, firstTrailingBit(2147483647i)), 1i | u_input.c), -27271i, -2147483647i));
}

fn func_2() -> u32 {
    global1 = vec3<bool>(true, !(!(true || !global1.x)), (~(u_input.b ^ 63697u) > 1u) | all(global0[_wgslsmith_index_u32(~u_input.b, 25u)]));
    global1 = vec3<bool>(u_input.b > (~firstTrailingBit(1u) & _wgslsmith_clamp_u32(21768u, _wgslsmith_dot_vec3_u32(vec3<u32>(20614u, 4294967295u, 44841u), vec3<u32>(18438u, u_input.b, u_input.b)), 10977u | u_input.b)), true, select(false | (global1.x | all(vec3<bool>(global1.x, true, global1.x))), false, true));
    global0 = array<vec4<bool>, 25>();
    let var_0 = Struct_1(4294967295u, !global1.zy, func_3(abs(~vec3<u32>(u_input.b, u_input.b, 103830u)), Struct_1(~u_input.b, select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), true), select(u_input.c, u_input.a.x, false), 1u, -197f)), min(select(1u >> (max(u_input.b, u_input.b) % 32u), ~u_input.b, all(!vec3<bool>(global1.x, global1.x, global1.x))), countOneBits(4294967295u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1199f, _wgslsmith_f_op_f32(-2043f - -1672f))))))));
    var var_1 = var_0;
    return _wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b, 43102u, 5197u), var_1.d, 0u), reverseBits(22373u), ~select(var_1.a, 0u, true)), max(select(vec3<u32>(4294967295u, var_1.a, 50740u), vec3<u32>(u_input.b, var_1.d, var_0.d), true), ~vec3<u32>(var_1.a, u_input.b, 58885u)) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(28427u, var_0.d, u_input.b), vec3<u32>(4294967295u, 4294967295u, var_0.a)), !vec3<bool>(all(vec3<bool>(var_1.b.x, true, false)), -1237f > var_0.e, global1.x)), ~(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_1.d, u_input.b, 90874u)), vec3<u32>(27668u, u_input.b, 39443u))));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    global1 = select(select(vec3<bool>(true != select(true, true, true), true, true), select(vec3<bool>(global1.x, false && global1.x, true), select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec4<bool>(true, true, false, global1.x)), true, u_input.b < 4294967295u), vec3<bool>(false, global1.x, -1033f >= arg_0), select(!vec3<bool>(true, false, global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, global1.x)), -2147483647i <= u_input.a.x))), vec3<bool>(false, global1.x, true), true && !(!select(global1.x, global1.x, global1.x)));
    var var_0 = Struct_1(~func_2(), vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) != arg_0), select(select(firstTrailingBit(u_input.a.x), u_input.c, global1.x), max(u_input.c, u_input.c), true), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(max(773f, _wgslsmith_f_op_f32(arg_0 - arg_0))), false))));
    var var_1 = Struct_1(min(~(~66615u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, u_input.b, 70845u, var_0.d), vec4<u32>(609u, 1u, var_0.a, 106342u)), vec4<u32>(4294967295u, var_0.d, 4294967295u, var_0.d))) >> (func_2() % 32u), select(vec2<bool>(true | !global1.x, var_0.b.x), global1.xx, true), 40071i, (~0u << (var_0.d % 32u)) << (39862u % 32u), var_0.e);
    global0 = array<vec4<bool>, 25>();
    var var_2 = Struct_1(u_input.b, !select(global1.yy, vec2<bool>(!var_0.b.x, true), vec2<bool>(!var_1.b.x, !var_0.b.x)), -20719i, 4294967295u >> (select(~select(0u, u_input.b, false), _wgslsmith_mod_u32(abs(136826u), 4294967295u), var_0.a < 27327u) % 32u), -1888f);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1263f + -962f)) * 1f), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1081f);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -159f)))) - vec2<f32>(var_0, -1656f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -2677f) - vec2<f32>(-1000f, 1514f))))))), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(abs(var_0))))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(-1112f, 1561f)))), 887f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f + _wgslsmith_f_op_f32(max(-814f, _wgslsmith_f_op_vec2_f32(func_1(var_1.x)).x))))));
    var var_3 = ~(vec3<u32>(44723u, ~u_input.b, _wgslsmith_sub_u32(select(4294967295u, u_input.b, global1.x), 4294967295u)) & min(vec3<u32>(abs(u_input.b), u_input.b, 21839u), firstLeadingBit(vec3<u32>(u_input.b, 27193u, u_input.b))));
    var_3 = ~vec3<u32>(1u, _wgslsmith_div_u32(u_input.b, countOneBits(27782u)), 1u);
    let var_4 = u_input.a.x;
    var var_5 = var_3.x;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + var_1.x), _wgslsmith_f_op_f32(986f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_0))))), _wgslsmith_f_op_f32(floor(-568f)));
    var var_6 = Struct_1(~(var_3.x | ~4294967295u), !(!global1.xz), -firstTrailingBit(-23048i), u_input.b, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

