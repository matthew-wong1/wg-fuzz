struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: i32;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(0u, false), Struct_1(4294967295u, true), Struct_1(10552u, false), Struct_1(4294967295u, true), Struct_1(9215u, false), Struct_1(118724u, false), Struct_1(48564u, true), Struct_1(98659u, false), Struct_1(103512u, false), Struct_1(1u, true), Struct_1(36270u, false), Struct_1(14308u, false), Struct_1(1u, false), Struct_1(9247u, false), Struct_1(6409u, false), Struct_1(50989u, true), Struct_1(1u, true), Struct_1(1u, false), Struct_1(0u, false));

var<private> global3: array<Struct_1, 30>;

var<private> global4: vec2<i32> = vec2<i32>(45058i, -42020i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> u32 {
    global2 = array<Struct_1, 19>();
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(68079u, 77472u, 51810u, u_input.e)), u_input.c), global1.x);
    global1 = select(select(vec3<bool>(false, true, false), vec3<bool>(var_0.b, all(vec4<bool>(global1.x, global1.x, global1.x, true)), (77140u >> (var_0.a % 32u)) >= u_input.b), !(!var_0.b)), !vec3<bool>(false, var_0.b, any(vec3<bool>(global1.x, true, global1.x))), any(vec4<bool>(any(!vec4<bool>(global1.x, false, global1.x, var_0.b)), all(!vec4<bool>(global1.x, var_0.b, false, var_0.b)), true, all(global1.xy))));
    return ~(~0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> bool {
    global0 = -global4.x;
    let var_0 = arg_0;
    let var_1 = global4.x;
    global4 = vec2<i32>(min(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(8367i, global4.x, u_input.d.x, global4.x), abs(u_input.d))), -(2147483647i & _wgslsmith_clamp_i32(i32(-1i) * -37151i, -global4.x, global4.x >> (arg_1 % 32u))));
    var var_2 = countOneBits(~u_input.d.x);
    return false;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = !(abs(_wgslsmith_add_u32(1u, 48798u)) <= _wgslsmith_sub_u32(abs(u_input.c.x ^ u_input.c.x), u_input.c.x));
    let var_1 = u_input.a;
    let var_2 = vec2<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.c, ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.e, 2227u, 56134u), vec4<u32>(37485u, arg_1.a, arg_1.a, 5877u))));
    global0 = 22277i;
    let var_3 = u_input.b;
    return 48591i;
}

fn func_2(arg_0: bool, arg_1: f32) -> StorageBuffer {
    global3 = array<Struct_1, 30>();
    global4 = ~u_input.d.wx;
    var var_0 = global2[_wgslsmith_index_u32(44161u, 19u)];
    global0 = (i32(-1i) * -1i) ^ func_4(-149f, Struct_1(~(~1u), func_3(global3[_wgslsmith_index_u32(1u, 30u)], u_input.e, ~u_input.c.zy, vec4<u32>(var_0.a, var_0.a, u_input.c.x, var_0.a))));
    let var_1 = abs(select(~abs(vec3<i32>(-2147483647i, global4.x, 14955i)), (-vec3<i32>(-1i, global4.x, u_input.a) | u_input.d.wzw) & -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 54740i, -66758i), vec3<i32>(u_input.d.x, 1i, -35007i)), !global1.x && (global4.x != 1i)));
    return StorageBuffer(_wgslsmith_mod_vec3_u32(u_input.c.ywz & _wgslsmith_mod_vec3_u32(~u_input.c.wyx, vec3<u32>(u_input.c.x, 54113u, 0u)), u_input.c.wwz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, ~17984i, u_input.a ^ firstTrailingBit(global4.x), abs(~global4.x)), ~vec4<i32>(select(2147483647i, 0i, select(true, true, global1.x)), 2147483647i, -1i, u_input.d.x));
    global0 = 2147483647i;
    global4 = vec2<i32>(_wgslsmith_add_i32(((28672i | var_0.x) >> (~0u % 32u)) & ~u_input.d.x, 31152i), 19164i);
    global4 = ~(var_0.yx & var_0.wy) ^ ~var_0.zy;
    var var_1 = Struct_1(func_1(), global1.x);
    var var_2 = global3[_wgslsmith_index_u32(reverseBits(var_1.a), 30u)];
    global0 = 37857i;
    let x = u_input.a;
    s_output = func_2(true, -1195f);
}

