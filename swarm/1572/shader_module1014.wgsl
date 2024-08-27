struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<vec4<u32>, 7>;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), vec3<bool>(true, false, false), vec2<i32>(1i, 58083i));

var<private> global2: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(55330u, 0u), vec2<u32>(15414u, 7609u), vec2<u32>(12032u, 4294967295u), vec2<u32>(27954u, 67593u), vec2<u32>(6552u, 1u), vec2<u32>(0u, 29669u), vec2<u32>(8124u, 45350u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(84170u, 4294967295u), vec2<u32>(19018u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(47399u, 0u), vec2<u32>(10u, 37434u), vec2<u32>(1u, 28662u), vec2<u32>(6113u, 4294967295u), vec2<u32>(4294967295u, 10658u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(61414u, 1u), vec2<u32>(0u, 97332u), vec2<u32>(44177u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(41483u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(27701u, 5563u), vec2<u32>(24174u, 1u), vec2<u32>(40348u, 76816u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(2914u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = u_input.c.zx;
    global1 = Struct_1(1i, vec3<bool>(global1.b.x, !global1.b.x, select(select(any(vec2<bool>(true, true)), true, !global1.b.x), true | global1.b.x, global1.b.x)), vec2<i32>(_wgslsmith_sub_i32(abs(select(global1.c.x, global1.c.x, true)), select(-2147483647i, global1.c.x, global1.b.x) << (_wgslsmith_add_u32(u_input.c.x, 4294967295u) % 32u)), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, -19223i), global1.a)));
    var var_1 = ~(~global1.c);
    let var_2 = ~var_0.x;
    let var_3 = Struct_1(u_input.b.x, vec3<bool>(true, true, true), -u_input.d.xw);
    return global1.c.x ^ -2147483647i;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    let var_0 = global1.b.x;
    var var_1 = vec3<i32>(~(_wgslsmith_mod_i32(2732i, -12887i) ^ func_3()), -22930i, u_input.d.x) & firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global1.c.x, -1i, i32(-1i) * -1i), u_input.d.www));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = true;
    return !select(!global1.b, vec3<bool>(any(!vec4<bool>(true, var_0, global1.b.x, true)), var_0, _wgslsmith_f_op_f32(func_2(408f, vec3<bool>(global1.b.x, true, global1.b.x))) > _wgslsmith_f_op_f32(floor(-1020f))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~global1.a, ~49021i >> (u_input.c.x % 32u)), u_input.d.yw), select(func_1(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d))), vec3<bool>(false, false, true), (!global1.b.x && func_1(global1.c).x) & any(func_1(global1.c).yy)), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a, u_input.b.x), vec2<i32>(u_input.d.x, global1.a) << (~u_input.c.yy % vec2<u32>(32u))));
    global2 = array<vec2<u32>, 30>();
    var var_0 = Struct_1(u_input.e, global1.b, vec2<i32>(-u_input.a.x, 1i ^ countOneBits(global1.c.x)));
    let var_1 = min(u_input.c, _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, ~u_input.c.x, firstTrailingBit(u_input.c.x))), u_input.c));
    var var_2 = var_1.x << (_wgslsmith_div_u32(~(~var_1.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(0u, 4294967295u, u_input.c.x)) % 32u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(17141u, 7u)], global0[_wgslsmith_index_u32(var_1.x, 7u)]) << (8291u % 32u))) % 32u);
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -103f);
    global2 = array<vec2<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

