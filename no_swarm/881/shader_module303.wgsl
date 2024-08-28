struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 16390u);

var<private> global1: array<f32, 23> = array<f32, 23>(1632f, 953f, 129f, 114f, 943f, -1093f, -487f, -773f, 2104f, -1907f, -427f, -865f, 1000f, 240f, 1125f, -1489f, 234f, -217f, 575f, 635f, 502f, -116f, -230f);

var<private> global2: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global3: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(8239u, 1u), vec2<u32>(12388u, 42441u), vec2<u32>(1u, 2895u), vec2<u32>(83328u, 68892u), vec2<u32>(4294967295u, 0u), vec2<u32>(7371u, 1u), vec2<u32>(56175u, 0u), vec2<u32>(60071u, 25105u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 30521u), vec2<u32>(68835u, 1u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    var var_0 = (all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)) && (any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))) & true)) != (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 23u)]), -1182f) >= _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(global0.x, 23u)], _wgslsmith_f_op_f32(244f - 1000f), true)));
    var var_1 = select(select(vec4<u32>(global0.x, ~global0.x, 35392u, global0.x), reverseBits(vec4<u32>(_wgslsmith_div_u32(global0.x, u_input.d), 1u, 45583u >> (global0.x % 32u), ~u_input.d)), all(vec3<bool>(true, false, any(vec4<bool>(true, true, false, true))))), ~firstLeadingBit(vec4<u32>(~0u, 39198u, ~u_input.b, 1u)), true);
    var var_2 = global1[_wgslsmith_index_u32(~global0.x, 23u)];
    let var_3 = true;
    var_1 = vec4<u32>(u_input.d, global0.x, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_div_u32(~0u, ~u_input.b)), global3[_wgslsmith_index_u32(1u, 11u)]));
    return firstTrailingBit(_wgslsmith_mult_vec4_i32(reverseBits(-vec4<i32>(-43424i, u_input.a, u_input.c.x, 49392i)), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.a >> (u_input.b % 32u)), 1i, firstTrailingBit(select(u_input.c.x, 2147483647i, true)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(50852i, 1i), vec2<i32>(u_input.a, u_input.c.x))))));
}

fn func_2() -> u32 {
    let var_0 = 835f;
    global3 = array<vec2<u32>, 11>();
    let var_1 = func_3();
    var var_2 = Struct_2(Struct_1(~global3[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_0)), select(vec4<bool>(false, true, any(vec4<bool>(false, true, false, false)), global1[_wgslsmith_index_u32(u_input.b, 23u)] != var_0), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), false)));
    var var_3 = Struct_2(var_2.a);
    return 0u;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = reverseBits(abs(_wgslsmith_mult_vec2_u32(~(~global3[_wgslsmith_index_u32(0u, 11u)]), ~(~vec2<u32>(u_input.b, 4294967295u)))));
    let var_0 = any(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, _wgslsmith_clamp_u32(0u, 4294967295u, 0u)), 17u)]);
    global0 = (vec2<u32>(select(global0.x >> (global0.x % 32u), 0u, -119f >= global1[_wgslsmith_index_u32(15566u, 23u)]), ~func_2()) << (~vec2<u32>(~arg_0, abs(u_input.b)) % vec2<u32>(32u))) & ~vec2<u32>(0u, arg_0 | global0.x);
    let var_1 = !(!(!vec4<bool>(u_input.a > -2147483647i, true, any(global2[_wgslsmith_index_u32(0u, 17u)]), false)));
    let var_2 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 37580u), vec2<u32>(0u, global0.x)), global3[_wgslsmith_index_u32(global0.x, 11u)])), ~(~(~vec2<u32>(56606u, global0.x))));
    return Struct_1(vec2<u32>(1u, ~52794u), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(20443u, 9497u), 23u)]), select(!var_1, var_1, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_add_u32(~34458u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x), vec2<u32>(global0.x, 4294967295u))))));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 19015u, 58414u), ~vec3<u32>(80835u, var_0.a.a.x, global0.x)) & (vec3<u32>(u_input.b, var_0.a.a.x, 29788u) >> (~vec3<u32>(1u, var_0.a.a.x, 86871u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(global0.x, 51699u, 37118u)), _wgslsmith_div_vec3_u32(~vec3<u32>(9231u, u_input.b, 676u), vec3<u32>(0u, global0.x, 33454u) | vec3<u32>(var_0.a.a.x, u_input.b, 38377u)))), countOneBits(reverseBits(global0.x) >> (firstTrailingBit(28068u) % 32u)) << (55930u % 32u), (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 25857u), ~vec3<u32>(1u, global0.x, u_input.b)) & global0.x) ^ _wgslsmith_mult_u32(152800u, var_0.a.a.x), 1u);
    global0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, abs(~u_input.b)), _wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(var_1.x, 11u)] << ((global3[_wgslsmith_index_u32(global0.x, 11u)] << (vec2<u32>(var_1.x, global0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), var_1.wy, reverseBits(var_1.zz) ^ vec2<u32>(0u, u_input.b)));
    var_1 = vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 0u), firstTrailingBit(global0.x)), global0.x ^ (0u >> (var_1.x % 32u)))), ~4294967295u, 0u, firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, var_1.x), _wgslsmith_clamp_vec3_u32(var_1.wzz, vec3<u32>(u_input.d, 1u, 32327u), vec3<u32>(4294967295u, 0u, var_1.x)))));
    let var_2 = vec2<u32>(51474u, var_1.x);
    var var_3 = min(47848u, ~_wgslsmith_mod_u32(19441u, 4294967295u) | func_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(global0.x, var_1.x), 1u)).a.x);
    var_3 = ~var_2.x;
    global0 = func_1(~_wgslsmith_add_u32(~25222u, _wgslsmith_mod_u32(func_1(var_0.a.a.x).a.x, 32303u))).a;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], var_0.a.b, -1615f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, 897f, var_0.a.b, var_0.a.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(48124u, 23u)], 161f, 218f, 1000f) * vec4<f32>(global1[_wgslsmith_index_u32(var_0.a.a.x, 23u)], 183f, global1[_wgslsmith_index_u32(var_2.x, 23u)], var_0.a.b)) + vec4<f32>(var_0.a.b, var_0.a.b, 230f, 718f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_1.x, 23u)], 161f)), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(21131u, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)])), 364f, 381f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -657f, 516f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-865f, var_0.a.b, global1[_wgslsmith_index_u32(54412u, 23u)], var_0.a.b))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1437f, _wgslsmith_f_op_f32(trunc(1404f)), var_0.a.b, _wgslsmith_f_op_f32(trunc(2624f))), vec4<f32>(-803f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 23u)]), global1[_wgslsmith_index_u32(func_2(), 23u)], global1[_wgslsmith_index_u32(func_1(var_1.x).a.x, 23u)]), false || !var_0.a.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~_wgslsmith_add_i32(42075i, u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - 340f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f - -2026f) + _wgslsmith_f_op_f32(-var_0.a.b)), true))));
}

