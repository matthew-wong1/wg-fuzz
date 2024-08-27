struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<Struct_2, 25>;

var<private> global2: array<Struct_3, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~(arg_0.x << (~2817u % 32u)), arg_2.a.b, arg_2.a.c));
    var_0 = global1[_wgslsmith_index_u32(12559u, 25u)];
    var var_1 = arg_2.a.c;
    let var_2 = select(vec4<i32>(_wgslsmith_clamp_i32(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-24615i, u_input.a.x, 32811i, -2147483647i), vec4<i32>(u_input.a.x, -44555i, -2147483647i, u_input.a.x)), _wgslsmith_div_i32(-14896i | u_input.a.x, -9979i), u_input.a.x), firstTrailingBit(u_input.a.x), u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, 0i, ~_wgslsmith_mod_i32(u_input.a.x, 12427i), u_input.a.x), arg_1);
    var var_3 = var_2.x;
    return arg_2.a;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> u32 {
    global1 = array<Struct_2, 25>();
    global2 = array<Struct_3, 10>();
    global0 = array<Struct_2, 22>();
    global2 = array<Struct_3, 10>();
    let var_0 = func_2(~_wgslsmith_add_vec3_u32(abs(min(vec3<u32>(arg_0.a.a, 4294967295u, arg_0.a.a), vec3<u32>(43210u, arg_0.a.a, arg_0.a.a))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.a, arg_0.a.a, arg_0.a.a), vec3<u32>(0u, arg_0.a.a, arg_0.a.a), vec3<u32>(arg_0.a.a, arg_0.a.a, arg_0.a.a)), vec3<u32>(arg_0.a.a, arg_0.a.a, arg_0.a.a))), select(vec4<bool>(!arg_0.a.b, arg_0.a.b, arg_0.a.b | false, true), !(!(!vec4<bool>(true, true, arg_0.a.b, arg_0.a.b))), vec4<bool>(arg_1, arg_0.a.b, false, arg_0.a.b)), global1[_wgslsmith_index_u32(~1u, 25u)]);
    return 1u;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = 59213i;
    global1 = array<Struct_2, 25>();
    var var_1 = _wgslsmith_clamp_u32(~arg_1.d.a.a, ~arg_1.d.a.a, ~1u);
    var_1 = countOneBits(abs(~arg_1.d.a.a));
    let var_2 = _wgslsmith_sub_i32(arg_1.a.x, ~(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) >> (firstLeadingBit(firstLeadingBit(arg_1.d.a.a)) % 32u)));
    return !(!vec4<bool>(true, var_0 >= -arg_1.a.x, true, all(select(vec2<bool>(true, false), vec2<bool>(arg_1.d.a.b, false), vec2<bool>(true, arg_1.d.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(func_1(Struct_2(Struct_1(19319u, true, -1000f)), true) | 4294967295u, abs(~4294967295u), 89715u), vec3<u32>(~22160u, ~(~4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 23685u), ~vec3<u32>(4294967295u, 38869u, 1228u))));
    let var_1 = !(!func_3(-u_input.a, global2[_wgslsmith_index_u32(~firstTrailingBit(var_0.x), 10u)], vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = Struct_3((countOneBits(vec3<i32>(u_input.a.x, -28226i, u_input.a.x) ^ vec3<i32>(-2147483647i, 1i, u_input.a.x)) & firstLeadingBit(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i << (var_0.x % 32u), u_input.a.x ^ 1i), -vec3<i32>(u_input.a.x, u_input.a.x, -32038i), vec3<i32>(u_input.a.x | 35961i, countOneBits(22228i), _wgslsmith_add_i32(2147483647i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-141f, 176f), vec2<f32>(-388f, -886f))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1205f - -405f), _wgslsmith_f_op_f32(726f + 2415f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1179f, -864f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2247f, 721f)), true)), var_1.x))), vec4<f32>(-1084f, _wgslsmith_f_op_f32(-361f - _wgslsmith_div_f32(-1423f, -999f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(312f, 288f))), 1f, select(var_1.x, var_1.x, false) | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-340f + 422f) * _wgslsmith_f_op_f32(abs(1991f))))), Struct_2(Struct_1(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(var_0.x, 38922u, 18618u)), var_0.x, true), !any(var_1.www), _wgslsmith_f_op_f32(516f - -1761f))));
    global2 = array<Struct_3, 10>();
    var_0 = select(~vec3<u32>(var_2.d.a.a, 0u, ~var_2.d.a.a) ^ _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(var_0.x, var_2.d.a.a, var_2.d.a.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_2.d.a.a, var_2.d.a.a, var_0.x), abs(vec3<u32>(var_2.d.a.a, 12388u, var_2.d.a.a))), vec3<u32>(abs(var_2.d.a.a), ~var_0.x, var_2.d.a.a)), ~(vec3<u32>(33439u, 24828u, var_0.x >> (var_2.d.a.a % 32u)) ^ _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(19095u, 28177u, 24301u)), vec3<u32>(70546u, var_2.d.a.a, 1u) >> (vec3<u32>(4294967295u, 1u, var_0.x) % vec3<u32>(32u)))), any(var_1.wyx) || var_1.x);
    let var_3 = vec3<bool>(false, true, !(select(reverseBits(4290u), _wgslsmith_add_u32(0u, 4294967295u), var_2.d.a.b) >= var_0.x));
    let var_4 = -1i;
    let var_5 = 23903u;
    var_2 = global2[_wgslsmith_index_u32(func_1(var_2.d, !var_2.d.a.b), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b.x), abs(vec3<u32>(var_5, ~select(var_5, var_5, true), countOneBits(var_0.x))), var_4 ^ max(var_4, countOneBits(u_input.a.x)), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, 0i), select(vec4<i32>(var_4, var_4, var_2.a.x, -4283i), vec4<i32>(u_input.a.x, u_input.a.x, -6796i, 15703i), var_1.x))), var_0.x);
}

