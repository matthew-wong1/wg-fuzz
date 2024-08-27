struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: u32, arg_3: f32) -> vec2<i32> {
    var var_0 = select(vec2<bool>(any(vec2<bool>(false, true)) | all(vec4<bool>(true, false, false, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(true, any(vec2<bool>(true, true)))), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, true, true))), vec2<bool>(any(vec4<bool>(false, false, false, false)), arg_1 >= -69582i)));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2, u_input.a, arg_2, arg_2), ~vec4<u32>(arg_0.x, 37029u, arg_2, 0u)), max(countOneBits(vec4<u32>(arg_2, arg_0.x, 1u, arg_2)), vec4<u32>(24442u, 4294967295u, arg_0.x, 55300u))) | vec4<u32>(~(~24850u), 60407u & min(u_input.a, arg_0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, 86315u, 23549u, 21342u), vec4<u32>(89384u, 4379u, 0u, arg_2)), abs(52948u)), -(~vec2<i32>(0i, u_input.b.x)) >> (reverseBits(vec2<u32>(1u, arg_2) & ~vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), firstLeadingBit(vec3<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(37975i, u_input.b.x, arg_1), vec3<i32>(2147483647i, 1i, -2147483647i)), firstTrailingBit(arg_1)) >> ((vec3<u32>(u_input.a, 61468u, 1u) << (vec3<u32>(arg_0.x, 4294967295u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var_0 = vec2<bool>(((!var_0.x && false) & (~u_input.a < firstTrailingBit(0u))) || !((arg_3 <= 1448f) && var_0.x), true);
    return -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -u_input.b, vec2<i32>(countOneBits(var_1.c.x) | ~var_1.c.x, countOneBits(i32(-1i) * -6642i)));
}

fn func_2() -> i32 {
    global0 = ~u_input.b.x;
    let var_0 = Struct_1(~(~min(vec4<u32>(100509u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))), u_input.b ^ (~vec2<i32>(-2147483647i, u_input.b.x) >> ((vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), -max(reverseBits(vec3<i32>(-2147483647i, -1i, 6398i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-6721i, u_input.b.x, u_input.b.x))) << (firstTrailingBit(~vec3<u32>(u_input.a, u_input.a, 0u) << ((vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(37943u, u_input.a, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(floor(-1945f));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1000f, var_1)))), var_1, 332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(194f))))), firstTrailingBit(var_0.a.zw));
    var var_3 = -2147483647i;
    return _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(-30702i), _wgslsmith_dot_vec3_i32(var_0.c, var_0.c)), countOneBits(func_3(var_2.b, var_0.c.x, 26976u, 676f)), vec2<i32>(_wgslsmith_mod_i32(var_0.c.x, u_input.b.x), _wgslsmith_clamp_i32(1i, 16317i, 1i))), var_0.b << (var_0.a.zx % vec2<u32>(32u)));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, countOneBits(func_2()), u_input.b.x, u_input.b.x), select(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_add_i32(-24042i, u_input.b.x), u_input.b.x >> (u_input.a % 32u), reverseBits(u_input.b.x)), vec4<i32>(~u_input.b.x, 1i, u_input.b.x << (44676u % 32u), -2147483647i)), -(~_wgslsmith_add_vec4_i32(vec4<i32>(-33187i, 2147483647i, 1i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, 18890i, 2147483647i))), vec4<bool>(all(vec2<bool>(true, true)), true, true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)))));
    let var_0 = -select(vec4<i32>(u_input.b.x, ~u_input.b.x | _wgslsmith_dot_vec4_i32(vec4<i32>(13306i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-61027i, -21315i, 0i, u_input.b.x)), 0i, _wgslsmith_mult_i32(-u_input.b.x, u_input.b.x)), firstTrailingBit(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & -vec4<i32>(30254i, u_input.b.x, -1i, 0i)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, false, false), any(vec3<bool>(false, false, true)), false, false), true));
    let var_1 = vec4<i32>(-1i) * -(var_0 | var_0);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1361f, arg_0, arg_0), vec4<f32>(-1674f, 1011f, arg_0, arg_0), vec4<bool>(true, false, true, true)))))))), max(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 15263u), _wgslsmith_add_vec2_u32(vec2<u32>(47055u, u_input.a), vec2<u32>(u_input.a, u_input.a))), vec2<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), ~88350u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, ~32130u), firstTrailingBit(reverseBits(vec2<u32>(u_input.a, 70938u))))));
    var var_3 = Struct_2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(738f))))), 418f, var_2.a.x), vec2<u32>(u_input.a ^ (var_2.b.x | ~u_input.a), 84924u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), var_3.a.x) * 1063f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 71491i;
    let var_1 = _wgslsmith_add_vec2_i32(min(vec2<i32>(abs(~(-24207i)), _wgslsmith_mult_i32(u_input.b.x, -8334i)), abs(-vec2<i32>(2147483647i, u_input.b.x))), abs(vec2<i32>(i32(-1i) * -1i, 1i)));
    var var_2 = _wgslsmith_add_u32(33386u, 716u);
    var var_3 = false;
    var_2 = _wgslsmith_div_u32(u_input.a >> (_wgslsmith_mod_u32(~u_input.a, u_input.a) % 32u), ~46816u);
    var_0 = ~var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(921f, -468f)))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1712f)))), 1f)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(var_1.x, var_1.x), 1i, 1i), abs(vec4<i32>(1i, 1i, 1i, 1i)) >> (_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(0u, 0u, u_input.a, u_input.a)) % vec4<u32>(32u))), firstTrailingBit(~9145i >> (u_input.a % 32u)), vec3<f32>(-253f, -160f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(select(-1300f, 693f, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f * 941f)))));
}

