struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = select(select(vec4<bool>(arg_0, false || arg_0, any(vec4<bool>(false, true, arg_0, false)), arg_0), vec4<bool>(arg_0, all(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, true, false, false), vec4<bool>(arg_0, false, arg_0, arg_0))), all(vec3<bool>(false, arg_0, false)), true), all(vec2<bool>(false, false))), !(!vec4<bool>(arg_0, true, true, !arg_0)), (_wgslsmith_div_u32(select(1u, 7600u, false), 38270u) <= firstTrailingBit(1u)) | !arg_0);
    global0 = 0u;
    var var_1 = Struct_3(u_input.c, -vec2<i32>(i32(-1i) * -u_input.c, -(~u_input.a)));
    var_1 = Struct_3(_wgslsmith_add_i32(u_input.b, reverseBits(min(_wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(8801i, 0i)), _wgslsmith_sub_i32(35407i, u_input.b)))), -(~var_1.b));
    let var_2 = Struct_3(u_input.b, _wgslsmith_sub_vec2_i32(firstLeadingBit(var_1.b | abs(var_1.b)), var_1.b));
    return any(select(var_0, !(!(!var_0)), select(var_0, !var_0, vec4<bool>(!arg_0, true, true, any(vec4<bool>(true, true, true, var_0.x))))));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = true;
    var var_1 = vec4<u32>(0u << (~(~firstTrailingBit(88728u)) % 32u), 1u, ~1u, 1u);
    global0 = var_1.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-498f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(433f * -151f) - _wgslsmith_f_op_f32(abs(-2682f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(540f, 926f)))))));
    let var_3 = -vec3<i32>(_wgslsmith_mod_i32(~abs(arg_1.x), _wgslsmith_sub_i32(arg_1.x, -arg_1.x)), -2147483647i, 1i);
    return abs(vec2<u32>(var_1.x, ~var_1.x & firstLeadingBit(4294967295u)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    global0 = abs(_wgslsmith_mult_u32(0u, 69474u));
    let var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(func_4(func_3(arg_2), vec4<i32>(u_input.b, u_input.a, -19921i, 1i)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(71954u, 6594u), vec2<u32>(0u, 13118u)), countOneBits(vec2<u32>(2384u, 31524u)))), ~_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(55544u, 23689u)));
    var var_1 = ~(~(~max(~53440u, _wgslsmith_add_u32(4294967295u, var_0.x))));
    var var_2 = firstLeadingBit(min(select(vec4<i32>(arg_0, 0i, 21438i, -49763i), ~vec4<i32>(2147483647i, arg_0, 34980i, -2147483647i), !arg_2), _wgslsmith_mult_vec4_i32(-vec4<i32>(-74766i, arg_0, -2147483647i, arg_0), -vec4<i32>(2147483647i, -2147483647i, arg_0, -615i)))) >> (vec4<u32>(_wgslsmith_add_u32(27028u, var_0.x), firstLeadingBit(var_0.x), min(var_0.x, 50051u), 4294967295u) % vec4<u32>(32u));
    global0 = var_0.x;
    return Struct_1(vec4<i32>(-1i, _wgslsmith_sub_i32(min(_wgslsmith_div_i32(u_input.c, u_input.a), _wgslsmith_mult_i32(-2147483647i, arg_0)), _wgslsmith_sub_i32(-u_input.b, var_2.x)), firstTrailingBit(arg_0), firstLeadingBit(min(_wgslsmith_add_i32(var_2.x, u_input.c), u_input.a))), vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(2739i, 20327i), vec2<i32>(var_2.x, -2147483647i)), _wgslsmith_f_op_f32(-arg_1.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = func_2(-1174i, arg_1.b, !(true | arg_1.c.x));
    global0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~32905u, ~arg_1.d.x, select(arg_1.d.x, arg_1.d.x, arg_1.c.x)), ~(~arg_1.d)), firstLeadingBit(arg_1.d)), arg_1.d.x);
    global0 = arg_1.d.x;
    let var_1 = Struct_3(_wgslsmith_mod_i32(select(u_input.a, ~0i >> (1u % 32u), all(select(arg_1.c.xyz, arg_1.c.zwx, false))), _wgslsmith_sub_i32(-32503i, ~firstTrailingBit(var_0.a.x))), reverseBits(-vec2<i32>(arg_1.a.b.x, func_2(arg_1.a.b.x, arg_1.b, arg_1.c.x).a.x)));
    var var_2 = ~(arg_1.d.yz ^ (arg_1.d.zy | (vec2<u32>(arg_1.d.x, arg_1.d.x) >> (vec2<u32>(714u, arg_1.d.x) % vec2<u32>(32u)))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.d.yx, ~(~arg_1.d.xx)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, 22839u, 0u, 4294967295u), vec4<u32>(var_2.x, 37023u, 46122u, var_2.x)), 4294967295u), arg_1.d.x & arg_1.d.x), _wgslsmith_clamp_vec2_u32(firstTrailingBit(select(arg_1.d.yx, vec2<u32>(var_2.x, arg_1.d.x), arg_1.c.x)), arg_1.d.yx, vec2<u32>(14029u, _wgslsmith_div_u32(4294967295u, arg_1.d.x)))), vec2<u32>(func_4(arg_1.c.x, abs(-vec4<i32>(var_1.a, var_0.a.x, -2147483647i, var_0.a.x))).x, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 33938u, arg_1.d.x)), ~select(vec3<u32>(var_2.x, arg_1.d.x, 4294967295u), arg_1.d, arg_1.c.wxz))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~func_1(vec2<f32>(-2430f, 712f), Struct_2(Struct_1(vec4<i32>(u_input.b, 1i, u_input.b, 21301i), vec2<i32>(u_input.c, 0i), -391f), vec2<f32>(311f, 1296f), vec4<bool>(true, false, true, false), vec3<u32>(1u, 1u, 4294967295u))))) ^ 4294967295u;
    global0 = abs(~1u);
    let var_0 = all(vec2<bool>(true, true));
    let var_1 = select(select(vec2<bool>(false, var_0), vec2<bool>(true, true | any(vec4<bool>(var_0, false, var_0, false))), var_0), !select(select(vec2<bool>(var_0, false), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), var_0)), vec2<bool>(func_3(true), !var_0), vec2<bool>(true, true)), vec2<bool>((_wgslsmith_clamp_i32(-12396i, u_input.c, -5940i) | (u_input.c | 2147483647i)) != reverseBits(u_input.c << (1u % 32u)), select(true, false, _wgslsmith_f_op_f32(sign(-1712f)) >= 825f)));
    let var_2 = func_2(51803i, vec2<f32>(532f, 1126f), func_3(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(-max(_wgslsmith_add_i32(u_input.a, 4793i), u_input.c), vec2<f32>(var_2.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.c)))), true).a.x);
}

