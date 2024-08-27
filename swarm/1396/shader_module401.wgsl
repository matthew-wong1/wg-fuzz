struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: u32;

var<private> global1: array<f32, 16> = array<f32, 16>(-903f, -852f, 1733f, -975f, 599f, -1641f, 729f, 391f, -592f, -1748f, 1000f, -592f, -1118f, -518f, 921f, 177f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec2<f32> {
    let var_0 = Struct_1(~(~(~vec2<u32>(4294967295u, 372u))), ~(-(arg_1.xy | countOneBits(vec2<i32>(u_input.b.x, 0i)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1024f, global1[_wgslsmith_index_u32(~51659u, 16u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(73146u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]) * vec2<f32>(-598f, -781f)))) + vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 30427u), 16u)], _wgslsmith_f_op_f32(sign(-681f)))))));
    let var_1 = var_0;
    let var_2 = Struct_2(Struct_1(firstLeadingBit(select(~vec2<u32>(var_0.a.x, 1u), ~var_0.a, true)), vec2<i32>(-var_0.b.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 16u)], global1[_wgslsmith_index_u32(40276u, 16u)])), var_0.c, var_0.b.x > arg_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, -1836f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1083f, 1730f) - var_0.c))))));
    global0 = _wgslsmith_mult_u32(var_2.a.a.x, var_1.a.x);
    var var_3 = var_0;
    return vec2<f32>(var_2.a.c.x, var_3.c.x);
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(~firstLeadingBit(vec2<u32>(0u, 1u)), ~u_input.b.yz << (vec2<u32>(10057u, ~(~54396u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(975f + global1[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 16u)])) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(false, vec4<i32>(-42928i, -2147483647i, 12123i, -1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(80121u, 16u)]) + vec2<f32>(-1090f, global1[_wgslsmith_index_u32(2091u, 16u)]))))));
    var_0 = Struct_1(var_0.a, var_0.b ^ u_input.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]))), _wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x))), 1514f));
    let var_1 = -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(4865i, u_input.a.x, -32979i), u_input.b | u_input.b), reverseBits(u_input.b.x)), 2147483647i, abs(~u_input.b.x), _wgslsmith_mod_i32(45839i, u_input.b.x));
    global1 = array<f32, 16>();
    var var_2 = Struct_5(Struct_2(Struct_1(countOneBits(_wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(var_0.a.x, 4294967295u))), vec2<i32>(2147483647i, 19872i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 16u)], var_0.c.x) - var_0.c)))), reverseBits(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, 38791u, var_0.a.x, 63208u), vec4<u32>(4294967295u, 20311u, var_0.a.x, var_0.a.x)))), Struct_2(Struct_1(vec2<u32>(_wgslsmith_mod_u32(59825u, var_0.a.x), 45000u), ~(~vec2<i32>(-50950i, 0i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)])), vec2<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 16u)], 1189f)))));
    return vec3<bool>(!all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), true)), any(select(vec4<bool>(select(false, false, false), -2297i == u_input.a.x, false, false), vec4<bool>(true, true, true, true), true)), !any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_4 {
    global1 = array<f32, 16>();
    global0 = 1u;
    var var_0 = vec3<i32>(~(i32(-1i) * -16515i), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a.x, -62721i, arg_1.x)), 1i), _wgslsmith_mult_i32(~u_input.a.x, u_input.a.x))), 17613i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(!arg_0.x, vec4<i32>(~u_input.b.x, -7083i, u_input.b.x, arg_1.x))).x) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(~1u, 1u, 19158u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u))), 16u)]);
    var var_2 = Struct_4(vec4<u32>(_wgslsmith_mod_u32(1u, min(reverseBits(4294967295u), ~0u)), ~(~abs(84984u)), firstLeadingBit(4294967295u), ~_wgslsmith_clamp_u32(1u, 1u, ~4294967295u)), arg_0);
    return Struct_4(vec4<u32>(1u, ~var_2.a.x, max(~0u, firstTrailingBit(0u)), ~1u) >> (min(var_2.a, vec4<u32>(8543u, var_2.a.x << (4294967295u % 32u), var_2.a.x >> (var_2.a.x % 32u), 26526u << (var_2.a.x % 32u))) % vec4<u32>(32u)), select(arg_0, !select(!var_2.b, !vec3<bool>(false, var_2.b.x, arg_0.x), var_2.b), arg_0.x));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = func_4(select(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), !all(vec4<bool>(false, false, false, true)), (arg_1 == arg_1) & false), select(func_2(), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, any(vec2<bool>(true, false)))), all(func_2())), -(vec4<i32>(_wgslsmith_mod_i32(arg_2, -2147483647i), -2147483647i, -18214i, u_input.a.x) ^ countOneBits(abs(vec4<i32>(2147483647i, arg_2, arg_2, u_input.b.x)))));
    global0 = ~arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(25547u, 16u)]))))));
    var_1 = arg_0;
    var var_2 = !(!(var_0.b.x & any(var_0.b.xx)));
    return (arg_1 >> (arg_1 % 32u)) & ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2529u;
    global1 = array<f32, 16>();
    global1 = array<f32, 16>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(func_1(-351f, 1u, -1i), 16u)], _wgslsmith_f_op_f32(sign(-1069f))))))));
    var var_1 = Struct_1(~select(countOneBits(firstTrailingBit(vec2<u32>(23172u, 0u))), abs(vec2<u32>(6319u, 15120u)), all(vec2<bool>(false, false))), -vec2<i32>(~(-u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, 4210i) >> (1u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1209f + _wgslsmith_f_op_f32(f32(-1f) * -799f)))), _wgslsmith_f_op_f32(ceil(-674f))));
    var var_2 = func_2().yx;
    var var_3 = (!all(!vec2<bool>(var_2.x, var_2.x)) | !var_2.x) | func_2().x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, 1i), vec4<i32>(-2486i, var_1.b.x, u_input.a.x, -2147483647i)) & ~vec4<i32>(0i, 2147483647i, var_1.b.x, u_input.b.x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -1i, -4257i, -20169i), vec4<i32>(var_1.b.x, 0i, -11113i, -2147483647i)), vec4<i32>(2147483647i, var_1.b.x, u_input.a.x, -2147483647i))));
}

