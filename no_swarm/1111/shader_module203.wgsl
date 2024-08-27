struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(0u, 77076u), Struct_1(1u, 25787u), Struct_1(0u, 16492u), Struct_1(1u, 1u), Struct_1(37156u, 8128u), Struct_1(40340u, 35058u), Struct_1(53472u, 0u), Struct_1(38128u, 16099u), Struct_1(1u, 4294967295u), Struct_1(4294967295u, 0u), Struct_1(4294967295u, 54482u));

var<private> global2: array<i32, 9> = array<i32, 9>(6846i, -29503i, -21450i, 1i, 7385i, 19277i, -14191i, -13636i, 1i);

var<private> global3: u32 = 12283u;

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(12246u, 82383u), Struct_1(59104u, 0u), Struct_1(1u, 24784u), Struct_1(14438u, 0u), Struct_1(7680u, 4294967295u), Struct_1(0u, 50657u), Struct_1(4294967295u, 4294967295u), Struct_1(42762u, 0u), Struct_1(4294967295u, 1u), Struct_1(4294967295u, 1231u), Struct_1(55994u, 16773u), Struct_1(56994u, 14416u), Struct_1(55141u, 53322u), Struct_1(1u, 1u), Struct_1(4294967295u, 15802u), Struct_1(62489u, 10212u), Struct_1(7228u, 11408u), Struct_1(0u, 98694u), Struct_1(20641u, 0u), Struct_1(33352u, 0u), Struct_1(83918u, 91884u), Struct_1(4294967295u, 91164u), Struct_1(0u, 0u), Struct_1(27071u, 84656u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = true;
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    global2 = array<i32, 9>();
    var var_1 = ~min(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(global2[_wgslsmith_index_u32(global0.x, 9u)], 0i)), firstTrailingBit(vec2<i32>(67790i, global2[_wgslsmith_index_u32(u_input.a.x, 9u)]))), select(abs(vec2<i32>(4189i, -2147483647i)), min(vec2<i32>(global2[_wgslsmith_index_u32(50256u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)]), abs(vec2<i32>(0i, -26131i))), vec2<bool>(all(vec3<bool>(false, true, true)), true)));
    return ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, global0.x), 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = Struct_2(vec3<i32>(-firstTrailingBit(abs(global2[_wgslsmith_index_u32(26475u, 9u)])), -firstLeadingBit(-1i), ~(~(global2[_wgslsmith_index_u32(u_input.a.x, 9u)] << (arg_2.a % 32u)))));
    let var_2 = ~0u;
    global1 = array<Struct_1, 11>();
    var var_3 = ~firstTrailingBit(-_wgslsmith_dot_vec2_i32(var_1.a.xy, vec2<i32>(global2[_wgslsmith_index_u32(var_2, 9u)], global2[_wgslsmith_index_u32(34785u, 9u)])));
    return Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(arg_1.x, 9u)], global2[_wgslsmith_index_u32(var_0.a, 9u)]), global2[_wgslsmith_index_u32(31198u, 9u)], -global2[_wgslsmith_index_u32(16910u, 9u)] | 2147483647i), firstTrailingBit(vec3<i32>(~0i, -942i, 0i))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    global3 = _wgslsmith_add_u32(arg_1.x, _wgslsmith_mod_u32(~0u, global0.x));
    let var_1 = func_3(all(vec2<bool>(true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 5245u, ~4294967295u, ~4294967295u), ~(~vec4<u32>(global0.x, arg_1.x, global0.x, 0u))) >> (vec4<u32>(34724u, _wgslsmith_sub_u32(~0u, arg_1.x), 63572u, abs(1u)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(global0.x & _wgslsmith_mult_u32(~arg_1.x, reverseBits(func_2(vec2<f32>(1515f, 1493f)))), 11u)]);
    global3 = 0u;
    let var_2 = _wgslsmith_mult_i32(2147483647i, min(0i, arg_2.a.x));
    return func_3(u_input.a.x > global0.x, firstTrailingBit(~max(~vec4<u32>(4294967295u, u_input.a.x, global0.x, 4294967295u), vec4<u32>(u_input.a.x, arg_1.x, 0u, arg_1.x))), Struct_1(4294967295u, 29138u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = global0.x >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(abs(u_input.a), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a)), u_input.a), global0.x, _wgslsmith_mult_u32(~u_input.a.x, abs(abs(u_input.a.x)))) % 32u);
    let var_2 = func_1(Struct_2(countOneBits(select(select(vec3<i32>(1i, 2147483647i, var_0), vec3<i32>(-17399i, var_0, -2147483647i), true), firstLeadingBit(vec3<i32>(29168i, -2147483647i, global2[_wgslsmith_index_u32(33480u, 9u)])), true))), u_input.a << (u_input.a % vec3<u32>(32u)), Struct_2(_wgslsmith_add_vec3_i32(-(~vec3<i32>(global2[_wgslsmith_index_u32(7317u, 9u)], -10700i, -2147483647i)), select(~vec3<i32>(-2147483647i, var_0, 36482i), vec3<i32>(0i, -17155i, global2[_wgslsmith_index_u32(47546u, 9u)]), vec3<bool>(true, true, true)))), _wgslsmith_sub_i32(2147483647i, ~(-var_0 & (43309i << (u_input.a.x % 32u)))));
    global1 = array<Struct_1, 11>();
    var var_3 = 4294967295u;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f * 880f)), 536f) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(261f, -797f, 439f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1167f, -1160f, -116f))))))));
    global1 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 1u, var_1), u_input.a), reverseBits(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(u_input.a.x, 36707u, var_1))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), ~(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(82375u, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 15143i), var_2.a, vec3<i32>(-2147483647i, -37006i, var_0)) >> (~vec3<u32>(global0.x, u_input.a.x, var_1) % vec3<u32>(32u)))), func_1(var_2, firstTrailingBit(~u_input.a), Struct_2(reverseBits(~var_2.a)), -global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(15050u, var_1, firstLeadingBit(var_1)), 9u)]).a, firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0, countOneBits(var_2.a.x), firstTrailingBit(global2[_wgslsmith_index_u32(0u, 9u)])), ~var_2.a.x, -31397i)), vec3<u32>(var_1, 24770u >> (_wgslsmith_sub_u32(var_1, u_input.a.x) % 32u), var_1) & max(~abs(vec3<u32>(72425u, 26582u, global0.x)), u_input.a));
}

