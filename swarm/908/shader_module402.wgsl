struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-52316i, 8950i, -36474i), vec3<i32>(15728i, 6575i, 1i), vec3<i32>(-43123i, 2147483647i, 20400i), vec3<i32>(2147483647i, 6565i, 0i), vec3<i32>(0i, -72378i, -31902i), vec3<i32>(850i, 53289i, 6056i), vec3<i32>(42809i, -24966i, 16382i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(-53825i, 20704i, i32(-2147483648)), vec3<i32>(0i, 44661i, 13980i), vec3<i32>(10060i, -48329i, 0i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(2147483647i, -28093i, -1i), vec3<i32>(40887i, -53102i, 2147483647i), vec3<i32>(54293i, 1i, 0i), vec3<i32>(15997i, 1i, -7014i), vec3<i32>(-10367i, 56182i, 1i), vec3<i32>(-1i, 24557i, -12438i), vec3<i32>(29854i, 23956i, -7074i), vec3<i32>(-44243i, -1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 36575i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = ~52495u;
    var var_1 = Struct_1(-63664i, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1004f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(992f, -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f + -558f)))));
    global0 = array<vec3<i32>, 22>();
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -var_1.a), vec2<i32>(-17883i, -var_1.a), vec2<i32>(-1i) * -vec2<i32>(4744i, -28013i)), -((vec2<i32>(-1i, -16264i) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u))) | vec2<i32>(var_1.a, -2520i))), false, 710f);
    global0 = array<vec3<i32>, 22>();
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    var var_0 = Struct_1(-_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(51469u, 22u)], _wgslsmith_sub_vec3_i32(vec3<i32>(-10043i, u_input.a, u_input.a), ~global0[_wgslsmith_index_u32(0u, 22u)])), true, _wgslsmith_f_op_f32(-1f));
    var_0 = Struct_1(u_input.a, !any(!select(vec2<bool>(false, true), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-var_0.c))) - 1528f)));
    var var_1 = select(!vec4<bool>(!(-44842i > var_0.a), func_3(), any(vec3<bool>(arg_1, var_0.b, arg_1)), true), !(!vec4<bool>(arg_1, arg_1, var_0.b, any(vec2<bool>(false, arg_1)))), !vec4<bool>(!all(vec4<bool>(false, true, true, true)), false, _wgslsmith_clamp_i32(var_0.a, -17648i, u_input.a) >= 2147483647i, !arg_1));
    let var_2 = Struct_2(~(~arg_0.x), vec4<bool>(select(arg_1, all(vec3<bool>(var_1.x, false, false)), true), -35692i >= firstLeadingBit(var_0.a), var_0.c != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.c, 594f)))), false));
    var var_3 = Struct_1(-(~(-21492i)), _wgslsmith_mod_u32(0u, ~min(arg_0.x, 79305u)) == ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(19895u, var_2.a, var_2.a, arg_0.x), vec4<u32>(var_2.a, arg_0.x, 0u, 0u))), 194f);
    return u_input.a;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = Struct_1(func_2(~abs(~vec3<u32>(4294967295u, 0u, 0u)), true), any(vec2<bool>(any(vec2<bool>(false, false)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -2192f))) - 297f)));
    var var_1 = Struct_1(2147483647i, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(261f + var_0.c))));
    global0 = array<vec3<i32>, 22>();
    var var_2 = firstLeadingBit(vec4<i32>(18721i, ~var_0.a, arg_0.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_0.x, arg_0.x, -40688i, var_1.a) ^ vec4<i32>(-2147483647i, u_input.a, -1i, -1i)), -vec4<i32>(var_0.a, var_0.a, var_0.a, 2147483647i))));
    let var_3 = min(arg_0.x & 48450i, var_2.x);
    return ~0u;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_2 {
    global0 = array<vec3<i32>, 22>();
    return Struct_2(~0u, vec4<bool>(true, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~firstLeadingBit(vec2<i32>(1i, 1i)), countOneBits(1u), vec4<u32>(_wgslsmith_mod_u32(1u >> (0u % 32u), min(79180u, 8174u)), 1u, ~1u, ~func_1(vec2<i32>(9473i, 0i))) << (_wgslsmith_mod_vec4_u32(countOneBits(countOneBits(vec4<u32>(0u, 1u, 46877u, 42368u))), vec4<u32>(0u, 22507u, _wgslsmith_add_u32(1u, 14442u), _wgslsmith_dot_vec3_u32(vec3<u32>(30859u, 10126u, 20924u), vec3<u32>(4294967295u, 4294967295u, 2022u)))) % vec4<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_mult_i32(33091i << (0u % 32u), 0i), func_2(~vec3<u32>(9044u, 33726u, 6256u), true)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-9283i, u_input.a, -16270i), _wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(35694u, 22u)], global0[_wgslsmith_index_u32(37228u, 22u)]))));
    var_0 = Struct_2(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(var_0.a, 4294967295u)) >> ((~var_0.a | 1u) % 32u)), vec4<bool>(false & any(select(var_0.b.zxw, var_0.b.www, var_0.b.yxw)), var_0.b.x, var_0.b.x, var_0.b.x && false));
    let var_1 = func_4(countOneBits(vec2<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i)))), ~var_0.a, _wgslsmith_add_vec4_u32(select(reverseBits(vec4<u32>(4294967295u, var_0.a, 0u, 1u)), ~abs(vec4<u32>(var_0.a, 32437u, 36861u, var_0.a)), !(false == var_0.b.x)), _wgslsmith_div_vec4_u32(countOneBits(select(vec4<u32>(var_0.a, var_0.a, var_0.a, 4294967295u), vec4<u32>(var_0.a, var_0.a, var_0.a, 55562u), vec4<bool>(true, false, var_0.b.x, true))), max(vec4<u32>(35117u, 91963u, 4521u, var_0.a), vec4<u32>(7346u, var_0.a, 4294967295u, 13020u)) ^ min(vec4<u32>(4997u, 6644u, 42484u, var_0.a), vec4<u32>(4294967295u, 162396u, var_0.a, var_0.a)))), global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(var_0.a | var_0.a, _wgslsmith_div_u32(1u, var_0.a))), 22u)]);
    let var_2 = vec2<u32>((_wgslsmith_sub_u32(abs(37808u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a, var_1.a), vec3<u32>(var_0.a, 4294967295u, 21466u))) | ~(~1u)) & 4294967295u, ~(~80931u) >> (_wgslsmith_div_u32(var_0.a, ~4294967295u) % 32u));
    var var_3 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, 0i, ~4294967295u, ~(select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, var_1.a, var_1.a, 1043u), vec4<u32>(var_0.a, 39512u, 187u, var_1.a)), vec4<u32>(0u, 4294967295u, var_0.a, var_2.x), vec4<bool>(var_0.b.x, false, var_0.b.x, false)) ^ (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, var_2.x, 4294967295u, 15552u), vec4<u32>(17960u, 4294967295u, 40930u, 17033u)) ^ (vec4<u32>(0u, 3124u, var_0.a, var_1.a) ^ vec4<u32>(2530u, var_1.a, 0u, var_1.a)))));
}

