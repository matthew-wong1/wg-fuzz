struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
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

var<private> global0: array<i32, 1>;

var<private> global1: array<Struct_2, 6>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(reverseBits(_wgslsmith_clamp_u32(11038u, arg_1, 0u)), _wgslsmith_dot_vec2_u32(~arg_0.c.a.xx, arg_0.c.a.zz))), 6u)];
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global1 = array<Struct_2, 6>();
    let var_1 = Struct_1(firstTrailingBit(reverseBits(vec4<u32>(23310u, var_0.c.a.x, ~u_input.b, ~4294967295u))), 43335u, ~arg_0.c.b);
    return var_0.a.x;
}

fn func_2() -> vec2<f32> {
    global1 = array<Struct_2, 6>();
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global1 = array<Struct_2, 6>();
    let var_0 = !select(select(vec3<bool>(true, false, any(vec3<bool>(false, true, true))), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(func_3(Struct_2(vec2<bool>(false, true), vec2<f32>(-966f, -1000f), Struct_1(vec4<u32>(12639u, 27121u, u_input.b, 23651u), 4294967295u, 4294967295u), Struct_1(vec4<u32>(u_input.b, 3407u, u_input.b, u_input.b), 32445u, u_input.b)), u_input.b), true, any(vec3<bool>(false, false, true)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(false, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, true));
    return vec2<f32>(1116f, _wgslsmith_f_op_f32(ceil(-498f)));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-507f, -1955f))) * vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(func_2())), global1[_wgslsmith_index_u32(0u, 6u)]);
    global1 = array<Struct_2, 6>();
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    let var_1 = var_0.b.d;
    return Struct_2(!select(select(!vec2<bool>(var_0.b.a.x, var_0.b.a.x), var_0.b.a, var_0.b.a.x), !(!vec2<bool>(var_0.b.a.x, true)), select(!var_0.b.a, select(var_0.b.a, vec2<bool>(true, true), vec2<bool>(var_0.b.a.x, var_0.b.a.x)), select(vec2<bool>(true, var_0.b.a.x), vec2<bool>(false, var_0.b.a.x), var_0.b.a))), var_0.a, Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.b.d.a.ww, select(vec2<u32>(var_1.a.x, 4294967295u), var_1.a.xz, false)), ~abs(0u), 0u, u_input.b), 0u & _wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec2_u32(var_1.a.yz, vec2<u32>(21651u, 39802u))), arg_0), var_1);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_2 {
    global1 = array<Struct_2, 6>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.a.yy, ~(~arg_2.a.wz)), 1u)];
    let var_1 = select(vec2<bool>(arg_0.a.x | all(vec3<bool>(arg_0.a.x, false, arg_0.a.x)), arg_0.a.x), arg_0.a, arg_0.a);
    global0 = array<i32, 1>();
    let var_2 = min(select(arg_3.xz, u_input.d.wz, func_1(_wgslsmith_add_u32(1u, ~arg_2.a.x), _wgslsmith_div_i32(u_input.c.x, -arg_3.x)).a), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], u_input.d.x), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(93038u, 1u)], global0[_wgslsmith_index_u32(34102u, 1u)]), vec2<i32>(-4587i, arg_3.x))), min(~vec2<i32>(arg_3.x, arg_3.x), vec2<i32>(0i, 29816i))), ~vec2<i32>(-27710i, -32586i)));
    return Struct_2(vec2<bool>(arg_0.a.x, any(vec2<bool>(false, var_1.x))), _wgslsmith_f_op_vec2_f32(step(arg_0.b, _wgslsmith_f_op_vec2_f32(arg_0.b - arg_0.b))), Struct_1(_wgslsmith_mult_vec4_u32(~arg_1, _wgslsmith_add_vec4_u32(arg_2.a, vec4<u32>(arg_2.a.x, arg_0.c.a.x, 10046u, arg_0.d.b))), arg_0.c.c, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.a.x, arg_0.d.b, arg_0.c.c, 35338u), arg_0.d.a), ~u_input.b)), Struct_1(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(5810u, 4294967295u), 25541u), ~u_input.b & ~1u, ~(arg_2.a.x >> (u_input.b % 32u)), ~max(2463u, 23180u)), arg_2.a.x, ~(~arg_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(min(u_input.b, u_input.b) < u_input.b, true, true);
    global0 = array<i32, 1>();
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(182f * 761f), 346f), func_4(func_1(~(u_input.b ^ 17454u), global0[_wgslsmith_index_u32(1u, 1u)]), ~vec4<u32>(u_input.b, ~25661u, ~u_input.b, u_input.b), func_1(72289u, reverseBits(-u_input.a.x)).c, vec3<i32>(-global0[_wgslsmith_index_u32(u_input.b, 1u)] >> (1u % 32u), global0[_wgslsmith_index_u32(u_input.b, 1u)], u_input.d.x)));
    var_1 = Struct_3(var_1.a, func_4(func_1(var_1.b.c.a.x, u_input.a.x), ~vec4<u32>(51298u, var_1.b.c.b & u_input.b, 1u, _wgslsmith_add_u32(0u, 1u)), var_1.b.d, ~(max(vec3<i32>(14092i, -1i, u_input.a.x), vec3<i32>(-7905i, u_input.a.x, 71587i)) ^ min(vec3<i32>(u_input.d.x, 2147483647i, -60437i), vec3<i32>(-31906i, -2147483647i, 0i)))));
    let var_2 = _wgslsmith_add_vec3_i32((_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, u_input.d.x), _wgslsmith_mod_vec3_i32(u_input.d.xwz, u_input.a.ywy)) & u_input.c) & ~(-(u_input.a.xxy | u_input.c)), _wgslsmith_clamp_vec3_i32(u_input.c, u_input.a.wyx, vec3<i32>(~u_input.a.x, u_input.c.x, global0[_wgslsmith_index_u32(func_4(global1[_wgslsmith_index_u32(18554u, 6u)], var_1.b.c.a, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), u_input.b, 0u), vec3<i32>(global0[_wgslsmith_index_u32(var_1.b.d.b, 1u)], 34550i, u_input.d.x)).d.a.x >> (var_1.b.d.c % 32u), 1u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_1.a.x)));
}

