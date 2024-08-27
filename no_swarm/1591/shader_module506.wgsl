struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(arg_2.x, -537f)), -1000f, 234f, arg_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-150f, 2050f, 1094f, arg_2.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1792f)), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-321f, -199f) * arg_2.x)))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(-135f, 233f), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * var_0.x), _wgslsmith_div_f32(arg_2.x, var_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(127f)))) - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1586f) - 123f));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(18411u, u_input.c), reverseBits(vec2<u32>(0u, u_input.c)), false), vec2<u32>(_wgslsmith_sub_u32(u_input.c, 4294967295u), u_input.c)), ~max(vec2<u32>(31474u, u_input.c), vec2<u32>(62318u, 10687u)) ^ vec2<u32>(u_input.c ^ 45102u, 0u ^ u_input.c), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 42802u), vec2<u32>(u_input.c, 0u)), abs(vec2<u32>(80193u, 42948u))) & firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(10644u, 29778u), vec2<u32>(0u, 66294u))));
    var_1 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.c, 15655u, u_input.c) ^ ~vec4<u32>(1u, 54164u, var_1.x, u_input.c), vec4<u32>(var_1.x, 126202u, ~var_1.x, select(0u, 11661u, true))), max(1u, 0u));
    var var_2 = ~countOneBits(vec2<u32>(~56744u, ~4294967295u)) | countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(~72041u, select(var_1.x, 17289u, false)), ~countOneBits(vec2<u32>(19820u, 42330u))));
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~var_1.x, 1u, var_1.x << (var_1.x % 32u)), firstLeadingBit(vec3<u32>(u_input.c, var_2.x, u_input.c))), ~(~(vec3<u32>(var_2.x, var_2.x, 4294967295u) & vec3<u32>(u_input.c, u_input.c, 45064u))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32) -> vec4<u32> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 268f, true)) + _wgslsmith_f_op_f32(882f - arg_0)))) - arg_0);
    var_0 = -u_input.b;
    let var_2 = u_input.c > (u_input.c >> (_wgslsmith_sub_u32(firstTrailingBit(abs(4294967295u)), firstTrailingBit(9175u)) % 32u));
    var_0 = vec4<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), _wgslsmith_clamp_i32(i32(-1i) * -var_0.x, ~(~(~(-1592i))), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(36531i, u_input.b.x, -1i, u_input.a), vec4<i32>(-22573i, 7649i, 29468i, -15604i)))), var_0.x, var_0.x);
    return vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(abs(0u), _wgslsmith_div_u32(countOneBits(0u), _wgslsmith_mod_u32(u_input.c, u_input.c)))), ~(~(~(34727u & u_input.c))), max(_wgslsmith_dot_vec3_u32(firstLeadingBit(func_3(var_2, vec2<bool>(var_2, var_2), vec3<f32>(-1159f, arg_2, -279f))), vec3<u32>(1u, ~u_input.c, 66586u)), firstLeadingBit(firstLeadingBit(54658u) >> (_wgslsmith_clamp_u32(1u, u_input.c, 4294967295u) % 32u))), 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_1(-2147483647i, arg_2.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1022f, arg_2.c.x, -1065f))) + _wgslsmith_f_op_vec3_f32(-arg_1.d.b.c)))))), _wgslsmith_add_i32(max(arg_2.e, ~(-76561i)), ~(-43734i)), u_input.a);
    let var_1 = 18293u;
    let var_2 = -1i;
    var var_3 = ~select(min(vec4<u32>(0u, u_input.c, 1u, ~var_0.b.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_0.b.x, 1u, 49161u), vec4<u32>(arg_2.b.x, arg_2.b.x, 0u, arg_2.b.x))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(7517u, arg_1.d.b.b.x, var_0.b.x, var_1), func_2(-165f, arg_1.c.e, 417f)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))));
    var_0 = arg_1.d.b;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(arg_1.b.b.x, 82861u, 4294967295u, 0u)), max(vec4<u32>(arg_1.c.b.x ^ 23402u, ~107934u, ~arg_3, 1u), func_2(_wgslsmith_f_op_f32(arg_2.c.x * 2110f), arg_2.d, _wgslsmith_f_op_f32(f32(-1f) * -829f))), vec4<u32>(arg_3, 4294967295u, max(arg_2.b.x, var_3.x), var_1)), ~vec4<u32>(~arg_3, arg_0, _wgslsmith_mod_u32(arg_0, var_1), ~36297u) >> ((~reverseBits(vec4<u32>(1u, var_0.b.x, 1585u, arg_1.b.b.x)) >> (((vec4<u32>(var_1, var_1, 55278u, arg_3) | vec4<u32>(arg_2.b.x, arg_2.b.x, arg_1.b.b.x, 27624u)) | max(vec4<u32>(51023u, arg_2.b.x, 42061u, 0u), vec4<u32>(2393u, 4294967295u, 80172u, 31871u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -865f), Struct_1(_wgslsmith_sub_i32(u_input.a, -u_input.b.x), ~vec2<u32>(4294967295u << (u_input.c % 32u), func_1(1u, Struct_3(vec2<f32>(-1000f, -1253f), Struct_1(-2147483647i, vec2<u32>(33461u, 35213u), vec3<f32>(1000f, 1210f, -457f), 51024i, 0i), Struct_1(u_input.a, vec2<u32>(4294967295u, u_input.c), vec3<f32>(-1389f, 478f, -213f), u_input.a, 1i), Struct_2(-1256f, Struct_1(-66384i, vec2<u32>(u_input.c, u_input.c), vec3<f32>(1304f, -499f, -399f), u_input.a, u_input.b.x))), Struct_1(u_input.a, vec2<u32>(u_input.c, u_input.c), vec3<f32>(-1921f, 495f, -635f), u_input.b.x, u_input.b.x), 13512u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1353f, 690f, 1344f) + vec3<f32>(1687f, 629f, -635f))))), _wgslsmith_div_i32(-abs(-1i), u_input.b.x), ~(-31804i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), var_0.a, 402f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.c * vec3<f32>(-131f, -125f, var_0.b.c.x)) - vec3<f32>(101f, -1158f, -790f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-881f, -1288f, var_0.a))))));
    var var_2 = Struct_2(var_1.x, var_0.b);
    var var_3 = vec3<bool>(select(false, true, true), false, true);
    var var_4 = _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(var_2.b.d, select(-_wgslsmith_mod_i32(1i, var_2.b.a), -var_0.b.e & (17653i >> (0u % 32u)), all(vec3<bool>(var_3.x, true, false))), u_input.b.x, -1i ^ _wgslsmith_sub_i32(~var_0.b.d, -13030i)));
    var var_5 = true;
    var var_6 = -444f;
    var_3 = vec3<bool>(var_3.x, true, _wgslsmith_mult_u32(~var_2.b.b.x << ((103956u ^ u_input.c) % 32u), 0u) == _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, 1u, 0u), vec3<u32>(13834u, 32729u, 4294967295u), vec3<bool>(var_3.x, false, true)), select(vec3<u32>(1u, 21502u, 1u), vec3<u32>(4294967295u, var_0.b.b.x, var_2.b.b.x), false)), 35014u));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u & ~(_wgslsmith_dot_vec2_u32(var_0.b.b, vec2<u32>(var_0.b.b.x, var_0.b.b.x)) ^ var_0.b.b.x));
}

