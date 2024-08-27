struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -346f;

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

var<private> global2: array<bool, 5>;

var<private> global3: vec4<f32> = vec4<f32>(-788f, 848f, -2393f, 519f);

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = Struct_1(true, u_input.e, max(~select(arg_0, arg_0, global1[_wgslsmith_index_u32(0u, 18u)]), -vec3<i32>(u_input.e.x, arg_0.x, u_input.b.x)) >> (abs(u_input.c) % vec3<u32>(32u)), !select(!global2[_wgslsmith_index_u32(9469u, 5u)], false, global2[_wgslsmith_index_u32(1u, 5u)]) && global2[_wgslsmith_index_u32(u_input.d, 5u)], u_input.c.x);
    var var_1 = Struct_1(true, vec4<i32>(var_0.b.x, 35556i, _wgslsmith_dot_vec3_i32(u_input.e.yyw, -(var_0.c << (vec3<u32>(28534u, 100116u, u_input.c.x) % vec3<u32>(32u)))), min(-24071i, ~u_input.e.x << (1849u % 32u))), var_0.b.zyy, true, ~var_0.e);
    let var_2 = Struct_1(var_1.a, _wgslsmith_div_vec4_i32(var_0.b, u_input.e), select(_wgslsmith_clamp_vec3_i32(var_1.c, vec3<i32>(0i, var_0.b.x, 0i), vec3<i32>(arg_0.x, var_0.c.x, -1i)) | u_input.e.wxx, min(arg_0, vec3<i32>(0i, -1i, 14614i)), true) & (vec3<i32>(-1i) * -vec3<i32>(u_input.a, var_1.c.x, u_input.e.x)), var_0.a, var_0.e);
    var_0 = Struct_1(!(global2[_wgslsmith_index_u32(~u_input.c.x, 5u)] == var_0.d), var_2.b, -vec3<i32>(select(arg_0.x, u_input.b.x << (var_2.e % 32u), !global2[_wgslsmith_index_u32(u_input.c.x, 5u)]), global4.x, -3051i), global3.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), 10110u);
    global1 = array<vec3<bool>, 18>();
    return var_0.e;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> i32 {
    global2 = array<bool, 5>();
    let var_0 = Struct_3(u_input.c);
    var var_1 = ~(func_3(~arg_3.a.c) >> (~(~0u) % 32u));
    let var_2 = _wgslsmith_f_op_f32(trunc(-1389f));
    global2 = array<bool, 5>();
    return max(-45096i, u_input.b.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec3<i32> {
    var var_0 = Struct_3(vec3<u32>(_wgslsmith_clamp_u32(108692u, ~(~arg_0.x), firstLeadingBit(269u >> (1u % 32u))), max(arg_0.x, 22238u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 10797u, u_input.c.x), vec4<u32>(arg_2.d.e, 58169u, arg_0.x, 15920u)), ~vec4<u32>(1u, arg_2.d.e, arg_2.a.e, u_input.d)), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0), vec3<u32>(30196u, u_input.d, 4294967295u)))));
    global4 = u_input.e.xxx;
    let var_1 = select(select(!(!(!vec2<bool>(false, arg_2.d.d))), vec2<bool>(!arg_2.a.a, -1i <= _wgslsmith_add_i32(u_input.e.x, 2147483647i)), false), !vec2<bool>(true, arg_2.d.a), arg_2.a.d);
    let var_2 = var_1;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1249f, _wgslsmith_f_op_f32(abs(-747f)), -114f, 880f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(297f, -910f, global3.x, 409f), _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 337f, global3.x, 273f), vec4<f32>(global3.x, global3.x, 1155f, global3.x)), arg_2.a.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, 634f, global3.x, -1107f))))));
    return ~vec3<i32>(global4.x, i32(-1i) * -30561i, global4.x);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = Struct_2(Struct_1(!(u_input.b.x >= -7847i), firstTrailingBit(~(~var_0.b)), select(func_4(abs(vec3<u32>(arg_0.a.x, 1u, u_input.d)), func_2(arg_0, Struct_2(arg_3, vec2<i32>(-46429i, 38486i), global2[_wgslsmith_index_u32(0u, 5u)], arg_3), arg_3.b.x, Struct_2(arg_3, arg_3.c.yz, arg_2.x, arg_3)), Struct_2(Struct_1(false, vec4<i32>(u_input.b.x, arg_3.b.x, 10975i, 2147483647i), vec3<i32>(1i, -30592i, -1i), global2[_wgslsmith_index_u32(60637u, 5u)], arg_3.e), arg_3.b.wy, global2[_wgslsmith_index_u32(u_input.c.x, 5u)], arg_3), arg_3.c.x | 1i), ~u_input.e.yxw, !(!global1[_wgslsmith_index_u32(0u, 18u)])), true, ~_wgslsmith_dot_vec3_u32(vec3<u32>(21227u, arg_3.e, arg_0.a.x), vec3<u32>(arg_3.e, 0u, var_0.e)) ^ abs(~arg_3.e)), var_0.c.xy, true, arg_3);
    global4 = -select(vec3<i32>(-1i) * -arg_3.c, countOneBits(vec3<i32>(-2147483647i, 1i, 0i)), global2[_wgslsmith_index_u32(firstTrailingBit(1u) ^ 1u, 5u)]);
    var var_2 = vec4<i32>(-(_wgslsmith_add_i32(22081i, u_input.e.x << (u_input.c.x % 32u)) & abs(arg_3.b.x)), var_0.c.x, countOneBits(~(_wgslsmith_mod_i32(-1i, -28269i) | u_input.a)), func_4(~vec3<u32>(u_input.d, 1u, 119617u) >> ((u_input.c & ~arg_0.a) % vec3<u32>(32u)), func_2(arg_0, Struct_2(arg_3, _wgslsmith_mult_vec2_i32(global4.xz, u_input.b), -502f > arg_1, arg_3), i32(-1i) * -2147483647i, Struct_2(Struct_1(false, vec4<i32>(37988i, u_input.b.x, u_input.e.x, 2147483647i), vec3<i32>(-1i, global4.x, 25297i), false, 0u), _wgslsmith_div_vec2_i32(var_0.b.yz, u_input.b), any(arg_2), Struct_1(false, vec4<i32>(-58212i, global4.x, -3413i, var_0.b.x), arg_3.b.yzy, var_1.a.a, 1u))), Struct_2(var_1.a, -vec2<i32>(var_0.c.x, arg_3.c.x), !(false == global2[_wgslsmith_index_u32(arg_3.e, 5u)]), arg_3), -8474i).x);
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(49761i, 1i, _wgslsmith_mod_i32(arg_3.b.x, 74798i)), vec3<i32>(-(~var_1.b.x), firstLeadingBit(reverseBits(arg_3.c.x)), 59497i));
    return _wgslsmith_clamp_i32(~(-u_input.e.x), var_3.x << (var_0.e % 32u), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 5>();
    global4 = ~u_input.e.xyz;
    let var_0 = Struct_1(false, vec4<i32>(func_1(Struct_3(u_input.c | vec3<u32>(0u, 9878u, 78768u)), 1109f, vec2<bool>(!global2[_wgslsmith_index_u32(68695u, 5u)], !global2[_wgslsmith_index_u32(0u, 5u)]), Struct_1(!global2[_wgslsmith_index_u32(53466u, 5u)], ~vec4<i32>(global4.x, 41651i, u_input.e.x, -16630i), vec3<i32>(u_input.e.x, -1i, 0i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 33196u), 5u)], u_input.d)), firstTrailingBit(min(u_input.b.x, -14125i) & -global4.x), abs(min(1i | u_input.e.x, global4.x)), 0i), u_input.e.xzw, !(!global2[_wgslsmith_index_u32(0u, 5u)]), ~38510u);
    var var_1 = ~var_0.e;
    var var_2 = func_2(Struct_3(min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 37587u), vec3<u32>(var_0.e, u_input.d, u_input.d)) ^ vec3<u32>(1u, 39052u, var_0.e), _wgslsmith_div_vec3_u32(vec3<u32>(17039u, u_input.c.x, u_input.c.x), u_input.c) << (~vec3<u32>(var_0.e, var_0.e, var_0.e) % vec3<u32>(32u)))), Struct_2(Struct_1(false, vec4<i32>(select(-1i, u_input.a, true), i32(-1i) * -21947i, -31497i, _wgslsmith_dot_vec2_i32(vec2<i32>(-14572i, 48103i), vec2<i32>(19940i, 2147483647i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, 26335i, -2147483647i), var_0.c, u_input.e.xzz) >> (~vec3<u32>(var_0.e, u_input.c.x, 44473u) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_add_u32(10516u, 1u)), u_input.b, any(select(vec2<bool>(true, var_0.a), select(vec2<bool>(true, true), vec2<bool>(var_0.d, false), global2[_wgslsmith_index_u32(var_0.e, 5u)]), select(var_0.a, false, global2[_wgslsmith_index_u32(1u, 5u)]))), Struct_1(all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 5u)], var_0.d), vec2<bool>(global2[_wgslsmith_index_u32(59148u, 5u)], true), vec2<bool>(global2[_wgslsmith_index_u32(822u, 5u)], false))), ~(~vec4<i32>(-9867i, 6239i, -21286i, 2147483647i)), u_input.e.yxw, true, u_input.d)), global4.x | u_input.e.x, Struct_2(var_0, -abs(-var_0.b.yx), !(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, var_0.c.x, -1292i, -3647i), var_0.b) > -47759i), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f * _wgslsmith_f_op_f32(global3.x * -1499f)) + 2360f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f - _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -235f), firstTrailingBit(abs(abs(u_input.e.wy))));
}

