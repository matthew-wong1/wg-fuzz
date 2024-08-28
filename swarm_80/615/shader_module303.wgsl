struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648));

var<private> global1: Struct_2;

var<private> global2: array<bool, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    global2 = array<bool, 2>();
    let var_0 = countOneBits(~global1.a);
    global1 = Struct_2(vec3<u32>(~u_input.c, _wgslsmith_add_u32(var_0.x, u_input.c), 4294967295u), arg_2);
    global0 = Struct_1(arg_2.a);
    global1 = Struct_2(abs(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.a.x, global1.a.x), vec3<u32>(u_input.d, u_input.c, 17432u))) ^ ~(~vec3<u32>(76131u, var_0.x, u_input.c) ^ vec3<u32>(33497u, 0u, global1.a.x)), Struct_1(1i));
    return -_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.a, arg_2.a, -1i) | u_input.a, vec3<i32>(global0.a | global1.b.a, 1i & global1.b.a, -18200i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    global1 = Struct_2(vec3<u32>(global1.a.x, u_input.d, 1u), arg_0);
    let var_0 = Struct_1(global0.a);
    global1 = Struct_2(global1.a, arg_0);
    global0 = global1.b;
    var var_1 = u_input.d;
    return max(_wgslsmith_dot_vec3_i32(~(~(~vec3<i32>(-39221i, arg_0.a, 2147483647i))), vec3<i32>(func_3(select(arg_1, arg_1, vec4<bool>(arg_1.x, false, arg_1.x, true)), vec4<bool>(true, global2[_wgslsmith_index_u32(global1.a.x, 2u)], global2[_wgslsmith_index_u32(26704u, 2u)], false), var_0), u_input.b, 54670i)), -2147483647i);
}

fn func_1(arg_0: Struct_2) -> i32 {
    global2 = array<bool, 2>();
    let var_0 = global1.a & vec3<u32>(u_input.d, global1.a.x, _wgslsmith_mult_u32(select(global1.a.x, _wgslsmith_sub_u32(6902u, arg_0.a.x), all(vec3<bool>(false, true, true))), ~global1.a.x));
    var var_1 = Struct_1(~func_2(Struct_1(~arg_0.b.a), select(select(vec4<bool>(global2[_wgslsmith_index_u32(19823u, 2u)], global2[_wgslsmith_index_u32(arg_0.a.x, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)], false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(27265u, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)])), vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false, global2[_wgslsmith_index_u32(arg_0.a.x, 2u)], true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]))));
    var var_2 = !global2[_wgslsmith_index_u32(u_input.c & (u_input.c >> (var_0.x % 32u)), 2u)];
    var var_3 = vec2<bool>(arg_0.a.x <= 1u, global2[_wgslsmith_index_u32(min(abs(global1.a.x), 0u), 2u)]);
    return _wgslsmith_add_i32(-_wgslsmith_add_i32(_wgslsmith_mult_i32(global1.b.a, _wgslsmith_mod_i32(u_input.b, -2147483647i)), global1.b.a), 14121i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-1048i, func_1(Struct_2(~vec3<u32>(global1.a.x, 4294967295u, 1u), Struct_1(u_input.b)))) << (min(~50380u, _wgslsmith_dot_vec4_u32(vec4<u32>(128770u, global1.a.x, 37380u, global1.a.x), vec4<u32>(global1.a.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global1.a.x, u_input.d, u_input.d), vec4<u32>(90698u, 19331u, 10595u, 0u)), global1.a.x & global1.a.x))) % 32u);
    global0 = Struct_1(0i);
    let var_1 = min(2147483647i, global0.a);
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(u_input.d, reverseBits(0u)), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 86294u, u_input.c, 85394u), vec4<u32>(35103u, u_input.d, u_input.c, 65275u))) | (countOneBits(4251u) >> (1u % 32u)), global1.a.x), u_input.c << (countOneBits(60066u) % 32u));
    let var_3 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, var_2.x) ^ global1.a.yy, ~vec2<u32>(var_2.x, u_input.d)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(var_2.zx), global1.a.zy), ~var_2.yz, vec2<u32>(countOneBits(1u), 12520u)));
    global1 = Struct_2(vec3<u32>(4013u, 0u, 3944u), Struct_1(_wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(-12778i, u_input.a.x) ^ -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(-(i32(-1i) * -54333i)), u_input.c, _wgslsmith_div_vec2_i32(select(-(vec2<i32>(global0.a, var_1) >> (vec2<u32>(var_2.x, u_input.c) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(2559i, global1.b.a), u_input.a.xz), ~var_2.x > ~0u), abs(vec2<i32>(-global0.a, 1i))));
}

