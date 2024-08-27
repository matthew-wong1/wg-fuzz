struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(0u, 4294967295u, 0u, 0u, 14581u);

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-16266i, -1i, 1i), vec3<i32>(48542i, 1i, 1i), vec3<i32>(-1i, 1i, -16683i), vec3<i32>(31069i, 1i, -1i), vec3<i32>(i32(-2147483648), 21493i, 45002i), vec3<i32>(-6525i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 22930i), vec3<i32>(1i, 5754i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(2147483647i, -29195i, 1i), vec3<i32>(-11047i, i32(-2147483648), 1i), vec3<i32>(-58359i, 1i, -1i), vec3<i32>(2147483647i, -10935i, -33829i), vec3<i32>(i32(-2147483648), 17504i, 1i), vec3<i32>(-43527i, -1i, -1i), vec3<i32>(13122i, -20229i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(2147483647i, -64399i, 2147483647i), vec3<i32>(0i, 1594i, 1i), vec3<i32>(-43602i, -13326i, i32(-2147483648)), vec3<i32>(1i, 0i, 4902i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 66374i, i32(-2147483648)), vec3<i32>(44678i, -1i, -2754i), vec3<i32>(-1251i, -1i, -23878i), vec3<i32>(-23002i, -8942i, -1566i));

var<private> global2: Struct_1 = Struct_1(46184u, true);

var<private> global3: i32;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> u32 {
    return ~global2.a >> (min(_wgslsmith_mod_u32(u_input.d.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u & global2.a, 4294967295u), 5u)]), _wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(74808u, ~global0[_wgslsmith_index_u32(36236u, 5u)]))) % 32u);
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(75411u, (4294967295u >> (global2.a % 32u)) < 4294967295u);
    return Struct_1(func_1(), all(vec2<bool>(~global2.a < 1u, true == !global2.b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> vec4<u32> {
    global4 = array<Struct_1, 18>();
    var var_0 = ~reverseBits(~(~vec4<i32>(u_input.a, -7787i, arg_1.x, -1i))) | -firstTrailingBit(max(vec4<i32>(arg_1.x, 1i, 14412i, u_input.a), vec4<i32>(-1i, u_input.a, arg_1.x, u_input.b)));
    var var_1 = !(!arg_0.b);
    global3 = -1i << (~global2.a % 32u);
    var var_2 = -805f;
    return abs(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(arg_0.a, 5u)], 22661u, 1792u, 58027u), ~vec4<u32>(arg_0.a, global2.a, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~min(firstLeadingBit(0u), func_1()), 27u)];
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global2.a & global0[_wgslsmith_index_u32(global2.a, 5u)], ~u_input.d.x, ~u_input.c, _wgslsmith_div_u32(0u, u_input.c)), ~reverseBits(~vec4<u32>(42135u, global0[_wgslsmith_index_u32(global2.a, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 17906u))), max(vec4<u32>(~min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a, 5u)], 5u)], 0u), 6193u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~23472u, 5u)], 5u)], 59970u), func_3(func_2(), min(vec3<i32>(-31741i, var_0.x, -1i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 5u)], 101230u, 0u), vec4<u32>(u_input.d.x, global2.a, global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.d.x)), 27u)]), false)));
    global2 = global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4976u, 5u)], 5u)], 18u)];
    let var_2 = Struct_1(_wgslsmith_clamp_u32(1u, 0u, u_input.c), global2.b);
    global4 = array<Struct_1, 18>();
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(706f + _wgslsmith_f_op_f32(floor(710f))), _wgslsmith_f_op_f32(sign(-142f))))), global1[_wgslsmith_index_u32(u_input.d.x, 27u)], -firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.b, 11239i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(199f))));
}

