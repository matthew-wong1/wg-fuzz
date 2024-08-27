struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(i32(-2147483648), i32(-2147483648), 0i, 1i, -62216i, 0i, 0i, 98370i, -12254i, i32(-2147483648), 11242i, 0i, i32(-2147483648), -40168i, 1i, -44523i, -25422i, -27095i, 75720i, 1i, 5310i, -9646i, -23343i, 2147483647i, 1i, -8518i, 33125i, -70030i, -71566i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = vec3<u32>(0u, ~4294967295u, 0u);
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, arg_0), vec3<u32>(u_input.a.x, 78726u, 0u)), 29u)], ~_wgslsmith_clamp_i32(1i, 1i, u_input.d.x)), _wgslsmith_clamp_i32(53553i, _wgslsmith_mod_i32(12369i, 16728i << (var_0.x % 32u)), 1i)), 2147483647i, _wgslsmith_div_i32(u_input.d.x, -4843i) << (select(arg_0, arg_0, true) % 32u));
    var var_2 = arg_3;
    return vec4<bool>(!select(true, true || any(arg_2), all(!arg_2)), any(arg_3.a.a.yw), any(select(arg_3.a.a.yw, !(!arg_3.a.a.zy), ~u_input.a.x == ~var_0.x)), all(select(arg_3.a.a.wx, select(!vec2<bool>(arg_2.x, arg_3.a.a.x), arg_3.a.a.xx, arg_2.x), !vec2<bool>(var_2.a.a.x, false))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(~u_input.a.x), ~u_input.a.x), max(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), max(vec2<u32>(u_input.a.x, 78612u), u_input.a)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(u_input.a, u_input.a)))), Struct_4(_wgslsmith_clamp_vec2_i32(u_input.d.wz, -(vec2<i32>(29169i, u_input.e.x) ^ u_input.d.zw), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.d.x), reverseBits(u_input.e))), u_input.d.zxz, ~(~(~u_input.a)), _wgslsmith_clamp_vec2_u32(~u_input.a | u_input.a, vec2<u32>(u_input.a.x, 25372u), u_input.a), ~abs(vec3<i32>(-2147483647i, u_input.d.x, -2147483647i)) << (vec3<u32>(~0u, ~93191u, u_input.a.x) % vec3<u32>(32u))));
    var var_1 = u_input.e ^ select(var_0.b.b.xx, vec2<i32>(-19908i ^ var_0.b.a.x, 7164i), true);
    let var_2 = !select(arg_0.x, arg_0.x && true, !(!arg_0.x));
    let var_3 = Struct_4(abs(u_input.e ^ abs(_wgslsmith_mod_vec2_i32(u_input.d.yz, vec2<i32>(u_input.e.x, var_1.x)))), vec3<i32>(global0[_wgslsmith_index_u32(~var_0.a.x, 29u)], firstLeadingBit(var_0.b.b.x), global0[_wgslsmith_index_u32((var_0.b.c.x << (var_0.a.x % 32u)) ^ (u_input.a.x & u_input.a.x), 29u)] & -7747i), var_0.a, vec2<u32>(4294967295u, ~var_0.a.x), countOneBits(-_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.www, vec3<i32>(global0[_wgslsmith_index_u32(81650u, 29u)], u_input.d.x, var_0.b.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.e.x, global0[_wgslsmith_index_u32(4294967295u, 29u)], -13966i), vec3<i32>(-1i, var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])))));
    var_1 = ~reverseBits(_wgslsmith_mult_vec2_i32(var_3.b.zz, firstTrailingBit(_wgslsmith_sub_vec2_i32(var_0.b.a, vec2<i32>(0i, 2147483647i)))));
    return Struct_1(select(select(!func_3(u_input.a.x, vec2<i32>(4061i, 0i), arg_0.zy, Struct_3(Struct_1(vec4<bool>(arg_0.x, arg_0.x, var_2, arg_0.x)), vec4<f32>(-1000f, 782f, -1101f, -816f))), select(vec4<bool>(true, true, true, true), func_3(35722u, vec2<i32>(17816i, var_1.x), arg_0.xx, Struct_3(Struct_1(vec4<bool>(var_2, true, var_2, var_2)), vec4<f32>(-507f, -1154f, 146f, 1104f))), arg_0.x), (var_3.a.x & var_3.b.x) < select(-2147483647i, -2147483647i, true)), select(!(!vec4<bool>(var_2, true, false, arg_0.x)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0.x, false, false), true), var_2), select(func_3(25396u, -var_3.e.zz, select(vec2<bool>(false, false), arg_0.xz, true), Struct_3(Struct_1(vec4<bool>(true, true, true, false)), vec4<f32>(1269f, -558f, -273f, -1376f))), vec4<bool>(true, func_3(var_0.b.d.x, vec2<i32>(global0[_wgslsmith_index_u32(var_3.d.x, 29u)], 2147483647i), arg_0.yz, Struct_3(Struct_1(vec4<bool>(false, true, var_2, arg_0.x)), vec4<f32>(-337f, -326f, -1010f, -806f))).x, all(vec3<bool>(true, var_2, arg_0.x)), var_2), !func_3(var_3.d.x, var_0.b.b.yz, vec2<bool>(arg_0.x, false), Struct_3(Struct_1(vec4<bool>(true, arg_0.x, false, var_2)), vec4<f32>(-1048f, 899f, -378f, 1588f))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    var var_0 = vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 58455u, u_input.a.x), vec3<u32>(1u, 4294967295u, 1u))), ~(~vec3<u32>(0u, 0u, u_input.a.x))), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(38155u, u_input.a.x, 28562u), vec3<u32>(u_input.a.x, 60381u, u_input.a.x)))), 29u)], countOneBits(-1i), 34872i, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mod_i32(~2147483647i, arg_0.x)), global0[_wgslsmith_index_u32(66654u, 29u)]));
    global0 = array<i32, 29>();
    return func_2(!(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_1, arg_1), arg_1), !vec3<bool>(arg_1, false, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 1u), u_input.a.x)), _wgslsmith_clamp_u32(68687u, _wgslsmith_add_u32(65069u >> (u_input.a.x % 32u), u_input.a.x) >> (0u % 32u), 322u));
    var var_1 = u_input.d.zwz;
    var_1 = vec3<i32>(10461i, _wgslsmith_add_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(var_0, u_input.a.x, var_0, var_0)) % 32u), 29u)], _wgslsmith_mod_i32(1i, var_1.x) << (~0u % 32u)), -1141i), u_input.b);
    let var_2 = ~var_1.x;
    var_1 = _wgslsmith_sub_vec3_i32(~(~u_input.d.xyx), abs(vec3<i32>((var_2 | global0[_wgslsmith_index_u32(u_input.a.x, 29u)]) ^ abs(66790i), reverseBits(-var_1.x), ~firstTrailingBit(21378i))));
    return ~_wgslsmith_sub_u32(var_0, firstLeadingBit(1u)) | ~(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(global0[_wgslsmith_index_u32(1u, 29u)], 20781i, global0[_wgslsmith_index_u32(func_4(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), u_input.a.x >= 9875u), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), func_1(vec2<i32>(8960i, -14424i), false, -2820f), vec3<bool>(true, true, true), false, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(733f, -1363f)))), vec3<f32>(1000f, _wgslsmith_f_op_f32(582f + -1326f), _wgslsmith_div_f32(-538f, -250f))), 29u)], (u_input.d.x << (~u_input.a.x % 32u)) << (u_input.a.x % 32u));
    var var_1 = Struct_2(func_2(func_2(!func_2(vec3<bool>(false, false, false)).a.yyz).a.wxy), func_1(vec2<i32>(min(u_input.b, ~(-37296i)), _wgslsmith_dot_vec4_i32(~u_input.d, ~u_input.d)), !((-28409i == u_input.c) & any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(779f * 1309f), _wgslsmith_f_op_f32(-326f * 1000f))))), func_1(~_wgslsmith_clamp_vec2_i32(u_input.e, vec2<i32>(-36288i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(32056u, 29u)], var_0.x)) & (countOneBits(u_input.e) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(1u, 14956u, u_input.a.x, u_input.a.x)) == ~_wgslsmith_clamp_u32(0u, u_input.a.x, 123795u), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-565f, 1206f)) + -345f))).a.xzz, (_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.e, var_0.yw), -vec2<i32>(global0[_wgslsmith_index_u32(21262u, 29u)], 2147483647i)) < -6786i) & select(func_1(vec2<i32>(u_input.c, 5967i), true, -1673f).a.x && true, -u_input.d.x > (22859i ^ u_input.c), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1603f - -775f), _wgslsmith_f_op_f32(1052f - 1204f))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(684f)))), _wgslsmith_f_op_f32(sign(-1129f)))));
    let var_2 = var_1.b;
    var var_3 = Struct_4(min(-vec2<i32>(~var_0.x, -12565i >> (u_input.a.x % 32u)), ~vec2<i32>(0i, 8233i)), var_0.wzw, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4842u, 1u, 0u, 6847u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4929u)) ^ (~u_input.a.x | abs(19632u)), ~min(firstLeadingBit(1u), 4294967295u)), _wgslsmith_add_vec2_u32(u_input.a, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 2530u))), u_input.d.yzx);
    let var_4 = var_1.c.zy;
    let var_5 = vec4<bool>(true, var_2.a.x, var_2.a.x, true);
    var_1 = Struct_2(func_2(vec3<bool>(all(vec2<bool>(true, var_5.x)), func_3(var_3.c.x, ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], var_3.e.x), var_5.yw, Struct_3(var_1.b, vec4<f32>(var_1.e.x, 188f, var_1.e.x, var_1.e.x))).x, !var_5.x)), func_1(vec2<i32>(-1i, global0[_wgslsmith_index_u32(func_4(!vec4<bool>(var_2.a.x, false, false, var_2.a.x), Struct_2(Struct_1(vec4<bool>(true, var_1.d, false, false)), var_1.a, vec3<bool>(var_2.a.x, true, var_1.c.x), false, var_1.e), _wgslsmith_div_vec3_f32(vec3<f32>(-904f, var_1.e.x, var_1.e.x), vec3<f32>(853f, 828f, -262f))), 29u)]), var_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e.x, var_1.e.x) - _wgslsmith_f_op_f32(abs(var_1.e.x))))), select(func_3(~var_3.d.x, ~var_0.yy | -vec2<i32>(var_0.x, var_0.x), vec2<bool>(false, !var_4.x), Struct_3(Struct_1(vec4<bool>(var_1.b.a.x, false, true, var_2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, 933f, 740f, -562f)))).zwx, var_5.yyw, var_2.a.x | all(func_2(vec3<bool>(true, var_2.a.x, var_1.b.a.x)).a)), var_4.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.e)) - vec2<f32>(var_1.e.x, 125f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, -453f)))))), true)));
    let var_6 = 300f;
    let var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x))))) - _wgslsmith_div_f32(-1206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-956f + var_1.e.x))) + _wgslsmith_f_op_f32(f32(-1f) * -2095f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.x, _wgslsmith_mult_u32(func_4(vec4<bool>(var_3.e.x == 1i, func_1(vec2<i32>(0i, u_input.b), var_5.x, 1000f).a.x, var_2.a.x, all(var_1.a.a)), Struct_2(var_1.b, Struct_1(var_2.a), vec3<bool>(true, var_1.d, var_2.a.x), var_5.x & true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.e.x, 1423f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-797f, var_7, var_1.e.x)))), var_3.c.x), u_input.d, _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(_wgslsmith_dot_vec3_i32(-var_3.e, firstTrailingBit(u_input.d.wwx)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-15598i, var_0.x), var_3.a.x, -2147483647i << (u_input.a.x % 32u)), -63352i, u_input.e.x)), 17794u);
}

