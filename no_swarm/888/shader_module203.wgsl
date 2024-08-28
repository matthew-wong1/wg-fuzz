struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, false, false, true, true, false, true, true, false, false, true, true, false, false, true, false, true, true, false, false, true);

var<private> global1: u32 = 929u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_1(vec4<bool>(false, arg_0.a, global0[_wgslsmith_index_u32(1u, 22u)], arg_0.a), -vec2<i32>(_wgslsmith_add_i32(arg_0.b.x, -1i) >> (u_input.a.x % 32u), -countOneBits(-2147483647i)), arg_0.b.x);
    global0 = array<bool, 22>();
    let var_1 = Struct_4(arg_0);
    let var_2 = Struct_3(false, -_wgslsmith_mod_vec2_i32(var_0.b, vec2<i32>(-var_0.b.x, -52773i)), var_0.a, true);
    global1 = max(~(~u_input.a.x), u_input.a.x | (firstTrailingBit(~4294967295u) | 5030u));
    return false;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global1 = u_input.d.x;
    let var_0 = u_input.a;
    let var_1 = true;
    global1 = u_input.d.x ^ var_0.x;
    var var_2 = select(select(vec3<bool>(!any(vec3<bool>(false, var_1, global0[_wgslsmith_index_u32(1u, 22u)])), select(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(abs(1u), 22u)], true), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), 22u)]), !(!vec3<bool>(true, true, var_1)), false), vec3<bool>(true, (u_input.d.x >= (u_input.a.x | u_input.a.x)) | !var_1, any(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]))), all(vec4<bool>(false, func_3(Struct_3(true, vec2<i32>(u_input.e, 36821i), vec4<bool>(global0[_wgslsmith_index_u32(124996u, 22u)], var_1, false, true), var_1)), var_1, func_3(Struct_3(true, u_input.c.wz, vec4<bool>(true, var_1, true, global0[_wgslsmith_index_u32(var_0.x, 22u)]), true)))) && all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
    return Struct_3(false, _wgslsmith_div_vec2_i32(vec2<i32>(1i << (_wgslsmith_add_u32(var_0.x, var_0.x) % 32u), u_input.c.x), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0, u_input.e), abs(2147483647i)), u_input.c.x)), select(select(select(select(vec4<bool>(false, true, var_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec4<bool>(var_1, global0[_wgslsmith_index_u32(4294967295u, 22u)], false, true), false), select(vec4<bool>(var_2.x, global0[_wgslsmith_index_u32(39998u, 22u)], var_2.x, var_2.x), vec4<bool>(true, var_1, var_1, true), global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), func_3(Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], vec2<i32>(arg_0, u_input.e), vec4<bool>(var_2.x, var_1, global0[_wgslsmith_index_u32(var_0.x, 22u)], false), true))), vec4<bool>(false, true, false, var_1 && true), _wgslsmith_f_op_f32(floor(363f)) >= _wgslsmith_f_op_f32(select(1187f, 1038f, global0[_wgslsmith_index_u32(32769u, 22u)]))), !vec4<bool>(var_1 | false, global0[_wgslsmith_index_u32(var_0.x, 22u)], select(global0[_wgslsmith_index_u32(var_0.x, 22u)], global0[_wgslsmith_index_u32(35963u, 22u)], true), true), var_1), true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_1 {
    var var_0 = ~abs(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(21940u, u_input.d.x), _wgslsmith_sub_u32(u_input.a.x, u_input.d.x)));
    var var_1 = arg_1;
    global0 = array<bool, 22>();
    let var_2 = -55380i & _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_1.a.b.x, 64054i, arg_1.a.b.x) << (vec4<u32>(u_input.d.x, 30509u, u_input.a.x, u_input.d.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(select(vec4<i32>(61124i, arg_1.a.b.x, arg_0.b.x, arg_1.a.b.x), u_input.c, vec4<bool>(true, arg_1.a.d, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_0.a)), countOneBits(vec4<i32>(arg_0.b.x, var_1.a.b.x, 24891i, -2147483647i)))), min(u_input.c, vec4<i32>(u_input.e, -arg_1.a.b.x, arg_0.b.x & u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, var_1.a.b.x, var_1.a.b.x, -53334i)))));
    let var_3 = func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-countOneBits(2147483647i), -64463i, var_2, arg_0.b.x << (~u_input.a.x % 32u)), u_input.c));
    return Struct_1(vec4<bool>(true, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(304f, 1378f)) - _wgslsmith_div_f32(-1140f, 1364f)), var_1.a.a), _wgslsmith_mult_vec2_i32(var_3.b, abs(abs(vec2<i32>(var_1.a.b.x, 33584i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, select(arg_1.a.b.x << (16005u % 32u), arg_0.b.x | 1i, arg_0.a), -(~5929i), min(-39216i, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.x | 0i, func_2(0i).b.x, u_input.b, var_3.b.x & var_1.a.b.x), u_input.c)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> u32 {
    global1 = select(16516u, ~u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(6326u, u_input.d.x, arg_1, 1u), vec4<u32>(0u, arg_1, 4294967295u, 1u) >> (vec4<u32>(4294967295u, 42324u, 64162u, 22373u) % vec4<u32>(32u))) % 32u), !(_wgslsmith_dot_vec3_u32(u_input.a, u_input.d) != countOneBits(1u))) << (arg_1 % 32u);
    var var_0 = func_2(1i << (u_input.d.x % 32u)).c.xyy;
    var_0 = !(!vec3<bool>(false, true, var_0.x && arg_0));
    var var_1 = Struct_4(func_2(arg_2.c));
    var var_2 = select(arg_2.a, !vec4<bool>(true, false, arg_0, select(true, true, func_4(Struct_3(true, vec2<i32>(2147483647i, 2147483647i), arg_2.a, true), Struct_4(var_1.a)).a.x)), vec4<bool>(!select(true, arg_0, arg_0), all(func_2(arg_2.c).c), true, arg_0 | any(!vec3<bool>(arg_2.a.x, false, true))));
    return firstTrailingBit(6665u);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    var var_0 = select(func_5(false, ~(~(0u << (u_input.a.x % 32u))), func_4(func_2(_wgslsmith_dot_vec3_i32(u_input.c.yyx, vec3<i32>(17351i, arg_0, arg_0))), Struct_4(Struct_3(true, u_input.c.yx, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], true, false, false), false)))), 1u, any(select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]), func_4(Struct_3(false, u_input.c.zz, vec4<bool>(global0[_wgslsmith_index_u32(47344u, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false, global0[_wgslsmith_index_u32(1u, 22u)]), global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), Struct_4(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<i32>(arg_0, 2147483647i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], true), true))).a.yw, global0[_wgslsmith_index_u32(~u_input.d.x, 22u)])));
    let var_1 = max(reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.d.x, 99798u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 34830u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 13866u)) ^ _wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.d.x)), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 49454u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, u_input.a.x), ~u_input.d.zy), ~u_input.d.x, u_input.d.x, u_input.d.x) | ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 54390u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 15157u, 0u, 4294967295u), vec4<u32>(1u, 25660u, 40313u, 4294967295u))));
    return reverseBits(~max(u_input.d.x, ~u_input.d.x | firstTrailingBit(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(37456u, 0u, u_input.a.x, u_input.d.x)) >> (vec4<u32>(1u, u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, 0u), func_1(0i, vec4<f32>(-171f, -136f, -1271f, -1000f))) % vec4<u32>(32u))), vec4<u32>(u_input.d.x, ~16591u, 78120u, select(_wgslsmith_clamp_u32(u_input.a.x, 29675u, u_input.a.x), firstLeadingBit(57037u), u_input.e <= u_input.e) | u_input.d.x));
    var var_1 = Struct_4(Struct_3(global0[_wgslsmith_index_u32(~(~0u) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(58853u, 0u), u_input.a.xx) % 32u), 22u)], vec2<i32>(~(-u_input.b), _wgslsmith_dot_vec4_i32(select(vec4<i32>(27672i, u_input.e, u_input.b, u_input.c.x), vec4<i32>(1i, u_input.b, -2147483647i, u_input.c.x), vec4<bool>(true, global0[_wgslsmith_index_u32(37359u, 22u)], false, false)), u_input.c)), !select(func_4(Struct_3(true, vec2<i32>(u_input.e, -25378i), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], true, true, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), false), Struct_4(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<i32>(29180i, u_input.b), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(var_0.x, 22u)]), true))).a, !vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], false, true)), !global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(14723u, var_0.x), 22u)]));
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    var var_2 = u_input.c.yyz;
    global1 = 4294967295u | var_0.x;
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, 877f, _wgslsmith_f_op_f32(1000f * 1103f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, 1970f, -751f)))), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(firstTrailingBit(68273i), var_1.a.b.x), (firstTrailingBit(0i) ^ ~(-1699i)) >> (var_0.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.a.x, var_3.a.x), _wgslsmith_f_op_f32(ceil(var_3.a.x)), var_1.a.c.x)) * 513f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(213f)) + _wgslsmith_f_op_f32(-1850f + 214f)), _wgslsmith_f_op_f32(-var_3.a.x)))), vec3<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 2147483647i), u_input.c.wxz) & firstTrailingBit(var_1.a.b.x >> (0u % 32u)), -1i), ~max(5501i, i32(-1i) * -23520i) >> (~(~u_input.d.x) % 32u), _wgslsmith_div_f32(_wgslsmith_div_f32(-398f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a.x)))), var_3.a.x), var_1.a.b.x);
}

