struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<u32>(27770u, 0u), vec2<i32>(30087i, -1i), vec4<i32>(71925i, -7254i, -1i, 0i), 0u), Struct_1(vec2<u32>(4294967295u, 68326u), vec2<i32>(-3441i, -1i), vec4<i32>(1i, -1i, -1i, -1i), 96990u), Struct_1(vec2<u32>(4294967295u, 31844u), vec2<i32>(-1896i, 2147483647i), vec4<i32>(2147483647i, 45915i, -29737i, -28069i), 0u), Struct_1(vec2<u32>(10535u, 0u), vec2<i32>(12903i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -87036i, -1i), 71789u), Struct_1(vec2<u32>(57783u, 46199u), vec2<i32>(0i, -50205i), vec4<i32>(2147483647i, 2147483647i, -6181i, i32(-2147483648)), 9364u), Struct_1(vec2<u32>(17965u, 88940u), vec2<i32>(i32(-2147483648), 15399i), vec4<i32>(-1i, -1i, 14216i, 3324i), 29979u), Struct_1(vec2<u32>(39862u, 34263u), vec2<i32>(0i, -32316i), vec4<i32>(32141i, -15458i, 69770i, -9827i), 68274u), Struct_1(vec2<u32>(1u, 1u), vec2<i32>(-8973i, 80570i), vec4<i32>(0i, -2168i, -18518i, -1i), 0u), Struct_1(vec2<u32>(21940u, 3951u), vec2<i32>(42697i, 31553i), vec4<i32>(2147483647i, -8807i, -23528i, -1i), 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(min(4294967295u, 17628u)), ~arg_2.a.x), 28160u), arg_2.c.yw, global0.c, arg_2.d);
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 9u)];
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(1u << (_wgslsmith_mult_u32(global0.a.x, 1u) % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 97721u), vec4<u32>(arg_2.a.x, global0.d, arg_1.a.x, 44924u)), ~vec4<u32>(138411u, 70840u, global0.a.x, 1u)), 0u)), 9u)];
    let var_2 = var_1.b.x;
    let var_3 = Struct_1(~(~(~var_0.a)), ~(-select(-var_0.c.xw, arg_1.c.xx, vec2<bool>(true, true))), max(arg_2.c, ~(~vec4<i32>(-1i, -47737i, -1i, global0.c.x))), abs(var_0.a.x));
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~0u, ~arg_0.a.x), global0.a.x), u_input.c.xx), vec2<i32>(select(countOneBits(-global0.c.x), arg_0.b.x, !any(vec3<bool>(false, false, false))), 2147483647i), vec4<i32>(~(-47041i), global0.c.x, 0i, global0.b.x << (reverseBits(arg_0.a.x) % 32u)), max(func_2(global0.c.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(u_input.a.x, 1u)) | _wgslsmith_add_u32(global0.a.x, global0.a.x), 9u)], func_2(_wgslsmith_clamp_i32(arg_0.c.x, -57304i, global0.b.x), Struct_1(vec2<u32>(arg_1.x, 1u), global0.c.xx, arg_0.c, arg_1.x), global1[_wgslsmith_index_u32(arg_1.x ^ u_input.d, 9u)])).d, firstLeadingBit(min(arg_0.a.x ^ arg_1.x, arg_1.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-621f)) + -1054f));
    var var_2 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(55010u, u_input.b.x), var_0.a), ~global0.b, vec4<i32>(_wgslsmith_mult_i32(var_0.c.x, -arg_0.b.x), 40841i, -(arg_0.b.x >> (_wgslsmith_mult_u32(1u, arg_1.x) % 32u)), arg_0.c.x | (1i << (var_0.d % 32u))), min(arg_0.d >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 21338u, 34338u, var_0.a.x), vec4<u32>(arg_1.x, 0u, 10628u, 18142u)) % 32u), global0.a.x));
    global1 = array<Struct_1, 9>();
    var var_3 = var_0;
    return Struct_1(((vec2<u32>(4294967295u, var_0.d) & global0.a) ^ ~vec2<u32>(14219u, 0u)) << (global0.a % vec2<u32>(32u)), -(vec2<i32>(-1i) * -arg_0.b), vec4<i32>(_wgslsmith_div_i32(min(1i, var_2.b.x), -1i & var_2.c.x), _wgslsmith_add_i32(2147483647i, -min(var_2.b.x, var_2.c.x)), func_2(~(arg_0.c.x << (u_input.e.x % 32u)), func_2(min(2147483647i, global0.b.x), func_2(52020i, arg_0, global1[_wgslsmith_index_u32(2965u, 9u)]), var_0), arg_0).b.x, var_0.b.x), 4808u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 9>();
    global0 = func_3(func_2(reverseBits(global0.c.x), Struct_1(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.x, 21284u), vec2<u32>(arg_1.a.x, global0.a.x))), ~vec2<i32>(-16477i, arg_2.x), firstTrailingBit(arg_3.c), arg_3.a.x), Struct_1(max(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 11560u), vec2<u32>(u_input.a.x, 20157u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.x, arg_1.a.x), vec2<u32>(4576u, arg_0.d))), vec2<i32>(1i, ~arg_1.b.x), arg_2, arg_1.a.x)), arg_3.a);
    var var_0 = !select(!vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(arg_3.d >= arg_0.a.x, true), false);
    var var_1 = ~global0.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2055f) + _wgslsmith_f_op_f32(trunc(1127f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_div_f32(-287f, -495f)));
    return global1[_wgslsmith_index_u32(arg_1.d, 9u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(select(global0.a, _wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 53527u)), vec2<u32>(arg_2.a.x, 57802u)), any(vec3<bool>(all(vec2<bool>(false, true)), true, 19652i <= arg_1.c.x))), vec2<i32>(arg_1.b.x, _wgslsmith_mult_i32(max(global0.b.x, arg_1.c.x) << (_wgslsmith_add_u32(51331u, 0u) % 32u), global0.b.x)), abs(arg_2.c), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, ~u_input.c ^ u_input.c), min(~abs(u_input.c), vec3<u32>(abs(0u), u_input.a.x, arg_2.d))));
    global0 = Struct_1(min(u_input.a, abs(global0.a)), _wgslsmith_div_vec2_i32(~var_0.b, vec2<i32>(min(global0.c.x, global0.b.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, arg_2.b.x, -14513i), var_0.c.wxw), -7524i)), var_0.c, _wgslsmith_mult_u32(firstLeadingBit(~4719u), ~_wgslsmith_div_u32(firstLeadingBit(65348u), abs(arg_1.a.x))));
    let var_1 = arg_0;
    let var_2 = func_2(abs(arg_1.b.x), Struct_1(~global0.a | ~select(arg_1.a, u_input.a, true), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-arg_2.b, vec2<i32>(var_0.c.x, 2147483647i)), ~arg_1.b | _wgslsmith_mult_vec2_i32(arg_1.b, vec2<i32>(-39561i, 1i))), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.x, arg_2.b.x, -6638i, global0.c.x), var_0.c, vec4<i32>(2147483647i, -18591i, -1i, global0.b.x))) | ~_wgslsmith_div_vec4_i32(arg_2.c, vec4<i32>(var_0.c.x, 38346i, arg_1.c.x, arg_2.b.x)), ~u_input.b.x), Struct_1(~var_0.a, firstLeadingBit(~(~arg_2.c.wy)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.c, ~arg_2.c), arg_2.c), arg_2.a.x));
    global1 = array<Struct_1, 9>();
    return -263i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 9>();
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(u_input.c.zy, firstLeadingBit(min(global0.a, vec2<u32>(1u, global0.d))), countOneBits(u_input.e)) | vec2<u32>(_wgslsmith_div_u32(~u_input.e.x, _wgslsmith_mod_u32(u_input.c.x, global0.a.x)), u_input.a.x), global0.b, vec4<i32>(0i, func_4(_wgslsmith_f_op_f32(f32(-1f) * -733f), func_1(Struct_1(global0.a, global0.b, vec4<i32>(1i, -2147483647i, -58589i, -1i), 3740u), Struct_1(vec2<u32>(1u, 0u), global0.c.yz, vec4<i32>(global0.b.x, 48007i, global0.b.x, 41529i), global0.d), ~global0.c, global1[_wgslsmith_index_u32(35214u, 9u)]), func_2(firstTrailingBit(-1i), Struct_1(vec2<u32>(global0.d, global0.a.x), vec2<i32>(global0.b.x, 890i), vec4<i32>(34871i, 38358i, -2147483647i, global0.c.x), u_input.d), func_1(global1[_wgslsmith_index_u32(10564u, 9u)], Struct_1(vec2<u32>(global0.d, 11309u), global0.b, vec4<i32>(15389i, global0.c.x, global0.b.x, 11151i), u_input.e.x), global0.c, global1[_wgslsmith_index_u32(global0.d, 9u)]))), func_1(Struct_1(global0.a, vec2<i32>(global0.b.x, -81419i) ^ vec2<i32>(-60335i, 5341i), abs(vec4<i32>(1i, global0.b.x, 32761i, -39220i)), global0.d), func_2(-global0.b.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(134729u, u_input.b.x), 9u)], Struct_1(u_input.e, global0.c.wx, vec4<i32>(global0.b.x, 2147483647i, 2147483647i, 27907i), global0.a.x)), vec4<i32>(14476i, countOneBits(-1i), i32(-1i) * -1i, 31896i), func_1(func_2(global0.b.x, global1[_wgslsmith_index_u32(global0.d, 9u)], global1[_wgslsmith_index_u32(44549u, 9u)]), global1[_wgslsmith_index_u32(28519u, 9u)], global0.c, global1[_wgslsmith_index_u32(1u, 9u)])).c.x, global0.c.x), ~1u);
    global1 = array<Struct_1, 9>();
    let var_1 = func_3(Struct_1(vec2<u32>(~18190u, 1u), ~global0.c.xz, _wgslsmith_sub_vec4_i32(-var_0.c, global0.c) ^ var_0.c, _wgslsmith_clamp_u32(1u, 3040u, ~u_input.e.x)), firstLeadingBit(~countOneBits(~vec2<u32>(u_input.c.x, var_0.d))));
    var var_2 = _wgslsmith_div_vec2_u32(countOneBits(func_1(Struct_1(~var_1.a, vec2<i32>(33792i, 0i), var_1.c, abs(4294967295u)), func_1(func_2(var_0.c.x, var_1, var_1), func_1(Struct_1(var_1.a, vec2<i32>(var_0.c.x, var_1.b.x), vec4<i32>(36173i, 39305i, global0.c.x, 17404i), 109142u), var_1, vec4<i32>(var_1.b.x, var_1.c.x, var_1.c.x, var_1.c.x), global1[_wgslsmith_index_u32(0u, 9u)]), firstLeadingBit(vec4<i32>(var_1.b.x, global0.c.x, -1i, -32913i)), global1[_wgslsmith_index_u32(var_1.a.x, 9u)]), countOneBits(vec4<i32>(23323i, global0.b.x, -1i, global0.b.x) >> (vec4<u32>(var_1.a.x, 0u, global0.a.x, 17630u) % vec4<u32>(32u))), func_1(func_3(var_1, var_1.a), func_2(-41910i, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], Struct_1(var_1.a, vec2<i32>(global0.b.x, -42720i), var_1.c, var_0.d)), ~vec4<i32>(-6580i, var_1.b.x, 13848i, -2147483647i), global1[_wgslsmith_index_u32(u_input.b.x, 9u)])).a), ~(vec2<u32>(var_0.a.x, 32743u << (u_input.c.x % 32u)) ^ ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(15775u, var_0.a.x))));
    var var_3 = func_2(var_1.c.x, global1[_wgslsmith_index_u32(firstTrailingBit(~select(~82479u, ~var_1.a.x, true)), 9u)], var_1).c.wyz;
    let var_4 = func_2(_wgslsmith_mod_i32(abs(-3351i), var_1.b.x ^ global0.b.x), func_2(-select(var_0.b.x, _wgslsmith_div_i32(1i, var_3.x), false), Struct_1(~_wgslsmith_clamp_vec2_u32(u_input.b.yx, var_1.a, vec2<u32>(10789u, 2509u)), global0.b, vec4<i32>(var_3.x, var_3.x, func_1(Struct_1(u_input.b.zy, vec2<i32>(2147483647i, var_0.b.x), var_0.c, 0u), Struct_1(global0.a, vec2<i32>(var_0.b.x, -10682i), vec4<i32>(var_1.b.x, global0.c.x, global0.c.x, -21152i), u_input.e.x), vec4<i32>(var_1.c.x, 86230i, -1i, 1i), Struct_1(vec2<u32>(global0.a.x, global0.a.x), vec2<i32>(2147483647i, -1955i), vec4<i32>(var_3.x, var_3.x, -302i, -21978i), 1u)).b.x, ~global0.c.x), 20226u), global1[_wgslsmith_index_u32(firstLeadingBit(~reverseBits(0u)), 9u)]), func_2(global0.b.x, func_1(Struct_1(~vec2<u32>(0u, 0u), global0.c.zy << (vec2<u32>(var_0.a.x, var_2.x) % vec2<u32>(32u)), -vec4<i32>(1i, var_1.b.x, -42130i, var_3.x), var_2.x), func_3(var_1, ~global0.a), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.x, -6327i, -71529i, var_0.c.x), vec4<i32>(2147483647i, 22079i, var_0.b.x, var_3.x)), func_1(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(~var_0.d, 9u)], vec4<i32>(0i, -2147483647i, 1i, 22690i), global1[_wgslsmith_index_u32(~global0.a.x, 9u)])), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

