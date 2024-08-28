struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_add_u32(abs(~49225u), u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(240f, 693f)), _wgslsmith_f_op_f32(sign(363f)))) + 1000f))));
    var var_2 = var_1;
    var_2 = _wgslsmith_f_op_f32(max(var_1, 458f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-135f, _wgslsmith_f_op_f32(-var_1))), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-809f * -262f) - var_1)));
    return Struct_1(_wgslsmith_dot_vec2_u32((min(u_input.c.yw, vec2<u32>(var_0.a, var_0.a)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 5610u), vec2<u32>(u_input.c.x, u_input.b.x), u_input.b.yy)) | ~vec2<u32>(u_input.b.x, 0u), vec2<u32>(_wgslsmith_mod_u32(var_0.a, var_0.a), firstLeadingBit(97015u)) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 81182u), vec2<u32>(var_0.a, 4294967295u))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = _wgslsmith_div_f32(-287f, arg_1);
    return !(!(!select(select(vec4<bool>(true, arg_2.x, true, true), vec4<bool>(arg_2.x, true, false, arg_2.x), true), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), 367f == arg_1)));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<u32>) -> vec4<i32> {
    var var_0 = abs(u_input.a.x);
    var_0 = u_input.a.x;
    var_0 = -4792i | arg_0.x;
    let var_1 = select(vec4<bool>(true, true, true, true), select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, true, any(vec2<bool>(true, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), func_3(abs(u_input.c.x), 686f, vec2<bool>(true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true)))), true), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))), vec4<bool>(any(vec3<bool>(true, true, true)), false, true, true), func_3(~49383u, _wgslsmith_f_op_f32(946f - 223f), vec2<bool>(true, true))));
    var_0 = ~0i;
    return _wgslsmith_mod_vec4_i32(u_input.a | ~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0.x, 2147483647i, u_input.a.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 0i)), vec4<i32>(1i, -56526i, 74i, -56174i)), ~(vec4<i32>(-1i) * -u_input.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = func_1();
    var var_1 = Struct_1(0u);
    let var_2 = true;
    let var_3 = select(func_4(_wgslsmith_clamp_vec3_i32(u_input.a.ywz, -vec3<i32>(32612i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 12830i, 60854i)), ~abs(var_0.a), select(u_input.c, min(vec4<u32>(28725u, var_1.a, 0u, u_input.b.x), u_input.b), func_3(arg_1.a, 335f, vec2<bool>(false, var_2)))) | vec4<i32>(-42756i, firstTrailingBit(u_input.a.x) >> (_wgslsmith_mult_u32(var_0.a, var_0.a) % 32u), u_input.a.x, 1i), u_input.a, vec4<bool>(!all(vec4<bool>(var_2, true, false, var_2)), !((false || var_2) & true), var_2, true));
    let var_4 = ~35239u;
    return -abs(2147483647i) & (firstTrailingBit(~u_input.a.x) >> (reverseBits(4294967295u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(505f, 1516f, 872f), vec3<f32>(1809f, -437f, 1085f)))))), func_1());
    var_0 = -1i;
    var var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32((u_input.c & vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 23049u)) << (vec4<u32>(16380u, u_input.b.x, u_input.b.x, u_input.c.x) % vec4<u32>(32u)), countOneBits(vec4<u32>(13394u, 0u, 4294967295u, u_input.c.x))), ~(~u_input.c));
    let var_2 = func_3(16690u ^ select(reverseBits(u_input.c.x) ^ abs(u_input.c.x), _wgslsmith_add_u32(64681u, u_input.b.x) & 44835u, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1638f, 1987f) - _wgslsmith_f_op_f32(sign(547f))), 1f)) * -1000f), vec2<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), !select(true, true, true))).zzz;
    let var_3 = _wgslsmith_f_op_f32(min(-1503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -402f))))));
    var_0 = -3027i << (u_input.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -max(vec2<i32>(min(u_input.a.x, 2147483647i), u_input.a.x), -vec2<i32>(-1i, 2147483647i) ^ _wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(-8421i, 2147483647i))), u_input.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f), true)), ~(firstTrailingBit(~u_input.c.zyz) >> (u_input.b.xyz % vec3<u32>(32u))));
}

