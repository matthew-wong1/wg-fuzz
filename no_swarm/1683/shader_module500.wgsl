struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 51780u), vec2<u32>(21561u, 1u), vec2<u32>(36405u, 0u), vec2<u32>(30420u, 8684u), vec2<u32>(0u, 31467u), vec2<u32>(4294967295u, 27923u), vec2<u32>(0u, 4294967295u), vec2<u32>(78611u, 33885u), vec2<u32>(20314u, 31219u), vec2<u32>(34365u, 8826u), vec2<u32>(1u, 2818u), vec2<u32>(0u, 55216u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(0u, 22913u), vec2<u32>(18155u, 1u), vec2<u32>(4502u, 31788u), vec2<u32>(56312u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(7233u, 5144u), vec2<u32>(0u, 4294967295u), vec2<u32>(98105u, 44957u), vec2<u32>(0u, 4294967295u), vec2<u32>(19289u, 24601u), vec2<u32>(29343u, 4294967295u), vec2<u32>(357u, 4294967295u), vec2<u32>(0u, 61015u), vec2<u32>(71961u, 37924u), vec2<u32>(0u, 0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = 3047u;
    var var_1 = arg_1;
    let var_2 = Struct_2(~var_1.a, var_1.b);
    var var_3 = -496f;
    global1 = array<vec2<u32>, 30>();
    return u_input.a;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = ~(~countOneBits(abs(vec4<i32>(u_input.b, 39915i, u_input.a, u_input.a)))) | vec4<i32>(-33141i, -_wgslsmith_clamp_i32(2147483647i, -2147483647i >> (0u % 32u), 18317i), -2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, u_input.a), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.b, u_input.a)))));
    global1 = array<vec2<u32>, 30>();
    global0 = false;
    var var_1 = ~(~_wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(-18732i, -4667i)));
    var_0 = ~reverseBits(vec4<i32>(firstTrailingBit(u_input.b), 1i, u_input.a, -1i)) & vec4<i32>(min(firstLeadingBit(-1i) & ~var_0.x, ~u_input.a ^ -1i), u_input.b, func_3(Struct_1(4294967295u, vec3<u32>(arg_0.x, arg_0.x, arg_0.x), -1951f, vec2<bool>(true, false), -1i), Struct_2(arg_0.x, 1000f)) | ~var_0.x, _wgslsmith_div_i32(-(var_0.x | u_input.b), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -11305i, -6460i, 2147483647i), vec4<i32>(u_input.b, u_input.b, var_0.x, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), var_0.yx))));
    return Struct_2(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) * -454f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1058f))), _wgslsmith_f_op_f32(-574f + -339f))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_1(arg_0.a, ~vec3<u32>(countOneBits(arg_1), arg_0.a, 4294967295u), -1276f, arg_3, -_wgslsmith_sub_i32(min(-34089i, 36285i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(29016i, u_input.b, -2147483647i, -6533i), vec4<i32>(arg_2, -45038i, 4150i, arg_2)), vec4<i32>(u_input.b, arg_2, u_input.b, 1i))));
    var var_1 = arg_3;
    let var_2 = func_2(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(28634u, var_0.a, arg_0.a, 1u), vec4<u32>(65027u, arg_0.a, arg_0.a, arg_0.a))) & ~reverseBits(min(vec4<u32>(var_0.a, var_0.b.x, 4294967295u, 21830u), vec4<u32>(0u, arg_0.a, arg_0.a, arg_1))));
    var var_3 = Struct_1(firstLeadingBit(~(~30515u)), var_0.b, _wgslsmith_f_op_f32(trunc(137f)), !arg_3, -_wgslsmith_mult_i32(~max(var_0.e, u_input.b), _wgslsmith_clamp_i32(arg_2, u_input.a, u_input.a)));
    return ~(~arg_0.a);
}

fn func_1() -> i32 {
    global1 = array<vec2<u32>, 30>();
    var var_0 = _wgslsmith_add_vec3_i32(~(-countOneBits(vec3<i32>(u_input.b, u_input.a, -36030i))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.b, 1i, 421i)));
    var var_1 = ~vec3<i32>(u_input.a, -2147483647i, -42837i);
    global1 = array<vec2<u32>, 30>();
    var var_2 = Struct_1(~func_4(func_2(vec4<u32>(1u, 1u, 1u, 1u)), 1u, 1i, vec2<bool>(true, true)), ~abs(min(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(10695u, 6564u, 36899u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 38574u, 19906u), vec3<u32>(0u, 1u, 1u), vec3<u32>(30517u, 1u, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(round(-347f)), select(vec2<bool>(true, false), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))), any(vec2<bool>(true, true))), func_3(Struct_1(1u, vec3<u32>(36946u, 4294967295u, ~44328u), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1000f * 796f)), vec2<bool>(true, true), abs(_wgslsmith_sub_i32(0i, var_0.x))), Struct_2(104332u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -635f)))));
    return var_1.x;
}

fn func_5(arg_0: u32, arg_1: i32) -> vec3<u32> {
    let var_0 = Struct_1(firstLeadingBit(arg_0), select(_wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_0, arg_0, arg_0)), vec3<u32>(arg_0, ~37404u, ~arg_0)), ~(~vec3<u32>(0u, arg_0, arg_0) >> (~vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1798f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-834f, 395f))), -142f)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(select(false, false, true), all(vec4<bool>(false, true, false, true)))), _wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, select(-11492i, u_input.b, true)), ~arg_1) | u_input.b);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1037f, _wgslsmith_div_f32(var_1.c, var_0.c), false)), _wgslsmith_f_op_f32(f32(-1f) * -730f), false)), -891f));
    var var_3 = Struct_2(4294967295u, -540f);
    let var_4 = Struct_2(~0u, var_3.b);
    return ~vec3<u32>(0u, ~var_1.b.x, ~(~(~var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(~select(1u, reverseBits(0u), all(vec4<bool>(false, true, false, true))), reverseBits(20327u), firstTrailingBit(72341u)), func_5(max(1u, _wgslsmith_mult_u32(~28165u, 1u)), firstLeadingBit(func_1())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1f))), vec2<bool>(all(vec3<bool>(true, true, true)), false), -u_input.b);
    global0 = var_0.d.x;
    global0 = var_0.d.x;
    global0 = 0i != ~select(u_input.a, ~u_input.b, var_0.d.x);
    var var_1 = !select(vec3<bool>(false, select(true, 1i != var_0.e, !var_0.d.x), true), vec3<bool>(any(!vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true)), !var_0.d.x, true), var_0.c < 1f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 8108i, firstLeadingBit(_wgslsmith_div_i32(-15792i, 36980i))), -vec3<i32>(u_input.a >> (1u % 32u), i32(-1i) * -1i, _wgslsmith_div_i32(-2147483647i, u_input.b))), ~vec4<u32>(24617u, firstTrailingBit(var_0.b.x & 1u), ~abs(var_0.a), _wgslsmith_sub_u32(1u, var_0.a)), _wgslsmith_dot_vec3_u32(min(_wgslsmith_clamp_vec3_u32(countOneBits(var_0.b), vec3<u32>(0u, var_0.a, 29691u), var_0.b), select(vec3<u32>(var_0.a, 37551u, 30213u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, 24295u, var_0.b.x), var_0.b, vec3<u32>(4294967295u, var_0.a, 2617u)), true)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.a, var_0.b.x), _wgslsmith_sub_u32(45999u, 0u), var_0.b.x), ~vec3<u32>(var_0.b.x, var_0.a, 1u) & firstLeadingBit(var_0.b))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(447f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * var_0.c))), _wgslsmith_f_op_f32(trunc(var_0.c))))));
}

