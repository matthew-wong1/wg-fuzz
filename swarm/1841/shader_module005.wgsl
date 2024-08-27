struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<vec3<f32>, 17>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> i32 {
    return ~firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_1.e, vec4<i32>(-1i, -2147483647i, 16350i, u_input.b)), ~vec4<i32>(0i, u_input.c, u_input.c, arg_1.d.x)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec4<i32> {
    global0 = array<Struct_2, 14>();
    var var_0 = Struct_2(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(978f, 247f)) + _wgslsmith_f_op_f32(f32(-1f) * -252f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f))))), arg_0, -461f, !select(vec3<bool>(4294967295u > arg_1.x, true, arg_0), select(vec3<bool>(true, true, true), vec3<bool>(arg_0, false, true), select(vec3<bool>(true, arg_0, false), vec3<bool>(false, false, arg_0), arg_0)), arg_0));
    var var_1 = abs(abs(-_wgslsmith_add_i32(u_input.b, u_input.c))) ^ _wgslsmith_div_i32(u_input.b, u_input.c);
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    return vec4<i32>(-29539i, 28029i, _wgslsmith_mod_i32(_wgslsmith_div_i32(~max(u_input.c, u_input.b), -_wgslsmith_div_i32(8673i, u_input.c)), abs(u_input.b)), u_input.c);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(true, ~(-vec2<i32>(-1i, -32387i) ^ vec2<i32>(u_input.b, u_input.c)) | select(reverseBits(vec2<i32>(u_input.b, -2147483647i)) >> (firstTrailingBit(vec2<u32>(6440u, 4294967295u)) % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(-13293i, 0i), vec2<i32>(u_input.b, u_input.c)), u_input.b > func_2(-1062f, Struct_1(false, vec2<i32>(u_input.b, -320i), u_input.d.xy, vec4<i32>(u_input.b, u_input.c, 0i, u_input.b), vec4<i32>(25133i, -1i, -30172i, u_input.b)), false, 27940i)), ~u_input.a.zy, ~reverseBits(select(vec4<i32>(u_input.b, 41606i, -1i, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -13624i, 1i, u_input.c), vec4<i32>(1i, u_input.c, -24036i, u_input.c)), u_input.c > -41021i)), abs(abs(func_3(false, ~u_input.d.zx))));
    var_0 = Struct_1(false, -vec2<i32>(u_input.b, firstTrailingBit(u_input.c)), vec2<u32>(1u, select(1u, u_input.d.x, all(vec2<bool>(true, true)))) ^ _wgslsmith_add_vec2_u32(firstLeadingBit(var_0.c), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(60469u, u_input.d.x, var_0.c.x), vec3<u32>(var_0.c.x, 4294967295u, 4294967295u)), ~1u)), var_0.e, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.b, -1i, -1i)), vec4<i32>(var_0.d.x, var_0.e.x, -24682i, var_0.e.x)) | ~vec4<i32>(1i, 2147483647i, var_0.b.x, -15898i), vec4<i32>(-6568i, -2147483647i, 1i, ~(-1i) << (var_0.c.x % 32u))));
    var var_1 = !vec4<bool>(var_0.a, var_0.a, !(!var_0.a), true && !var_0.a);
    global0 = array<Struct_2, 14>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -167f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-845f - -1060f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(130f, -1064f, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(247f + -1249f)))))));
    return 181f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-709f + -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f + -460f)) + 1523f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1137f, 1f)), -1396f), !any(vec4<bool>(false, false, false, true)))));
    global1 = array<vec3<f32>, 17>();
    global0 = array<Struct_2, 14>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1277f * -487f), var_0, _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))) <= _wgslsmith_f_op_f32(var_0 - -135f)));
    var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.c, ~reverseBits(u_input.c), -(i32(-1i) * -8588i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, firstLeadingBit(0u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, 1u, u_input.d.x)), u_input.d), u_input.d.x)), _wgslsmith_f_op_f32(-1344f * var_0), _wgslsmith_sub_i32(abs(select(1i, _wgslsmith_add_i32(var_2.x, u_input.b), 1i != u_input.b)), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.x, -19328i, -1i), select(vec3<i32>(u_input.c, var_2.x, 1i) ^ vec3<i32>(75899i, var_2.x, var_2.x), vec3<i32>(var_2.x, -2147483647i, var_2.x), all(vec3<bool>(false, false, true))))), var_2.x, u_input.a.x);
}

