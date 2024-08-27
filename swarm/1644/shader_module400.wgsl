struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(113263u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 35880u), vec2<u32>(0u, 4294967295u), vec2<u32>(4785u, 58246u), vec2<u32>(32847u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(36596u, 4294967295u), vec2<u32>(61651u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 77146u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(14768u, 5804u), vec2<u32>(31821u, 43833u), vec2<u32>(0u, 4924u), vec2<u32>(54589u, 4294967295u), vec2<u32>(34358u, 56652u), vec2<u32>(10443u, 3275u), vec2<u32>(6177u, 5015u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(20574u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = select(firstLeadingBit(vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x)) ^ abs(~vec4<u32>(4593u, 1u, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(countOneBits(~select(vec4<u32>(u_input.a.x, 17978u, 4294967295u, 4294967295u), vec4<u32>(25422u, 1u, 1u, 0u), true)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 1u, 4294967295u)))), select(u_input.a.x != min(~1u, u_input.a.x ^ u_input.a.x), false, u_input.d == max(u_input.d, u_input.b)));
    var var_1 = global1[_wgslsmith_index_u32(~1u, 25u)];
    var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(1u), 25u)];
    var var_2 = max(~(-(vec3<i32>(8336i, u_input.b, var_1.a) ^ vec3<i32>(u_input.b, 2147483647i, u_input.b))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, select(-50415i, 0i, false), -2147483647i), vec3<i32>(-3048i, u_input.b, var_1.a) ^ ~vec3<i32>(u_input.c.x, 49751i, -40649i)) << (var_0.zzx % vec3<u32>(32u)));
    var var_3 = global1[_wgslsmith_index_u32(~(~abs(1u & _wgslsmith_div_u32(u_input.a.x, var_0.x))), 25u)];
    return any(select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, 54227u <= var_0.x, true, any(vec4<bool>(true, true, true, false))), vec4<bool>(true, any(vec2<bool>(false, true)), any(vec4<bool>(false, true, false, true)), true))) && false;
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<u32>, 26>();
    let var_0 = !vec3<bool>(false, ~1u >= ~(~u_input.a.x), 0u >= abs(u_input.a.x & 1u));
    global1 = array<Struct_1, 25>();
    var var_1 = vec3<bool>(any(vec2<bool>(false, !(false | var_0.x))), select(var_0.x, func_3(), !(var_0.x && all(vec2<bool>(false, var_0.x)))), !var_0.x);
    global0 = array<vec2<u32>, 7>();
    return global1[_wgslsmith_index_u32(u_input.a.x, 25u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> vec4<i32> {
    global2 = array<vec2<u32>, 26>();
    let var_0 = false;
    let var_1 = func_2();
    var var_2 = Struct_1(u_input.b);
    var var_3 = vec3<bool>((u_input.a.x >> (u_input.a.x % 32u)) <= 1u, !arg_2.x, all(!vec4<bool>(true, false || var_0, arg_2.x | true, var_0)));
    return ~_wgslsmith_add_vec4_i32(vec4<i32>(~(~(-25749i)), arg_0.a, arg_0.a, -20803i), vec4<i32>(abs(countOneBits(2147483647i)), ~_wgslsmith_sub_i32(-5532i, -29178i), -2147483647i, abs(-var_2.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> i32 {
    global0 = array<vec2<u32>, 7>();
    global2 = array<vec2<u32>, 26>();
    global1 = array<Struct_1, 25>();
    var var_0 = ~vec2<u32>(~0u, ~1u);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~select(25127u, var_0.x, arg_1)), u_input.a.x), 25u)];
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 26>();
    let var_0 = -vec3<i32>(2147483647i, u_input.d, 1i);
    var var_1 = u_input.c;
    var_1 = _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(~reverseBits(-12916i), func_4(func_1(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 1663f, vec2<bool>(false, false)), true, ~u_input.a.x, func_2()))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(~var_0.x, 1i), vec2<i32>(max(11910i, -18901i), 1i)), vec2<i32>(firstTrailingBit(16902i), _wgslsmith_add_i32(abs(1i), -1i))));
    let var_2 = global1[_wgslsmith_index_u32(~(~1190u), 25u)];
    var var_3 = _wgslsmith_sub_i32(~1i, -31940i);
    let var_4 = vec3<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.x, i32(-1i) * -4464i), _wgslsmith_mod_i32(var_0.x, -14052i)), 43106i);
    var var_5 = min(u_input.c.x, var_1.x | var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_0.xy);
}

