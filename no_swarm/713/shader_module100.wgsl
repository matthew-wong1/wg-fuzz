struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 5>;

var<private> global3: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1273f);
    let var_1 = true | global3.c.a;
    var var_2 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-251f)))));
    global0 = ~vec3<u32>(1u, u_input.a, reverseBits(_wgslsmith_clamp_u32(~global0.x, 61776u, abs(1u))));
    return arg_1;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    var var_0 = func_3(_wgslsmith_f_op_f32(global3.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1514f))))), -(arg_2.x & -17222i));
    var var_1 = Struct_1(all(arg_1.b.yx), arg_1.b);
    var var_2 = abs(abs(_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(0u, 0u, global0.x), firstTrailingBit(vec3<u32>(25749u, 0u, global0.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, arg_0, 67460u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0.x, global0.x), vec3<u32>(4294967295u, 29155u, 0u))), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.x, u_input.c), vec3<u32>(0u, 4294967295u, arg_0), vec3<u32>(0u, 4294967295u, arg_0))))));
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_0, u_input.c), 5u)];
    var_0 = _wgslsmith_div_i32(~global3.d | arg_2.x, 2147483647i);
    return global0.x;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !(global0.x == _wgslsmith_sub_u32(max(func_2(global0.x, arg_2, vec2<i32>(2147483647i, -3625i)), ~0u), global0.x));
    var var_1 = Struct_2(-1i, !select(!select(vec3<bool>(var_0, true, global3.c.b.x), arg_2.b.wzx, global3.c.b.x), !select(arg_2.b.zxz, arg_2.b.yyx, vec3<bool>(true, var_0, arg_2.a)), vec3<bool>(true, arg_2.a, true)), global3.c, func_3(750f, ~_wgslsmith_mod_i32(max(u_input.d, arg_1), -51658i)), _wgslsmith_f_op_f32(max(1267f, global3.e)));
    var var_2 = !(!(any(vec2<bool>(var_1.b.x, false)) | false));
    let var_3 = Struct_1(false, vec4<bool>(true, global3.b.x, any(!arg_2.b.zwz) | false, var_0));
    let var_4 = (_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, -2215i), vec2<i32>(u_input.d, 2147483647i)) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(arg_1, 2147483647i) & vec2<i32>(-2147483647i, u_input.d))) << (~(~global0.yz) % vec2<u32>(32u))) | abs(vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 27678i), vec2<i32>(arg_1, arg_1))), _wgslsmith_clamp_i32(-var_1.d, ~1i, -var_1.d)));
    return var_1.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    let var_0 = vec4<i32>(global3.d, global3.d, arg_1.x, 0i >> (0u % 32u));
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    global3 = arg_3;
    var var_1 = vec3<i32>(arg_1.x, -_wgslsmith_add_i32(-1i, var_0.x), _wgslsmith_dot_vec3_i32(var_0.xwz, ~select(vec3<i32>(0i, -47080i, -1i), arg_1, !vec3<bool>(global3.c.a, arg_3.c.b.x, arg_2.x))));
    return func_1(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b.x, 7252u, 110365u) >> (vec3<u32>(u_input.c, u_input.c, 36166u) % vec3<u32>(32u))) & vec3<u32>(u_input.b.x, u_input.c, 4294967295u), ~(~vec3<u32>(17651u, 32648u, u_input.a))), -2147483647i, global3.c).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-u_input.d, select(global3.c.b.zxx, global3.b, func_4(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, -2147483647i, global3.d), _wgslsmith_mult_vec3_i32(vec3<i32>(global3.a, u_input.d, u_input.d), vec3<i32>(0i, global3.a, 0i))), -vec3<i32>(global3.a, global3.d, global3.d) >> (~vec3<u32>(u_input.b.x, 92216u, global0.x) % vec3<u32>(32u)), !select(global3.b, vec3<bool>(global3.b.x, true, false), true), Struct_2(27170i, global3.c.b.www, func_1(u_input.a, -43416i, global2[_wgslsmith_index_u32(global0.x, 5u)]), max(global3.a, u_input.d), _wgslsmith_f_op_f32(-global3.e)))), Struct_1(global3.b.x, global3.c.b), global3.a, global3.e);
    global2 = array<Struct_1, 5>();
    let var_1 = Struct_1(!(!global3.b.x), global3.c.b);
    let var_2 = Struct_2(-4841i, var_1.b.xwy, func_1(~110222u, u_input.d, Struct_1(any(vec2<bool>(false, true)) & false, global3.c.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(global3.a, var_0.d, global3.a, 2147483647i) | -vec4<i32>(u_input.d, 2147483647i, var_0.a, 1i), _wgslsmith_div_vec4_i32(-vec4<i32>(9224i, global3.d, -2988i, global3.d), vec4<i32>(global3.d, var_0.a, -24397i, var_0.a))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-16583i, global3.a, var_0.a, 11537i) >> (vec4<u32>(global0.x, 4294967295u, 9448u, global0.x) % vec4<u32>(32u)), countOneBits(vec4<i32>(-38287i, global3.a, 16533i, 27792i)))), _wgslsmith_f_op_f32(global3.e - _wgslsmith_f_op_f32(sign(1000f))));
    var var_3 = vec4<bool>(!(!any(vec3<bool>(true, true, var_1.b.x))), true, false, any(!var_2.c.b.yz));
    var var_4 = var_0.a;
    global2 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, 1u, global0.x) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 70741u, u_input.a), ~vec3<u32>(global0.x, u_input.a, 52285u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~(vec3<u32>(0u, 53280u, 45657u) | vec3<u32>(33731u, u_input.b.x, 57013u)), reverseBits(vec3<u32>(4294967295u, u_input.b.x, 7341u))), abs(vec3<u32>(~2164u, 65018u, global0.x))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(49463i, -41031i, var_0.a)), -vec3<i32>(-1i, -1i, u_input.d)), -(-1i << (global0.x % 32u))), i32(-1i) * -abs(global3.a), ~var_2.a), -(vec3<i32>(0i ^ u_input.d, firstLeadingBit(var_2.d), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.d, -1i), vec2<i32>(var_0.d, -27030i))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global0.x, global0.x)), global0.x, 1u) % vec3<u32>(32u))));
}

