struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, -1i);

var<private> global1: array<f32, 12> = array<f32, 12>(1000f, 652f, 800f, -615f, -1310f, 1287f, 399f, -216f, -364f, 561f, 1732f, 810f);

var<private> global2: vec3<i32>;

var<private> global3: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global4: u32 = 8166u;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 12u)] + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 12u)])) + -1176f);
    var var_2 = false;
    var var_3 = select(!select(vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 12u)] == global1[_wgslsmith_index_u32(u_input.b, 12u)], true), (global1[_wgslsmith_index_u32(u_input.b, 12u)] < 832f) | true), !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), all(!vec3<bool>(all(vec2<bool>(true, true)), true, any(vec2<bool>(false, true)))));
    var var_4 = vec3<bool>(!(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(57345u, u_input.b, u_input.b, 4294967295u)) <= firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 18053u, u_input.b), vec4<u32>(u_input.b, 62127u, 0u, 0u)))), true, true);
    return max(4294967295u, _wgslsmith_div_u32(u_input.b, u_input.b));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = func_3();
    var_0 = 1u;
    return arg_0.d.e;
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    global0 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-15654i, -1i), vec2<i32>(-1i, 2147483647i))), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, -9987i), firstTrailingBit(u_input.a.yw)), u_input.a.yz), select(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wz), u_input.a.yy, vec2<i32>(u_input.a.x, -2147483647i)), select(vec2<i32>(global2.x, 13893i), vec2<i32>(global2.x, global0.x), vec2<bool>(false, arg_0.x)), any(!global3[_wgslsmith_index_u32(4294967295u, 7u)]))) & _wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, global0.x), firstTrailingBit(-vec2<i32>(14751i, global2.x) ^ vec2<i32>(-1i, global0.x)));
    global4 = ~firstTrailingBit(~select(u_input.b, countOneBits(u_input.b), arg_0.x));
    var var_0 = Struct_2(vec3<bool>(all(!(!vec4<bool>(false, arg_0.x, arg_0.x, true))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.b, 12u)], _wgslsmith_f_op_f32(trunc(113f)))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(944f)))), arg_0.x), any(select(global3[_wgslsmith_index_u32(~(~52102u), 7u)], global3[_wgslsmith_index_u32(~1u, 7u)], !arg_0.x & true)), Struct_1(26610i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 12u)], -2350f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(891f, global1[_wgslsmith_index_u32(u_input.b, 12u)]) - vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], -712f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 12u)], 764f)))), min(u_input.a, select(~vec4<i32>(0i, -21678i, global2.x, 0i), ~u_input.a, arg_0.x | true)), _wgslsmith_f_op_f32(step(-1707f, _wgslsmith_f_op_f32(210f - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 12u)], -1000f))))), select(u_input.b, u_input.b, false)), Struct_1(abs(global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-277f, 703f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(54801u, 12u)], 692f)) * _wgslsmith_div_vec2_f32(vec2<f32>(115f, -489f), vec2<f32>(1000f, global1[_wgslsmith_index_u32(u_input.b, 12u)])))), select(vec4<i32>(-1i) * -u_input.a, u_input.a, global1[_wgslsmith_index_u32(abs(65399u), 12u)] <= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 12u)] - -421f)), global1[_wgslsmith_index_u32((~u_input.b >> (_wgslsmith_clamp_u32(108960u, 73781u, u_input.b) % 32u)) | u_input.b, 12u)], u_input.b));
    let var_1 = vec3<i32>(105158i, u_input.a.x, _wgslsmith_sub_i32(select(global0.x, countOneBits(u_input.a.x) << (~77476u % 32u), true && arg_0.x), u_input.a.x));
    global0 = var_1.yy;
    return _wgslsmith_f_op_f32(var_0.c.b.x - _wgslsmith_f_op_f32(-1248f - 207f));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32) -> vec2<f32> {
    global2 = max(_wgslsmith_sub_vec3_i32(-abs(~vec3<i32>(-16106i, 44562i, 0i)), vec3<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(1i, 21349i, 6374i)), select(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_add_i32(52827i, global2.x), true), _wgslsmith_mod_i32(min(global0.x, u_input.a.x), 1i))), ~u_input.a.wzz);
    global0 = -reverseBits(global2.zy);
    global1 = array<f32, 12>();
    let var_0 = Struct_1(-30629i ^ ~firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1290f, -2042f))), ~vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, global0.x, -7124i, 1i)), reverseBits(vec4<i32>(2147483647i, global0.x, u_input.a.x, global2.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, global0.x), vec3<i32>(global2.x, 25769i, 1i)) & -1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, 41431i, 0i, 63158i), vec4<i32>(1i, 2147483647i, u_input.a.x, global2.x) & u_input.a)), arg_1, u_input.b);
    let var_1 = 45001u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1194f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 12u)]))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_5(vec4<f32>(_wgslsmith_f_op_f32(func_4(select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 86644u), 7u)], select(vec3<bool>(arg_0, true, false), global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(16108u, 7u)]), global3[_wgslsmith_index_u32(func_2(Struct_2(global3[_wgslsmith_index_u32(76234u, 7u)], arg_0, Struct_1(0i, vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 12u)], -444f), vec4<i32>(global2.x, global0.x, -2147483647i, 2147i), 814f, u_input.b), Struct_1(global2.x, vec2<f32>(-771f, var_0.x), u_input.a, var_0.x, 1u))), 7u)]))), 708f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, func_3() >> (_wgslsmith_mult_u32(u_input.b, u_input.b) % 32u)), 12u)], -880f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(496f)))));
    global0 = select(-global2.xz, vec2<i32>(global2.x, -1i), any(!vec4<bool>(arg_0, arg_0, false, arg_0)) && false) | min(vec2<i32>(global2.x, _wgslsmith_div_i32(0i, abs(-1i))), vec2<i32>(max(global0.x, reverseBits(54634i)), global0.x >> (~u_input.b % 32u)));
    global1 = array<f32, 12>();
    let var_1 = ~u_input.a;
    return Struct_1(10493i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-464f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 0u), 12u)], _wgslsmith_f_op_f32(-1834f + global1[_wgslsmith_index_u32(4294967295u, 12u)]))) - vec2<f32>(549f, var_0.x)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * 1000f))), global1[_wgslsmith_index_u32(u_input.b, 12u)])), u_input.b);
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_4(false);
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(33079u, 7u)], !var_0.a, arg_2, arg_2);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b, 12u)];
    var var_1 = u_input.a;
    let var_2 = ~(vec4<u32>(u_input.b, u_input.b, u_input.b, 68303u) ^ vec4<u32>(16670u, 0u, u_input.b, _wgslsmith_sub_u32(max(4294967295u, 17761u), ~0u)));
    var var_3 = func_6(38929u, ~(~1u), func_1(false), global2.x | global2.x);
    var_1 = u_input.a;
    let var_4 = Struct_3(Struct_2(func_6(firstTrailingBit(u_input.b ^ 1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, 1u), 22185u), func_6(0u >> (var_2.x % 32u), 1u, var_3.d, 1i).d, -31173i).a, var_3.b, func_1(var_3.a.x), var_3.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1536f * _wgslsmith_f_op_f32(exp2(var_3.c.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(18601u, 12u)], 433f, true)), _wgslsmith_f_op_vec2_f32(func_5(vec4<f32>(var_3.d.d, var_3.d.d, -448f, 723f), -209f)).x)), _wgslsmith_f_op_f32(sign(1111f)), -239f)), var_3.c, Struct_2(func_6(~var_2.x, var_2.x, func_1(-1071f > var_3.c.b.x), countOneBits(_wgslsmith_clamp_i32(12867i, u_input.a.x, -19235i))).a, true, func_6(var_2.x, ~(~var_2.x), Struct_1(~8914i, var_3.c.b, reverseBits(u_input.a), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_2.x, 12u)], 466f)), var_2.x), abs(-1i)).c, Struct_1(~(~var_3.c.c.x), vec2<f32>(_wgslsmith_f_op_f32(var_3.c.b.x - -331f), _wgslsmith_f_op_f32(sign(var_3.d.b.x))), select(vec4<i32>(-41345i, u_input.a.x, global2.x, u_input.a.x), ~u_input.a, true), _wgslsmith_f_op_f32(f32(-1f) * -391f), 89339u)));
    let var_5 = ~vec2<u32>(var_3.c.e, 19050u);
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.a.x & _wgslsmith_sub_i32(-10757i, -16292i)), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, countOneBits(2147483647i), countOneBits(var_1.x)), _wgslsmith_div_vec3_i32(u_input.a.wzw, countOneBits(var_1.xxz))), ~(~19543u));
}

