struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1569f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1436f)), 503f, true)), _wgslsmith_f_op_f32(floor(1875f)));
    var var_1 = var_0.x;
    return abs(select(firstLeadingBit(~vec2<i32>(1974i, u_input.a.x)), abs(abs(vec2<i32>(-18288i, arg_0.a)) << ((vec2<u32>(88536u, 1u) | vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), select(vec2<bool>(true, true), select(vec2<bool>(global0.b, global0.b), !vec2<bool>(global0.b, global0.b), !vec2<bool>(global0.b, false)), select(select(vec2<bool>(global0.b, true), vec2<bool>(false, global0.b), global0.b), select(vec2<bool>(true, true), vec2<bool>(global0.b, false), vec2<bool>(false, false)), vec2<bool>(false, false)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = ~vec3<u32>(38823u, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(u_input.b), max(4294967295u, 3039u), u_input.b), abs(countOneBits(vec3<u32>(52309u, 4294967295u, 93304u)))), (u_input.b | 79812u) & select(26584u & u_input.b, 47093u, arg_0.x));
    let var_1 = (min(select(max(vec4<i32>(0i, 42748i, 0i, global0.c), vec4<i32>(u_input.c.x, -33265i, 0i, 67872i)), -vec4<i32>(-28134i, -1i, global0.a.x, -26404i), true), _wgslsmith_add_vec4_i32(vec4<i32>(-23673i, 15943i, arg_1.a, 7437i) << (vec4<u32>(var_0.x, 12207u, u_input.b, var_0.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a, 1i, 27301i, global0.a.x), vec4<i32>(arg_1.a, 0i, arg_1.a, arg_1.a)))) | ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3, 24777i, global0.a.x, arg_2.a), -vec4<i32>(arg_1.a, arg_2.a, arg_3, 31861i))) << ((~(countOneBits(vec4<u32>(57532u, 24990u, 45422u, 1u)) >> (vec4<u32>(54918u, u_input.b, var_0.x, 41204u) % vec4<u32>(32u))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(121521u, u_input.b, 1u, var_0.x), vec4<u32>(6932u, u_input.b, var_0.x, var_0.x) & vec4<u32>(12106u, var_0.x, 0u, 17466u))) % vec4<u32>(32u));
    let var_2 = true;
    let var_3 = abs(i32(-1i) * -2147483647i);
    global0 = Struct_1(func_1(arg_2) << (vec2<u32>(9438u, 59124u) % vec2<u32>(32u)), false, _wgslsmith_clamp_i32(20173i, ~_wgslsmith_dot_vec2_i32(-var_1.xw, u_input.a.yx), _wgslsmith_clamp_i32(1i, -var_3 ^ u_input.a.x, arg_2.a >> (var_0.x % 32u))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f))), 871f), _wgslsmith_f_op_f32(624f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(584f)), _wgslsmith_f_op_f32(2029f + 714f))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    global0 = arg_1;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<bool>(all(arg_2), false, all(!vec3<bool>(true, false, global0.b))), arg_0.c, Struct_2(30164i), -24371i)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-554f, -520f)))), arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-558f)) + _wgslsmith_f_op_f32(select(715f, 200f, arg_1.b)))))), 1f);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * -473f), -1001f), _wgslsmith_f_op_f32(abs(-886f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 915f) + -1644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1120f)))), vec4<f32>(349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(1655f)))), _wgslsmith_f_op_f32(152f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_1.x * 934f))), _wgslsmith_f_op_f32(var_1.x * -187f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(abs(383f))));
    var_0 = vec4<f32>(1299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.x, var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))) - _wgslsmith_f_op_f32(floor(803f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.x, var_1.x))))));
    return ~_wgslsmith_dot_vec3_i32(u_input.d, firstTrailingBit(firstTrailingBit(vec3<i32>(-1i, u_input.c.x, -2147483647i))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = Struct_1(global0.a, true, i32(-1i) * -1i);
    global0 = Struct_1(u_input.a.yz, any(!vec2<bool>(global0.b | true, arg_0.b)), u_input.c.x);
    global0 = arg_0;
    let var_0 = ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(57695u, u_input.b), vec2<u32>(u_input.b, u_input.b)) & ~vec2<u32>(1u, 12113u), vec2<u32>(u_input.b, u_input.b)));
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x, firstLeadingBit(52815i)), _wgslsmith_add_vec2_i32(-u_input.c, vec2<i32>(arg_0.a.x, -7576i))), _wgslsmith_f_op_f32(f32(-1f) * -942f) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1141f * 309f))))), -u_input.a.x ^ _wgslsmith_sub_i32(0i, 23971i));
    return Struct_2(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(func_1(Struct_2(global0.a.x)), true, _wgslsmith_add_i32(_wgslsmith_mult_i32(-global0.a.x, func_2(Struct_3(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), 45271i, Struct_2(30365i), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 21863u, u_input.b)), Struct_1(u_input.a.xx, global0.b, u_input.c.x), vec2<bool>(false, false))), global0.c | select(u_input.c.x, -2147483647i, global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(-2147483647i)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(34259u, 1u, u_input.b), ~vec3<u32>(16952u, u_input.b, 12230u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, u_input.b, 56781u), select(vec3<u32>(u_input.b, 12037u, 36781u), vec3<u32>(u_input.b, u_input.b, 1u), global0.b)), vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(60128u, u_input.b, 4294967295u), vec3<u32>(4294967295u, 76065u, 23683u)), vec3<u32>(u_input.b, u_input.b, 4294967295u)), select(24760u, 0u, any(vec2<bool>(global0.b, global0.b)))), vec3<u32>(_wgslsmith_add_u32(u_input.b ^ u_input.b, 98176u), reverseBits(~16690u), u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(70511u, ~u_input.b, u_input.b), min(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.b, 67323u), ~vec3<u32>(2198u, u_input.b, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), select(vec3<u32>(u_input.b, u_input.b, 3409u), vec3<u32>(u_input.b, u_input.b, 85868u), global0.b)))));
}

