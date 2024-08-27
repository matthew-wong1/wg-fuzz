struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13613u;

var<private> global1: array<Struct_5, 1>;

var<private> global2: array<i32, 21> = array<i32, 21>(11758i, -1i, 1i, 0i, 28744i, 1i, i32(-2147483648), 1i, -6516i, i32(-2147483648), i32(-2147483648), -8377i, 1i, i32(-2147483648), 2147483647i, -32165i, 33863i, 5595i, 1i, 2147483647i, 1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>(true | (!any(vec3<bool>(true, false, true)) && any(vec3<bool>(false, false, true))), select(false, false | any(vec4<bool>(true, true, true, false)), true) || (_wgslsmith_f_op_f32(-3062f + 1079f) < _wgslsmith_f_op_f32(trunc(1176f))));
    global2 = array<i32, 21>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(f32(-1f) * -1327f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -224f)))));
    global0 = _wgslsmith_add_u32(~(~63153u), ~u_input.c.x);
    let var_2 = true;
    return _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e, u_input.e, -1i, -1i) << (vec4<u32>(firstTrailingBit(0u), reverseBits(u_input.a), abs(4294967295u), u_input.d) % vec4<u32>(32u)), ~countOneBits(firstLeadingBit(vec4<i32>(0i, global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(27710u, 21u)], -2147483647i)))) << (_wgslsmith_add_u32(11821u, ~min(_wgslsmith_clamp_u32(u_input.d, u_input.b.x, 4294967295u), firstLeadingBit(u_input.a))) % 32u);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = Struct_3(arg_3.b, arg_3.d, _wgslsmith_f_op_f32(round(-112f)), arg_3.b);
    let var_1 = arg_2.a;
    let var_2 = !var_0.b.e;
    global2 = array<i32, 21>();
    var var_3 = Struct_3(var_0.d, Struct_1(!var_0.b.a, !var_0.d.e, arg_3.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1155f))) * _wgslsmith_f_op_f32(max(arg_2.a.b, _wgslsmith_f_op_f32(sign(-980f))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), var_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.a.c)))), Struct_1(arg_3.b.a, var_0.b.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1476f) * -142f))), 769f, !select(vec2<bool>(var_0.d.b.x, false), !vec2<bool>(arg_3.d.e.x, arg_3.d.b.x), true)));
    return !var_3.d.e;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_3 {
    global2 = array<i32, 21>();
    let var_0 = Struct_4(arg_1, arg_1.a, ~_wgslsmith_add_u32(52999u, countOneBits(~0u)));
    global1 = array<Struct_5, 1>();
    let var_1 = func_4(_wgslsmith_div_u32(0u, u_input.d), _wgslsmith_sub_vec3_i32(vec3<i32>(func_3(), select(arg_1.a, 22469i, arg_0.a.x), ~var_0.a.a) & vec3<i32>(var_0.b, u_input.e, ~arg_1.a), abs(vec3<i32>(u_input.e, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, 1i, 1i), vec3<i32>(u_input.e, global2[_wgslsmith_index_u32(var_0.c, 21u)], arg_1.a))))), Struct_4(var_0.a, arg_1.a, 75193u), Struct_3(arg_0, Struct_1(vec3<bool>(true, all(vec4<bool>(true, arg_0.b.x, arg_0.e.x, true)), false), arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-750f)))), _wgslsmith_f_op_f32(round(-704f)), select(vec2<bool>(false, true), !vec2<bool>(arg_0.b.x, false), arg_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.b, var_0.a.b), _wgslsmith_f_op_f32(-arg_0.c))))), arg_0));
    var var_2 = arg_0;
    return Struct_3(arg_0, arg_0, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(sign(-2322f))), Struct_1(select(!(!vec3<bool>(var_1.x, true, false)), var_2.a, var_2.a), select(select(func_4(67938u, vec3<i32>(arg_1.a, var_0.a.a, arg_1.a), Struct_4(Struct_2(-2147483647i, -333f), u_input.e, var_0.c), Struct_3(Struct_1(var_2.a, arg_0.b, arg_0.d, var_0.a.b, var_2.a.xy), Struct_1(vec3<bool>(var_2.e.x, var_1.x, arg_0.a.x), vec2<bool>(arg_0.a.x, var_1.x), var_0.a.b, arg_0.c, arg_0.b), var_2.c, arg_0)), !var_1, true), var_1, select(vec2<bool>(true, true), vec2<bool>(true, true), var_2.b)), _wgslsmith_f_op_f32(-arg_0.c), 1942f, vec2<bool>(true, true)));
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    let var_0 = func_2(func_2(arg_3.b, Struct_2(_wgslsmith_sub_i32(u_input.e, max(8815i, 2147483647i)), arg_2.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-443f, arg_2.d), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(670f, 1000f), vec2<f32>(-422f, -1690f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1273f, arg_2.d) + vec2<f32>(951f, arg_3.d.c)), vec2<f32>(arg_2.c, arg_3.d.d))))).b, Struct_2(-2147483647i, -253f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(784f, arg_2.c) + vec2<f32>(1594f, -586f))) * vec2<f32>(_wgslsmith_f_op_f32(max(arg_3.b.c, 393f)), -1912f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2460f, -584f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, arg_2.d)))))));
    global2 = array<i32, 21>();
    let var_1 = vec2<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1503f))));
    return u_input.c.x;
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = countOneBits(_wgslsmith_clamp_i32(~reverseBits(global2[_wgslsmith_index_u32(min(86111u, u_input.d), 21u)]), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(func_5(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), countOneBits(global2[_wgslsmith_index_u32(u_input.d, 21u)]), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), arg_0, 337f, vec2<bool>(false, true)), func_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), arg_0, -556f, vec2<bool>(false, true)), Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 21u)], -646f), vec2<f32>(arg_0, 440f))), 21u)], -2147483647i), -u_input.e | min(u_input.e ^ global2[_wgslsmith_index_u32(15529u, 21u)], 1i)));
    let var_1 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-12221i, -2147483647i, u_input.e, u_input.e), vec4<i32>(global2[_wgslsmith_index_u32(6026u, 21u)], u_input.e, global2[_wgslsmith_index_u32(u_input.d, 21u)], -30350i))), -vec4<i32>(u_input.e, -1i, 1i, -18731i)), _wgslsmith_clamp_vec4_i32(~max(vec4<i32>(u_input.e, -8539i, u_input.e, u_input.e), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], global2[_wgslsmith_index_u32(7775u, 21u)], -2147483647i, -5929i)), min(vec4<i32>(-1i, -2147483647i, 2147483647i, global2[_wgslsmith_index_u32(u_input.d, 21u)]), _wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(69690u, 21u)], 1i, 0i, 18949i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 21u)], -2147483647i, 19036i, global2[_wgslsmith_index_u32(u_input.b.x, 21u)]))), (vec4<i32>(-36800i, u_input.e, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)]) & vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 21u)], 16082i, 2147483647i, u_input.e)) & (vec4<i32>(5980i, -1i, -12766i, -2147483647i) ^ vec4<i32>(u_input.e, 2147483647i, 2147483647i, global2[_wgslsmith_index_u32(4294967295u, 21u)]))));
    let var_2 = Struct_2(2147483647i, arg_0);
    var_0 = select(-u_input.e, firstLeadingBit(select(_wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(u_input.e, u_input.e)), select(_wgslsmith_add_i32(u_input.e, -26620i), firstLeadingBit(var_2.a), true), !any(vec3<bool>(false, true, true)))), select(true, all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), func_2(Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true), -2169f, arg_0, vec2<bool>(false, true)), var_2, vec2<f32>(-886f, -1127f)).d.a, vec3<bool>(false, false, true))), false));
    var var_3 = vec3<bool>(false, true, all(vec4<bool>(true, !select(true, true, true), true, true)));
    return select(func_4(~((1u & u_input.d) >> (u_input.b.x % 32u)), var_1.yxx, Struct_4(Struct_2(firstLeadingBit(-19482i), 1f), 1218i, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22257u, u_input.a, 1u), u_input.b), 26062u, 5710u)), func_2(Struct_1(select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(var_3.x, false, false)), !var_3.xy, arg_0, _wgslsmith_f_op_f32(-arg_0), !var_3.zz), Struct_2(-13902i, _wgslsmith_f_op_f32(-666f * var_2.b)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -691f), var_2.b))), vec2<bool>(all(vec3<bool>(var_3.x, true, var_3.x)), var_3.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)) & ~vec4<u32>(u_input.d, u_input.c.x, u_input.d, 37475u), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, u_input.d, 1u), vec4<u32>(16918u, 57676u, 477u, u_input.d)), reverseBits(vec4<u32>(0u, 35021u, u_input.a, u_input.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(70562u, u_input.c.x, 0u, 28710u), vec4<u32>(u_input.a, u_input.c.x, u_input.a, 0u)))) > _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.d, 78108u, u_input.d)), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 0u, u_input.c.x), vec4<u32>(u_input.a, u_input.c.x, 8864u, 66672u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, all(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), false)), true, true);
    global0 = 0u;
    var var_1 = _wgslsmith_sub_vec3_u32(~(select(~u_input.b, u_input.b, vec3<bool>(var_0.x, var_0.x, var_0.x)) | _wgslsmith_mod_vec3_u32(u_input.b & u_input.b, ~vec3<u32>(1u, 51522u, u_input.a))), u_input.b);
    let var_2 = !func_1(-1046f);
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~var_1.x, u_input.a), 21u)], -1i, func_3(), func_3()), _wgslsmith_add_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-22167i, -1i, global2[_wgslsmith_index_u32(2355u, 21u)], -2147483647i), vec4<i32>(18908i, global2[_wgslsmith_index_u32(14111u, 21u)], u_input.e, u_input.e)) ^ ~vec4<i32>(-58236i, 1i, global2[_wgslsmith_index_u32(4294967295u, 21u)], u_input.e)), -(~vec4<i32>(2147483647i, 0i, 45600i, global2[_wgslsmith_index_u32(var_1.x, 21u)])) << (reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 120028u, var_1.x, 15542u), vec4<u32>(86727u, 34114u, 81840u, 61108u))) % vec4<u32>(32u))));
    global1 = array<Struct_5, 1>();
    var_1 = vec3<u32>(var_1.x, u_input.a ^ 0u, func_5(func_2(Struct_1(!var_0.yzw, vec2<bool>(false, var_0.x), _wgslsmith_div_f32(364f, -129f), -1045f, !vec2<bool>(var_2.x, var_0.x)), Struct_2(global2[_wgslsmith_index_u32(u_input.a, 21u)], -706f), vec2<f32>(_wgslsmith_f_op_f32(1000f - 774f), _wgslsmith_f_op_f32(sign(-792f)))).b.e, ~_wgslsmith_dot_vec2_i32(var_3.zx, vec2<i32>(u_input.e, var_3.x) & vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(53004u, 21u)])), func_2(func_2(func_2(Struct_1(var_0.ywz, var_2, 1000f, -1000f, vec2<bool>(var_0.x, true)), Struct_2(13874i, 684f), vec2<f32>(-454f, 1070f)).b, Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 21u)], 1000f), vec2<f32>(-275f, -409f)).a, Struct_2(select(global2[_wgslsmith_index_u32(10577u, 21u)], 0i, true), -858f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(647f, 345f)))))).a, func_2(Struct_1(!var_0.wyz, vec2<bool>(true, false), func_2(Struct_1(vec3<bool>(var_2.x, var_0.x, var_2.x), var_0.wy, 594f, -558f, var_0.xw), Struct_2(-19807i, 643f), vec2<f32>(-1047f, 680f)).d.c, 2220f, !var_2), Struct_2(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 21u)], u_input.e), _wgslsmith_f_op_f32(step(1391f, -1377f))), vec2<f32>(-201f, _wgslsmith_f_op_f32(trunc(698f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(-1i, _wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(~u_input.d, 21u)])), -2147483647i, -(~var_3));
}

