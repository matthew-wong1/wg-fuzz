struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 51252i, 54065i, -1i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = -vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(15913i, u_input.a.x, -50334i), global0.xwz), global0.x, -78671i, -u_input.d.x);
    var var_0 = Struct_4(true, 7455i, _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_vec3_f32(-arg_0));
    var_0 = Struct_4(!(!select(any(vec2<bool>(false, false)), true, false)), var_0.b, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(step(arg_0.x, -2152f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -1486f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 499f, -709f)), u_input.b.x <= 4294967295u))))));
    var_0 = Struct_4(u_input.c < ~countOneBits(u_input.c), -9642i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(var_0.d.x * arg_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1250f)))), var_0.d.x, arg_0.x) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, var_0.c, arg_0.x), arg_0) + vec3<f32>(-811f, arg_0.x, -662f))))));
    var_0 = Struct_4(true, abs(select(-firstTrailingBit(-28344i), abs(_wgslsmith_add_i32(-43139i, u_input.d.x)), all(!vec3<bool>(var_0.a, var_0.a, var_0.a)))), var_0.d.x, vec3<f32>(963f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1212f, _wgslsmith_f_op_f32(f32(-1f) * -1339f)) - _wgslsmith_div_f32(1763f, _wgslsmith_f_op_f32(step(arg_0.x, 1537f)))), _wgslsmith_f_op_f32(trunc(arg_0.x))));
    return u_input.c;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = _wgslsmith_sub_vec4_i32(-abs(vec4<i32>(u_input.a.x, reverseBits(u_input.d.x), global0.x, -1i)), -(~(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 64321i, -1171i), vec4<i32>(u_input.d.x, u_input.a.x, 5636i, 44533i)))));
    let var_0 = arg_0.b;
    let var_1 = ~u_input.d;
    var var_2 = Struct_5(Struct_2(false, all(vec4<bool>(false, var_0 != var_0, all(vec3<bool>(false, true, false)), true))), vec3<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 1192f) * -1398f), arg_0.b)), _wgslsmith_f_op_f32(ceil(-748f))), vec3<u32>(func_3(vec3<f32>(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_div_f32(1051f, var_0), _wgslsmith_f_op_f32(f32(-1f) * -430f))), 14098u, 4294967295u), 379f, vec4<bool>(true, all(vec4<bool>(false, true, true, true)), max(~u_input.b.x, countOneBits(arg_0.a.x)) <= 29798u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - var_0)) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.b, var_0))))));
    var var_3 = !var_2.e.yyx;
    return -global0.x;
}

fn func_1() -> vec4<u32> {
    global0 = _wgslsmith_clamp_vec4_i32(select(~_wgslsmith_mod_vec4_i32(-vec4<i32>(global0.x, -1i, global0.x, u_input.a.x), ~vec4<i32>(1i, -38514i, u_input.a.x, -2147483647i)), abs(vec4<i32>(_wgslsmith_sub_i32(34217i, 1i), -1i, 40148i, global0.x)), true), vec4<i32>(global0.x >> (_wgslsmith_sub_u32(u_input.c >> (34840u % 32u), abs(u_input.b.x)) % 32u), ~(-func_2(Struct_1(vec4<u32>(1u, 4294967295u, u_input.b.x, 0u), -377f))), abs(-43428i), global0.x), ~(-max(countOneBits(vec4<i32>(-30459i, 10289i, global0.x, global0.x)), vec4<i32>(1i, u_input.d.x, u_input.d.x, 41128i))));
    return ~abs(vec4<u32>(~36906u, _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(u_input.b.x, 23912u)), ~16646u, select(select(4294967295u, u_input.c, true), u_input.b.x, any(vec3<bool>(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~func_1(), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(26030u, 4294967295u, 1u, u_input.b.x), ~vec4<u32>(u_input.b.x, 37385u, u_input.c, u_input.c)) | ~(~vec4<u32>(16497u, 4294967295u, u_input.b.x, 14031u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1401f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1021f)) + _wgslsmith_f_op_f32(-1384f * -2333f))), _wgslsmith_f_op_f32(ceil(266f)), 320f));
    var_0 = min(vec4<u32>(~29399u, _wgslsmith_sub_u32(28177u, ~(~6971u)), ~firstLeadingBit(_wgslsmith_div_u32(1u, u_input.c)), _wgslsmith_add_u32(firstLeadingBit(1u), u_input.c)), vec4<u32>(reverseBits(max(0u, var_0.x) & u_input.b.x), var_0.x ^ ~4294967295u, 73629u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0.ww, vec2<u32>(var_0.x, 104981u)) << (1u % 32u), 1u)));
    let var_2 = _wgslsmith_add_u32(u_input.c & firstLeadingBit(~84443u), ~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 14030u, u_input.b.x), vec4<u32>(var_0.x, 30119u, u_input.c, 51887u)))) << (~(~func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(502f, var_1.x, 1019f) * vec3<f32>(var_1.x, var_1.x, var_1.x)))) % 32u);
    var var_3 = -496f;
    var var_4 = true;
    global0 = _wgslsmith_mult_vec4_i32(abs(~(-(vec4<i32>(-1i, -24179i, -1i, -51751i) << (vec4<u32>(u_input.c, 64376u, u_input.b.x, var_2) % vec4<u32>(32u))))), ~select(vec4<i32>(2147483647i, 39278i, i32(-1i) * -21082i, -1i), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(1i, global0.x), 25709i, -1i), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-420f, 231f, 1091f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 827f))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), var_1.x, _wgslsmith_f_op_f32(abs(-1000f)))), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d, global0.zwx), ~global0.yyz) >> (vec3<u32>(~_wgslsmith_sub_u32(var_0.x, 7696u), 4294967295u, ~_wgslsmith_div_u32(18459u, u_input.c)) % vec3<u32>(32u)), _wgslsmith_sub_i32(-619i, min(5216i, -(~u_input.d.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.yx), vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-350f)))))));
}

