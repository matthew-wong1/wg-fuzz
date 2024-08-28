struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(2147483647i, 2147483647i, -8565i, i32(-2147483648)), vec4<i32>(1i, 19097i, -42530i, 1i), vec4<i32>(-24188i, i32(-2147483648), -11519i, -1i), vec4<i32>(-5045i, -31704i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, -36397i, -24885i, -1i), vec4<i32>(i32(-2147483648), 1i, 50537i, 10262i), vec4<i32>(i32(-2147483648), 23516i, -26088i, i32(-2147483648)), vec4<i32>(2147483647i, -1647i, 1i, -1i), vec4<i32>(-46777i, 0i, 1996i, -21884i), vec4<i32>(0i, 0i, 0i, 1i), vec4<i32>(39570i, 14226i, -1686i, -48679i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_i32(0i, _wgslsmith_add_i32(76764i >> (u_input.b % 32u), select(arg_1.a, -39921i, arg_2.x)))));
    global0 = array<vec4<i32>, 11>();
    var var_1 = false;
    let var_2 = _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.a, var_0.a, 1i, -2147483647i), -vec4<i32>(u_input.a.x, var_0.a, -2147483647i, 1i)), reverseBits(global0[_wgslsmith_index_u32(0u, 11u)]) & -vec4<i32>(arg_1.a, -14190i, arg_0, arg_0)), vec4<i32>(~(-37273i | ~arg_0), abs(0i), _wgslsmith_add_i32(countOneBits(arg_1.a >> (44470u % 32u)), countOneBits(min(-31883i, arg_0))), var_0.a));
    var_1 = arg_2.x & true;
    return select(select(!vec4<bool>(arg_2.x & false, arg_2.x, all(vec3<bool>(arg_2.x, true, false)), true), select(select(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, true, arg_2.x, false), vec4<bool>(true, arg_2.x, true, false), vec4<bool>(arg_2.x, arg_2.x, false, true)), !arg_2.x), !(!vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), select(u_input.b > u_input.b, any(arg_2), arg_2.x)), !(!select(vec4<bool>(arg_2.x, arg_2.x, false, true), vec4<bool>(false, false, arg_2.x, arg_2.x), false))), select(!select(!vec4<bool>(arg_2.x, true, false, true), vec4<bool>(true, arg_2.x, false, false), !vec4<bool>(false, arg_2.x, true, false)), !select(select(vec4<bool>(false, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, true, false, arg_2.x), arg_2.x), select(vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, false, true, arg_2.x), arg_2.x), !vec4<bool>(true, true, false, arg_2.x)), vec4<bool>(arg_2.x, !arg_2.x, any(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), !arg_2.x)), !select(vec4<bool>(!arg_2.x, arg_2.x, !arg_2.x, false), select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), true), !vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)));
}

fn func_2() -> bool {
    var var_0 = vec2<bool>(true, false);
    var var_1 = select(!(!vec4<bool>(true, var_0.x, u_input.c != 40615u, false)), !(!func_3(u_input.a.x, Struct_1(u_input.a.x), vec2<bool>(false, true))), func_3(1i, Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.zyw, u_input.a.wzy | vec3<i32>(-1i, -1i, u_input.a.x))), !(!func_3(53175i, Struct_1(9830i), vec2<bool>(false, false)).ww)));
    let var_2 = Struct_1(u_input.a.x);
    var_1 = vec4<bool>(false, var_1.x, false, any(vec4<bool>(true, true, !(var_0.x & true), true)));
    let var_3 = var_2;
    return var_1.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<vec4<i32>, 11>();
    global0 = array<vec4<i32>, 11>();
    let var_0 = vec3<bool>(((arg_0 >> (u_input.b % 32u)) | (arg_0 << (_wgslsmith_sub_u32(4294967295u, 16462u) % 32u))) >= 34979u, any(vec3<bool>(!func_2(), any(vec4<bool>(true, true, true, true)), false)), false);
    let var_1 = min(-(-66395i << ((_wgslsmith_clamp_u32(arg_0, 1u, 22664u) & abs(91022u)) % 32u)), -2147483647i);
    var var_2 = _wgslsmith_clamp_u32(arg_0, ~u_input.c << (37680u % 32u), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0, 4294967295u), u_input.c)) == min(0u, arg_0);
    return Struct_1(firstLeadingBit(-var_1));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = ~vec3<u32>(_wgslsmith_div_u32(~u_input.b, _wgslsmith_mod_u32(u_input.c, 46319u) & reverseBits(u_input.b)), ~1u, 9558u);
    var var_1 = u_input.c;
    var var_2 = Struct_1(max(-19930i, _wgslsmith_mult_i32(u_input.a.x, func_1(~4294967295u).a)));
    var var_3 = Struct_1(-109406i << (0u % 32u));
    let var_4 = (select(u_input.a.x, reverseBits(u_input.a.x >> (1u % 32u)), true) <= var_3.a) != true;
    return -20520i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 11>();
    var var_0 = vec4<i32>(func_4((vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<i32>(0i, u_input.a.x, 0i)) ^ countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 0i)), func_1(~u_input.b << (u_input.c % 32u))), _wgslsmith_add_i32(u_input.a.x, max(_wgslsmith_clamp_i32(~u_input.a.x, 31127i >> (0u % 32u), -58344i), u_input.a.x)), -1i, -u_input.a.x & ~_wgslsmith_sub_i32(abs(u_input.a.x), u_input.a.x | u_input.a.x));
    global0 = array<vec4<i32>, 11>();
    let var_1 = vec2<bool>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(-35191i), ~6030i, _wgslsmith_sub_i32(1i, 0i)), -reverseBits(u_input.a.x)) < -40035i, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), func_3(u_input.a.x, Struct_1(-10117i), vec2<bool>(false, true)), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.x, -3483i, -16724i, 8347i)), vec4<i32>(func_4(u_input.a.xzx, Struct_1(3255i)), -28179i, u_input.a.x, 56829i)), ~(var_0.x & u_input.a.x)), u_input.a.x, vec4<u32>(u_input.b, ~(~_wgslsmith_mult_u32(0u, u_input.c)), ~firstTrailingBit(select(u_input.c, u_input.b, true)), u_input.b));
}

