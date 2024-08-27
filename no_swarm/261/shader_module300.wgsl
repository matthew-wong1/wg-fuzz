struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(2655u, vec2<i32>(11066i, 2147483647i), true, -749f, 39709u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_u32(u_input.a, global3.e), _wgslsmith_add_vec2_i32(-(global1.b | vec2<i32>(arg_0.b.x, 92579i)), ~(global3.b >> (~vec2<u32>(1u, 35353u) % vec2<u32>(32u)))), true | !select(true, all(vec4<bool>(false, true, arg_2.c, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d)))) - _wgslsmith_f_op_f32(trunc(global1.d))), abs(global3.e >> (u_input.a % 32u)));
    global3 = Struct_1(_wgslsmith_dot_vec4_u32(select(~(vec4<u32>(var_0.e, 20628u, 80239u, u_input.a) << (vec4<u32>(global3.a, arg_0.a, 0u, 0u) % vec4<u32>(32u))), ~(~vec4<u32>(arg_0.a, 0u, global1.e, 73506u)), any(vec2<bool>(true, true))), ~(~(~vec4<u32>(arg_2.e, 45379u, global1.e, var_0.e)))), vec2<i32>(1i, abs(-2147483647i)) >> (vec2<u32>(u_input.a, ~_wgslsmith_mod_u32(var_0.a, 4294967295u)) % vec2<u32>(32u)), any(select(!vec4<bool>(true, false, arg_1.x, arg_2.c), select(select(vec4<bool>(var_0.c, var_0.c, arg_0.c, false), vec4<bool>(true, arg_0.c, arg_2.c, global3.c), global1.c), vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0.c, false, arg_2.c)), all(vec4<bool>(arg_1.x, global1.c, false, arg_1.x)))), -1146f, ~_wgslsmith_clamp_u32(global3.e, max(var_0.a, global1.e) << (global1.a % 32u), ~_wgslsmith_mod_u32(arg_2.e, 4294967295u)));
    return arg_0.e;
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_1(global3.e, global1.b, true, -182f, ~global1.a);
    let var_1 = Struct_1(_wgslsmith_div_u32(~u_input.a, 1u), global0.xz, !global1.c, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_sub_u32(37444u, func_3(Struct_1(global1.e, vec2<i32>(24724i, -2147483647i), global3.c, -1008f, 4294967295u), vec3<bool>(global1.c, var_0.c, global3.c), Struct_1(73157u, vec2<i32>(global3.b.x, global3.b.x), true, global3.d, 0u)) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.yz, vec2<u32>(global1.e, var_0.a)), countOneBits(vec2<u32>(0u, 4294967295u)))));
    global0 = select(~vec3<i32>(var_0.b.x, (1i ^ global3.b.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 19306u, 0u, 30136u), vec4<u32>(global3.a, 4294967295u, arg_0.x, 35487u)) % 32u), select(2147483647i, _wgslsmith_sub_i32(var_0.b.x, var_0.b.x), u_input.a <= var_0.a)), vec3<i32>(~min(global0.x, -53316i), i32(-1i) * -(~var_1.b.x), -2147483647i), all(!(!select(vec4<bool>(var_1.c, global1.c, var_1.c, var_0.c), vec4<bool>(var_1.c, true, global1.c, false), vec4<bool>(true, global3.c, false, var_1.c)))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1110f, global1.d))) + _wgslsmith_f_op_f32(trunc(var_2.d)));
    return vec2<bool>(any(vec3<bool>(true, global3.c, true)) || true, var_2.b.x == reverseBits(_wgslsmith_mod_i32(i32(-1i) * -21512i, abs(global0.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = func_2(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_0.x, 4294967295u, 0u, 20995u)), countOneBits(min(~vec4<u32>(16181u, arg_2.a, arg_0.x, u_input.a), vec4<u32>(arg_2.e, 1u, 9081u, 17870u) ^ vec4<u32>(global1.e, 17842u, 1u, arg_1.a))), countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.e, 1u, 39007u, 1u), vec4<u32>(4294967295u, global1.e, 0u, global3.a), vec4<u32>(arg_0.x, u_input.a, 126348u, 1u)), vec4<u32>(u_input.a, 1u, 0u, 69553u), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, 5070u, 0u, arg_1.e), vec4<u32>(20409u, 4294967295u, 4294967295u, arg_2.e))))));
    let var_1 = Struct_1(24665u, global0.yz, global1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.d, _wgslsmith_f_op_f32(round(-112f))) + _wgslsmith_f_op_f32(min(-418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1400f * global3.d) - -1179f)))), ~1u);
    let var_2 = Struct_1(arg_2.a, vec2<i32>(_wgslsmith_mult_i32(var_1.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global3.b.x), vec2<i32>(arg_2.b.x, 0i))), 2147483647i), any(!vec3<bool>(var_0.x, global1.c, true)), 1953f, abs(60421u));
    global1 = var_2;
    let var_3 = global3.d;
    return vec4<u32>(global1.e, 0u, _wgslsmith_sub_u32(arg_0.x, var_1.a), func_3(Struct_1(~firstTrailingBit(arg_0.x), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.b, vec2<i32>(-2147483647i, -15239i)), vec2<i32>(global1.b.x, -1i)), (true || arg_2.c) && !global1.c, global1.d, ~arg_1.a), vec3<bool>(!global1.c && false, global3.c, all(select(vec4<bool>(global1.c, var_0.x, false, arg_2.c), vec4<bool>(global3.c, arg_1.c, arg_1.c, global3.c), arg_2.c))), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec4_u32(select(func_1(vec3<u32>(global3.a, u_input.a, 31377u) & vec3<u32>(6749u, u_input.a, global1.a), Struct_1(u_input.a, global3.b, global1.c, 1000f, global1.e), Struct_1(52293u, global1.b, global3.c, global3.d, global3.e)), vec4<u32>(95579u, max(u_input.a, 23485u), abs(u_input.a), ~u_input.a), global3.c), ~_wgslsmith_sub_vec4_u32(vec4<u32>(36736u, 6480u, global1.a, 7753u), vec4<u32>(global1.e, 0u, 21925u, 56475u) ^ vec4<u32>(global3.a, 4294967295u, 4294967295u, 14118u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1616f, _wgslsmith_f_op_f32(ceil(global1.d))))));
    var_1 = -698f;
    let var_2 = Struct_1(countOneBits(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(61723u, global3.a, global1.a), vec3<u32>(var_0.x, u_input.a, 28478u)))), vec2<i32>(-1i, i32(-1i) * -(global3.b.x << (4294967295u % 32u))), global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), 50956u);
    var var_3 = global3.d;
    let var_4 = !select(!select(select(vec2<bool>(true, false), vec2<bool>(global1.c, false), global1.c), !vec2<bool>(global1.c, true), select(vec2<bool>(false, false), vec2<bool>(global3.c, var_2.c), vec2<bool>(global3.c, var_2.c))), !(!select(vec2<bool>(true, var_2.c), vec2<bool>(false, true), true)), any(func_2(max(vec4<u32>(global3.e, 29977u, u_input.a, global3.a), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(-4716i, global0.x, firstLeadingBit(global1.b.x), global1.b.x), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(1i, global3.b.x, 0i, global3.b.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, -1i, global3.b.x), vec4<i32>(-37900i, -12877i, 1i, -9047i))), select(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.x, -1945i, global3.b.x, global1.b.x), vec4<i32>(var_2.b.x, -1i, 1118i, -38922i))), -(vec4<i32>(59957i, 5857i, global0.x, var_2.b.x) ^ vec4<i32>(global1.b.x, -1i, -15550i, global3.b.x)), !global3.c && !var_4.x)));
}

