struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(4294967295u), Struct_2(66315u), Struct_2(0u), Struct_2(0u), Struct_2(0u), Struct_2(4294967295u), Struct_2(83748u), Struct_2(14279u), Struct_2(0u), Struct_2(39526u), Struct_2(13967u), Struct_2(23556u), Struct_2(42405u), Struct_2(1u), Struct_2(47657u), Struct_2(1u), Struct_2(5666u), Struct_2(4294967295u), Struct_2(1u), Struct_2(14063u), Struct_2(22202u), Struct_2(1u), Struct_2(4294967295u), Struct_2(4294967295u));

var<private> global1: array<Struct_1, 31>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(1i, 13740i), vec4<bool>(true, false, true, true), 71308u), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, false), 70182u), Struct_1(vec2<i32>(-1i, -1i), vec4<bool>(false, true, true, false), 316u), Struct_1(vec2<i32>(-47659i, i32(-2147483648)), vec4<bool>(true, false, true, false), 122553u), Struct_1(vec2<i32>(18182i, 1i), vec4<bool>(false, false, true, true), 83766u), Struct_1(vec2<i32>(18183i, -42083i), vec4<bool>(false, false, false, true), 26687u), Struct_1(vec2<i32>(1i, -48653i), vec4<bool>(false, false, true, false), 0u), Struct_1(vec2<i32>(1i, -41341i), vec4<bool>(false, true, true, true), 1u), Struct_1(vec2<i32>(0i, -72375i), vec4<bool>(true, false, false, false), 0u), Struct_1(vec2<i32>(i32(-2147483648), 2085i), vec4<bool>(false, false, false, true), 47602u), Struct_1(vec2<i32>(7267i, -21424i), vec4<bool>(false, false, true, false), 31882u), Struct_1(vec2<i32>(1i, 2147483647i), vec4<bool>(true, false, false, true), 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-(vec2<i32>(-42320i, u_input.c) | u_input.b), _wgslsmith_mult_vec2_i32(u_input.b, u_input.b)), u_input.a), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)), true), 23876u);
    var var_2 = -7172i;
    let var_3 = global0[_wgslsmith_index_u32(abs(~arg_0 ^ _wgslsmith_sub_u32(0u, 0u)), 24u)];
    var var_4 = select(false, var_1.b.x, !(var_1.b.x == (-arg_2 > -6017i)));
    return -1061f;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(~u_input.b | vec2<i32>(u_input.a.x, abs(u_input.c)), vec2<i32>(~firstLeadingBit(-1i), -37455i)), vec4<bool>(_wgslsmith_f_op_f32(func_3(~36966u, u_input.c, -u_input.b.x, arg_0.a & 88351u)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f + -179f)), (select(true, true, true) || true) | (_wgslsmith_add_u32(20033u, global2.a) >= arg_0.a), _wgslsmith_add_i32(u_input.a.x | u_input.a.x, u_input.a.x) < firstLeadingBit(-u_input.c), true), 0u);
    let var_1 = Struct_2(arg_0.a);
    global3 = array<Struct_1, 12>();
    global3 = array<Struct_1, 12>();
    let var_2 = global0[_wgslsmith_index_u32(74561u, 24u)];
    return var_0.b;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(~(~(~(~arg_0.c))));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.a.x, 26704i, arg_0.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(33505i, -15964i, 67635i), vec3<i32>(-24349i, u_input.b.x, u_input.a.x))) >> (~(global2.a | 4294967295u) % 32u), ~(~(-1004i ^ arg_0.a.x))), select(!func_2(var_0), vec4<bool>(true, any(func_2(Struct_2(18089u)).zxx), !any(arg_0.b.yyx), arg_0.b.x), !(!vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x))), global2.a);
    let var_2 = vec3<u32>(26925u, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.c, ~14895u), arg_0.c), 4294967295u);
    var var_3 = 1u;
    let var_4 = Struct_2(min(var_0.a, var_2.x >> (global2.a % 32u)));
    return ~global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 12>();
    var var_0 = vec4<u32>(global2.a, 0u, ~1u, _wgslsmith_dot_vec3_u32(reverseBits(~reverseBits(vec3<u32>(global2.a, global2.a, global2.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.a, 2394u, 4294967295u), ~vec3<u32>(37457u, 70240u, global2.a))));
    var_0 = ~vec4<u32>(_wgslsmith_add_u32(global2.a << (func_1(global1[_wgslsmith_index_u32(4294967295u, 31u)]) % 32u), ~func_1(Struct_1(u_input.b, vec4<bool>(false, true, false, true), var_0.x))), ~(firstLeadingBit(var_0.x) >> (var_0.x % 32u)), 70607u, ~global2.a);
    let var_1 = ~countOneBits(vec3<i32>(reverseBits(u_input.b.x), -36884i, -37405i));
    let var_2 = vec3<i32>(1i, select(u_input.a.x, ~1i, func_1(global3[_wgslsmith_index_u32(4294967295u, 12u)]) == 13107u), ~select(~max(var_1.x, 1315i), -abs(-3892i), func_2(Struct_2(50553u)).x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec3<u32>(1u, 3198u, var_0.x))));
}

