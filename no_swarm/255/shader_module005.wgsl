struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = var_0;
    var var_2 = 19083u;
    var_2 = abs(abs(abs(~_wgslsmith_clamp_u32(0u, 30641u, 0u))));
    var_1 = Struct_1(var_0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1630f)))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: f32) -> vec3<bool> {
    var var_0 = vec2<u32>(1u, 1u);
    var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(min(select(47412u, 11476u & var_0.x, true), var_0.x), 1u & select(_wgslsmith_mult_u32(var_0.x, 1u), _wgslsmith_mod_u32(0u, 7256u), false)), _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, var_0.x), ~max(vec2<u32>(4294967295u, 53975u), vec2<u32>(36883u, 33700u))) | vec2<u32>(var_0.x, ~1u));
    var var_1 = Struct_1(arg_0);
    var var_2 = arg_2;
    return select(!vec3<bool>(any(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(var_1.a, false, arg_0, true), var_1.a)), countOneBits(arg_2) >= ~(-28285i), false), vec3<bool>(true, true, reverseBits(arg_1) != ~arg_1), vec3<bool>(true & any(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(var_1.a, var_1.a, arg_0), vec3<bool>(true, arg_0, arg_0))), !any(vec2<bool>(var_1.a, arg_0)), arg_0));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_1(true);
    let var_1 = arg_0;
    var_0 = Struct_1(var_0.a);
    var_0 = var_1;
    var_0 = Struct_1(false);
    return func_4(true, min(u_input.a.x, ~(~0i)), u_input.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(sign(arg_1.x)), -2147483647i < u_input.a.x))), _wgslsmith_f_op_f32(func_3(Struct_1(arg_2.x)))));
}

fn func_5(arg_0: vec3<bool>) -> u32 {
    let var_0 = vec2<bool>(all(select(!arg_0, vec3<bool>(arg_0.x, u_input.a.x != 2147483647i, func_4(arg_0.x, u_input.a.x, -2147483647i, 1676f).x), arg_0.x)), true);
    let var_1 = _wgslsmith_f_op_f32(1f - -555f);
    var var_2 = vec4<bool>(((-1i ^ (u_input.a.x << (14917u % 32u))) ^ _wgslsmith_div_i32(-u_input.a.x, 0i)) > (u_input.a.x ^ _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, ~u_input.a.x)), false, !any(vec3<bool>(true, arg_0.x, true | arg_0.x)), any(vec2<bool>(all(!arg_0), false)));
    let var_3 = Struct_1(all(select(vec3<bool>(arg_0.x, var_2.x, arg_0.x != true), select(arg_0, !vec3<bool>(var_2.x, var_2.x, true), !arg_0.x), select(!vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, true, true), false))));
    var var_4 = var_3;
    return ~(~1u);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> u32 {
    let var_0 = vec2<f32>(1320f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-711f - _wgslsmith_f_op_f32(-2193f - _wgslsmith_f_op_f32(floor(1155f)))))));
    let var_1 = max(vec2<u32>(func_5(select(arg_1.xyz, func_2(Struct_1(arg_0), vec2<f32>(1763f, var_0.x), arg_1, u_input.a.x), any(arg_1))), 1u), select(~_wgslsmith_div_vec2_u32(~vec2<u32>(13550u, 0u), vec2<u32>(113512u, 28540u)), _wgslsmith_add_vec2_u32(vec2<u32>(75624u, 1u), firstTrailingBit(vec2<u32>(42124u, 1u)) & vec2<u32>(1u, 1u)), arg_0));
    var var_2 = -_wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(reverseBits(vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, -44752i)))), -firstLeadingBit(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(-869f, var_0.x), -625f);
    let var_4 = Struct_1(arg_1.x);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 92592u, 9803u)), max(vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(var_1.x, 57752u, var_1.x, var_1.x))), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 0u, var_1.x, 39158u), vec4<u32>(0u, 13954u, 4294967295u, 44886u))), ~_wgslsmith_add_vec4_u32(min(vec4<u32>(76941u, var_1.x, 2272u, 322u), vec4<u32>(3866u, 4294967295u, var_1.x, var_1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(27845u, var_1.x, 50647u, var_1.x), vec4<u32>(55746u, var_1.x, var_1.x, var_1.x)))), ~vec4<u32>(max(var_1.x, var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, var_1.x, 52126u), max(vec4<u32>(var_1.x, var_1.x, 58849u, 71809u), vec4<u32>(var_1.x, var_1.x, var_1.x, 46625u))), 54652u, 1u));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_u32(1u, ~31390u);
    var_0 = firstTrailingBit(64841u << (arg_2.x % 32u));
    var var_1 = ~28175u;
    var var_2 = arg_0.x;
    var_2 = !func_2(Struct_1(true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-513f, -920f)), !(!vec4<bool>(true, false, true, arg_0.x)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)).x;
    return vec4<u32>(_wgslsmith_sub_u32(~(~arg_2.x << (30320u % 32u)), reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 43336u, 1u, arg_2.x), arg_2), _wgslsmith_clamp_u32(100643u, 4294967295u, 50773u)))), ~reverseBits(~66111u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 430u), arg_2.xy)), arg_2.x, arg_2.x);
}

fn func_7(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_i32(~reverseBits(firstLeadingBit(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -12416i))), firstLeadingBit(i32(-1i) * -22316i));
    var var_1 = ~arg_1.x;
    var var_2 = firstLeadingBit(-2147483647i);
    var_2 = _wgslsmith_mod_i32(abs(u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(u_input.a.x), var_0), 1i));
    let var_3 = Struct_1(true);
    return ~(abs(~arg_1.x) << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f - -1852f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(3140f, 620f)))));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-6966i, _wgslsmith_mod_i32(abs(-u_input.a.x), u_input.a.x << (_wgslsmith_mod_u32(1u, 24800u) % 32u))), ~firstLeadingBit(4294967295u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1573f, 408f, 283f, -577f))) - vec4<f32>(-262f, -574f, 1169f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-1000f * -1139f), 1058f, -1000f, -299f))), func_7(vec3<bool>(true, true, true), func_6(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(71407u, 1u), vec2<u32>(57563u, 104852u), vec2<u32>(0u, 0u)) >> (vec2<u32>(1u, 17400u) % vec2<u32>(32u)), vec4<u32>(4294967295u >> (0u % 32u), func_1(false, vec4<bool>(false, false, false, true)), 4294967295u, 54739u)), Struct_1(true), Struct_1(all(vec4<bool>(true, true, true, true)))));
}

