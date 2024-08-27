struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = arg_2;
    let var_1 = -_wgslsmith_div_vec3_i32(-min(vec3<i32>(arg_2.d, arg_3.a.b.x, 0i), vec3<i32>(-56094i, 1i, arg_2.a.b.x)), abs(abs(vec3<i32>(var_0.d, arg_3.d, -32925i))));
    let var_2 = 0u < var_0.c.x;
    let var_3 = u_input.a;
    var var_4 = 229f;
    return arg_2.b.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = !vec3<bool>(arg_1.a.a, all(select(vec2<bool>(false, arg_1.a.a), vec2<bool>(arg_1.a.a, true), false)), arg_1.a.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.x | true, select(all(vec3<bool>(var_0.x, var_0.x, var_0.x)) & arg_1.a.a, any(vec3<bool>(arg_1.a.a, arg_1.a.a, var_0.x)) | any(vec3<bool>(arg_1.a.a, true, true)), all(select(vec3<bool>(arg_1.a.a, true, var_0.x), vec3<bool>(true, true, var_0.x), true))), Struct_2(Struct_1(!var_0.x, vec2<i32>(36194i, 1i) ^ arg_1.a.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, -1276f)))), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, arg_1.c.x), arg_1.c.x), (arg_0.x >> (u_input.a.x % 32u)) >> (1u % 32u)), Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(742f, arg_1.b.x, 621f, -2149f))), _wgslsmith_mult_vec2_u32(~u_input.a.wx, ~u_input.a.zw), _wgslsmith_sub_i32(u_input.b ^ arg_0.x, u_input.b)))));
    var var_2 = ~select(u_input.a.zyx, ~(~vec3<u32>(u_input.a.x, 65063u, u_input.a.x)), any(!var_0.zy));
    var var_3 = Struct_2(Struct_1(!arg_1.a.a, max(vec2<i32>(-1i, arg_0.x & arg_0.x), ~arg_1.a.b)), _wgslsmith_f_op_vec4_f32(-arg_1.b), u_input.a.yy, min(-1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.x, -80572i), 1i)) | arg_0.x);
    var_3 = arg_1;
    return var_3.a.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-667f, -848f)), _wgslsmith_div_f32(317f, -961f))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-538f - -374f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1347f), -751f, -472f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -445f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(true, all(vec3<bool>(false, false, true)), Struct_2(Struct_1(false, arg_1), vec4<f32>(var_1.x, var_1.x, var_1.x, 1761f), vec2<u32>(1u, 1u), 6385i), Struct_2(Struct_1(true, arg_1), vec4<f32>(-625f, var_1.x, -538f, -597f), u_input.a.wx, 0i)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), 1617f), _wgslsmith_f_op_f32(round(var_1.x)), var_1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(step(461f, 632f))))) + vec3<f32>(var_1.x, _wgslsmith_f_op_f32(min(var_2, var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = !all(vec3<bool>(true, true, true)) & any(select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), all(vec4<bool>(false, false, false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true)));
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(false && (any(vec2<bool>(true, false)) | true), _wgslsmith_clamp_vec2_i32(arg_1, -vec2<i32>(u_input.b, arg_1.x), ~arg_1)), vec4<f32>(622f, _wgslsmith_f_op_f32(arg_0 - arg_0), arg_0, _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec2_i32(arg_1, vec2<i32>(u_input.b, arg_1.x)), ~func_3(arg_1, Struct_2(Struct_1(true, arg_1), vec4<f32>(682f, -435f, 1000f, -1194f), vec2<u32>(u_input.a.x, u_input.a.x), -73127i))))), vec2<u32>(u_input.a.x, 14598u), min(-1i, abs(func_3(vec2<i32>(1i, 30316i), Struct_2(Struct_1(false, arg_1), vec4<f32>(1482f, arg_0, -757f, -359f), vec2<u32>(0u, 38043u), 2219i)).x)));
    var_0 = Struct_2(var_0.a, var_0.b, arg_2.zw, ~(-2147483647i) ^ (-6670i & u_input.b));
    let var_1 = -(~(-(~vec4<i32>(u_input.b, u_input.b, var_0.d, 2147483647i))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(u_input.a.x, var_0.c.x, 49521u, 2255u)), ~(arg_2.x << (4294967295u % 32u)), ~(~u_input.a.x), _wgslsmith_sub_u32(select(52677u, arg_2.x, false), ~arg_2.x)) % vec4<u32>(32u)));
    var var_2 = Struct_2(Struct_1(any(select(vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, false), select(vec4<bool>(var_0.a.a, false, var_0.a.a, true), vec4<bool>(true, false, false, false), var_0.a.a), any(vec2<bool>(var_0.a.a, var_0.a.a)))), ~firstTrailingBit(vec2<i32>(-1i, u_input.b))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.b))), firstLeadingBit(_wgslsmith_div_vec2_u32(abs(reverseBits(vec2<u32>(arg_2.x, 1u))), vec2<u32>(max(var_0.c.x, 1u), _wgslsmith_clamp_u32(arg_2.x, 32611u, 0u)))), _wgslsmith_sub_i32(var_1.x, min(-45653i, var_0.d | 1i)) << (1u % 32u));
    var_2 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_mod_vec2_i32(var_1.yw, vec2<i32>(min(-30922i, -4113i), u_input.b))), var_0.b, vec2<u32>(_wgslsmith_add_u32(~arg_2.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x, arg_2.x, var_0.c.x, u_input.a.x), vec4<u32>(var_2.c.x, u_input.a.x, 32154u, arg_2.x))), arg_2.x), 1i);
    return _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(abs(1u), 4294967295u)), var_0.c, _wgslsmith_add_vec2_u32(var_2.c, firstTrailingBit(var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 102f;
    let var_1 = Struct_1(!select(true, true, true) || true, vec2<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(27874i, 46564i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(0i, 32017i, u_input.b)))));
    var var_2 = Struct_2(Struct_1(var_1.a && !select(true, var_1.a, var_1.a), var_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0 * var_0), var_0, -687f, _wgslsmith_f_op_f32(func_1(var_1.a, false, Struct_2(var_1, vec4<f32>(var_0, 703f, -1140f, -458f), u_input.a.yy, u_input.b), Struct_2(Struct_1(true, vec2<i32>(u_input.b, 759i)), vec4<f32>(545f, var_0, var_0, -999f), vec2<u32>(4294967295u, 4294967295u), 11534i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1777f, 1043f, -1353f, var_0)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1925f, var_0, var_0, var_0), vec4<f32>(-846f, 1097f, var_0, var_0)))), !(!vec4<bool>(var_1.a, false, var_1.a, var_1.a))))), reverseBits(func_2(var_0, vec2<i32>(u_input.b, _wgslsmith_add_i32(-2147483647i, u_input.b)), vec4<u32>(30425u, firstTrailingBit(19012u), min(21816u, 105322u), _wgslsmith_div_u32(u_input.a.x, 1u)))), ~u_input.b);
    var var_3 = u_input.a.x;
    var_3 = 12153u;
    let var_4 = Struct_1(var_2.a.a, ~vec2<i32>(27712i & -u_input.b, select(var_1.b.x, u_input.b, true)));
    let var_5 = u_input.a.zw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(select(max(vec4<i32>(-2147483647i, -2147483647i, -1i, var_1.b.x), vec4<i32>(u_input.b, var_2.d, -2147483647i, 25711i)), vec4<i32>(13553i, u_input.b, 949i, -var_1.b.x), var_1.a), vec4<i32>(_wgslsmith_div_i32(~6671i, var_4.b.x << (30102u % 32u)), var_1.b.x, max(var_4.b.x, ~var_1.b.x), _wgslsmith_sub_i32(i32(-1i) * -8677i, var_2.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b.x)) + _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-579f * var_2.b.x))), var_5);
}

