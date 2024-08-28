struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<Struct_4, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = arg_0.a.wz;
    var var_1 = vec3<i32>(select(_wgslsmith_sub_i32(-7203i, -1930i), ~u_input.b, true), u_input.b, 2147483647i ^ (i32(-1i) * -u_input.b));
    let var_2 = Struct_1(firstTrailingBit(abs(46337u)), !all(!(!vec3<bool>(arg_1.b.b, true, true))));
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, 1i, 1i) & vec4<i32>(arg_2, u_input.b, 1i, var_1.x), vec4<i32>(2147483647i, arg_2, -78306i, arg_2) | vec4<i32>(-58041i, -286i, -14725i, u_input.b)), firstTrailingBit(~vec4<i32>(1i, u_input.b, u_input.b, u_input.b))), vec4<i32>((u_input.b << (var_2.a % 32u)) ^ arg_2, arg_2, -_wgslsmith_div_i32(-51443i, -2147483647i), (var_1.x ^ 0i) | _wgslsmith_mod_i32(0i, var_1.x))), select(abs(~(~vec4<i32>(22806i, arg_2, arg_2, -58305i))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -72312i, u_input.b, -13044i), vec4<i32>(arg_2, 0i, u_input.b, u_input.b) ^ vec4<i32>(var_1.x, -20303i, 1i, var_1.x), vec4<i32>(u_input.b, arg_2, var_1.x, 1i)), vec4<i32>(37361i, 2147483647i, min(2147483647i, 0i), 2147483647i)), !vec4<bool>(arg_2 < -1i, var_2.b, all(vec2<bool>(arg_0.b.b, arg_0.b.b)), true)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1395f, 504f, -2318f)))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-450f - 154f), -578f, _wgslsmith_f_op_f32(f32(-1f) * -455f), -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1019f, -1151f, 664f, -1108f), vec4<f32>(1312f, 452f, 1515f, -518f)), _wgslsmith_div_vec4_f32(vec4<f32>(530f, -1062f, 293f, -2696f), vec4<f32>(581f, -2330f, 657f, -1000f)))))));
    return -445f;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_2(min(global0[_wgslsmith_index_u32(u_input.c, 31u)], (global0[_wgslsmith_index_u32(u_input.c, 31u)] << (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 7u)]), Struct_2(abs(vec4<u32>(u_input.a.x, ~0u, _wgslsmith_mod_u32(1u, 1u), _wgslsmith_clamp_u32(u_input.c, 85657u, u_input.c))), global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), -2147483647i));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-646f + arg_0)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -1000f));
    let var_3 = global2[_wgslsmith_index_u32(u_input.a.x & (21296u | firstTrailingBit(~_wgslsmith_div_u32(12996u, 1u))), 21u)];
    return Struct_2(min(vec4<u32>(37520u, reverseBits(1u), ~19838u, u_input.a.x), global0[_wgslsmith_index_u32(39178u, 31u)]), global1[_wgslsmith_index_u32(4076u >> ((u_input.a.x ^ _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) % 32u), 7u)]);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: i32) -> u32 {
    global2 = array<Struct_4, 21>();
    let var_0 = func_2(1330f).b;
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    let var_1 = 0i;
    return 4294967295u;
}

fn func_1(arg_0: f32) -> vec3<u32> {
    global0 = array<vec4<u32>, 31>();
    let var_0 = func_4(func_2(842f), all(!vec3<bool>(false, all(vec3<bool>(true, false, false)), -10211i != u_input.b)), u_input.c, -43558i);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1334f, 1891f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, arg_0))), arg_0, _wgslsmith_f_op_f32(min(-1579f, _wgslsmith_f_op_f32(abs(arg_0))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(arg_0)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 2077f, -576f) * vec4<f32>(1182f, 1552f, arg_0, 1433f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, 1000f, arg_0)))))));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.b, (u_input.b ^ u_input.b) | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b)), i32(-1i) * -5229i), _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(min(-9573i, 0i), 1i)), _wgslsmith_clamp_i32(firstLeadingBit(-55259i), _wgslsmith_sub_i32(u_input.b, -u_input.b), firstTrailingBit(u_input.b))), select(select(firstTrailingBit(vec3<i32>(5519i, 251i, u_input.b) >> (u_input.a % vec3<u32>(32u))), vec3<i32>(u_input.b, countOneBits(u_input.b), -u_input.b), vec3<bool>(true, true, true)), -(~(-vec3<i32>(11978i, u_input.b, u_input.b))), vec3<bool>(!select(false, false, false), false, true)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 31u)], func_2(_wgslsmith_f_op_f32(var_1.x - 459f)).b), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(962f)) * _wgslsmith_f_op_f32(select(var_1.x, -965f, true)))), _wgslsmith_dot_vec4_i32((vec4<i32>(u_input.b, -1i, u_input.b, var_2.x) << (vec4<u32>(1u, var_0, 7306u, var_0) % vec4<u32>(32u))) & (vec4<i32>(var_2.x, 32673i, u_input.b, var_2.x) >> (vec4<u32>(60124u, 0u, var_0, var_0) % vec4<u32>(32u))), vec4<i32>(42641i, var_2.x, ~var_2.x, abs(u_input.b))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-250f * var_1.x))))));
    return vec3<u32>(~func_4(Struct_2(abs(global0[_wgslsmith_index_u32(1u, 31u)]), func_2(arg_0).b), any(vec3<bool>(true, true, false)), 4294967295u, -1i), 0u, reverseBits(3857u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 21>();
    global0 = array<vec4<u32>, 31>();
    var var_0 = min(1u, ~_wgslsmith_dot_vec3_u32(func_1(-782f), ~u_input.a) << (u_input.c % 32u));
    var var_1 = Struct_4(true, vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(139f)) + _wgslsmith_f_op_f32(select(870f, -526f, false))) > _wgslsmith_f_op_f32(f32(-1f) * -715f), true, ~(0u ^ u_input.c) <= abs(1u), true & any(vec4<bool>(true, true, true, true))), vec4<bool>(true, all(vec4<bool>(func_2(1923f).b.b, func_2(-853f).b.b, false, true)), true, -_wgslsmith_mult_i32(-1i, u_input.b) <= 2147483647i));
    let var_2 = -782f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - 306f)) - var_2)), var_2, _wgslsmith_div_vec4_u32(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c, 31u)] | global0[_wgslsmith_index_u32(u_input.a.x, 31u)]) >> (~select(vec4<u32>(0u, u_input.c, u_input.c, 1u), global0[_wgslsmith_index_u32(u_input.c, 31u)], var_1.c) % vec4<u32>(32u)), ~global0[_wgslsmith_index_u32(~u_input.a.x, 31u)]), u_input.a.xx);
}

