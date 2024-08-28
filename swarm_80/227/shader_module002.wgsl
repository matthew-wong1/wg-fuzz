struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<bool, 24> = array<bool, 24>(true, true, true, false, true, false, false, true, false, true, false, false, false, false, true, true, true, false, true, false, true, true, true, false);

var<private> global3: array<vec2<bool>, 25>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> vec3<i32> {
    global0 = vec2<u32>(~(~(~(~4294967295u))), u_input.b);
    global3 = array<vec2<bool>, 25>();
    let var_0 = select(vec2<bool>(false, true), select(vec2<bool>(global2[_wgslsmith_index_u32(~1221u, 24u)] | true, !any(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(u_input.d, 24u)]))), vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 24u)], true, true, global2[_wgslsmith_index_u32(global0.x, 24u)])), global2[_wgslsmith_index_u32(38486u, 24u)]), global2[_wgslsmith_index_u32(global0.x, 24u)]), true);
    global3 = array<vec2<bool>, 25>();
    global3 = array<vec2<bool>, 25>();
    return u_input.a;
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(abs(943u), 25u)];
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~1u, u_input.d, 17563u), vec4<u32>(global0.x, 1u, 42241u, reverseBits(global0.x))), 0u), 25u)];
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(31489u, u_input.b), 4u)];
    return u_input.d | ~(~0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 4>();
    let var_0 = func_4(select(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.b.x, -1i, arg_2.b.x), vec3<i32>(u_input.c.x, 25817i, _wgslsmith_dot_vec3_i32(u_input.a, arg_1))), select(~arg_1, _wgslsmith_sub_vec3_i32(func_3(Struct_1(arg_2.a, arg_2.b), Struct_1(arg_2.a, vec2<i32>(15172i, arg_1.x)), vec3<f32>(815f, 241f, 174f), 414f), abs(u_input.a)), global2[_wgslsmith_index_u32(u_input.d, 24u)]), vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], false, global2[_wgslsmith_index_u32(28693u, 24u)], false)), global2[_wgslsmith_index_u32(1u, 24u)], true)));
    global3 = array<vec2<bool>, 25>();
    global0 = ~(~max(vec2<u32>(11245u, u_input.b), ~abs(vec2<u32>(1u, 71990u))));
    global1 = array<Struct_1, 4>();
    return global1[_wgslsmith_index_u32(max(var_0, 0u), 4u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global2 = array<bool, 24>();
    var var_0 = func_2(~vec3<u32>(12119u, 1u, 10326u), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(arg_0.b.x, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, u_input.c.x, 14652i), vec3<i32>(14530i, 1i, arg_0.b.x))), u_input.c.x << (_wgslsmith_sub_u32(14135u, 1u) % 32u))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(11972u, 16366u), 4u)]);
    global3 = array<vec2<bool>, 25>();
    let var_1 = reverseBits(_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(u_input.d, global0.x, 4294967295u, u_input.d)) & vec4<u32>(173u, ~28347u, ~global0.x, 4294967295u), abs(~vec4<u32>(1u, 35884u, 82933u, 44662u))));
    var var_2 = vec3<i32>(~(~var_0.b.x), 0i, 1i);
    return Struct_1(_wgslsmith_f_op_f32(-135f + var_0.a), max(_wgslsmith_mod_vec2_i32(vec2<i32>(-15739i, arg_0.b.x), -vec2<i32>(var_2.x, -75619i)), select(abs(vec2<i32>(u_input.c.x, -933i)), var_2.zz ^ vec2<i32>(var_0.b.x, 1i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.xzx, vec3<u32>(u_input.b, 79362u, var_1.x)), 25u)])) ^ vec2<i32>(1i, -(~var_2.x)));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = 0u;
    var var_1 = arg_2.b.x ^ func_2(vec3<u32>(countOneBits(47104u), 99968u, 1u), vec3<i32>(-27278i, -2651i, 3456i), func_1(Struct_1(arg_2.a, max(u_input.a.xy, vec2<i32>(arg_2.b.x, arg_2.b.x))))).b.x;
    global2 = array<bool, 24>();
    var var_2 = func_1(arg_2);
    global2 = array<bool, 24>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1474f, arg_2.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(214f)), 772f)), max(~(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(u_input.c.x, u_input.a.x, 0i)) << (vec3<u32>(113417u, global0.x, global0.x) % vec3<u32>(32u))), select(u_input.a, select(u_input.a | vec3<i32>(u_input.a.x, 12740i, 38523i), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.c.x, -1i, 26053i)), any(vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(9898u, 24u)], global2[_wgslsmith_index_u32(u_input.d, 24u)], global2[_wgslsmith_index_u32(60469u, 24u)]))), true)), _wgslsmith_f_op_f32(544f + _wgslsmith_f_op_f32(func_5(true, vec2<u32>(global0.x, 1u & global0.x), func_1(Struct_1(543f, u_input.a.zz))))), _wgslsmith_f_op_f32(abs(1000f)));
}

