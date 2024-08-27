struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<i32, 2>;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    var var_0 = arg_1;
    var var_1 = all(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    global0 = array<Struct_2, 28>();
    var var_2 = vec4<i32>(-arg_1.a.c.x, ~(~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-8846i, -2147483647i, global1[_wgslsmith_index_u32(u_input.d, 2u)]), vec3<i32>(40803i, arg_0.c.x, var_0.a.c.x)))), -firstTrailingBit(arg_0.c.x & -2147483647i) | _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(arg_1.a.c.zw, vec2<i32>(19965i, -56052i))), firstTrailingBit(arg_2.yz)), _wgslsmith_dot_vec3_i32(~arg_1.a.c.wwy, arg_2));
    let var_3 = Struct_1(u_input.d, firstLeadingBit(-max(abs(var_0.a.c.x), 1i)), vec4<i32>(reverseBits(_wgslsmith_add_i32(arg_1.a.c.x, select(-2298i, arg_1.a.c.x, true))), -1i, -2147483647i, abs(2147483647i)), arg_1.a.d);
    return false;
}

fn func_2() -> u32 {
    global0 = array<Struct_2, 28>();
    let var_0 = 1u;
    global2 = array<Struct_1, 30>();
    global0 = array<Struct_2, 28>();
    let var_1 = !all(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, any(vec2<bool>(true, false)), false), func_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(10347u, 10834u), 30u)], Struct_2(Struct_1(var_0, 1i, vec4<i32>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(34944u, 2u)], global1[_wgslsmith_index_u32(var_0, 2u)]), vec3<f32>(-1349f, -730f, -2171f)), vec2<f32>(495f, 402f), -1152f), vec3<i32>(-33871i, 23701i, global1[_wgslsmith_index_u32(4294967295u, 2u)]) | vec3<i32>(global1[_wgslsmith_index_u32(0u, 2u)], 0i, global1[_wgslsmith_index_u32(4294967295u, 2u)]))));
    return countOneBits((_wgslsmith_add_u32(0u, u_input.b.x) << (max(var_0, u_input.a.x) % 32u)) | ~1u) & ~(~max(3352u, var_0) >> (~1u % 32u));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    global2 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_3, _wgslsmith_f_op_f32(-1000f * arg_3), 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -316f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))), arg_2.x)));
    global0 = array<Struct_2, 28>();
    var var_1 = ~_wgslsmith_clamp_u32(min(~25371u, ~_wgslsmith_div_u32(arg_0, 24248u)), 1u, 66188u);
    var var_2 = u_input.a.zx;
    return global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~select(u_input.d, 60413u, false), _wgslsmith_sub_u32(~48784u, func_2())) ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.x, var_2.x, var_2.x), vec4<u32>(984u, 1u, 112932u, var_2.x)), ~arg_0), 4294967295u)), 2u)];
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 28>();
    global1 = array<i32, 2>();
    var var_0 = !vec4<bool>(arg_1.x, any(vec2<bool>(!arg_1.x, false)), true, true);
    let var_1 = -30521i;
    let var_2 = Struct_1(~12264u, 2147483647i, arg_3.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(arg_3.d, arg_3.d)), vec3<f32>(-392f, 1000f, arg_3.d.x))));
    return Struct_2(var_2, arg_3.d.zz, _wgslsmith_f_op_f32(-var_2.d.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = vec2<bool>(func_3(Struct_1(arg_3.a, arg_0.a.c.x, -arg_3.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, arg_3.d.x, arg_2), arg_0.a.d)) + vec3<f32>(var_0.d.x, arg_3.d.x, -530f))), func_4(var_0.c.x, !arg_1, vec3<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(1u, u_input.b.x), ~4294967295u), func_4(1787i, select(arg_1, arg_1, vec4<bool>(arg_1.x, true, true, false)), vec3<u32>(arg_3.a, var_0.a, u_input.b.x) << (vec3<u32>(5383u, var_0.a, 4294967295u) % vec3<u32>(32u)), func_4(0i, vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), u_input.a, var_0).a).a), vec3<i32>(1i, func_4(reverseBits(arg_0.a.b), !arg_1, abs(u_input.a), func_4(global1[_wgslsmith_index_u32(arg_3.a, 2u)], arg_1, u_input.a, arg_0.a).a).a.c.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, -2147483647i))), func_3(var_0, func_4(_wgslsmith_dot_vec2_i32(arg_0.a.c.zz, arg_0.a.c.wx), vec4<bool>(arg_1.x, arg_3.b != 2147483647i, false, any(arg_1)), u_input.a, arg_3), ~arg_0.a.c.yyy));
    global2 = array<Struct_1, 30>();
    var var_2 = vec3<u32>(arg_3.a, firstTrailingBit(127611u << (max(func_2(), 4294967295u) % 32u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(firstTrailingBit(arg_3.a)), reverseBits(firstLeadingBit(1u))), func_2()));
    global1 = array<i32, 2>();
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_1(~750u, 59851i >> (_wgslsmith_mod_u32(28160u, _wgslsmith_dot_vec3_u32(~u_input.a, ~u_input.a)) % 32u), vec4<i32>(func_5(Struct_2(Struct_1(4294967295u, arg_1, vec4<i32>(1i, arg_1, global1[_wgslsmith_index_u32(arg_0.a, 2u)], global1[_wgslsmith_index_u32(arg_2.x, 2u)]), vec3<f32>(arg_0.d.x, 301f, arg_0.d.x)), arg_0.d.yy, _wgslsmith_div_f32(728f, arg_0.d.x)), !vec4<bool>(true, arg_3, arg_3, arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1878f)), global2[_wgslsmith_index_u32(reverseBits(15634u), 30u)]).b, ~max(arg_0.c.x, -2147483647i) << (u_input.d % 32u), abs(global1[_wgslsmith_index_u32(~(~u_input.d), 2u)]), arg_0.c.x), arg_0.d);
    let var_1 = select(select(vec4<bool>(true, true | arg_3, true, !all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), true), vec4<bool>(_wgslsmith_f_op_f32(-var_0.d.x) < -302f, false, false, arg_3), ~(~(4294967295u & arg_2.x)) <= var_0.a);
    return global0[_wgslsmith_index_u32(1u, 28u)];
}

fn func_7(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(~arg_0.a.a, arg_0.a.b, vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(1i), 1i), ~arg_1, arg_1, firstLeadingBit(0i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d.x - _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-290f)) + _wgslsmith_f_op_f32(-906f + arg_0.c)), 808f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1962f)) - _wgslsmith_f_op_f32(min(arg_0.a.d.x, arg_0.b.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(2438f - -1356f), var_0.d.x, var_0.d.x, arg_0.b.x)));
    var var_2 = 69702u;
    let var_3 = vec2<u32>(arg_0.a.a, ~arg_0.a.a);
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) ^ vec4<u32>(~(~var_3.x), 0u, 62652u, 4294967295u), _wgslsmith_sub_vec4_u32(~select(~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, var_3.x), ~vec4<u32>(28971u, arg_0.a.a, u_input.d, 0u), false), _wgslsmith_add_vec4_u32((vec4<u32>(33554u, 0u, 0u, 1u) ^ vec4<u32>(var_0.a, 4294967295u, 47528u, 0u)) ^ vec4<u32>(30216u, var_3.x, 82201u, 4294967295u), countOneBits(countOneBits(vec4<u32>(var_0.a, 24056u, 9724u, u_input.a.x))))));
    return global2[_wgslsmith_index_u32(func_6(global2[_wgslsmith_index_u32(var_0.a, 30u)], ~(arg_0.a.c.x | (func_1(var_3.x, true, vec3<f32>(-2067f, -1000f, arg_0.a.d.x), var_0.d.x) >> (var_0.a % 32u))), ~vec2<u32>((arg_0.a.a >> (4294967295u % 32u)) << (var_0.a % 32u), ~(u_input.a.x & 15369u)), any(vec3<bool>(false, false, true))).a.a, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(func_4(func_1(0u, true, vec3<f32>(-504f, -271f, 1066f), -1302f), vec4<bool>(false, false, true, true), vec3<u32>(1u, u_input.a.x, 38686u), global2[_wgslsmith_index_u32(56640u << (u_input.d % 32u), 30u)]), vec4<bool>(true, all(vec2<bool>(true, false)), global1[_wgslsmith_index_u32(1u, 2u)] > global1[_wgslsmith_index_u32(19294u, 2u)], true), _wgslsmith_f_op_f32(1366f + _wgslsmith_f_op_f32(659f * 954f)), global2[_wgslsmith_index_u32(abs(2166u), 30u)]), _wgslsmith_div_i32(-(i32(-1i) * -5786i), ~(1i >> (u_input.a.x % 32u))), u_input.a.xz, 4294967295u > func_2()), global1[_wgslsmith_index_u32(48530u | (0u ^ ~(~u_input.d)), 2u)]);
    global1 = array<i32, 2>();
    global0 = array<Struct_2, 28>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(func_4(var_0.b, vec4<bool>(false, true, false, false), vec3<u32>(u_input.c, 60195u, u_input.d) << (u_input.a % vec3<u32>(32u)), global2[_wgslsmith_index_u32(4294967295u, 30u)]).a.d, var_0.d, any(vec4<bool>(false, false, false, false))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)))), _wgslsmith_f_op_vec3_f32(-var_0.d)), false));
    global0 = array<Struct_2, 28>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 28u)];
    global0 = array<Struct_2, 28>();
    let var_3 = var_2.a.c.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, ~func_5(global0[_wgslsmith_index_u32(var_2.a.a, 28u)], vec4<bool>(true, true, true, false), -1633f, var_2.a).a, (_wgslsmith_mod_vec3_u32(min(u_input.a, u_input.a), abs(vec3<u32>(1u, 1u, 97177u))) ^ ~vec3<u32>(48045u, 12058u, 1u)) & ~(~u_input.a));
}

