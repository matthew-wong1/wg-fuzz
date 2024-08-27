struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(179226u, 1u, 8600u), vec3<u32>(70734u, 15709u, 1u), vec3<u32>(4294967295u, 4294967295u, 6219u), vec3<u32>(29919u, 1u, 4294967295u), vec3<u32>(0u, 24268u, 4294967295u), vec3<u32>(1u, 51738u, 57387u), vec3<u32>(34261u, 1u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(19281u, 0u, 2305u), vec3<u32>(3418u, 59693u, 21817u), vec3<u32>(15349u, 1u, 11058u), vec3<u32>(600u, 4294967295u, 1u), vec3<u32>(4294967295u, 155193u, 49671u), vec3<u32>(31875u, 22088u, 40794u), vec3<u32>(0u, 36235u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 4294967295u, 32797u), vec3<u32>(0u, 4294967295u, 80341u), vec3<u32>(0u, 48248u, 62815u), vec3<u32>(24063u, 101428u, 1u), vec3<u32>(0u, 81673u, 4294967295u), vec3<u32>(44162u, 16592u, 72373u), vec3<u32>(14792u, 22744u, 4294967295u), vec3<u32>(29480u, 1u, 1u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = array<vec3<u32>, 24>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(232f - -702f), -655f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(step(-1399f, 399f)))), _wgslsmith_f_op_f32(f32(-1f) * -1711f))), u_input.a.x, all(vec2<bool>(!arg_0, !arg_0)), select(-38393i, ~countOneBits(~42236i), true), ~(~max(max(vec2<i32>(2147483647i, 1i), vec2<i32>(32870i, -2147483647i)), reverseBits(vec2<i32>(-1i, -90626i)))));
    global0 = array<vec3<u32>, 24>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(min(1000f, var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), -159f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-1139f + -1243f)))), vec4<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1073f), var_0.a.x, var_0.a.x))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) + -218f)) <= var_0.a.x, var_0.d, _wgslsmith_clamp_vec2_i32(var_0.e, -(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d, var_0.d), vec2<i32>(var_0.d, 16546i)) >> (_wgslsmith_div_vec2_u32(u_input.a.xy, u_input.a.xz) % vec2<u32>(32u))), ~var_0.e));
    let var_2 = var_0;
    return -2147483647i >> (firstLeadingBit(var_2.b) % 32u);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f * -636f)) - -1696f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(228f)) - -823f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-851f))))), ~4294967295u, true, ~(func_3(all(vec2<bool>(true, true))) | _wgslsmith_clamp_i32(_wgslsmith_mod_i32(56126i, -1i), i32(-1i) * -1i, abs(-36074i))), ~(-vec2<i32>(1i, 1i)));
    global0 = array<vec3<u32>, 24>();
    var var_1 = u_input.a.x;
    let var_2 = ~(u_input.a.x | ~var_0.b);
    var_1 = 4294967295u;
    return vec4<bool>(false, true, true, var_0.c);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    var var_0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_0.x != ~arg_1, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), func_2()));
    let var_1 = vec2<bool>(true, all(vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), true, true)));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2615f)), _wgslsmith_f_op_f32(ceil(-112f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(908f)) * _wgslsmith_f_op_f32(f32(-1f) * -440f)))), -656f), ~(~(u_input.a.x & arg_1)), var_1.x, firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-10823i, ~1i), ~16107i)), ~vec2<i32>(2147483647i, -37957i));
    var var_3 = any(vec4<bool>(_wgslsmith_f_op_f32(-var_2.a.x) <= -1188f, any(!(!var_1)), select(!var_1.x, true, true && var_2.c), any(select(!vec3<bool>(true, var_1.x, var_2.c), vec3<bool>(true, true, true), !vec3<bool>(var_2.c, var_1.x, var_1.x)))));
    var_0 = all(!vec3<bool>(var_1.x, var_2.c, true));
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -671f, 730f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-509f, -1106f, -659f))), _wgslsmith_f_op_vec3_f32(trunc(arg_0.a.wxy))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + var_0.x)), 969f, _wgslsmith_f_op_f32(f32(-1f) * -308f), 1099f), arg_1.a, false)), ~_wgslsmith_mult_u32(abs(min(41944u, arg_0.b)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 76434u, u_input.a.x), u_input.a)), all(!(!(!vec2<bool>(arg_0.c, arg_1.c)))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, arg_1.e.x, ~(-1i), -29926i), _wgslsmith_mod_vec4_i32(select(vec4<i32>(arg_0.e.x, arg_1.e.x, 1i, 67259i), vec4<i32>(arg_0.e.x, 2147483647i, arg_1.d, arg_1.e.x), arg_0.c), _wgslsmith_div_vec4_i32(vec4<i32>(31063i, arg_1.d, arg_1.e.x, arg_1.d), vec4<i32>(arg_0.e.x, 0i, arg_0.e.x, arg_1.d))), vec4<bool>(u_input.a.x < 4294967295u, var_0.x <= -493f, false, any(vec2<bool>(arg_0.c, false)))), -vec4<i32>(25213i, arg_1.e.x >> (77931u % 32u), arg_1.d ^ arg_1.d, -55697i)), arg_0.e);
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.a, var_1.a, arg_1.c))))), 25756u, var_2.c, -var_2.d, -arg_1.e);
    var var_4 = any(func_2().wz);
    return arg_0.e | firstLeadingBit(countOneBits(~var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, _wgslsmith_f_op_f32(ceil(-454f)), _wgslsmith_f_op_f32(f32(-1f) * -1939f), _wgslsmith_f_op_f32(ceil(737f))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(48191u, 14208u, u_input.a.x, 4294967295u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 76801u, u_input.a.x)), reverseBits(26816u)), true, 1i, max(_wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 2147483647i)), min(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -28555i), vec2<i32>(-53894i, 0i)), vec2<i32>(13947i, -1i))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-455f, -1000f, -216f, 300f) + vec4<f32>(1253f, 443f, -1000f, 402f)), u_input.a.x << (4294967295u % 32u), select(false, true, true), ~1i, vec2<i32>(18945i, -1i)), Struct_1(vec4<f32>(1427f, 394f, -1623f, 660f), func_1(u_input.a.yx, 0u), true, 1i, firstLeadingBit(vec2<i32>(1i, 717i))))));
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(var_0.a.zyz)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-954f)), _wgslsmith_f_op_f32(-var_1.a.x), -1000f)) - var_0.a.wyz), var_0.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x))) - var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)), select(~vec4<u32>(var_0.b >> (var_0.b % 32u), _wgslsmith_div_u32(100879u, var_1.b), ~23994u, var_0.b), vec4<u32>(func_1(max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx), 0u << (var_0.b % 32u)), abs(u_input.a.x) ^ 0u, var_0.b, 40627u), !vec4<bool>(true, false, var_1.c, !var_0.c)));
}

