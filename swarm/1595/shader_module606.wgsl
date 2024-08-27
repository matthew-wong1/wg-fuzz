struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<vec2<u32>, 16>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<u32>(17410u, 0u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(19748u, 1u)), Struct_1(vec2<u32>(101330u, 20448u)), Struct_1(vec2<u32>(1u, 25227u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(22866u, 33381u)), Struct_1(vec2<u32>(23654u, 4294967295u)), Struct_1(vec2<u32>(71512u, 1u)), Struct_1(vec2<u32>(11541u, 104033u)), Struct_1(vec2<u32>(88476u, 32318u)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global2 = array<Struct_1, 11>();
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(7656u, 6043u, u_input.a)), vec3<u32>(34857u, _wgslsmith_sub_u32(4294967295u, u_input.d), arg_2.a.x)), firstLeadingBit(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(15381u, arg_2.a.x), vec2<u32>(arg_1.x, u_input.a)), _wgslsmith_mod_u32(u_input.b, arg_2.a.x)))));
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    var_0 = Struct_1(var_0.a);
    return _wgslsmith_dot_vec4_i32(max(vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.c, -13504i)), firstLeadingBit(~u_input.e.x), countOneBits(_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.c, -5177i))), _wgslsmith_div_i32(u_input.e.x, u_input.c)), _wgslsmith_mod_vec4_i32(~countOneBits(vec4<i32>(u_input.c, -1i, u_input.e.x, u_input.c)), vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.e.x), _wgslsmith_div_i32(2147483647i, u_input.c), firstTrailingBit(u_input.e.x), firstLeadingBit(u_input.e.x)))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, min(-8829i, 24697i), u_input.e.x, -33639i), _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, 2147483647i), vec4<i32>(-29482i, u_input.e.x, u_input.c, u_input.e.x), vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<i32>(0i, 2147483647i, u_input.e.x, u_input.e.x) ^ vec4<i32>(1i, u_input.e.x, -33188i, -1i))), _wgslsmith_sub_vec4_i32((vec4<i32>(u_input.e.x, 1i, u_input.e.x, u_input.e.x) >> (vec4<u32>(1u, 1u, arg_1.x, arg_2.a.x) % vec4<u32>(32u))) & -vec4<i32>(u_input.e.x, u_input.e.x, u_input.c, u_input.c), firstTrailingBit(vec4<i32>(u_input.c, 2147483647i, u_input.e.x, 28760i)) << (select(vec4<u32>(var_0.a.x, var_0.a.x, 26070u, 1u), arg_1, arg_0) % vec4<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec2<u32>, 16>();
    let var_0 = global0[_wgslsmith_index_u32(23831u, 24u)];
    let var_1 = true;
    var var_2 = max(u_input.e.x, -(~u_input.e.x));
    let var_3 = vec4<bool>(var_1, ~(~u_input.a) <= arg_1.a.x, func_3(true, vec4<u32>(u_input.d & 4294967295u, _wgslsmith_add_u32(60751u, arg_0.a.x), ~u_input.b, arg_1.a.x), global2[_wgslsmith_index_u32(~(~28821u), 11u)]) > u_input.c, true);
    return Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(23142u << ((u_input.d | arg_1.a.x) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, arg_0.a.x), vec3<u32>(17562u, u_input.a, 4294967295u))), 16u)]);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: bool, arg_3: i32) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.d), 24u)])), global0[_wgslsmith_index_u32(arg_0.x, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)]);
    var var_1 = ~_wgslsmith_mult_u32(u_input.d, select(arg_0.x, ~arg_0.x, true & arg_1)) > 1u;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(8354u, 24u)], _wgslsmith_f_op_f32(abs(var_0.x))), 241f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 24u)]) * _wgslsmith_f_op_f32(var_0.x - var_0.x)), 234f))), -117f);
    let var_3 = func_2(global2[_wgslsmith_index_u32(firstTrailingBit(25022u), 11u)], global2[_wgslsmith_index_u32(u_input.a, 11u)]);
    let var_4 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.d, 4294967295u, arg_0.x), vec4<u32>(var_3.a.x, 4294967295u, 0u, 1u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 33658u, 1u, 2664u), vec4<u32>(4294967295u, arg_0.x, arg_0.x, 54142u))), ~(vec4<u32>(var_3.a.x, arg_0.x, 26436u, u_input.a) | vec4<u32>(arg_0.x, 17025u, u_input.d, 0u))) ^ ~_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 26401u, var_3.a.x, 1u), vec4<u32>(var_3.a.x, 4294967295u, 4294967295u, arg_0.x)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a.x, 5441u, 41121u, var_3.a.x), vec4<u32>(u_input.a, 8341u, u_input.b, 0u)), vec4<u32>(var_3.a.x, var_3.a.x, u_input.b, arg_0.x), arg_1));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.c ^ u_input.e.x) << (u_input.b % 32u);
    global2 = array<Struct_1, 11>();
    global0 = array<f32, 24>();
    var var_1 = -680f;
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.d, abs(firstLeadingBit(17348u)), func_1(reverseBits(vec2<u32>(u_input.d, 1u)), true, true, 43017i)), ~(~(~21769u)), _wgslsmith_mod_u32(u_input.d, max(1u, u_input.d)), u_input.d), vec4<u32>(_wgslsmith_add_u32(select(4294967295u, u_input.d, true), ~u_input.a), u_input.a, 1u, u_input.d) | vec4<u32>(8482u, u_input.d, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.d, 4294967295u), ~vec3<u32>(81010u, u_input.a, 0u)))), 24u)];
    var var_2 = global0[_wgslsmith_index_u32(1u, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~(-10311i)))), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(select(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(~1u, 16u)], vec2<bool>(true, true)), _wgslsmith_mult_vec2_u32(countOneBits(global1[_wgslsmith_index_u32(1u, 16u)]), ~vec2<u32>(u_input.d, 2559u)))), 24u)], global0[_wgslsmith_index_u32(abs(func_2(func_2(func_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 16u)]), global2[_wgslsmith_index_u32(41875u, 11u)]), Struct_1(vec2<u32>(u_input.b, 1u))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(31500u, 62957u), global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<u32>(11465u, u_input.a) | global1[_wgslsmith_index_u32(23971u, 16u)]), 11u)]).a.x), 24u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], -225f, -182f, 932f) + vec4<f32>(660f, global0[_wgslsmith_index_u32(u_input.a, 24u)], -2734f, -342f))) + vec4<f32>(1138f, global0[_wgslsmith_index_u32(u_input.a, 24u)], _wgslsmith_div_f32(-1237f, global0[_wgslsmith_index_u32(u_input.d, 24u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 24u)], 1557f)))));
}

