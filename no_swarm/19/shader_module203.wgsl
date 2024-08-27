struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, 39039u, vec2<i32>(25199i, 45390i), vec2<u32>(0u, 58325u));

var<private> global1: array<u32, 20>;

var<private> global2: Struct_2 = Struct_2(Struct_1(12221i, 100515u, vec2<i32>(-17335i, -7328i), vec2<u32>(0u, 0u)), 9029u, false, Struct_1(1i, 16693u, vec2<i32>(i32(-2147483648), 0i), vec2<u32>(1132u, 1u)), Struct_1(21513i, 4294967295u, vec2<i32>(-20762i, 1i), vec2<u32>(28506u, 78092u)));

var<private> global3: u32 = 17958u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global2 = Struct_2(global2.d, ~global2.b, select(!((4294967295u ^ global0.b) >= firstLeadingBit(4294967295u)), global0.c.x <= global2.e.c.x, global2.c), Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(-26789i), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, u_input.e.x), vec2<i32>(global2.a.a, 2147483647i))), -global0.c.x & _wgslsmith_add_i32(u_input.e.x, -35781i)), 9522u, vec2<i32>(min(-2147483647i, countOneBits(global0.c.x)), global0.a), u_input.b.yz), Struct_1(14984i, 4294967295u, -global2.a.c, countOneBits(global0.d)));
    global1 = array<u32, 20>();
    let var_0 = Struct_2(global2.a, countOneBits(~0u), any(vec3<bool>(true, false, true)) & (abs(~(-2147483647i)) <= select(30707i, u_input.e.x, !global2.c)), Struct_1(min(_wgslsmith_clamp_i32(-14722i, u_input.e.x, u_input.e.x), global2.d.c.x) | abs(-1i), ~u_input.b.x, abs(vec2<i32>(1i, 1i) << (abs(vec2<u32>(1u, global0.b)) % vec2<u32>(32u))), reverseBits(vec2<u32>(u_input.d, global0.d.x)) << ((global0.d & _wgslsmith_add_vec2_u32(global0.d, global0.d)) % vec2<u32>(32u))), Struct_1(global0.c.x, 1u, ~(~firstLeadingBit(global0.c)), ~vec2<u32>(~u_input.c.x, ~8957u)));
    let var_1 = ~71415u;
    global0 = Struct_1(0i, 31648u, var_0.d.c & u_input.e, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(max(global1[_wgslsmith_index_u32(global0.b, 20u)], 0u), 1u), u_input.d), firstLeadingBit(abs(vec2<u32>(44772u, u_input.a)))));
    return reverseBits(var_0.a.d.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    global1 = array<u32, 20>();
    var var_0 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(firstLeadingBit(select(~u_input.b, vec4<u32>(global0.d.x, 4294967295u, global2.b, 10027u), !global2.c))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(28937u, 4294967295u, arg_2.b, 2045u)), ~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(19095u, 20u)], 39300u, u_input.a)), u_input.b), ~_wgslsmith_add_u32(~14395u, 6641u), max(~(global0.b ^ global2.b), firstTrailingBit(32240u)), ~global2.b), u_input.b);
    var var_1 = !(false | global2.c);
    global3 = min(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(u_input.c.x, countOneBits(1u))), ~u_input.b.x), var_0.x);
    global0 = arg_2.a;
    return ~func_3();
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = select(vec2<bool>(any(select(vec3<bool>(global2.c, global2.c, global2.c), !vec3<bool>(false, global2.c, global2.c), !vec3<bool>(true, global2.c, false))), true), vec2<bool>(global2.c, true), vec2<bool>(true, global2.c));
    var var_1 = 0i;
    var var_2 = _wgslsmith_div_u32(select(abs(~firstTrailingBit(1u)), 60574u, !var_0.x), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(~func_2(global2.e, 11416u, Struct_2(global2.a, 28093u, global2.c, Struct_1(55274i, u_input.b.x, global2.a.c, u_input.c.xy), Struct_1(7121i, global2.b, vec2<i32>(arg_0, -22737i), global0.d)), vec4<i32>(global0.c.x, 0i, 15397i, arg_0)), 0u << (1u % 32u), ~(4294967295u << (global1[_wgslsmith_index_u32(19084u, 20u)] % 32u)), 1u)));
    var var_3 = 562f;
    global3 = 1996u;
    return 988f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(select(abs(global1[_wgslsmith_index_u32(global0.d.x, 20u)]), ~_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(global2.d.b, 20u)]), !any(vec3<bool>(global2.c, false, global2.c))) | (1u ^ ((36551u & global2.e.d.x) << (global2.b % 32u))));
    global1 = array<u32, 20>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-710f, 638f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1356f, 160f)))))), 555f, -260f, 459f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(-_wgslsmith_dot_vec2_i32(~u_input.e, -global2.d.c))));
}

