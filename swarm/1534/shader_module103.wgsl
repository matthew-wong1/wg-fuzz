struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>) -> i32 {
    return arg_2.x;
}

fn func_2() -> u32 {
    global0 = min(~16530i, (func_3(true, Struct_3(vec4<f32>(198f, 801f, -1130f, -626f), Struct_2(32271u, vec2<bool>(true, true), vec2<u32>(4294967295u, 8111u), Struct_1(-2147483647i, vec3<u32>(21394u, 1u, 4294967295u))), Struct_1(1i, vec3<u32>(26010u, 4294967295u, 1u)), Struct_2(0u, vec2<bool>(true, false), vec2<u32>(64793u, 18635u), Struct_1(u_input.b.x, vec3<u32>(1u, 4294967295u, 17396u))), 32700i), u_input.b) >> (abs(1u) % 32u)) >> (1u % 32u));
    global0 = u_input.b.x;
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.a, u_input.b.x, u_input.a), -vec3<i32>(u_input.b.x, u_input.b.x, -525i)) ^ countOneBits(vec3<i32>(min(2147483647i, u_input.b.x), 13576i, -2348i)), vec3<i32>(-46042i, 67951i, u_input.a));
    let var_0 = select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(select(7003u, 51215u, false), 1u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(3475u, 59963u, 1u)), ~2521u)), firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 3080u), vec2<u32>(56718u, 17528u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 44466u), vec2<u32>(0u, 6787u), vec2<u32>(78270u, 0u))) < _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(30826u, 27868u))) > max(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 0u), vec2<u32>(1u, 1u)), 0u);
    let var_1 = Struct_2(42162u << (countOneBits(abs(1u)) % 32u), !(!(!select(vec2<bool>(true, false), vec2<bool>(var_0, false), vec2<bool>(var_0, false)))), max(select(abs(vec2<u32>(4294967295u, 0u)), ~firstTrailingBit(vec2<u32>(0u, 102067u)), true), ~vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_sub_i32(~(u_input.a | u_input.b.x), 25479i), select(~min(vec3<u32>(70960u, 0u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u)), vec3<u32>(abs(48104u), ~0u, _wgslsmith_div_u32(47575u, 5409u)), !select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, false)))));
    return var_1.c.x;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_1;
    let var_1 = vec4<u32>(_wgslsmith_add_u32(14526u ^ firstTrailingBit(func_2()), 1u), arg_0, 67256u, abs(arg_0 << (~2732u % 32u)));
    var var_2 = true;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, -1000f, 706f, 122f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(311f, 1041f, -1866f, -1120f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1195f, -661f, 263f, -1500f)))))), Struct_2(1u, vec2<bool>(true, all(vec2<bool>(true, true))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.b.x, var_1.x, arg_2.b.x), vec4<u32>(0u, var_1.x, 1u, 1u)), firstLeadingBit(arg_0)), arg_0), arg_2), Struct_1(-49161i, max(arg_2.b, vec3<u32>(11379u, ~49246u, ~var_1.x))), Struct_2(min(_wgslsmith_mod_u32(0u, var_1.x & 45815u), ~_wgslsmith_div_u32(arg_0, arg_2.b.x)), vec2<bool>(true, 32613u > var_1.x), arg_2.b.yz >> (countOneBits(_wgslsmith_mult_vec2_u32(arg_2.b.xy, vec2<u32>(arg_0, var_1.x))) % vec2<u32>(32u)), Struct_1(abs(arg_1.x ^ -2147483647i), reverseBits(vec3<u32>(arg_2.b.x, arg_2.b.x, arg_0)))), var_0.x);
    var var_4 = Struct_4(var_3.a.x >= -945f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - _wgslsmith_f_op_f32(var_3.a.x + -1836f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -676f)))))), !select(vec4<bool>(any(var_3.b.b), false, true, var_3.b.b.x), vec4<bool>(var_3.b.b.x, true, true, true), var_3.d.b.x));
    return Struct_3(vec4<f32>(-1766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(-var_4.b))), _wgslsmith_f_op_f32(var_4.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))), var_4.b), var_3.b, Struct_1(u_input.a, vec3<u32>(_wgslsmith_clamp_u32(min(1u, 64449u), _wgslsmith_add_u32(arg_0, 101466u), 4294967295u), var_1.x, 1u)), Struct_2(22948u, var_4.c.xw, _wgslsmith_clamp_vec2_u32(select(var_3.d.d.b.yx, vec2<u32>(var_1.x, 10579u), var_4.c.wx), var_1.xw, vec2<u32>(22888u, 2734u)), Struct_1(~(~arg_1.x), vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 16504u, 140124u), vec3<u32>(1u, arg_0, 78361u)), firstLeadingBit(1u)))), firstLeadingBit(-12751i));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = func_4(~arg_2.x, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(1i, 0i, -2147483647i)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, -44935i), vec3<i32>(u_input.a, arg_3.c.a, arg_3.e)), vec3<i32>(0i, u_input.b.x, arg_3.d.d.a))), -(~(vec3<i32>(arg_3.c.a, arg_3.c.a, -1i) << (arg_3.d.d.b % vec3<u32>(32u))))), func_4(_wgslsmith_dot_vec2_u32(arg_3.b.c, abs(arg_2.xx << (vec2<u32>(arg_2.x, 1u) % vec2<u32>(32u)))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_3.c.a, arg_3.c.a, 0i), select(vec3<i32>(u_input.b.x, 0i, arg_3.d.d.a), vec3<i32>(arg_3.e, u_input.a, u_input.a), true)), -(vec3<i32>(arg_3.d.d.a, -29994i, arg_3.d.d.a) >> (arg_2 % vec3<u32>(32u)))), func_4(~4294967295u, firstLeadingBit(vec3<i32>(u_input.a, -1i, arg_3.d.d.a) >> (vec3<u32>(12589u, arg_3.d.a, arg_3.c.b.x) % vec3<u32>(32u))), func_4(_wgslsmith_sub_u32(arg_2.x, arg_3.c.b.x), ~vec3<i32>(arg_3.b.d.a, arg_3.c.a, arg_3.e), func_4(arg_2.x, vec3<i32>(arg_3.e, u_input.a, arg_3.b.d.a), arg_3.d.d).b.d).d.d).d.d).d.d).d;
    let var_1 = _wgslsmith_add_u32(0u, (_wgslsmith_sub_u32(~121629u, min(arg_2.x, 1u)) << (_wgslsmith_div_u32(~24905u, arg_2.x) % 32u)) ^ 0u);
    var var_2 = Struct_1(-71474i, ~reverseBits(abs(vec3<u32>(var_1, 4294967295u, arg_2.x))));
    var var_3 = arg_3;
    var_2 = Struct_1(countOneBits(-2196i >> (_wgslsmith_sub_u32(countOneBits(var_2.b.x), select(17307u, 55250u, var_0.b.x)) % 32u)), var_2.b);
    return _wgslsmith_f_op_vec3_f32(var_3.a.yxz - vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), 395f, -1210f));
}

fn func_1() -> vec3<bool> {
    global0 = -29334i;
    let var_0 = -714f;
    let var_1 = _wgslsmith_clamp_vec4_i32(reverseBits(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 42591i, -1i, -1i), vec4<i32>(u_input.b.x, 2147483647i, u_input.a, u_input.b.x)))), vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.a) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i)), vec4<i32>(~52583i, ~_wgslsmith_sub_i32(u_input.b.x ^ 477i, i32(-1i) * -2147483647i), -16487i, u_input.b.x));
    global0 = _wgslsmith_add_i32(firstTrailingBit(~(-10409i)), -2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(vec2<bool>(true, true), true, ~_wgslsmith_div_vec3_u32(vec3<u32>(61671u, 56290u, 1u), vec3<u32>(29902u, 4294967295u, 4294967295u)), func_4(func_2(), ~var_1.zwy, Struct_1(u_input.b.x, vec3<u32>(30488u, 32495u, 7414u)))))), vec3<f32>(_wgslsmith_f_op_f32(abs(340f)), 727f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 346f) - var_0))));
    return vec3<bool>(u_input.b.x == 1i, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(func_1()));
    global0 = u_input.b.x;
    global0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(34132i, -22401i, u_input.a, ~(1i | u_input.b.x)), vec4<i32>(-16965i, min(-1i, -2147483647i) & firstTrailingBit(-7621i), _wgslsmith_sub_i32(-21245i, 3199i), select(u_input.b.x, _wgslsmith_mult_i32(2147483647i, u_input.a), false))), func_4(~66792u, _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -38022i, func_3(true, Struct_3(vec4<f32>(660f, -134f, -784f, 190f), Struct_2(1u, vec2<bool>(var_0, var_0), vec2<u32>(0u, 28590u), Struct_1(0i, vec3<u32>(4294967295u, 8040u, 58369u))), Struct_1(-2147483647i, vec3<u32>(2420u, 0u, 4294967295u)), Struct_2(47271u, vec2<bool>(false, true), vec2<u32>(97618u, 4294967295u), Struct_1(2147483647i, vec3<u32>(4294967295u, 6905u, 0u))), u_input.a), vec2<i32>(u_input.b.x, u_input.a)), -1i), ~max(vec3<i32>(-2147483647i, u_input.b.x, u_input.a), vec3<i32>(-2147483647i, -12790i, u_input.a))), func_4(countOneBits(~50890u), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 3744i, 2147483647i), vec3<i32>(u_input.a, u_input.a, 29535i)), Struct_1(-2147483647i, ~vec3<u32>(1u, 19233u, 0u))).b.d).b.d.a, u_input.a);
    global0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-468f, -419f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1123f), 1427f, _wgslsmith_f_op_vec3_f32(func_5(select(vec2<bool>(false, false), !vec2<bool>(false, var_0), vec2<bool>(false, true)), true, ~(~vec3<u32>(0u, 48246u, 23266u)), func_4(firstTrailingBit(54296u), vec3<i32>(11252i, u_input.a, u_input.a), Struct_1(u_input.a, vec3<u32>(35391u, 0u, 19825u))))).x) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f - -1709f)) + -396f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f)))), _wgslsmith_div_f32(-1635f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(702f - 892f)))), 1919f));
    global0 = -33573i;
    let var_2 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(691f)) * _wgslsmith_f_op_f32(-var_1.x))) + var_1.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_div_u32(4294967295u, 47073u), ~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(29861i, 49906i, u_input.a), vec3<i32>(-39807i, 1i, -2147483647i))), Struct_1(2147483647i, vec3<u32>(1u, 1u, 1u))).a.zz);
}

