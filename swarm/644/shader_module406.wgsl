struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: u32;

var<private> global2: array<i32, 25> = array<i32, 25>(6827i, -1i, 0i, -1i, 2147483647i, 2147483647i, 21122i, -1412i, -20581i, -16750i, -1i, i32(-2147483648), -1i, -10076i, 1i, i32(-2147483648), -35220i, 1i, i32(-2147483648), 0i, 2147483647i, 0i, 36303i, 0i, -7601i);

var<private> global3: Struct_1;

var<private> global4: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(arg_3.c.x), u_input.d), 30u)];
    return ~max(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~arg_1.x, ~4294967295u), 4294967295u, var_0.c.x), arg_1.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 30u)];
    var var_1 = global3.b.xy;
    var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(43478u, ~global3.c.x), ~_wgslsmith_mult_u32(1u, 1u)), func_1(-924f, arg_1.b, Struct_1(!var_0.a, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b.x, 27267u, global3.d), vec3<u32>(global4.x, var_1.x, arg_1.b.x)), arg_1.b, _wgslsmith_add_u32(arg_1.b.x, global4.x)), Struct_1(!arg_0, ~var_0.c, reverseBits(vec3<u32>(67762u, var_0.d, arg_1.d)), firstTrailingBit(73571u))) >> (u_input.c.x % 32u));
    let var_2 = !vec4<bool>(all(!(!vec4<bool>(arg_0, false, arg_0, true))), false, true, u_input.e.x <= 2147483647i);
    global2 = array<i32, 25>();
    return Struct_1(_wgslsmith_add_i32(countOneBits(reverseBits(u_input.b.x)), u_input.a) >= -35837i, vec3<u32>(~(~1u), ~8701u, u_input.c.x), firstTrailingBit(~var_0.b) | ~vec3<u32>(u_input.d, 1u, 510u), 23940u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 30>();
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1100f), 275f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(159f - -364f)))), _wgslsmith_sub_vec3_u32(min(~vec3<u32>(global4.x, 0u, 5872u), _wgslsmith_mod_vec3_u32(vec3<u32>(42281u, arg_3.b.x, 17906u), _wgslsmith_div_vec3_u32(vec3<u32>(24915u, 7562u, u_input.d), global3.b))), firstLeadingBit(abs(~vec3<u32>(25429u, 4294967295u, 4294967295u)))), func_2(true, func_2(true, arg_3)), Struct_1(true, ~arg_3.b, ~firstTrailingBit(select(vec3<u32>(global4.x, arg_3.b.x, 4294967295u), vec3<u32>(arg_1.c.x, 77281u, 101014u), vec3<bool>(false, arg_3.a, global3.a))), 5080u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3.b.x, global4.x), ~vec3<u32>(1u, arg_2.x, global3.d)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~u_input.d);
    global1 = 4294967295u;
    global2 = array<i32, 25>();
    let var_0 = firstLeadingBit(vec2<u32>(0u, 1u));
    var var_1 = func_3(_wgslsmith_div_vec3_i32(~(-u_input.b.yxx), vec3<i32>(-14585i, global2[_wgslsmith_index_u32(~8423u, 25u)], ~global2[_wgslsmith_index_u32(52098u, 25u)])), func_2(!any(vec3<bool>(false, false, true)), Struct_1(true, global3.b, vec3<u32>(1u, u_input.c.x, 0u), func_1(1473f, global3.c, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)]))), vec4<u32>(56146u, func_1(_wgslsmith_f_op_f32(abs(115f)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, global4.x, global4.x), global3.c, global3.c), Struct_1(false, global3.b, global3.c, var_0.x), Struct_1(false, global3.b, vec3<u32>(global3.c.x, 1u, global4.x), var_0.x)), 1u, var_0.x), Struct_1(!(!global3.a), vec3<u32>(~55096u, u_input.d, var_0.x), vec3<u32>(12761u << (0u % 32u), u_input.c.x, global4.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.d, 3320u, 38537u), vec4<u32>(u_input.c.x, 74647u, var_0.x, 4294967295u)), _wgslsmith_mod_u32(3280u, 1u)))) << (~abs(u_input.d) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.yz));
}

