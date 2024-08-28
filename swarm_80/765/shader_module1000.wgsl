struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: array<u32, 1> = array<u32, 1>(0u);

var<private> global1: array<bool, 28>;

var<private> global2: vec4<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<i32> {
    let var_0 = -min(firstLeadingBit(reverseBits(u_input.b) ^ ~u_input.b), u_input.d);
    var var_1 = firstTrailingBit(firstTrailingBit(vec2<i32>(~(i32(-1i) * -10331i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(22847i, var_0), vec2<i32>(0i, var_0)), -37773i))));
    let var_2 = min(firstTrailingBit(_wgslsmith_mod_i32(-countOneBits(var_0), var_1.x ^ u_input.b)), ~1i);
    var_1 = -vec2<i32>(var_2 ^ 0i, var_2) ^ ~abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, var_0), abs(vec2<i32>(u_input.b, -8461i))));
    global1 = array<bool, 28>();
    return -((abs(firstTrailingBit(vec2<i32>(1i, -1i))) & ~(vec2<i32>(0i, u_input.b) | vec2<i32>(var_0, 2147483647i))) ^ abs(select(vec2<i32>(u_input.b, var_1.x) & vec2<i32>(u_input.b, var_0), vec2<i32>(-41455i, -5476i), select(global2.yw, vec2<bool>(global2.x, false), vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45845u, 1u)], 28u)])))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(func_3() ^ _wgslsmith_mult_vec2_i32(vec2<i32>(~0i, -47799i), -_wgslsmith_div_vec2_i32(vec2<i32>(-13208i, u_input.b), vec2<i32>(u_input.d, u_input.d))), ~firstTrailingBit(~u_input.b), select(vec4<bool>(any(!global2.wx), global2.x, !any(global2.xy), all(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 28u)], global2.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(64617u, 28u)], true, global2.x, false), true))), !vec4<bool>(false, true, !global2.x, true), global2.x && global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(36495u), firstTrailingBit(44670u), global0[_wgslsmith_index_u32(~0u, 1u)]), 28u)]));
    global0 = array<u32, 1>();
    global1 = array<bool, 28>();
    global0 = array<u32, 1>();
    var var_1 = _wgslsmith_mult_vec2_i32(firstLeadingBit(reverseBits(select(_wgslsmith_div_vec2_i32(var_0.a, vec2<i32>(-46051i, 2147483647i)), vec2<i32>(-46170i, u_input.d), var_0.c.yw))), -_wgslsmith_add_vec2_i32(~(var_0.a << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u) % vec2<u32>(32u))), ~(~var_0.a)));
    return true;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    global2 = select(vec4<bool>(any(vec4<bool>(true, false, false | global1[_wgslsmith_index_u32(53804u, 28u)], global2.x)), true, false, true), !(!(!vec4<bool>(global1[_wgslsmith_index_u32(50044u, 28u)], false, true, true))), func_2());
    var var_0 = func_2();
    global2 = !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec4<bool>(global2.x, false, global2.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 28u)]), global2.x), !vec4<bool>(true, global2.x, true, false)), select(select(vec4<bool>(global2.x, global1[_wgslsmith_index_u32(13032u, 28u)], true, false), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(0u, 28u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 28u)]), select(vec4<bool>(global2.x, false, global1[_wgslsmith_index_u32(u_input.c.x, 28u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 28u)], global2.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 28u)]), false), true), vec4<bool>(false, global2.x, !global2.x, false)));
    global0 = array<u32, 1>();
    var var_1 = vec3<bool>(global0[_wgslsmith_index_u32(~(u_input.c.x >> (7466u % 32u)), 1u)] > _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(50331u, 1u)], 24122u), global0[_wgslsmith_index_u32(2018u, 1u)] <= ~abs(u_input.a ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u)]), func_2());
    return -_wgslsmith_clamp_i32(u_input.d, u_input.d, 35144i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 21032i) | vec4<i32>(-1i, -35284i, -27693i, u_input.b), vec4<i32>(-2147483647i, u_input.b, 12266i, -2147483647i) << (vec4<u32>(0u, 1u, 46295u, u_input.c.x) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(58909i, -2147483647i, u_input.b), vec3<i32>(-54353i, -30966i, u_input.b)), ~u_input.d, 1051i), -(~(-28647i)), _wgslsmith_sub_i32(func_1(vec2<f32>(906f, 1000f)), select(2180i, 2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 28u)])), func_3().x), firstTrailingBit(firstTrailingBit(vec4<i32>(func_3().x, 15850i, u_input.b, u_input.d ^ -1i))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global0[_wgslsmith_index_u32(33985u, 1u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.a, 1u)], 53505u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 52101u, 59875u), vec4<u32>(global0[_wgslsmith_index_u32(11102u, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 74182u, u_input.a))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(11780u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u)]), countOneBits(vec4<u32>(u_input.c.x, 0u, u_input.a, 12987u))), ~(~vec4<u32>(4294967295u, 9608u, u_input.a, 4294967295u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 45472u, 56765u), vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(u_input.a, 1u)], 87848u)))), ~1u);
    var var_2 = -_wgslsmith_dot_vec3_i32(select(vec3<i32>(27223i, u_input.d, var_0.x), var_0.xyy, false) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-14767i, var_0.x, -9787i), vec3<i32>(-29282i, var_0.x, var_0.x)), abs(vec3<i32>(u_input.b, u_input.d, 0i) << (u_input.c % vec3<u32>(32u)))) & max(var_0.x, -firstTrailingBit(var_0.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 0u), countOneBits(vec3<u32>(0u, var_1.x, 78814u))) % 32u));
    var var_3 = true;
    var var_4 = ~reverseBits(reverseBits(~vec4<u32>(var_1.x, u_input.a, 0u, var_1.x) ^ ~vec4<u32>(26868u, u_input.a, var_1.x, var_1.x)));
    var_1 = vec2<u32>(max(~var_4.x, global0[_wgslsmith_index_u32(11954u, 1u)]), min(61528u, ~(~(~global0[_wgslsmith_index_u32(4294967295u, 1u)]))));
    var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.x, abs(u_input.d)), ~_wgslsmith_add_i32(-21938i, var_0.x));
    let var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(787f)), _wgslsmith_f_op_f32(select(-646f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-515f, 185f, global2.x)))), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1015f, 159f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-248f + 196f), _wgslsmith_f_op_f32(ceil(-1685f)), _wgslsmith_f_op_f32(step(725f, -1341f)))))));
    global1 = array<bool, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, min(1i, ~(-1i)), var_5.x);
}

