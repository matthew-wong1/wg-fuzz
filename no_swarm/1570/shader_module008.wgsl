struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true));

var<private> global1: array<vec2<f32>, 29>;

var<private> global2: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    let var_0 = u_input.a;
    let var_1 = -1000f;
    global1 = array<vec2<f32>, 29>();
    global0 = array<vec4<bool>, 5>();
    global2 = !(_wgslsmith_add_i32(-36807i, -8151i) < u_input.b.x);
    return 2147483647i << (_wgslsmith_div_u32(~(~countOneBits(4294967295u)), ~0u) % 32u);
}

fn func_3(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(min(u_input.d, arg_0), _wgslsmith_mult_i32(0i, u_input.b.x)), vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.d, 1i, 0i), vec4<i32>(u_input.b.x, -18934i, -55160i, 45279i))), arg_0), min(~vec2<i32>(u_input.d, 26299i), u_input.b.xy) ^ vec2<i32>(firstTrailingBit(u_input.b.x), -6032i)), _wgslsmith_clamp_u32(arg_1, 16587u, u_input.c.x >> (~abs(u_input.a) % 32u)));
    var var_1 = !vec2<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), false)), false);
    var_0 = Struct_1(vec2<i32>(var_0.a.x & countOneBits(_wgslsmith_dot_vec2_i32(u_input.b.xw, u_input.b.wy)), -1i), _wgslsmith_add_u32(var_0.b, select(~firstLeadingBit(33793u), 1u, !(!var_1.x))));
    var var_2 = vec2<i32>(-1i, -select(-1i, ~u_input.b.x << (~arg_1 % 32u), !var_1.x));
    global1 = array<vec2<f32>, 29>();
    return Struct_1(~(-select(_wgslsmith_div_vec2_i32(u_input.b.zw, vec2<i32>(2147483647i, 0i)), _wgslsmith_sub_vec2_i32(u_input.b.yz, vec2<i32>(var_0.a.x, var_2.x)), vec2<bool>(var_1.x, var_1.x))), 1410u);
}

fn func_1(arg_0: f32) -> u32 {
    global0 = array<vec4<bool>, 5>();
    var var_0 = func_3(func_2(), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.c.x, firstTrailingBit(33628u), 4294967295u), min(42981u << ((u_input.a << (4294967295u % 32u)) % 32u), _wgslsmith_div_u32(u_input.a, u_input.c.x))));
    var var_1 = abs(var_0.a.x);
    let var_2 = reverseBits(firstLeadingBit(-min(firstTrailingBit(u_input.b), abs(u_input.b))));
    var_0 = func_3(1i, 4294967295u);
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(0u | var_0.b, ~(~(~33353u))), 81671u >> (firstTrailingBit(~u_input.c.x | _wgslsmith_add_u32(var_0.b, 26419u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_dot_vec3_u32(vec3<u32>(~20792u, firstTrailingBit(32115u), u_input.c.x), vec3<u32>(54598u, u_input.c.x, min(u_input.c.x, u_input.a))) ^ func_1(_wgslsmith_f_op_f32(-795f + -260f))) & 1u;
    var var_1 = !((any(!global0[_wgslsmith_index_u32(65993u, 5u)]) || true) == false);
    var var_2 = -(~firstLeadingBit(~u_input.b.x));
    global0 = array<vec4<bool>, 5>();
    var var_3 = vec2<bool>(true, all(!vec2<bool>(false, all(vec2<bool>(true, false)))));
    var var_4 = ~(vec4<i32>(~(-2147483647i), u_input.d, 1i, (u_input.b.x ^ u_input.b.x) << (var_0 % 32u)) | u_input.b);
    global2 = false;
    global1 = array<vec2<f32>, 29>();
    let var_5 = Struct_1(var_4.xy, firstTrailingBit(min(4294967295u, func_3(var_4.x, 0u).b ^ firstLeadingBit(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstLeadingBit(_wgslsmith_mod_i32(u_input.b.x, var_4.x))), min(~vec3<u32>(~u_input.c.x, func_3(1i, var_5.b).b, 86881u), max(abs(vec3<u32>(4294967295u, u_input.c.x, 0u)) << ((vec3<u32>(69323u, var_0, 4294967295u) << (vec3<u32>(u_input.c.x, 6072u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.b, var_0, 4294967295u, var_5.b), vec4<u32>(var_0, 109166u, u_input.a, 4294967295u)), max(u_input.a, 67570u), var_0))), min(_wgslsmith_mult_vec2_i32(abs(abs(vec2<i32>(var_5.a.x, var_5.a.x))), var_5.a), u_input.b.wz), _wgslsmith_f_op_f32(1235f - 1f), var_5.a.x);
}

