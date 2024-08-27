struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(14982i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 2147483647i));

var<private> global2: array<u32, 9> = array<u32, 9>(0u, 78420u, 28134u, 4861u, 22652u, 55379u, 4294967295u, 69231u, 0u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, 15183i), u_input.a.x) & ~reverseBits(-u_input.a.x), -abs(reverseBits(-u_input.a.x)), u_input.a.x, u_input.a.x);
    let var_1 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(2147483647i, u_input.a.x, ~var_0.x >> (_wgslsmith_mod_u32(62u, arg_1) % 32u), 2147483647i)), vec4<i32>(_wgslsmith_sub_i32(-countOneBits(6983i), -5788i), u_input.a.x, 458i, 6889i));
    global2 = array<u32, 9>();
    let var_2 = var_1.x;
    global2 = array<u32, 9>();
    return Struct_2(arg_2.x & 26281u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = arg_1;
    global2 = array<u32, 9>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_1 = !var_0.d.a.x;
    return -_wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(u_input.a.x), u_input.a.x, ~49261i), vec3<i32>(0i, u_input.a.x, _wgslsmith_div_i32(~0i, select(-1i, -2147483647i, false))));
}

fn func_1() -> u32 {
    var var_0 = ~select(u_input.a, vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -2147483647i, 17626i, -9545i), vec4<i32>(u_input.a.x, -1846i, 3929i, 1i) >> (vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], 27810u, global2[_wgslsmith_index_u32(29050u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)]) % vec4<u32>(32u))), -1i, countOneBits(-8444i)), false);
    var_0 = ~_wgslsmith_mod_vec3_i32(func_3(_wgslsmith_f_op_f32(min(-742f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(func_2(761f, 51324u, vec2<u32>(55130u, global2[_wgslsmith_index_u32(111881u, 9u)]), Struct_2(0u)), -543f, Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 43927u), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6762u, 9u)], 9u)]), 9u)], 16u)], global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 16u)]), func_2(-1577f, countOneBits(0u), vec2<u32>(0u, 4294967295u), Struct_2(120336u))), vec3<i32>(~_wgslsmith_add_i32(var_0.x, -2147483647i), _wgslsmith_mult_i32(8521i, ~(-18453i)), _wgslsmith_mult_i32(-38596i, min(var_0.x, var_0.x))));
    let var_1 = Struct_3(Struct_2(4294967295u), 1306f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(768f, -1026f))), (29843u ^ global2[_wgslsmith_index_u32(7033u, 9u)]) >> (~69765u % 32u), ~vec2<u32>(31121u, 1u), func_2(_wgslsmith_div_f32(-1239f, 1363f), max(1u, global2[_wgslsmith_index_u32(0u, 9u)]), vec2<u32>(global2[_wgslsmith_index_u32(1u, 9u)], 0u), func_2(-508f, 1u, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60335u, 9u)], 9u)]), Struct_2(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)])))).a, 9u)], 9u)], 16u)], global0[_wgslsmith_index_u32(~0u, 16u)], global0[_wgslsmith_index_u32(20689u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 9u)]) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(1u, 1u))), 16u)]);
    var_0 = _wgslsmith_add_vec3_i32(abs(-_wgslsmith_div_vec3_i32(firstTrailingBit(u_input.a), -vec3<i32>(-5561i, var_0.x, -24898i))), vec3<i32>(max(var_0.x ^ _wgslsmith_div_i32(u_input.a.x, 10018i), ~var_0.x), 1i << (var_1.c.b.x % 32u), ~(-_wgslsmith_sub_i32(var_0.x, 45317i))));
    global2 = array<u32, 9>();
    return global2[_wgslsmith_index_u32(~func_2(var_1.b, var_1.e.b.x, _wgslsmith_mod_vec2_u32(~var_1.c.b.zx, ~var_1.e.b.wy), var_1.a).a, 9u)] | 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -38808i;
    global2 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, 2147483647i) >> (vec3<u32>(global2[_wgslsmith_index_u32(18984u, 9u)], 44871u, global2[_wgslsmith_index_u32(1u, 9u)]) % vec3<u32>(32u)), u_input.a), 15724i), -211f, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30966u, 9u)], 9u)], 64971u) & vec2<u32>(68618u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19697u, 9u)], 9u)]), ~vec2<u32>(0u, 1u)), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92318u, 9u)], 9u)], 9u)] ^ reverseBits(26734u), func_1()), reverseBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35453u, global2[_wgslsmith_index_u32(4014u, 9u)], global2[_wgslsmith_index_u32(87916u, 9u)], 0u), vec4<u32>(17756u, 4294967295u, global2[_wgslsmith_index_u32(83507u, 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58342u, 9u)], 9u)], 9u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(91692u, 9u)], 9u)], 1u, 99920u), vec4<u32>(0u, 0u, 1u, 0u)), global2[_wgslsmith_index_u32(77047u, 9u)] | 23261u))));
}

