struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), all(select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, false), vec2<bool>(false, false), u_input.a != arg_0.x), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false), true))));
    let var_1 = (vec4<u32>(_wgslsmith_add_u32(arg_2, arg_0.x) ^ abs(arg_0.x), (1u | arg_2) | arg_0.x, _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(arg_0.x, arg_0.x)), countOneBits(arg_2) | ~arg_2) | vec4<u32>(arg_0.x, ~_wgslsmith_sub_u32(u_input.a, 63361u), _wgslsmith_sub_u32(17188u, firstTrailingBit(u_input.b.x)), arg_0.x)) | vec4<u32>((~arg_0.x & min(arg_2, 6518u)) >> (_wgslsmith_mult_u32(u_input.b.x & u_input.b.x, 4294967295u) % 32u), arg_2, select(12751u, _wgslsmith_dot_vec4_u32(~arg_0, ~vec4<u32>(arg_0.x, 4294967295u, 32283u, arg_2)), all(var_0.zx)), _wgslsmith_sub_u32(~arg_0.x, _wgslsmith_sub_u32(25703u, 1660u)) | _wgslsmith_mult_u32(~arg_2, arg_0.x));
    var_0 = !vec3<bool>(!var_0.x, select(var_0.x, any(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, false, true, false))), false & var_0.x), any(vec3<bool>(5661u >= u_input.b.x, false, var_0.x)));
    let var_2 = Struct_1(!vec4<bool>(!var_0.x, var_0.x, true, (arg_1.x & 1i) == 2147483647i), !(_wgslsmith_mult_u32(4294967295u, var_1.x) > ~abs(arg_0.x)));
    var var_3 = arg_3.x;
    return !select(!vec4<bool>(!var_0.x, true, all(vec4<bool>(true, var_2.b, false, false)), arg_2 == 60738u), var_2.a, select(vec4<bool>(select(true, var_2.a.x, var_2.a.x), var_2.a.x, true, true), !select(vec4<bool>(false, false, true, true), var_2.a, false), select(vec4<bool>(var_0.x, true, var_2.b, false), select(var_2.a, var_2.a, vec4<bool>(var_2.a.x, false, true, true)), true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, min(u_input.b.x, 1u), 4294967295u, ~1u), _wgslsmith_add_vec4_u32(select(vec4<u32>(7734u, 0u, 105984u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.b.x, 22128u), arg_1.a.a), max(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 54386u), vec4<u32>(15714u, u_input.a, 0u, 5901u))), ~(vec4<u32>(57230u, u_input.b.x, 41746u, u_input.b.x) | vec4<u32>(50744u, u_input.a, u_input.b.x, u_input.a))), reverseBits(reverseBits(vec4<i32>(1i, -2147483647i, 71358i, -21175i))) ^ _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, -2147483647i, u_input.c, u_input.c), vec4<i32>(-4247i, u_input.c, -25768i, u_input.c) >> (vec4<u32>(u_input.a, u_input.a, 32328u, u_input.b.x) % vec4<u32>(32u))), ~min(u_input.b.x, 50708u), vec2<i32>(~u_input.c, (u_input.c << (u_input.b.x % 32u)) << (u_input.b.x % 32u))).x & arg_0.a.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-294f + _wgslsmith_f_op_f32(-arg_1.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-605f + 386f), 809f)) - _wgslsmith_f_op_f32(f32(-1f) * -686f));
    let var_2 = arg_0.c.a.x;
    var var_3 = u_input.b.zx;
    var_3 = _wgslsmith_mod_vec2_u32(~u_input.b.yx, ~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.x, 43988u), vec2<u32>(13591u, 21553u), u_input.b.yx))));
    return !(!(!(!arg_0.c.a)));
}

fn func_2() -> vec4<bool> {
    return func_4(Struct_2(Struct_1(vec4<bool>(true, true, true, true), select(all(vec4<bool>(true, true, false, false)), u_input.b.x != u_input.a, select(false, false, true))), 1835f, Struct_1(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true)), true)), Struct_2(Struct_1(func_3(~vec4<u32>(1u, 97589u, u_input.b.x, 4294967295u), _wgslsmith_clamp_vec4_i32(vec4<i32>(-43435i, u_input.c, 1i, 1i), vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c), vec4<i32>(-28430i, u_input.c, 2147483647i, 2147483647i)), u_input.b.x, -vec2<i32>(11810i, 5458i)), func_3(vec4<u32>(4294967295u, u_input.a, 1u, 0u) << (vec4<u32>(0u, 96939u, 0u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(8428i, u_input.c, -2147483647i, -18288i), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), vec4<i32>(-8660i, u_input.c, u_input.c, u_input.c)), 7907u, max(vec2<i32>(3065i, 0i), vec2<i32>(u_input.c, 9090i))).x), 403f, Struct_1(vec4<bool>(true, true, false, true), all(vec3<bool>(true, false, true)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = vec2<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_1.a, 0u), ~vec2<u32>(arg_1.a, 4294967295u), vec2<u32>(38709u, 30231u)), u_input.b.zy));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1266f + -955f), 1234f, -471f, -828f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-160f, 592f, -549f, -667f)))), true))));
    let var_2 = Struct_2(arg_0, -528f, Struct_1(vec4<bool>(_wgslsmith_f_op_f32(sign(-723f)) > _wgslsmith_f_op_f32(-var_1.x), true, false, true), true));
    var var_3 = Struct_2(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))), Struct_1(!(!var_2.c.a), !all(vec3<bool>(false, arg_0.a.x, true))));
    var_3 = Struct_2(arg_1.b, _wgslsmith_f_op_f32(-var_1.x), Struct_1(!var_2.a.a, var_3.a.a.x));
    return ~reverseBits(vec2<i32>(-1i) * -(vec2<i32>(1i, 2147483647i) | vec2<i32>(u_input.c, 2147483647i)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec2_i32(func_5(Struct_1(!func_2(), false), Struct_3(~6609u, Struct_1(vec4<bool>(false, false, false, false), false), true != func_2().x)), max(vec2<i32>(arg_0.x, u_input.c), -vec2<i32>(1i, 0i)), arg_0.wy);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(346f, -530f, -1080f, _wgslsmith_f_op_f32(-316f - 230f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(842f)), -907f, _wgslsmith_f_op_f32(290f + 214f))))));
    let var_2 = ~select(_wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.a), u_input.b)), abs(u_input.b), true) ^ ~(~(u_input.b ^ select(u_input.b, vec3<u32>(32777u, 82472u, 0u), true)));
    var var_3 = u_input.b.x;
    var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(24780u, firstTrailingBit(_wgslsmith_clamp_u32(29413u, u_input.a, var_2.x)), u_input.a ^ var_2.x), var_2);
    return Struct_2(Struct_1(vec4<bool>(true, true, true, true), true), var_1.x, Struct_1(vec4<bool>(true, select(-338f <= var_1.x, false, true), !(var_2.x != 48598u), false), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.a & ~u_input.a, Struct_1(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, false, false)), -1610f != _wgslsmith_f_op_f32(ceil(-920f))), (-28124i != _wgslsmith_clamp_i32(i32(-1i) * -1147i, abs(-53037i), -1i)) && any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), any(vec2<bool>(false, false)))));
    var var_1 = func_1(~(-_wgslsmith_div_vec4_i32(-vec4<i32>(-53125i, 507i, -1i, u_input.c), -vec4<i32>(1i, u_input.c, u_input.c, u_input.c))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, 1000f, var_1.b) - vec3<f32>(var_1.b, 2197f, var_1.b)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1004f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b, -815f, var_1.b))))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_1.b), var_1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1200f, -714f, var_1.b))))), _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_sub_u32(74840u, 31113u) & _wgslsmith_clamp_u32(u_input.b.x, 48178u, 52900u), ~var_0.a << (~var_0.a % 32u)) == 0u));
    var var_3 = -327f;
    var var_4 = var_0;
    var var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(566f * var_1.b) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))));
    var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(-vec4<i32>(-4399i, u_input.c, u_input.c, 75294i)).b * var_2.x))), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(countOneBits(i32(-1i) * -26272i)), -5663i), var_4.a);
}

