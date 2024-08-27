struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<i32>(-36261i, -6338i, -1i), 230f), Struct_2(Struct_1(vec2<bool>(true, true)), false, vec2<u32>(87185u, 0u), Struct_1(vec2<bool>(false, true)), 0i), 4294967295u);

var<private> global1: vec4<i32> = vec4<i32>(0i, -53948i, 50619i, 63480i);

var<private> global2: array<i32, 18>;

var<private> global3: array<vec2<bool>, 6>;

var<private> global4: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = global0.b;
    var var_1 = vec4<f32>(-1818f, _wgslsmith_f_op_f32(-1000f + global0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1221f), _wgslsmith_f_op_f32(global0.a.b * global0.a.b))) - _wgslsmith_f_op_f32(global0.a.b - global0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b * -365f)))));
    let var_2 = ~_wgslsmith_div_u32(~4294967295u, ~(~var_0.c.x));
    var_0 = global0.b;
    let var_3 = Struct_2(var_0.d, !(true != !all(vec3<bool>(var_0.d.a.x, global0.b.a.a.x, arg_0.x))), ~(~vec2<u32>(65034u, u_input.b.x & 23324u)), var_0.a, 2147483647i);
    return global0.b;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_3(-global0.a.a, -1442f);
    var var_1 = func_2(vec2<bool>(!func_2(vec2<bool>(arg_1.b.b, false)).d.a.x, all(vec3<bool>(global0.b.d.a.x, arg_1.b.a.a.x, all(vec2<bool>(false, true)))))).a;
    var var_2 = vec4<u32>(4294967295u, ~arg_1.b.c.x, 62989u, 4294967295u);
    global3 = array<vec2<bool>, 6>();
    let var_3 = Struct_1(vec2<bool>(!(any(vec3<bool>(false, false, arg_0.b)) || false), firstLeadingBit(0u) <= countOneBits(27636u >> (u_input.b.x % 32u))));
    return func_2(!vec2<bool>(func_2(vec2<bool>(true, global0.b.a.a.x)).d.a.x, true));
}

fn func_1() -> Struct_4 {
    var var_0 = func_3(global0.b, Struct_4(Struct_3(firstTrailingBit(~global1.zxw), _wgslsmith_f_op_f32(global0.a.b * global0.a.b)), func_2(select(!vec2<bool>(global0.b.b, global0.b.d.a.x), vec2<bool>(true, true), false & global0.b.b)), abs(8309u)), vec2<u32>(1u, ~global0.b.c.x));
    let var_1 = vec2<u32>(1u, ~(~(~_wgslsmith_add_u32(var_0.c.x, global0.b.c.x))));
    var var_2 = vec3<bool>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 2417i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, -72517i, var_0.e, 16272i), vec4<i32>(1i, -71109i, var_0.e, 0i))), global1.x << (~1u % 32u)) == ~abs(_wgslsmith_mod_i32(-1751i, 20674i)), false, !var_0.b || true);
    global4 = _wgslsmith_f_op_f32(global0.a.b + 1f);
    var var_3 = Struct_3(select(_wgslsmith_mod_vec3_i32(global0.a.a, -abs(global1.xwy)), vec3<i32>(0i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_0.c.x, u_input.b.x)), u_input.b.zy), 18u)], _wgslsmith_clamp_i32(0i, -global1.x, u_input.a.x)), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(194f - 568f))));
    return Struct_4(global0.a, Struct_2(func_3(func_3(func_2(var_2.yx), Struct_4(Struct_3(u_input.a, global0.a.b), global0.b, var_0.c.x), u_input.b.yy), Struct_4(global0.a, Struct_2(global0.b.a, var_2.x, vec2<u32>(69701u, u_input.b.x), Struct_1(vec2<bool>(true, false)), -39218i), global0.c), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_0.c.x, 4294967295u)), ~vec2<u32>(4294967295u, 1u))).a, var_2.x, vec2<u32>(_wgslsmith_add_u32(~61146u, countOneBits(global0.c)), func_3(func_2(vec2<bool>(true, false)), Struct_4(global0.a, Struct_2(var_0.d, false, vec2<u32>(6651u, var_1.x), Struct_1(vec2<bool>(false, false)), 1i), 4294967295u), abs(global0.b.c)).c.x), Struct_1(select(!vec2<bool>(global0.b.a.a.x, var_0.d.a.x), !var_0.a.a, true)), global1.x), func_2(var_0.a.a).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.a, global0.b, 0u);
    var var_0 = global0.c > ~_wgslsmith_mod_u32(~(~u_input.b.x), 19673u);
    global1 = -min(max(max(vec4<i32>(global1.x, 2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 2147483647i), vec4<i32>(22383i, -11325i, 0i, -1174i)) >> ((u_input.b & u_input.b) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -32102i, 1i, -37156i), vec4<i32>(-2147483647i, -42415i, u_input.a.x, -1i)))), -_wgslsmith_div_vec4_i32(~vec4<i32>(global0.b.e, u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(global0.b.c.x, 18u)], u_input.a.x, u_input.a.x)));
    var var_1 = func_1();
    global2 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~127529u, 18u)], u_input.b);
}

