struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(false, vec4<u32>(4294967295u, 17246u, 4294967295u, 13185u)), Struct_2(true, vec4<u32>(1u, 4294967295u, 26151u, 46238u)), Struct_2(false, vec4<u32>(1u, 30138u, 4294967295u, 33411u)), Struct_2(true, vec4<u32>(4675u, 0u, 4294967295u, 0u)), Struct_2(true, vec4<u32>(334u, 25592u, 1u, 8439u)), Struct_2(true, vec4<u32>(4294967295u, 0u, 3251u, 0u)), Struct_2(false, vec4<u32>(113761u, 11722u, 0u, 1u)), Struct_2(false, vec4<u32>(1u, 53995u, 0u, 61054u)), Struct_2(false, vec4<u32>(1u, 28769u, 0u, 19684u)), Struct_2(false, vec4<u32>(25351u, 1u, 40819u, 0u)), Struct_2(true, vec4<u32>(3802u, 4294967295u, 1u, 0u)), Struct_2(false, vec4<u32>(0u, 1u, 2268u, 4294967295u)), Struct_2(true, vec4<u32>(34877u, 40350u, 4843u, 19407u)), Struct_2(false, vec4<u32>(85100u, 34404u, 1u, 43882u)), Struct_2(true, vec4<u32>(24380u, 70672u, 4294967295u, 4294967295u)), Struct_2(false, vec4<u32>(4294967295u, 0u, 0u, 7602u)), Struct_2(true, vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), Struct_2(false, vec4<u32>(53214u, 59823u, 68768u, 11069u)), Struct_2(false, vec4<u32>(0u, 68909u, 4294967295u, 4309u)), Struct_2(false, vec4<u32>(28538u, 86266u, 11237u, 57724u)), Struct_2(false, vec4<u32>(33089u, 0u, 0u, 32081u)), Struct_2(false, vec4<u32>(7475u, 1u, 4294967295u, 42589u)));

var<private> global1: Struct_1 = Struct_1(2917u, 77896u, vec3<i32>(12537i, -3046i, -42689i));

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> f32 {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    let var_0 = ~(-u_input.c);
    global1 = Struct_1(52061u, ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 11495u), vec2<u32>(0u, u_input.b)))), _wgslsmith_div_vec3_i32(vec3<i32>(0i, abs(20388i), _wgslsmith_dot_vec2_i32(global1.c.zx & vec2<i32>(u_input.c, var_0), -vec2<i32>(u_input.c, 2147483647i))), max(vec3<i32>(u_input.a, -1i, reverseBits(u_input.a)), -global1.c)));
    global0 = array<Struct_2, 22>();
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1287f + 351f));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = vec3<bool>(global2.x, u_input.c > -2147483647i, global2.x);
    let var_0 = Struct_2(global2.x, ~vec4<u32>(4294967295u, u_input.b, 27255u, countOneBits(~4294967295u)));
    global1 = Struct_1(~4294967295u, 1u, _wgslsmith_div_vec3_i32(select(~global1.c, vec3<i32>(1805i, global1.c.x ^ u_input.c, u_input.a), !select(vec3<bool>(var_0.a, global2.x, false), vec3<bool>(false, global2.x, true), global2.x)), reverseBits(vec3<i32>(_wgslsmith_mult_i32(-1i, global1.c.x), u_input.c, u_input.a))));
    let var_1 = global0[_wgslsmith_index_u32(1u, 22u)];
    let var_2 = var_0.b.xzx;
    return Struct_1(0u | ~var_2.x, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b | 15583u, var_0.b.x), 4294967295u), -abs(vec3<i32>(_wgslsmith_div_i32(2147483647i, 2147483647i), u_input.a & global1.c.x, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    global2 = vec3<bool>(!any(!global2.yx), true, all(!select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false))) | global2.x);
    global0 = array<Struct_2, 22>();
    let var_0 = !global2.x;
    global2 = vec3<bool>(!var_0, all(select(select(!vec4<bool>(global2.x, global2.x, false, false), select(vec4<bool>(global2.x, false, var_0, global2.x), vec4<bool>(var_0, var_0, var_0, false), false), vec4<bool>(var_0, false, var_0, global2.x)), select(vec4<bool>(false, false, var_0, false), vec4<bool>(global2.x, true, false, var_0), vec4<bool>(true, false, var_0, true)), true)), abs(~(global1.c.x ^ global1.c.x)) > 10548i);
    global1 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1779f - 496f))) - _wgslsmith_f_op_f32(func_1())))));
    global1 = func_2(-1000f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x);
}

