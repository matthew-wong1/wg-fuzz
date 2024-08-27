struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    return !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), vec3<bool>(true, true, !all(vec2<bool>(false, true))), !(_wgslsmith_sub_u32(4294967295u, u_input.a) > _wgslsmith_add_u32(u_input.a, arg_0)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: i32) -> bool {
    global0 = arg_2;
    var var_0 = ~max(u_input.a, u_input.a);
    var_0 = ~(75410u | ~u_input.a);
    let var_1 = Struct_1(any(select(select(vec3<bool>(true, arg_1, false), func_3(1u), !vec3<bool>(arg_1, arg_1, arg_1)), select(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_1, arg_1, true)), vec3<bool>(true, true, true), true), !(!vec3<bool>(false, arg_0.x, true)))), _wgslsmith_f_op_f32(ceil(151f)), !(!(45512i <= reverseBits(arg_2))), ~(~u_input.a));
    global0 = arg_2;
    return !(2147483647i >= _wgslsmith_mult_i32(~_wgslsmith_mult_i32(arg_2, 37445i), arg_2));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = (_wgslsmith_sub_i32(-countOneBits(-2147483647i), 1i) << (u_input.a % 32u)) == _wgslsmith_dot_vec4_i32(~vec4<i32>(i32(-1i) * -11828i, _wgslsmith_sub_i32(0i, 0i), i32(-1i) * -11345i, _wgslsmith_sub_i32(0i, 21989i)), vec4<i32>(~1i << (u_input.a % 32u), -(~(-32545i)), 1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4810u, 4294967295u, u_input.a)) % 32u), 1i));
    var var_1 = 2147483647i;
    let var_2 = -42823i;
    let var_3 = -8625i;
    global0 = 55030i;
    return Struct_1(!((u_input.a ^ u_input.a) != max(u_input.a, 38905u)) != (func_2(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true, max(var_3, -52029i)) && (u_input.a >= u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + arg_0))))), false & !select(true, true, 1538f <= arg_0), select(u_input.a, 63643u, select(!(var_3 <= var_2), (var_2 <= var_3) & all(vec3<bool>(true, false, false)), !all(vec3<bool>(true, true, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0.d;
    global0 = _wgslsmith_add_i32(1i, ~(-(32629i << (var_0 % 32u)) ^ ~2696i));
    global0 = _wgslsmith_dot_vec4_i32(~select(vec4<i32>(~1i, 1i, _wgslsmith_sub_i32(1i, 2147483647i), reverseBits(8559i)), vec4<i32>(_wgslsmith_div_i32(33979i, -8083i), reverseBits(7580i), countOneBits(-2147483647i), -53133i), select(vec4<bool>(arg_0.a, true, true, arg_1), select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, true, true, arg_1), arg_0.a), true)), firstLeadingBit(vec4<i32>(max(_wgslsmith_clamp_i32(-74367i, 2147483647i, -2147483647i), _wgslsmith_mod_i32(1i, -31034i)), 40407i, 1i, firstTrailingBit(_wgslsmith_add_i32(-1i, -1i)))));
    return func_1(arg_0.b);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, ~arg_0), abs(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(-37709i, arg_0, 0i), vec3<i32>(6454i, 0i, 0i), all(vec2<bool>(arg_2.a, false))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 58271i, arg_0), vec3<i32>(arg_0, arg_0, arg_0)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(max(-729f, -424f)), _wgslsmith_f_op_f32(-arg_2.b), -517f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1342f), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-626f - 1000f), _wgslsmith_div_f32(arg_2.b, -276f)))));
    let var_2 = func_1(arg_2.b);
    let var_3 = func_1(_wgslsmith_f_op_f32(max(784f, _wgslsmith_f_op_f32(-arg_2.b))));
    var var_4 = -(~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(-1i, arg_0), vec2<i32>(var_0, var_0) | vec2<i32>(var_0, 1i)), ~firstLeadingBit(vec2<i32>(var_0, var_0))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(36756i, ~1u, func_4(func_1(1f), true, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a) >> ((vec2<u32>(u_input.a, 34226u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.a, 51377u)))));
    var_0 = func_1(var_0.b);
    let var_1 = max(_wgslsmith_clamp_vec3_u32(select(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(8881u, u_input.a, var_0.d), vec3<bool>(var_0.c, var_0.a, true)), ~(~vec3<u32>(0u, 4294967295u, var_0.d)), !(!vec3<bool>(var_0.c, false, true))), firstLeadingBit(~select(vec3<u32>(6705u, var_0.d, 33397u), vec3<u32>(var_0.d, 1u, 17121u), vec3<bool>(true, var_0.c, true))), ~max(~vec3<u32>(u_input.a, var_0.d, var_0.d), max(vec3<u32>(1u, 55016u, var_0.d), vec3<u32>(69984u, u_input.a, 1u)))), ~(~vec3<u32>(~61691u, var_0.d, max(u_input.a, 41221u))));
    var_0 = Struct_1(~71953u <= firstTrailingBit(var_1.x), func_5(-14362i, func_4(Struct_1(true, _wgslsmith_f_op_f32(-var_0.b), true, ~23052u), true, vec2<u32>(abs(var_1.x), 1u)).d, func_1(var_0.b)).b, func_2(select(select(func_3(0u).zx, select(vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.a), true), 460f <= var_0.b), vec2<bool>(var_0.c, var_0.c), true), -2147483647i > firstLeadingBit(select(-44199i, -1i, var_0.a)), 1i), ~_wgslsmith_mod_u32(0u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(23338u, var_1.x), vec2<u32>(4294967295u, var_0.d)), 24927u << (var_1.x % 32u))));
    var var_2 = vec3<u32>(max(14730u, 77931u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(21558u, 79838u, 5300u), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_1, vec3<u32>(6720u, 33446u, 0u)), _wgslsmith_add_vec3_u32(var_1, vec3<u32>(var_1.x, 1u, u_input.a)))), firstTrailingBit(14690u));
    var_2 = vec3<u32>(countOneBits(firstTrailingBit(abs(var_2.x))), ~func_5(-33348i, ~58805u, Struct_1(false, 280f, false, var_1.x)).d, countOneBits(var_2.x)) ^ var_1;
    var_0 = Struct_1(any(!(!(!vec3<bool>(true, var_0.c, var_0.a)))), 626f, !func_5(select(-1i, 1i, false), firstTrailingBit(var_2.x), func_5(-13715i, 1u, Struct_1(var_0.c, -1134f, true, var_2.x))).c & true, ~23705u);
    let var_3 = _wgslsmith_f_op_f32(floor(var_0.b));
    var var_4 = !(select(u_input.a & _wgslsmith_sub_u32(47764u, 0u), var_1.x << (_wgslsmith_div_u32(117670u, var_0.d) % 32u), true) == abs(33162u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1036f, -1114f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2062f, var_3)))))), vec3<u32>(~(~19672u), ~10589u, ~reverseBits(_wgslsmith_mult_u32(var_2.x, 7915u))), vec3<i32>(1i, ~(-_wgslsmith_div_i32(1i, -11821i)), countOneBits(54392i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.d), vec3<u32>(1u, 1u, u_input.a)) % 32u)), vec3<f32>(-878f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(908f, -582f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)) * var_0.b)));
}

