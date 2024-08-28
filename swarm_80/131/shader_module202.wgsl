struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, false, true, false, false, true, false, false, true, false, true, false, false, false, false, true, false, true, false, false, false, false, false);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true));

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(0u, 0u), vec2<u32>(35043u, 0u), vec2<u32>(17786u, 1u), vec2<u32>(4294967295u, 122754u), vec2<u32>(45664u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 15038u), vec2<u32>(0u, 40875u), vec2<u32>(9888u, 50788u), vec2<u32>(1u, 1u), vec2<u32>(44812u, 97417u), vec2<u32>(1u, 10305u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(26700u, 1u), vec2<u32>(33444u, 24408u), vec2<u32>(4577u, 64843u), vec2<u32>(1u, 4578u), vec2<u32>(0u, 3864u), vec2<u32>(83342u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 26367u));

var<private> global3: array<i32, 31>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> vec3<bool> {
    global3 = array<i32, 31>();
    global1 = Struct_1(arg_0.a);
    let var_0 = Struct_1(!select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 23u)]), arg_1.a, all(arg_1.a)));
    let var_1 = arg_0;
    var var_2 = arg_2;
    return arg_1.a;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_1(select(!select(select(global1.a, global1.a, vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0, 23u)], global1.a.x)), !global1.a, func_3(Struct_1(global1.a), Struct_1(global1.a), 1i, vec3<i32>(-61107i, global3[_wgslsmith_index_u32(arg_0, 31u)], 18512i))), global1.a, true && !global1.a.x));
    global0 = array<bool, 23>();
    var var_1 = Struct_1(!vec3<bool>(all(select(vec4<bool>(var_0.a.x, global1.a.x, global0[_wgslsmith_index_u32(0u, 23u)], true), vec4<bool>(true, true, true, var_0.a.x), vec4<bool>(global1.a.x, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], true))), func_3(Struct_1(vec3<bool>(global1.a.x, true, true)), Struct_1(vec3<bool>(true, false, true)), ~0i, vec3<i32>(global3[_wgslsmith_index_u32(arg_0, 31u)], 39302i, global3[_wgslsmith_index_u32(arg_0, 31u)]) | vec3<i32>(9902i, global3[_wgslsmith_index_u32(21301u, 31u)], 18296i)).x, !global0[_wgslsmith_index_u32(u_input.a, 23u)]));
    global3 = array<i32, 31>();
    let var_2 = 0i;
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_0, 59610u, 0u, 9701u), vec4<u32>(u_input.a, 1u, u_input.a, 31912u), true), vec4<u32>(arg_0, arg_0 ^ u_input.a, ~0u, arg_0)), vec4<u32>(arg_0, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 15784u, 1u), vec3<u32>(arg_0, u_input.a, 22868u))), u_input.a, ~(~abs(u_input.a))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    let var_0 = false;
    var var_1 = Struct_1(vec3<bool>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 82299u)), ~u_input.a) <= ~func_2(u_input.a), arg_1.x >= -global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 24511u), 31u)], ((-1i ^ arg_1.x) ^ firstTrailingBit(arg_1.x)) < (global3[_wgslsmith_index_u32(func_2(u_input.a), 31u)] >> (~u_input.a % 32u))));
    var var_2 = -459f;
    global4 = ~(global3[_wgslsmith_index_u32(0u, 31u)] << (~u_input.a % 32u));
    global2 = array<vec2<u32>, 25>();
    return _wgslsmith_add_i32(-_wgslsmith_mod_i32(9473i, arg_1.x), 1i ^ ~((arg_1.x | arg_1.x) ^ _wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.a, 31u)], 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 25>();
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(80484u, 31u)], global3[_wgslsmith_index_u32(18056u, 31u)]), vec3<i32>(global3[_wgslsmith_index_u32(12570u, 31u)], 24084i, -6490i)) & _wgslsmith_mod_i32(-3377i, -39794i), 36717i), ~min(global3[_wgslsmith_index_u32(31996u, 31u)], firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a, 31u)])), ~_wgslsmith_add_i32(-2147483647i << (0u % 32u), global3[_wgslsmith_index_u32(27621u, 31u)]), select(global3[_wgslsmith_index_u32(u_input.a, 31u)], ~(~global3[_wgslsmith_index_u32(23929u, 31u)]), global0[_wgslsmith_index_u32(u_input.a, 23u)])), -vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 31u)], 2147483647i, 1i, func_1(Struct_1(global1.a), vec2<i32>(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(8288u, 31u)]))));
    var var_1 = max(countOneBits(u_input.a), max(u_input.a, countOneBits(~u_input.a)));
    let var_2 = ~(~reverseBits(~(0u & u_input.a)));
    let var_3 = -_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(~vec2<i32>(-46098i, -2147483647i)), select(vec2<i32>(0i, var_0), _wgslsmith_add_vec2_i32(vec2<i32>(1i, global3[_wgslsmith_index_u32(82241u, 31u)]), vec2<i32>(var_0, var_0)), true), vec2<i32>(reverseBits(var_0), -2147483647i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(0i, 11859i), vec2<i32>(-9698i, global3[_wgslsmith_index_u32(63472u, 31u)])) << (abs(vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)));
    let var_4 = 8837u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(4294967295u), 152f);
}

