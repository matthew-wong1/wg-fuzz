struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, true, false, true);

var<private> global1: array<u32, 19> = array<u32, 19>(4294967295u, 4294967295u, 81574u, 58034u, 58270u, 0u, 1u, 4294967295u, 4294967295u, 8878u, 4294967295u, 4129u, 4294967295u, 71225u, 4294967295u, 15655u, 0u, 66827u, 4294967295u);

var<private> global2: array<Struct_1, 30>;

var<private> global3: vec4<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<bool> {
    let var_0 = vec4<i32>(global3.x, u_input.e.x, 4799i, global4.a);
    global4 = global2[_wgslsmith_index_u32(34220u, 30u)];
    var var_1 = vec2<i32>(~global4.a, u_input.e.x);
    global0 = array<bool, 4>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f));
    return vec2<bool>(any(!vec4<bool>(false, !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.b.x, 19u)], 4u)], any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], true, true, global0[_wgslsmith_index_u32(global4.b.x, 4u)])), global0[_wgslsmith_index_u32(11060u, 4u)] | false)), true);
}

fn func_3() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global4.b.xw, ~u_input.c), ~firstLeadingBit(min(global4.b.x, 4294967295u)))), 30u)];
    var var_1 = _wgslsmith_f_op_f32(abs(617f));
    global0 = array<bool, 4>();
    var var_2 = Struct_1(_wgslsmith_mult_i32(~(~(-48129i)), 26233i), ~(select(~vec4<u32>(global4.b.x, u_input.c.x, 1u, global4.b.x), countOneBits(global4.b), !vec4<bool>(global0[_wgslsmith_index_u32(5006u, 4u)], true, false, global0[_wgslsmith_index_u32(var_0.b.x, 4u)])) | (~vec4<u32>(68052u, 66912u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]) >> (vec4<u32>(51379u, 9198u, 43479u, var_0.b.x) % vec4<u32>(32u)))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~(~4294967295u << (_wgslsmith_clamp_u32(u_input.c.x, 0u, 0u) % 32u)), 1u, ~(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.b.x, 52521u), 19u)])), 92902u), 30u)];
    return 19667i;
}

fn func_2() -> Struct_1 {
    global4 = Struct_1(global3.x, u_input.b);
    let var_0 = countOneBits(func_3());
    global4 = global2[_wgslsmith_index_u32(~4294967295u, 30u)];
    global0 = array<bool, 4>();
    global2 = array<Struct_1, 30>();
    return global2[_wgslsmith_index_u32(~67355u, 30u)];
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = func_2();
    global0 = array<bool, 4>();
    return vec2<bool>(global0[_wgslsmith_index_u32(15830u, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~arg_0.b.yxw) | select(vec3<u32>(global4.b.x, u_input.a.x, arg_0.b.x), ~arg_0.b.zyz, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(29169u, 4u)], global0[_wgslsmith_index_u32(95224u, 4u)])), _wgslsmith_clamp_vec3_u32(global4.b.xzx, firstTrailingBit(u_input.b.xxx), firstLeadingBit(u_input.b.ywx))), 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i, global4.b);
    var var_1 = select(select(select(vec2<bool>(false, var_0.a <= 0i), !(!vec2<bool>(global0[_wgslsmith_index_u32(70249u, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)])), !func_1()), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(57664u, 4u)]), func_1(), func_4(func_2())), select(!func_1(), vec2<bool>(true, true), func_1())), !vec2<bool>((u_input.d > 0i) == (global0[_wgslsmith_index_u32(120864u, 4u)] || global0[_wgslsmith_index_u32(global4.b.x, 4u)]), true), true);
    global1 = array<u32, 19>();
    var var_2 = vec4<bool>(false, global0[_wgslsmith_index_u32(11130u, 4u)], true, true);
    var var_3 = Struct_1(firstLeadingBit(global4.a), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(max(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 0u, var_0.b.x, 0u), vec4<u32>(u_input.a.x, global4.b.x, global1[_wgslsmith_index_u32(29271u, 19u)], global1[_wgslsmith_index_u32(var_0.b.x, 19u)])), vec4<u32>(u_input.c.x, 5099u, global4.b.x, var_0.b.x)), firstLeadingBit(vec4<u32>(0u, 0u, global4.b.x, 4294967295u) & _wgslsmith_mult_vec4_u32(global4.b, var_0.b))));
    var var_4 = Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(47108i, ~(-5277i), abs(0i)), _wgslsmith_add_vec3_i32(~vec3<i32>(12913i, -18520i, global4.a), global3.yyz)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(368f, _wgslsmith_f_op_f32(f32(-1f) * -605f));
}

