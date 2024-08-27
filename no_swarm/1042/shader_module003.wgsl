struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 29> = array<f32, 29>(199f, -1000f, -259f, 1633f, -903f, 512f, -198f, 1339f, 574f, -1000f, -723f, 435f, -1413f, 622f, 843f, -1782f, -3411f, -2465f, -761f, 1642f, -736f, 272f, 1051f, 901f, 996f, 600f, 287f, 123f, -1088f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = countOneBits(~vec3<u32>(0u, arg_2.b.x, ~0u));
    var_0 = ~(~vec3<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(u_input.b, 1u)), _wgslsmith_div_u32(57642u >> (arg_3.d.e.x % 32u), reverseBits(33758u)), _wgslsmith_sub_u32(u_input.b, ~arg_3.d.d)));
    global1 = array<f32, 29>();
    global0 = select(all(select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, arg_1, true), vec4<bool>(true, true, arg_1, false)), false), select(vec4<bool>(false, true, false, arg_1), select(vec4<bool>(arg_1, true, arg_3.d.c, false), vec4<bool>(arg_1, false, true, false), true), !vec4<bool>(arg_0.c, arg_3.d.c, arg_3.d.c, arg_3.d.c)), true)), arg_3.d.c, !select(all(!vec2<bool>(arg_3.d.c, arg_3.d.c)), arg_1, (61836u << (u_input.e.x % 32u)) < var_0.x));
    let var_1 = all(select(vec2<bool>(!all(vec3<bool>(true, arg_0.c, arg_1)), !arg_3.d.c), !vec2<bool>(arg_0.c, any(vec2<bool>(arg_3.d.c, arg_1))), true));
    return ~_wgslsmith_add_u32(_wgslsmith_sub_u32(select(_wgslsmith_dot_vec3_u32(arg_2.b.xzz, vec3<u32>(var_0.x, 4294967295u, arg_2.b.x)), ~80093u, false), ~(~arg_2.b.x)), min(~var_0.x, var_0.x));
}

fn func_2() -> vec4<i32> {
    global0 = true;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x ^ ~u_input.e.x), 29u)] + 888f), ~(~vec4<u32>(u_input.b, func_3(Struct_2(u_input.c.wyy, 2412f, true, u_input.b, u_input.e.zx), false, Struct_1(1055f, vec4<u32>(u_input.e.x, 0u, u_input.e.x, 4294967295u), -305f), Struct_3(0u, u_input.e.yx, global1[_wgslsmith_index_u32(5744u, 29u)], Struct_2(vec3<i32>(u_input.c.x, -57841i, u_input.a), global1[_wgslsmith_index_u32(u_input.b, 29u)], false, 4294967295u, vec2<u32>(u_input.e.x, 23242u)))), ~u_input.b, u_input.b >> (4294967295u % 32u))), -536f);
    global1 = array<f32, 29>();
    let var_1 = -2338f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-801f, _wgslsmith_f_op_f32(select(-245f, _wgslsmith_f_op_f32(select(var_0.a, global1[_wgslsmith_index_u32(4294967295u, 29u)], false)), false)), _wgslsmith_f_op_f32(sign(var_1)), 1f))));
    return _wgslsmith_add_vec4_i32(abs(firstTrailingBit(vec4<i32>(u_input.d.x, 24991i, 9864i, 8786i))), u_input.c) << (countOneBits(~var_0.b) % vec4<u32>(32u));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(~(~u_input.e), abs(min(vec3<u32>(arg_2, arg_2, u_input.e.x), u_input.e))), select(u_input.e.x, max(49308u, u_input.e.x) & (75712u << (u_input.e.x % 32u)), true == (2147483647i > u_input.d.x))), 29u)], firstLeadingBit(~vec4<u32>(21256u, u_input.b, 25929u, u_input.b) ^ ~vec4<u32>(1u, arg_2, u_input.e.x, 4294967295u)), _wgslsmith_f_op_f32(min(-716f, -913f)));
    global1 = array<f32, 29>();
    let var_1 = var_0.b.x;
    var var_2 = Struct_4(firstLeadingBit(u_input.d), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(round(-1594f)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-582f)), arg_3.x)), arg_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-110f + -674f)))))));
    var var_3 = -_wgslsmith_dot_vec4_i32(select(reverseBits(u_input.c), var_2.a, select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true)), vec4<i32>(0i, var_2.a.x, ~1i, u_input.a));
    return Struct_3(4294967295u, max(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(29270u, u_input.b), u_input.e.xx), ~(~vec2<u32>(53509u, 0u)), u_input.e.yy), u_input.e.zy), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~u_input.b, 29u)])))))), Struct_2(reverseBits(firstLeadingBit(vec3<i32>(-12323i, 29109i, u_input.d.x))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(14708u, 29u)]), true, abs(~_wgslsmith_mult_u32(7825u, var_1)), abs(vec2<u32>(arg_2 << (var_1 % 32u), firstTrailingBit(var_1)))));
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 29>();
    var var_0 = func_4(global1[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_div_vec4_i32(select(u_input.c, max(func_2(), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.a), vec4<i32>(2147483647i, 1i, u_input.c.x, u_input.d.x))), false), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-66270i, u_input.d.x, u_input.d.x, -2147483647i), abs(vec4<i32>(-2147483647i, 31119i, 0i, -24063i)), vec4<i32>(u_input.d.x, u_input.d.x, 0i, 2147483647i) << (vec4<u32>(4294967295u, 4294967295u, u_input.b, 41721u) % vec4<u32>(32u))))), ~u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(35647u, 29u)], global1[_wgslsmith_index_u32(u_input.e.x, 29u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])))))))));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(firstTrailingBit(var_0.b.x), func_3(Struct_2(~vec3<i32>(17591i, 25156i, u_input.d.x), 1f, var_0.d.c, _wgslsmith_mod_u32(var_0.d.e.x, 46153u), _wgslsmith_mult_vec2_u32(u_input.e.zx, vec2<u32>(var_0.d.e.x, u_input.b))), any(vec3<bool>(var_0.d.c, var_0.d.c, true)) && all(vec2<bool>(var_0.d.c, var_0.d.c)), Struct_1(1097f, ~vec4<u32>(4294967295u, u_input.e.x, u_input.b, var_0.b.x), global1[_wgslsmith_index_u32(u_input.e.x, 29u)]), Struct_3(35640u << (var_0.b.x % 32u), var_0.b, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b, 29u)])), Struct_2(u_input.c.yww, -3085f, var_0.d.c, u_input.e.x, vec2<u32>(27297u, var_0.a))))), ~select(~14441u, firstTrailingBit(_wgslsmith_sub_u32(1u, var_0.a)), func_4(_wgslsmith_f_op_f32(440f - var_0.d.b), vec4<i32>(var_0.d.a.x, var_0.d.a.x, u_input.c.x, u_input.a), u_input.e.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-494f, 143f))).d.c));
    let var_2 = ~min(0i, -10466i);
    var var_3 = !vec2<bool>(any(!(!vec2<bool>(var_0.d.c, false))), false);
    return Struct_2(vec3<i32>(21021i, _wgslsmith_add_i32(_wgslsmith_div_i32(select(var_0.d.a.x, 0i, true), u_input.d.x), _wgslsmith_mult_i32(-2489i ^ var_2, ~1i)), -1110i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 29u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.d.e.x, 29u)] + -671f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(sign(1015f)))))), !(!(!(var_0.d.b > var_0.c))), _wgslsmith_add_u32(u_input.b, var_0.a), ~select(~vec2<u32>(4294967295u, 35595u), vec2<u32>(u_input.e.x, 0u), vec2<bool>(true, true)) | u_input.e.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = 332f;
    let var_2 = var_0.x;
    let var_3 = func_1();
    var_1 = var_3.b;
    var var_4 = var_3;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, -515f)), vec2<f32>(_wgslsmith_div_f32(-497f, var_4.b), _wgslsmith_f_op_f32(426f + 575f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1278f, -1722f), vec2<f32>(1070f, -507f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-635f, -604f), vec2<f32>(238f, -986f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_4.b, 308f))))))));
}

