struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 1u, 43752u, 0u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = ~(~73029u);
    var var_1 = Struct_1(firstTrailingBit(vec4<u32>(1u, global0.a.x, arg_3.x, var_0 << (_wgslsmith_clamp_u32(var_0, 32202u, 23676u) % 32u))));
    let var_2 = false;
    var var_3 = _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(min(vec2<i32>(-71273i, -18896i), vec2<i32>(0i, 22870i)), vec2<i32>(-2147483647i, 9595i)), -2147483647i) << (~var_0 % 32u);
    let var_4 = -_wgslsmith_mult_i32(-48466i, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_div_i32(1468i, 2327i)), _wgslsmith_clamp_i32(~1i, 39365i, _wgslsmith_dot_vec3_i32(vec3<i32>(4569i, 15351i, -1i), vec3<i32>(4499i, 2147483647i, -1i)))));
    return select(!(!vec2<bool>(false, arg_2)), vec2<bool>(arg_2, true), arg_2 || var_2);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = !(!(((arg_1.a.x ^ u_input.b.x) > ~17442u) & true));
    global0 = Struct_1(vec4<u32>(arg_1.a.x << (arg_1.a.x % 32u), max(~(~61000u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.a.x), vec2<u32>(arg_0.a.x, global0.a.x)), arg_1.a.x << (global0.a.x % 32u))), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(9659u, global0.a.x), abs(u_input.a.x)), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_1.a.x, 0u), global0.a.xyw), max(_wgslsmith_clamp_vec3_u32(global0.a.xzw, vec3<u32>(u_input.a.x, u_input.a.x, arg_0.a.x), vec3<u32>(1u, u_input.b.x, arg_1.a.x)), vec3<u32>(arg_0.a.x, 69259u, arg_1.a.x)))));
    let var_1 = Struct_1(max((global0.a << (select(vec4<u32>(global0.a.x, u_input.b.x, global0.a.x, u_input.b.x), vec4<u32>(1u, arg_0.a.x, 4294967295u, global0.a.x), vec4<bool>(var_0, true, false, false)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(0u, global0.a.x, arg_1.a.x, 42531u)), min(vec4<u32>(global0.a.x, 0u, 0u, arg_1.a.x), arg_1.a)), ~vec4<u32>(26282u, 56002u, arg_0.a.x, 58906u) ^ countOneBits(vec4<u32>(global0.a.x, u_input.b.x, 903u, arg_1.a.x))));
    let var_2 = arg_1;
    let var_3 = vec3<bool>(var_0, any(select(vec3<bool>(true, var_0, true), vec3<bool>(true, !var_0, var_0), var_0)), 46984u != arg_0.a.x);
    return vec2<bool>(!(!any(var_3)), reverseBits(~(~36972u)) == select(~arg_0.a.x, global0.a.x, true));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec3<i32> {
    let var_0 = Struct_1(global0.a);
    var var_1 = _wgslsmith_f_op_f32(-256f + arg_0.x);
    global0 = Struct_1(max(_wgslsmith_mod_vec4_u32(~global0.a, _wgslsmith_sub_vec4_u32(var_0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, u_input.b.x, 31523u, 51932u), var_0.a))), vec4<u32>(var_0.a.x, _wgslsmith_sub_u32(1u, global0.a.x), ~1u, abs(var_0.a.x)) >> (firstLeadingBit(global0.a) % vec4<u32>(32u))));
    var var_2 = Struct_1(vec4<u32>(0u & _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a.x, u_input.b.x), _wgslsmith_clamp_u32(global0.a.x, var_0.a.x, var_0.a.x)), var_0.a.x, global0.a.x, firstLeadingBit(reverseBits(1u))));
    var_2 = Struct_1(select(select(_wgslsmith_add_vec4_u32(~var_2.a, var_0.a), vec4<u32>(19342u, 1u, var_2.a.x, _wgslsmith_div_u32(82666u, var_0.a.x)), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, func_2(var_0.a.x, -167f, true, global0.a.zzw).x)), vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.b.x, var_2.a.x ^ u_input.a.x), 83436u, firstLeadingBit(0u)), vec4<bool>(arg_3.x, arg_1, !arg_3.x || true, arg_3.x & true)));
    return firstLeadingBit(abs(-vec3<i32>(1i, 1i, 1i)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, 21682i), countOneBits(2147483647i), 1i), -1i)), min(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1353f, -520f), vec2<f32>(2614f, 647f)), _wgslsmith_div_vec2_f32(vec2<f32>(1240f, 262f), vec2<f32>(1081f, -166f)), true)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1609f, -1000f), vec2<f32>(256f, -1138f))), vec2<f32>(1f, 1f))), select(func_2(u_input.a.x, 323f, false, vec3<u32>(4294967295u, 4294967295u, global0.a.x)), func_3(Struct_1(global0.a), Struct_1(vec4<u32>(4294967295u, global0.a.x, 28102u, global0.a.x))), vec2<bool>(true, true))), abs(vec3<i32>(1i, 1i, 1i) >> (~global0.a.wyx % vec3<u32>(32u)))));
    let var_1 = Struct_1(vec4<u32>(4486u, abs(12164u), ~(~_wgslsmith_sub_u32(39804u, global0.a.x)), _wgslsmith_mult_u32(u_input.b.x ^ ~0u, ~1u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(328f, -1014f, any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))))));
    let var_3 = var_1.a;
    global0 = Struct_1(~(~countOneBits(vec4<u32>(0u, global0.a.x, var_3.x, u_input.b.x))));
    return true;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = select(vec2<bool>(arg_3.x >= arg_3.x, arg_1), vec2<bool>(!(!(0i <= arg_3.x)), true), true);
    let var_1 = (abs(~(-vec2<i32>(arg_3.x, -2147483647i))) | (abs(vec2<i32>(-64597i, 1i) >> (global0.a.xz % vec2<u32>(32u))) & func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-365f, arg_0), vec2<f32>(-1589f, arg_0)), arg_1, vec2<f32>(arg_0, -680f), vec2<bool>(arg_1, true)).zx)) ^ max(firstTrailingBit(vec2<i32>(2147483647i, func_4(vec2<f32>(arg_0, 1000f), var_0.x, vec2<f32>(arg_0, -2430f), var_0).x)), -select(vec2<i32>(arg_3.x, 21009i), min(arg_3, arg_3), false));
    global0 = Struct_1(select(global0.a, global0.a, !all(vec4<bool>(true, arg_1, true, arg_1))) | firstTrailingBit(_wgslsmith_mult_vec4_u32(global0.a, global0.a << (vec4<u32>(u_input.a.x, 0u, global0.a.x, global0.a.x) % vec4<u32>(32u)))));
    var var_2 = vec4<bool>(!func_3(Struct_1(_wgslsmith_clamp_vec4_u32(global0.a, global0.a, vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u))), Struct_1(_wgslsmith_div_vec4_u32(global0.a, vec4<u32>(global0.a.x, 1u, global0.a.x, global0.a.x)))).x, false, !func_1(), func_3(Struct_1(global0.a), Struct_1(global0.a)).x);
    var var_3 = select(func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1267f, -183f)))), vec2<f32>(_wgslsmith_f_op_f32(step(arg_0, -2165f)), _wgslsmith_f_op_f32(1000f + -1583f)))), var_0.x, vec2<f32>(-1309f, _wgslsmith_f_op_f32(min(690f, _wgslsmith_f_op_f32(arg_0 * arg_0)))), !vec2<bool>(var_2.x, false)), abs(firstTrailingBit(vec3<i32>(func_4(vec2<f32>(arg_0, arg_0), true, vec2<f32>(arg_0, 1000f), vec2<bool>(true, var_0.x)).x, func_4(vec2<f32>(274f, arg_0), true, vec2<f32>(arg_0, -662f), vec2<bool>(arg_1, var_2.x)).x, select(arg_3.x, -34254i, false)))), true);
    return Struct_1(global0.a);
}

fn func_6(arg_0: Struct_1) -> u32 {
    let var_0 = func_3(func_5(-699f, true, ~u_input.b.x, _wgslsmith_mod_vec2_i32(func_4(vec2<f32>(284f, 221f), any(vec4<bool>(false, false, false, false)), vec2<f32>(-1403f, 1091f), vec2<bool>(true, true)).xx, vec2<i32>(1i, 1i))), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f)) + _wgslsmith_div_f32(1244f, _wgslsmith_div_f32(1068f, -1023f))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), 49151u, vec2<i32>(1i, 1i))).x;
    global0 = Struct_1(vec4<u32>(14597u, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(arg_0.a.x), min(global0.a.x, u_input.b.x), 1u), countOneBits(firstLeadingBit(arg_0.a.wyy))), 1u, u_input.b.x));
    global0 = arg_0;
    return ~(~select(3251u & (arg_0.a.x & 16810u), 48364u, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1508f) * 302f), select(func_1(), false, global0.a.x == select(6054u, global0.a.x, true)), countOneBits(~4294967295u), vec2<i32>(firstTrailingBit(select(-19877i, 5707i, true)), 1i)));
    var var_1 = true;
    let var_2 = u_input.a.x;
    var_0 = 111531u;
    let var_3 = _wgslsmith_add_i32(~1i, _wgslsmith_mult_i32(-2147483647i, ~func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(427f, 991f) * vec2<f32>(550f, 294f)), true, vec2<f32>(126f, 964f), vec2<bool>(true, true)).x));
    global0 = Struct_1(vec4<u32>(1u, 53808u, func_5(-216f, true, 1u, vec2<i32>(var_3, -1i) << (global0.a.xy % vec2<u32>(32u))).a.x, ~_wgslsmith_mod_u32(var_2, 4294967295u)) ^ vec4<u32>(_wgslsmith_add_u32(~38461u, _wgslsmith_mult_u32(global0.a.x, u_input.b.x)), 58034u, ~(~global0.a.x), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1507f - -1127f), -1022f, true)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(611f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f) + _wgslsmith_f_op_f32(379f * -383f)))));
}

