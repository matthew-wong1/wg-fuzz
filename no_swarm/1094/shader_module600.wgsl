struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec3<u32> {
    let var_0 = arg_0;
    global0 = array<vec4<bool>, 2>();
    var var_1 = !select(vec4<bool>(!arg_1, arg_1, true, arg_1), select(global0[_wgslsmith_index_u32(14480u, 2u)], select(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 2u)], vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, arg_1, false, true)), vec4<bool>(u_input.e.x != u_input.e.x, true, all(vec3<bool>(true, false, arg_1)), arg_0 < -1769f)), select(select(!global0[_wgslsmith_index_u32(u_input.d, 2u)], global0[_wgslsmith_index_u32(u_input.d, 2u)], arg_1), vec4<bool>(true, arg_1, !arg_1, arg_1), false));
    let var_2 = u_input.a | (countOneBits(~1u) >> (0u % 32u));
    var var_3 = vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(reverseBits(4294967295u), 4294967295u)), ~(~_wgslsmith_sub_u32(u_input.b, 38789u)) & (30520u & firstTrailingBit(reverseBits(u_input.b))));
    return firstLeadingBit(min(~min(~vec3<u32>(var_3.x, u_input.d, 0u), vec3<u32>(76970u, 6618u, 12602u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(var_2, 0u, var_2), vec3<u32>(17309u, var_2, var_2) ^ vec3<u32>(var_2, var_3.x, 4294967295u)), vec3<u32>(u_input.b, var_2 | 4294967295u, _wgslsmith_mod_u32(0u, var_2)), vec3<bool>(true, !arg_1, true))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = vec4<u32>(arg_1.c, firstLeadingBit(0u), abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 21939u, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, arg_1.b, arg_1.b), countOneBits(vec4<u32>(0u, 15910u, 28301u, arg_1.a.x))))), abs(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(arg_1.a.zz, arg_1.a.yy), _wgslsmith_add_u32(arg_1.b, u_input.d) & _wgslsmith_mod_u32(arg_1.c, 4294967295u))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(1u & _wgslsmith_sub_u32(var_0.x, 2490u)), firstLeadingBit(39055u)), arg_1.a.zx);
    var_0 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~arg_1.a, func_3(arg_0.x, true)), arg_1.a), ~firstLeadingBit(0u), var_0.x, ~_wgslsmith_mult_u32(~arg_1.c, ~21654u));
    var var_2 = 468f;
    var_1 = u_input.d;
    return var_0.wyx;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<u32>(~firstTrailingBit(109460u), _wgslsmith_sub_u32(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(3488u, u_input.a, u_input.a, 83184u), vec4<u32>(0u, arg_0, arg_0, arg_0))), ~u_input.a) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(34140u, u_input.a, u_input.d) >> (vec3<u32>(83964u, 25468u, arg_0) % vec3<u32>(32u)), countOneBits(~vec3<u32>(4294967295u, 4294967295u, 7747u))) % vec3<u32>(32u)), u_input.d, u_input.a);
    let var_1 = Struct_1(~(_wgslsmith_sub_vec3_u32(vec3<u32>(6206u, 32816u, 33570u), var_0.a) << (func_2(vec2<f32>(-1915f, -249f), Struct_1(vec3<u32>(arg_0, arg_0, 8124u), 26634u, var_0.a.x)) % vec3<u32>(32u))) << (abs(var_0.a) % vec3<u32>(32u)), _wgslsmith_clamp_u32(countOneBits(1u), 4294967295u, ~countOneBits(~arg_0)), _wgslsmith_mod_u32(arg_0, ~1u));
    var var_2 = !(!select(true, !any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)))));
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(u_input.e.x, 0i), u_input.e.x, _wgslsmith_mult_i32(reverseBits(u_input.e.x), u_input.c)), abs(firstTrailingBit(u_input.e.xyz >> (var_1.a % vec3<u32>(32u)))), select(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), vec3<i32>(20031i, -2147483647i, u_input.c)), u_input.e.yyx, any(vec2<bool>(true, true)))), min(u_input.e.wzy, -_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e.zzw, vec3<i32>(2147483647i, -2147483647i, 24478i)), vec3<i32>(u_input.c, 0i, 2147483647i))));
    let var_4 = u_input.e.zy;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(616f + 982f), _wgslsmith_f_op_f32(1491f * -1190f), _wgslsmith_div_f32(1000f, 390f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-173f, -243f, -1379f), vec3<f32>(615f, -1453f, 968f), vec3<bool>(false, true, false))), vec3<f32>(328f, 1994f, 309f))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))))));
    global0 = array<vec4<bool>, 2>();
    var var_1 = select((arg_0.a.yz >> ((_wgslsmith_div_vec2_u32(arg_0.a.zz, vec2<u32>(4294967295u, 71824u)) << (arg_0.a.xx % vec2<u32>(32u))) % vec2<u32>(32u))) ^ countOneBits(vec2<u32>(~1u, _wgslsmith_mod_u32(arg_0.c, 4294967295u))), _wgslsmith_mult_vec2_u32(vec2<u32>(~58894u, min(firstTrailingBit(arg_0.b), func_1(31038u).b)), min((arg_0.a.yy ^ vec2<u32>(36929u, u_input.b)) >> (vec2<u32>(28241u, 57884u) % vec2<u32>(32u)), arg_0.a.yy)), !select(vec2<bool>(false, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false)), vec2<bool>(all(vec4<bool>(true, false, true, false)), true)));
    return ~vec3<i32>(0i, ~_wgslsmith_div_i32(abs(-2147483647i), u_input.c), ~countOneBits(u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec3_i32(-func_4(func_1(0u)), vec3<i32>(_wgslsmith_mult_i32(reverseBits(u_input.c), _wgslsmith_sub_i32(u_input.c, u_input.e.x)), u_input.e.x, _wgslsmith_div_i32(u_input.e.x, u_input.c)));
    var_0 = u_input.c;
    var_0 = -2147483647i;
    var var_1 = Struct_1(select(select(vec3<u32>(u_input.b, u_input.d, 8106u), func_1(16752u).a, select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))) >> (vec3<u32>(u_input.a, u_input.b | u_input.b, _wgslsmith_sub_u32(u_input.b, 0u)) % vec3<u32>(32u)), ~(~(~vec3<u32>(u_input.a, 19006u, 1u))), ((u_input.a <= 35012u) && true) || all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), 70130u & (~reverseBits(0u) << (select(~u_input.b, u_input.a, all(vec3<bool>(false, true, true))) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(2736u, firstLeadingBit(~u_input.a), 14277u), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(func_3(-871f, false), vec3<u32>(u_input.a, 72062u, u_input.b) ^ vec3<u32>(10434u, 46949u, 456u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.d), ~vec3<u32>(u_input.d, u_input.b, u_input.a)))));
    global0 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, vec3<u32>(55405u, var_1.c, var_1.c ^ (u_input.a ^ ~1u)));
}

