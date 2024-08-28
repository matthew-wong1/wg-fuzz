struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(882f, -233f, -1433f, -246f, -1164f, -1027f, -2213f, -1135f, -179f, -1683f, 1462f, 1000f, 1025f, -1121f, 140f, 573f, 195f, -1110f, 1940f);

var<private> global1: array<u32, 10>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(58296u, 1u, 70946u));

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, -32067i, -6964i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global3 = arg_1.d.yyw;
    global0 = array<f32, 19>();
    var var_0 = 25785i ^ ~countOneBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.d.x, 36315i), -3392i));
    var var_1 = Struct_3(0u, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.d, vec4<i32>(-16981i, arg_1.d.x, global3.x, 14885i) | vec4<i32>(arg_1.d.x, -2147483647i, -2147483647i, u_input.e.x)), ~_wgslsmith_mod_vec4_i32(arg_1.d, vec4<i32>(0i, -46600i, 21054i, -3433i))), reverseBits(i32(-1i) * -14933i)), Struct_1(arg_1.c.a));
    var var_2 = max(2147483647i ^ (_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, var_1.b), _wgslsmith_add_i32(global3.x, 0i)) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~arg_1.a.a.x), 10u)], 10u)], 10u)] % 32u)), global3.x);
    return var_1.c;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(73354u, 19u)];
    var var_1 = _wgslsmith_clamp_u32(85146u >> ((global2.a.x >> (~0u % 32u)) % 32u), global2.a.x, countOneBits(_wgslsmith_add_u32(abs(~54356u), 28904u)));
    let var_2 = 1115f;
    global0 = array<f32, 19>();
    var var_3 = 0i >> (u_input.d.x % 32u);
    return global0[_wgslsmith_index_u32(18440u, 19u)];
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<f32, 19>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-717f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-847f, arg_0) * 655f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -426f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(func_2(global1[_wgslsmith_index_u32(global2.a.x, 10u)], Struct_2(Struct_1(u_input.c), -1722f, Struct_1(u_input.c), vec4<i32>(global3.x, global3.x, u_input.b, global3.x), vec4<bool>(false, true, false, true))), _wgslsmith_mod_u32(u_input.a, global2.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 10u)], 19u)])), -1237f)))), 563f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1449f - _wgslsmith_f_op_f32(round(arg_0))))));
    let var_1 = Struct_3(~4739u, countOneBits(-14536i), Struct_1(firstLeadingBit(u_input.c)));
    var var_2 = var_1.c;
    let var_3 = abs(global2.a.x);
    return Struct_1(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<i32>(1i, u_input.e.x | ~_wgslsmith_add_i32(firstLeadingBit(-26324i), _wgslsmith_mod_i32(global3.x, global3.x)), u_input.e.x);
    let var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -984f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(17069i, global3.x, -1104i), vec3<i32>(61564i, global3.x, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, global3.x), vec3<i32>(u_input.b, global3.x, 1836i)), countOneBits(vec3<i32>(u_input.b, 1i, 1i))))));
}

