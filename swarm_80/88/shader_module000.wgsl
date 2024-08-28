struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    let var_0 = vec2<u32>(26916u, ~arg_0.a) << (~(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(arg_0.a, arg_0.a)), vec2<u32>(u_input.b, 32354u)) | vec2<u32>(arg_0.a, 4294967295u)) % vec2<u32>(32u));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), 771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2370f)) - -906f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(70460u, 4294967295u, 37769u, u_input.b), vec4<u32>(u_input.a, 59799u, 42811u, 1u)) ^ abs(vec4<u32>(u_input.a, 1u, u_input.b, u_input.a)))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.a, 7229u, u_input.b) | ~vec4<u32>(4294967295u, 0u, 0u, u_input.a), reverseBits(max(vec4<u32>(0u, u_input.b, 8435u, u_input.a), vec4<u32>(0u, 4294967295u, u_input.b, u_input.a)))), vec4<u32>(~(~9097u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, u_input.a, u_input.b), ~47784u), u_input.a, ~1912u)));
    let var_1 = ~vec2<i32>(2147483647i, select(_wgslsmith_add_i32(1i, 0i), 1i, arg_1.x)) | -vec2<i32>(max(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 12905i, 2147483647i), vec3<i32>(-38935i, 1i, -1i))), 9931i);
    var var_2 = ~_wgslsmith_mod_vec2_u32(~(vec2<u32>(38498u, u_input.a) << (vec2<u32>(1613u, var_0.x) % vec2<u32>(32u))), var_0.yz) | var_0.xw;
    var var_3 = arg_0.a.x;
    let var_4 = arg_0;
    return Struct_1(abs(~60747u), ~(-(var_1 << ((var_0.yy << (var_0.yx % vec2<u32>(32u))) % vec2<u32>(32u)))), vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(34280i, var_1.x, -83713i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 91597i, 2147483647i), vec3<i32>(28970i, var_1.x, var_1.x)))), _wgslsmith_dot_vec2_i32(var_1, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 31183i), vec2<i32>(-34677i, var_1.x)), var_1)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x), var_1.x & var_1.x) ^ var_1.x), vec3<bool>(true, arg_1.x, !arg_1.x));
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec3_i32(arg_0.c, arg_0.c);
    var var_1 = all(arg_0.d);
    let var_2 = select(min(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, arg_0.c.x, arg_0.c.x, var_0.x), abs(vec4<i32>(-12024i, -19163i, arg_0.b.x, arg_0.b.x))), vec4<i32>(arg_0.c.x, 7749i, ~arg_0.b.x, var_0.x)) << (~countOneBits(vec4<u32>(45074u, 0u, arg_0.a, u_input.a)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(~(-4080i), abs(firstLeadingBit(-47293i)), _wgslsmith_add_i32(max(-2147483647i, -33309i), 1i)), firstLeadingBit(_wgslsmith_clamp_i32(var_0.x, var_0.x | 0i, _wgslsmith_clamp_i32(2147483647i, -1i, arg_0.c.x))), arg_0.b.x, 1i), all(vec2<bool>(arg_0.d.x, true | (false & arg_0.d.x))));
    var var_3 = 2147483647i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1435f)));
    return Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_4)), _wgslsmith_f_op_f32(var_4 - var_4))), var_4, -1817f, _wgslsmith_f_op_f32(-var_4)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1872f, 1589f, var_4, var_4) * vec4<f32>(822f, 366f, 450f, var_4))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_4, 102f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, -230f, var_4) * vec4<f32>(var_4, var_4, -569f, 686f))))));
}

fn func_1() -> bool {
    let var_0 = true;
    var var_1 = func_4(func_3(func_2(Struct_1(_wgslsmith_clamp_u32(0u, 67325u, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(35781i, 45651i), vec2<i32>(-50653i, -2147483647i), vec2<i32>(9975i, 26180i)), vec3<i32>(-1i, 30802i, 1i), select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, false, var_0), vec3<bool>(true, var_0, false)))), select(vec4<bool>(true, true, var_0, !var_0), !(!vec4<bool>(true, var_0, false, false)), var_0 && var_0)));
    let var_2 = Struct_2(-741f, vec2<i32>(~abs(-13710i << (u_input.b % 32u)), -2147483647i));
    let var_3 = var_0;
    var var_4 = var_2;
    return false;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_3(vec2<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(-42370i, -35068i) & firstTrailingBit(27762i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, -20512i, 24397i), -2147483647i)), _wgslsmith_div_i32(~56912i, func_3(Struct_4(vec4<f32>(arg_2, 526f, arg_2, 1018f)), arg_0).c.x & -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(540f, 284f, arg_2, 211f))))), vec4<f32>(-409f, -279f, -1000f, _wgslsmith_f_op_f32(-arg_2)))) - vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(0u, vec2<i32>(2147483647i, -29730i), vec3<i32>(-22385i, -2147483647i, -26338i), arg_0.xyx)).a.x * -1754f), arg_2, func_4(Struct_1(u_input.a, vec2<i32>(29954i, 1i), vec3<i32>(2147483647i, 26165i, -2147483647i), vec3<bool>(arg_1, arg_0.x, arg_0.x))).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1412f)) + 961f))), Struct_2(_wgslsmith_f_op_f32(arg_2 * arg_2), vec2<i32>(~(-1i), 1i)), vec4<i32>(-2147483647i, -(-51782i >> (1u % 32u)), 1i, -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(887f)))));
    let var_1 = abs(select(vec4<i32>(var_0.a.x, 11014i, _wgslsmith_add_i32(1171i, var_0.a.x), abs(-47618i)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, var_0.d.x, var_0.c.b.x, var_0.a.x), var_0.d)), vec4<bool>(arg_1, any(vec4<bool>(arg_1, true, arg_0.x, true)), func_1(), arg_0.x))) >> (vec4<u32>(reverseBits(u_input.b), u_input.a, u_input.a, ~(~4294967295u ^ u_input.a)) % vec4<u32>(32u));
    var var_2 = -vec4<i32>(_wgslsmith_clamp_i32(abs(reverseBits(var_1.x)), var_0.a.x, var_0.d.x), -var_1.x, -1i, max(var_0.d.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(24304i, var_1.x, var_1.x), vec3<i32>(-1i, var_0.c.b.x, var_1.x) >> (vec3<u32>(u_input.b, u_input.b, 31478u) % vec3<u32>(32u)))));
    var_2 = var_1;
    let var_3 = true;
    return firstTrailingBit(~(min(vec3<u32>(u_input.a, u_input.a, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 76282u, 1u), vec3<u32>(u_input.a, 56786u, u_input.b), vec3<u32>(0u, 4294967295u, u_input.b))) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 63377u), vec3<u32>(u_input.b, 53119u, u_input.a)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(func_5(select(vec4<bool>(true, true, select(false, true, false), select(false, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), func_1()), vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true)), select(false, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false)), func_3(Struct_4(vec4<f32>(418f, -2168f, 394f, 357f)), vec4<bool>(false, true, true, false)).d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), reverseBits(~(~vec3<u32>(u_input.b, u_input.a, 1u))));
    var var_1 = Struct_3(vec2<i32>(2147483647i, _wgslsmith_sub_i32(~abs(0i), ~(~2147483647i))), vec4<f32>(1f, 1f, 1f, 1f), Struct_2(1f, -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(49419i, 2147483647i), vec2<i32>(-2147483647i, 9421i), vec2<i32>(1i, 5572i)), vec2<i32>(1i, 1i), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -54214i), vec3<i32>(23013i, 2147483647i, -11242i)), -2147483647i << (u_input.a % 32u), -29248i, 0i), -415f);
    let var_2 = _wgslsmith_dot_vec2_u32(select(var_0.xy, var_0.zy, false), var_0.yx);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a, var_1.b.x) * vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.c.a)));
    var_1 = Struct_3(vec2<i32>(-1i) * -min(vec2<i32>(28320i, var_1.a.x), reverseBits(vec2<i32>(var_1.c.b.x, var_1.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1315f, 1000f, -1000f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(519f, var_3.x, 1422f, -1135f))))), var_1.c, vec4<i32>(var_1.c.b.x, var_1.c.b.x, -18860i, var_1.c.b.x | _wgslsmith_div_i32(1i, firstLeadingBit(var_1.d.x))), -1000f);
    var_1 = Struct_3(-var_1.c.b, _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(441f)) * _wgslsmith_f_op_f32(-var_3.x)), -294f, _wgslsmith_f_op_f32(exp2(var_1.e)), 1172f)), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2023f)))), ~_wgslsmith_sub_vec2_i32(-var_1.a, var_1.c.b)), var_1.d, var_3.x);
    let var_4 = select(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_3(Struct_4(vec4<f32>(109f, var_1.b.x, var_1.c.a, var_3.x)), vec4<bool>(true, true, false, true)).d.zy), vec2<bool>(var_1.e < 1184f, false), vec2<bool>(func_1(), true)), func_3(func_4(Struct_1(var_0.x, func_3(Struct_4(var_1.b), vec4<bool>(false, true, false, false)).c.zz, ~vec3<i32>(-7330i, 6733i, 26921i), vec3<bool>(true, true, true))), vec4<bool>(all(vec4<bool>(true, true, false, true)) && false, true, func_3(func_4(Struct_1(u_input.b, var_1.d.yz, vec3<i32>(var_1.c.b.x, 17625i, var_1.a.x), vec3<bool>(false, true, false))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true)).d.x, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))))).d.yz, all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), var_0.x != var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(15753i, -1i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.b, _wgslsmith_f_op_vec4_f32(step(var_1.b, vec4<f32>(var_3.x, 700f, var_3.x, 335f))), any(vec3<bool>(var_4.x, true, var_4.x)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.b)))))), ~var_0.x);
}

