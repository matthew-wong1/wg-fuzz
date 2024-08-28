struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(round(arg_0));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = vec2<i32>(i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2.a, u_input.d.x), 2147483647i), 2147483647i);
    global0 = array<vec2<bool>, 15>();
    let var_1 = Struct_2(u_input.a, 582f);
    var var_2 = Struct_2(~70410u, _wgslsmith_f_op_f32(-var_1.b));
    var var_3 = _wgslsmith_sub_vec2_i32(var_0, u_input.d.xy);
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(519f, -1628f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 279f)))))));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    let var_0 = vec2<bool>(true, true);
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    var var_1 = Struct_3(11793i);
    var_1 = Struct_3(34146i);
    return arg_0.x;
}

fn func_1() -> Struct_4 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(2521f + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-739f - 538f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1238f, 1260f) + -592f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(true, 1i, Struct_3(17156i)))))))), -385f, _wgslsmith_f_op_f32(max(-795f, _wgslsmith_f_op_f32(308f - _wgslsmith_f_op_f32(f32(-1f) * -395f)))));
    global0 = array<vec2<bool>, 15>();
    var var_1 = ~(~(~(_wgslsmith_mult_vec2_u32(vec2<u32>(18458u, 0u), vec2<u32>(u_input.e, u_input.e)) | ~vec2<u32>(u_input.c, 31867u))));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(36994i, u_input.d.x, -108885i, u_input.d.x)), -vec4<i32>(0i, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<i32>(firstTrailingBit(u_input.d.x), -40391i, u_input.d.x, -15772i)), i32(-1i) * -1i), _wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i) | vec2<i32>(0i, u_input.d.x), ~u_input.d.xz, _wgslsmith_add_vec2_i32(vec2<i32>(-30009i, 2147483647i), vec2<i32>(23022i, u_input.d.x))), countOneBits(vec2<i32>(_wgslsmith_sub_i32(-832i, u_input.d.x), -u_input.d.x))));
    var_2 = 9895i;
    return Struct_4(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true)))), any(global0[_wgslsmith_index_u32(~max(~var_1.x, 4546u), 15u)]), ~(~38751u), reverseBits(select(~(~vec4<i32>(634i, -10865i, u_input.d.x, u_input.d.x)), ~(vec4<i32>(6931i, u_input.d.x, -9251i, u_input.d.x) >> (vec4<u32>(1u, u_input.b, 7912u, 0u) % vec4<u32>(32u))), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), all(vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1089f - -351f)), var_0.x, _wgslsmith_f_op_vec2_f32(func_3(all(vec4<bool>(false, true, false, true)), select(1i, u_input.d.x, true), Struct_3(u_input.d.x))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -23532i;
    let var_1 = func_1();
    let var_2 = Struct_2(12039u, _wgslsmith_f_op_vec2_f32(func_3(true, -2147483647i, Struct_3(var_1.d.x ^ _wgslsmith_clamp_i32(-1i, -1i, u_input.d.x)))).x);
    global0 = array<vec2<bool>, 15>();
    let var_3 = (3402i >> (~firstLeadingBit(func_1().c) % 32u)) & _wgslsmith_add_i32(_wgslsmith_add_i32(var_1.d.x, 8955i), var_1.d.x);
    var_0 = ~var_1.d.x << (var_1.c % 32u);
    var_0 = 2147483647i;
    var var_4 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c << (20696u % 32u), 1u), _wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a, 43270u), vec2<u32>(113395u, 41023u), vec2<u32>(var_2.a, u_input.c)), countOneBits(~vec2<u32>(1u, var_1.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.e, 6112u)) | ~vec2<u32>(var_2.a, var_1.c)));
    var_4 = _wgslsmith_sub_u32(abs(var_1.c) | ~min(~4294967295u, 4294967295u), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(35153u, 4294967295u, var_1.c), ~vec3<u32>(92700u, var_1.c, var_2.a)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 4294967295u, u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c, var_2.a, var_2.a), vec3<u32>(0u, 1u, var_1.c))))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, u_input.b, ~1u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 9061u, var_2.a) & (vec3<u32>(3438u, var_2.a, var_1.c) & vec3<u32>(u_input.a, var_2.a, 53786u)), max(vec3<u32>(0u, u_input.c, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b, 4294967295u), vec3<u32>(var_1.c, u_input.a, 88155u))))));
}

