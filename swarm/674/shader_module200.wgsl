struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 23>;

var<private> global3: f32;

var<private> global4: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(7658i, -76333i, 53733i), vec3<i32>(2147483647i, -1i, -3080i), vec3<i32>(-12650i, -83097i, 2147483647i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(63592i, -54933i, 5429i), vec3<i32>(8458i, 1i, 534i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-1i, -1i, 1i), vec3<i32>(i32(-2147483648), 31253i, 37633i), vec3<i32>(-1i, -46174i, -44981i), vec3<i32>(-12292i, 29290i, -16681i), vec3<i32>(-35100i, -29620i, 2147483647i), vec3<i32>(44021i, -1i, 30845i), vec3<i32>(0i, -5930i, -1i), vec3<i32>(-20960i, -6576i, 14979i), vec3<i32>(0i, 2147483647i, 13457i), vec3<i32>(1645i, -11249i, 9798i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -743f;
    global0 = array<vec2<u32>, 6>();
    global2 = array<Struct_1, 23>();
    var var_1 = -arg_3.b.zz;
    global4 = array<vec3<i32>, 17>();
    return Struct_1(select(!(!arg_3.a), vec4<bool>(arg_2, !(arg_0.x > 100u), !arg_2 | (false | arg_3.a.x), true), arg_3.a), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(arg_3.b, arg_3.b), arg_3.b), _wgslsmith_f_op_f32(-1f));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global3 = -125f;
    var var_0 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(27646u, ~(~91514u), 1u << (1u % 32u)), 6u)], -1i, false, global2[_wgslsmith_index_u32(select(~firstTrailingBit(1u), 1u, select(any(vec2<bool>(true, true)), false, false)), 23u)]);
    let var_1 = func_1(vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(27544u, 1u)), 18838u), 2147483647i, true, func_1((_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(61840u, 6u)], vec2<u32>(19359u, 4294967295u)) & global0[_wgslsmith_index_u32(1u, 6u)]) & _wgslsmith_mult_vec2_u32(max(vec2<u32>(6207u, 4294967295u), global0[_wgslsmith_index_u32(1u, 6u)]), ~vec2<u32>(1u, 0u)), func_1(vec2<u32>(1u, ~4294967295u), -13478i, false, func_1(vec2<u32>(1u, 1u), var_0.b.x, false, global2[_wgslsmith_index_u32(1u, 23u)])).b.x, true, arg_2.a));
    let var_2 = ~vec3<u32>(~(~_wgslsmith_mult_u32(7489u, 1u)), ~(~0u) >> (_wgslsmith_sub_u32(firstLeadingBit(2583u), 1u) % 32u), 4294967295u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(444f, -1159f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-812f, -1797f))) - vec2<f32>(-589f, 542f)), vec2<bool>(true, !var_1.a.x)))));
    return Struct_1(arg_2.d.a, min(var_1.b, abs(var_1.b)), -1076f);
}

fn func_2() -> u32 {
    var var_0 = 0u != firstTrailingBit(~(~countOneBits(25168u)));
    global0 = array<vec2<u32>, 6>();
    let var_1 = func_1(global0[_wgslsmith_index_u32(32345u, 6u)], u_input.a, u_input.a > _wgslsmith_mult_i32(~(-u_input.a), 0i), func_3(-475f, true, Struct_2(Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), -vec4<i32>(18410i, 0i, 4018i, u_input.a), _wgslsmith_f_op_f32(794f + 2573f)), -vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i) & vec4<i32>(49181i, -2147483647i, 32165i, u_input.a), global2[_wgslsmith_index_u32(1u, 23u)], Struct_1(vec4<bool>(true, false, false, false), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 0i, -1i, 1i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-499f * 2217f)))));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~(~0u), 28179u), 17062u, 37672u), ~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 21541u, 1u, 24390u), vec4<u32>(0u, 0u, 11569u, 21315u)), _wgslsmith_mod_u32(67782u, 27875u), 1u) ^ firstLeadingBit(select(vec3<u32>(4294967295u, 12906u, 4294967295u), vec3<u32>(1u, 16260u, 44524u), var_1.a.wwy))));
    let var_3 = vec4<u32>(var_2.x, var_2.x, _wgslsmith_mult_u32(~(~var_2.x), 33290u), countOneBits(var_2.x)) & ~(~(vec4<u32>(var_2.x, 14465u, var_2.x, 59517u) << (select(vec4<u32>(var_2.x, var_2.x, 1u, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, 101696u), var_1.a.x) % vec4<u32>(32u))));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec4<bool>(all(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, false)) & true, true, any(vec3<bool>(true, true, true))), vec4<bool>(true, all(vec4<bool>(false, true, false, true)) && false, true, false), vec4<bool>(false, false, all(vec2<bool>(false, false)), select(true, true, false))), firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, -49136i, u_input.a, -1i), max(vec4<i32>(u_input.a, -52417i, 0i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) & -(~vec4<i32>(21070i, u_input.a, -45252i, -22322i))), 536f);
    let var_1 = func_1(global0[_wgslsmith_index_u32(~(~49813u), 6u)], _wgslsmith_div_i32(-48159i, _wgslsmith_mod_i32(-23195i, -39135i)), var_0.a.x, global2[_wgslsmith_index_u32(24571u, 23u)]);
    global0 = array<vec2<u32>, 6>();
    var var_2 = global2[_wgslsmith_index_u32(func_2() << (_wgslsmith_mod_u32(60051u, min(4294967295u, 1u)) % 32u), 23u)];
    var var_3 = Struct_2(var_0, var_2.b, var_0, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~max(reverseBits(26896u), ~71910u)), 23u)]);
    let var_4 = max(35561u, ~(~(_wgslsmith_mod_u32(25941u, 87057u) | _wgslsmith_clamp_u32(35731u, 1u, 6774u))));
    var var_5 = var_3.d.a.zxz;
    global0 = array<vec2<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(27896u);
}

