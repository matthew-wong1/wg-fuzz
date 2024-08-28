struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: bool = true;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    global0 = select(0i, u_input.c, true || (all(select(vec4<bool>(arg_1.a.c.x, false, true, true), vec4<bool>(false, true, arg_1.a.a.x, false), arg_1.b.x)) && arg_1.a.c.x));
    global0 = 1i;
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(1219f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-740f - -1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(189f * -1724f))))))));
    var var_1 = Struct_1(!vec2<bool>(arg_1.c.a.x && true, true), firstTrailingBit(select(vec3<u32>(1u ^ u_input.a.x, 0u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, u_input.b.x))), arg_1.a.b, true)), select(!(!select(vec3<bool>(true, false, true), arg_1.a.c, arg_1.c.c)), select(vec3<bool>(all(vec3<bool>(false, true, true)), !arg_1.a.a.x, true), select(arg_1.c.c, !arg_1.b, arg_1.a.c.x), arg_1.a.c), !select(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.c.a.x, arg_1.a.a.x, arg_1.c.a.x), arg_1.a.c.x), select(vec3<bool>(false, false, false), vec3<bool>(false, arg_1.c.a.x, arg_1.b.x), false), true)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -arg_1.a.d, arg_1.c.d));
    global0 = _wgslsmith_sub_i32(abs(abs(firstTrailingBit(arg_1.c.d.x & 12462i))), ~(-3556i));
    return ~_wgslsmith_div_i32(arg_1.a.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1.d, vec3<i32>(arg_0.b, var_1.d.x, u_input.c)) >> (vec3<u32>(arg_0.a.x, arg_0.a.x, 4294967295u) % vec3<u32>(32u)), arg_1.c.d << (abs(arg_0.a) % vec3<u32>(32u))));
}

fn func_2() -> Struct_2 {
    global0 = u_input.c;
    let var_0 = 1u;
    global0 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(func_3(Struct_3(vec3<u32>(var_0, 1u, var_0), 1i), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(u_input.a.x, 29043u, 29885u), vec3<bool>(true, false, false), vec3<i32>(u_input.c, u_input.c, 1i)), vec3<bool>(true, false, false), Struct_1(vec2<bool>(true, false), vec3<u32>(u_input.a.x, 44364u, var_0), vec3<bool>(false, false, false), vec3<i32>(u_input.c, u_input.c, -39833i)))) & u_input.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, -31272i, 31174i, u_input.c), -vec4<i32>(u_input.c, 14686i, u_input.c, -23552i)), _wgslsmith_clamp_i32(min(u_input.c, u_input.c), ~(-2147483647i), u_input.c), reverseBits(-u_input.c)), abs(-(~vec4<i32>(6012i, u_input.c, -2147483647i, u_input.c))), (u_input.a.x >= 61346u) && !all(vec2<bool>(true, false))), max(select(max(select(vec4<i32>(-2147483647i, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.c, -70429i, -39195i, u_input.c), true), vec4<i32>(u_input.c, u_input.c, u_input.c, 8173i)), _wgslsmith_add_vec4_i32(vec4<i32>(71191i, u_input.c, u_input.c, 33168i), vec4<i32>(u_input.c, 2147483647i, u_input.c, -1i)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 0i, 1i, 8505i), vec4<i32>(-2147483647i, u_input.c, -3885i, u_input.c))));
    var var_1 = true;
    var var_2 = ~firstLeadingBit(~abs(vec3<u32>(var_0, u_input.a.x, u_input.a.x)));
    return Struct_2(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, false, false)), true), any(vec4<bool>(true, true, true, true))), _wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(29188u, 90395u, 0u), vec3<u32>(u_input.a.x, u_input.b.x, 76029u))), ~select(vec3<u32>(u_input.b.x, 73445u, 0u), vec3<u32>(17774u, 1u, 4294967295u), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<i32>(-firstTrailingBit(-30662i), 1i, -35238i)), !select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), false || select(true, true, true)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(select(true, true, true), any(vec4<bool>(true, true, false, false)))), countOneBits(vec3<u32>(u_input.a.x, 15268u, 11315u)) & ~(~vec3<u32>(var_0, var_0, var_0)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), u_input.a.x >= 0u), select(true, true, false)), abs(vec3<i32>(-1i) * -vec3<i32>(u_input.c, -6447i, -617i))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    let var_0 = vec3<bool>(true && arg_1.c.x, arg_1.b.x > u_input.a.x, all(arg_1.c.zy));
    let var_1 = func_2();
    global1 = var_0.x;
    global0 = arg_1.d.x;
    let var_2 = ~vec4<u32>(_wgslsmith_sub_u32(arg_1.b.x ^ 22081u, u_input.a.x) << (select(u_input.b.x, ~1u, arg_2) % 32u), ~0u, ~3252u, 1u);
    return select(vec4<bool>(true, (func_2().a.d.x >= _wgslsmith_mod_i32(u_input.c, u_input.c)) | false, false, !(!any(vec3<bool>(false, arg_1.c.x, true)))), !(!select(!vec4<bool>(false, true, var_1.a.a.x, false), !vec4<bool>(var_0.x, arg_2, false, true), vec4<bool>(true, arg_2, true, var_0.x))), (_wgslsmith_dot_vec2_u32(arg_1.b.yz | vec2<u32>(arg_1.b.x, 66592u), ~var_1.c.b.yy) | _wgslsmith_sub_u32(36615u, _wgslsmith_div_u32(1u, var_2.x))) < firstLeadingBit(max(abs(var_1.c.b.x), min(0u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1958f;
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2027f, -1408f, false)) + 1f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1316f + _wgslsmith_f_op_f32(f32(-1f) * -1353f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-330f - -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -492f))), !any(select(func_1(690f, Struct_1(vec2<bool>(false, false), vec3<u32>(20939u, 4294967295u, u_input.b.x), vec3<bool>(true, true, true), vec3<i32>(u_input.c, 59826i, u_input.c)), false), func_1(1000f, Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<bool>(false, true, true), vec3<i32>(2147483647i, -2147483647i, u_input.c)), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true))));
    var var_2 = vec2<u32>(min(~u_input.a.x, u_input.b.x), _wgslsmith_mod_u32(~u_input.b.x, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(319f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(666f, -1203f)), _wgslsmith_f_op_f32(f32(-1f) * -578f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f) - _wgslsmith_f_op_f32(-667f * 1285f)), -330f))), u_input.c);
}

