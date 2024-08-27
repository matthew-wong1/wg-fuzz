struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(10311u, 10529u), vec2<u32>(9581u, 0u), vec2<u32>(1u, 0u), vec2<u32>(0u, 82738u), vec2<u32>(49212u, 0u), vec2<u32>(19212u, 27667u));

var<private> global1: array<bool, 15> = array<bool, 15>(true, false, true, false, false, true, true, false, false, false, false, false, false, false, true);

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(-594f, -1216f, Struct_1(vec2<bool>(false, false), vec2<bool>(true, true)), vec4<u32>(4294967295u, 29803u, 1u, 4294967295u)), Struct_2(-1000f, 871f, Struct_1(vec2<bool>(false, false), vec2<bool>(true, false)), vec4<u32>(33143u, 17322u, 14015u, 1u)), Struct_2(-931f, -790f, Struct_1(vec2<bool>(false, true), vec2<bool>(true, false)), vec4<u32>(1u, 1433u, 33012u, 1u)), Struct_2(-202f, -444f, Struct_1(vec2<bool>(true, false), vec2<bool>(true, true)), vec4<u32>(59767u, 24784u, 105722u, 45252u)), Struct_2(419f, -1462f, Struct_1(vec2<bool>(false, false), vec2<bool>(true, false)), vec4<u32>(37874u, 61441u, 52038u, 0u)));

var<private> global3: f32 = 1000f;

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global2 = array<Struct_2, 5>();
    global3 = _wgslsmith_div_f32(287f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -1419f)));
    var var_0 = Struct_4(~72035u, _wgslsmith_sub_vec2_u32(max(vec2<u32>(31972u, u_input.c.x), ~vec2<u32>(u_input.a.x, u_input.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, abs(45871u)), 6u)]) << (~firstLeadingBit(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(65007u, 6u)], u_input.c, u_input.a.xw)) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(~select(u_input.b.x ^ 15769u, u_input.c.x, !(!global1[_wgslsmith_index_u32(0u, 15u)])), 5u)]);
    global0 = array<vec2<u32>, 6>();
    var var_1 = Struct_4(u_input.a.x, vec2<u32>(select(98441u, 47436u, true), ~(~(~28654u))), var_0.c);
    return 4448u;
}

fn func_2() -> i32 {
    let var_0 = Struct_4(1194u, vec2<u32>(4294967295u, ~u_input.c.x), global2[_wgslsmith_index_u32(abs(select(_wgslsmith_mult_u32(0u, u_input.b.x) << (func_3() % 32u), ~reverseBits(u_input.c.x), false)), 5u)]);
    let var_1 = vec4<i32>(_wgslsmith_add_i32(global4.x, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-75934i, global4.x, 2147483647i), vec3<i32>(2147483647i, global4.x, global4.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 0i), vec3<i32>(global4.x, global4.x, 36191i))))), global4.x, global4.x, _wgslsmith_mod_i32(firstTrailingBit(min(_wgslsmith_div_i32(global4.x, -2147483647i), global4.x)), -global4.x));
    global3 = 379f;
    var var_2 = true;
    return _wgslsmith_add_i32(global4.x, _wgslsmith_dot_vec4_i32(var_1, _wgslsmith_div_vec4_i32(vec4<i32>(-22278i, 2147483647i, 2197i, global4.x), ~var_1)) ^ var_1.x);
}

fn func_1() -> bool {
    global2 = array<Struct_2, 5>();
    global4 = -select(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -11357i, global4.x), vec3<i32>(2147483647i, 39664i, global4.x), vec3<i32>(global4.x, global4.x, -2147483647i))), vec3<i32>(func_2(), ~19157i, global4.x), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(69885u, 15u)], false, global1[_wgslsmith_index_u32(53151u, 15u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 15u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], true)), global1[_wgslsmith_index_u32(1u, 15u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(~83468u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x & u_input.b.x, 15u)]), global1[_wgslsmith_index_u32(~(~6441u), 15u)]));
    global3 = _wgslsmith_div_f32(249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, 2179f)), 1000f)))));
    let var_0 = Struct_4(firstTrailingBit(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], vec2<u32>(u_input.c.x, u_input.b.x)), global0[_wgslsmith_index_u32(~0u, 6u)])), vec2<u32>(_wgslsmith_dot_vec3_u32(~(~u_input.a.xwy), reverseBits(vec3<u32>(u_input.b.x, 75045u, 4294967295u))), ~u_input.c.x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2191f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2016f) + _wgslsmith_f_op_f32(step(-1000f, -188f)))), Struct_1(select(!vec2<bool>(global1[_wgslsmith_index_u32(13552u, 15u)], true), vec2<bool>(true, true), false), vec2<bool>(false, any(vec2<bool>(true, true)))), countOneBits(firstTrailingBit(~u_input.a))));
    let var_1 = select(vec3<bool>(false, all(!vec4<bool>(false, false, var_0.c.c.b.x, var_0.c.c.b.x)), true), vec3<bool>(global1[_wgslsmith_index_u32(~4294967295u, 15u)], var_0.c.c.b.x, true & (u_input.c.x < var_0.c.d.x)), all(vec2<bool>(true, true)));
    return !var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 6>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1328f * -1438f), -587f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1774f, -1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f * 285f))))), Struct_1(vec2<bool>(func_1(), select(global4.x != 0i, global4.x >= 1i, true)), !vec2<bool>(all(vec2<bool>(false, false)), false)), vec4<u32>(~abs(~1u), abs(u_input.c.x), ~_wgslsmith_sub_u32(1u, max(u_input.a.x, 0u)), 1u));
    var var_1 = u_input.c.x;
    global1 = array<bool, 15>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(abs(-4266f)), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.a) - _wgslsmith_f_op_f32(step(384f, var_0.a))) + _wgslsmith_f_op_f32(-var_0.b))), var_0.c, u_input.a);
    global1 = array<bool, 15>();
    let var_3 = var_0.c;
    let var_4 = u_input.a.x | (u_input.b.x & ~(~select(var_2.d.x, 0u, false)));
    global2 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, select(-_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global4.x, -69880i), reverseBits(vec3<i32>(1i, global4.x, -19556i))), vec3<i32>(~(-global4.x), global4.x, global4.x), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_2.c.a.x, var_2.c.b.x), vec3<bool>(false, true, var_3.a.x)), vec3<bool>(true, !var_2.c.b.x, global1[_wgslsmith_index_u32(abs(0u), 15u)]), select(vec3<bool>(var_2.c.b.x, false, false), vec3<bool>(var_0.c.b.x, var_2.c.b.x, false), true))));
}

