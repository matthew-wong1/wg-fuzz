struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<u32, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    var var_0 = select(vec4<bool>(select(any(vec2<bool>(true, false)) | any(vec2<bool>(true, false)), (1u ^ global1[_wgslsmith_index_u32(64272u, 17u)]) > 1u, false), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))) && all(vec4<bool>(true, true, true, true)), select(true, global1[_wgslsmith_index_u32(1u, 17u)] < ~4294967295u, (-1i != u_input.a) | true), true), vec4<bool>(true, !((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42570u, 17u)], 17u)], 17u)] == global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8350u, 17u)], 17u)]) & any(vec3<bool>(true, false, true))), true | (true && any(vec4<bool>(false, true, false, true))), all(vec3<bool>(true, true, true))), !vec4<bool>(true, all(vec2<bool>(false, true)), true, false));
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~33901u, 17u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(88635u, 17u)], 17u)], 17u)] & 0u, 17u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~4294967295u, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79583u, 17u)], 17u)]), ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)])) & ~global1[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23385u, 17u)], 17u)], 17u)] | global1[_wgslsmith_index_u32(0u, 17u)]) << (countOneBits(global1[_wgslsmith_index_u32(20344u, 17u)]) % 32u), 17u)], 17u)]);
    return !select(!select(vec3<bool>(true, false, var_0.x), var_0.xxx, var_0.x), var_0.yxz, !var_0.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(0u);
    var var_1 = ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 17u)] & ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19131u, 17u)], 17u)], 1u), (global1[_wgslsmith_index_u32(~var_0.a, 17u)] | (var_0.a ^ var_0.a)) >> (~(~global1[_wgslsmith_index_u32(var_0.a, 17u)]) % 32u), 4294967295u, 32297u | (~global1[_wgslsmith_index_u32(1u, 17u)] & max(1u, 60752u)));
    var var_2 = firstLeadingBit(-_wgslsmith_add_i32(_wgslsmith_mult_i32(1i | u_input.a, u_input.c.x), firstLeadingBit(firstTrailingBit(u_input.a))));
    var var_3 = select(!(!(!select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true)))), func_3(), true);
    var var_4 = vec3<bool>(true, false, true);
    return var_0;
}

fn func_1() -> vec3<u32> {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_0 = func_2(any(vec3<bool>(true, false, 64948u == _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34993u, 17u)], 17u)], global1[_wgslsmith_index_u32(41345u, 17u)]), vec3<u32>(1u, 6905u, 4294967295u)))));
    return vec3<u32>(62817u, _wgslsmith_sub_u32(_wgslsmith_div_u32(4685u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)] << (1u % 32u)), ~var_0.a), abs(~(max(global1[_wgslsmith_index_u32(94723u, 17u)], 4294967295u) ^ 2864u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.zww, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.a), vec3<i32>(u_input.a, 9795i, u_input.b))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.c.x, -2147483647i), vec3<i32>(u_input.c.x, 0i, u_input.c.x)), u_input.c.wwx), u_input.c.xxy), u_input.a, u_input.a);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(func_1()), _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(55094u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)], 18887u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50257u, 17u)], 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)])), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)])), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], global1[_wgslsmith_index_u32(0u, 17u)], 0u), vec3<u32>(global1[_wgslsmith_index_u32(43987u, 17u)], 76936u, 1u)))));
    global0 = array<Struct_1, 30>();
    global1 = array<u32, 17>();
    global1 = array<u32, 17>();
    global0 = array<Struct_1, 30>();
    var_1 = Struct_1(reverseBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(func_1().x, 17u)], _wgslsmith_mult_u32(57805u, 1u)), countOneBits(36324u))));
    let var_2 = global0[_wgslsmith_index_u32(48521u ^ ~var_1.a, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~0u, var_0.x);
}

