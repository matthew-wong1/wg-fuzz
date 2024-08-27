struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: array<bool, 9>;

var<private> global4: array<u32, 7>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = Struct_5((u_input.c >> (_wgslsmith_sub_vec3_u32(~global0[_wgslsmith_index_u32(arg_0, 2u)], global0[_wgslsmith_index_u32(arg_0, 2u)]) % vec3<u32>(32u))) << ((_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(42344u, 2u)], ~vec3<u32>(u_input.b, 56758u, u_input.b)) >> (firstTrailingBit(~vec3<u32>(arg_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 7u)], 7u)], u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~(-57530i)), Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(691f * -590f)))), _wgslsmith_mod_i32(-1i, u_input.a.x), all(select(vec2<bool>(global3[_wgslsmith_index_u32(31414u, 9u)], global3[_wgslsmith_index_u32(15699u, 9u)]), vec2<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 9u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 7u)], 9u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(arg_0, 9u)]))), _wgslsmith_mult_vec4_u32(vec4<u32>(3965u, global4[_wgslsmith_index_u32(u_input.b, 7u)], 91655u, u_input.b), vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(62566u, 7u)], 2322u, u_input.b)) >> (max(vec4<u32>(arg_0, 4294967295u, 1u, u_input.b) >> (vec4<u32>(u_input.b, 45541u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 2488u, u_input.b, u_input.b)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -1504f, -526f, 922f), vec4<f32>(130f, -413f, 624f, 926f)))))), Struct_3(vec3<i32>(-40810i, _wgslsmith_sub_i32(abs(-20404i), -7338i), _wgslsmith_mod_i32(20752i, firstLeadingBit(u_input.d)))));
    var var_1 = !vec4<bool>(!(!global3[_wgslsmith_index_u32(var_0.c.d.x, 9u)]), true, all(!select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(28160u, 9u)], var_0.c.c), vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 9u)]))), true);
    let var_2 = Struct_4(var_0.c, _wgslsmith_f_op_vec2_f32(var_0.c.e.xx * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(-1164f)), var_0.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.e.zy))))), var_1.yxy, firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~var_0.c.d.yy), firstTrailingBit(_wgslsmith_sub_u32(var_0.c.d.x, global4[_wgslsmith_index_u32(4294967295u, 7u)])))));
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -662f)))));
    return vec3<i32>(~var_0.d.a.x, var_3.b, ~(-(~_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(0i, u_input.d)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    let var_0 = select(vec3<bool>(true, any(vec4<bool>(global3[_wgslsmith_index_u32(8337u, 9u)], true, false, arg_2.a.c)) | (128f >= _wgslsmith_f_op_f32(step(arg_1.c.a, 298f))), global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(12569u, arg_2.a.d.x), arg_2.d.x | global4[_wgslsmith_index_u32(u_input.b, 7u)]), 9u)]), vec3<bool>(!arg_0.c, global3[_wgslsmith_index_u32(u_input.b, 9u)], arg_2.d.x != ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(104163u, 2u)], vec3<u32>(arg_2.a.d.x, 76582u, arg_2.a.d.x))), select(select(vec3<bool>(!arg_2.c.x, !arg_0.c, false & arg_0.c), !arg_2.c, true), vec3<bool>(arg_1.c.c, true, arg_0.c), !vec3<bool>(any(vec4<bool>(true, false, true, false)), arg_2.c.x & false, arg_0.d.x == u_input.b)));
    var var_1 = arg_2.a.e.wz;
    var var_2 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_0.d.x, arg_1.c.d.x, 4294967295u), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.c.d.yyw, arg_1.c.d.zyy), vec3<u32>(u_input.b, arg_0.d.x, 1u))) >> (arg_2.a.d.ywy % vec3<u32>(32u)), reverseBits(vec3<u32>(~firstTrailingBit(arg_2.d.x), arg_2.a.d.x, 4294967295u << (u_input.b % 32u))), all(!arg_2.c.yy));
    var var_3 = Struct_5(vec3<i32>(arg_2.a.b, ~(~_wgslsmith_mod_i32(arg_1.c.b, -64629i)), _wgslsmith_mult_i32(u_input.e, 1i)), 22298i, arg_2.a, arg_1.d);
    var var_4 = _wgslsmith_clamp_i32(-1i, var_3.b, _wgslsmith_div_i32(_wgslsmith_mod_i32(29346i, u_input.e), arg_3.a.x)) != -min(2147483647i << (min(var_3.c.d.x, 0u) % 32u), 13444i);
    return ~18277i;
}

fn func_2() -> vec4<f32> {
    let var_0 = false;
    let var_1 = Struct_4(Struct_1(-232f, func_4(Struct_1(_wgslsmith_f_op_f32(2287f * 945f), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), true, vec4<u32>(45423u, 0u, global4[_wgslsmith_index_u32(u_input.b, 7u)], 69758u) & vec4<u32>(1u, 17413u, 0u, u_input.b), vec4<f32>(1f, 1f, 1f, 1f)), Struct_5(func_3(u_input.b), -2147483647i, Struct_1(-277f, -11568i, global3[_wgslsmith_index_u32(u_input.b, 9u)], vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(u_input.b, 7u)], 0u, 4294967295u), vec4<f32>(-1309f, 761f, 1336f, -1128f)), Struct_3(u_input.c)), Struct_4(Struct_1(-357f, u_input.e, var_0, vec4<u32>(global4[_wgslsmith_index_u32(53602u, 7u)], u_input.b, u_input.b, 0u), vec4<f32>(-1338f, 999f, -985f, 490f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -591f) - vec2<f32>(-359f, 1000f)), select(vec3<bool>(var_0, global3[_wgslsmith_index_u32(u_input.b, 9u)], false), vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b, 9u)]), var_0), ~vec2<u32>(global4[_wgslsmith_index_u32(0u, 7u)], u_input.b)), Struct_3(u_input.c)), true, (vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b, u_input.b, u_input.b) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 103583u, 1u), vec4<u32>(0u, global4[_wgslsmith_index_u32(u_input.b, 7u)], 1u, 7847u)) % vec4<u32>(32u))) & (min(vec4<u32>(1u, global4[_wgslsmith_index_u32(1u, 7u)], u_input.b, 101512u), vec4<u32>(32126u, u_input.b, 1u, 94506u)) | vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 7u)], 7u)], 26778u, u_input.b, 82204u)), vec4<f32>(-1205f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1540f, 121f) + -2334f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(737f, -1704f)))), -657f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(775f, -520f)), !select(select(select(vec3<bool>(var_0, true, global3[_wgslsmith_index_u32(u_input.b, 9u)]), vec3<bool>(false, false, false), vec3<bool>(global3[_wgslsmith_index_u32(11866u, 9u)], var_0, true)), select(vec3<bool>(true, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2572u, 7u)], 9u)], true), vec3<bool>(var_0, true, global3[_wgslsmith_index_u32(62431u, 9u)]), false), all(vec3<bool>(false, var_0, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 9u)]))), select(!vec3<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(31425u, 7u)], 9u)], false, false), !vec3<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57146u, 7u)], 9u)], true, var_0), !vec3<bool>(false, false, var_0)), u_input.e <= select(19977i, 2147483647i, var_0)), vec2<u32>(_wgslsmith_sub_u32(~u_input.b, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], 0u), 7u)]), ~61443u) << (min(~vec2<u32>(1u, 58108u), vec2<u32>(_wgslsmith_mult_u32(0u, 1u), 0u)) % vec2<u32>(32u)));
    let var_2 = Struct_3(countOneBits(_wgslsmith_mult_vec3_i32(min(firstLeadingBit(vec3<i32>(1450i, -1i, 21325i)), firstTrailingBit(vec3<i32>(0i, 2147483647i, -1i))), u_input.c)));
    global4 = array<u32, 7>();
    var var_3 = ~countOneBits(var_1.a.d);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-517f, -1000f, var_1.a.e.x, 2574f))), _wgslsmith_f_op_vec4_f32(-var_1.a.e))) - var_1.a.e);
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(-828f, _wgslsmith_f_op_f32(f32(-1f) * -1001f), _wgslsmith_f_op_f32(sign(-840f)), 646f))))) + vec4<f32>(1000f, 617f, _wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_2()).x))));
    var var_1 = Struct_5(min(reverseBits(vec3<i32>(-u_input.c.x, abs(u_input.a.x), func_3(0u).x)), -vec3<i32>(u_input.a.x << (global4[_wgslsmith_index_u32(22520u, 7u)] % 32u), u_input.d, u_input.e)), 1i, Struct_1(_wgslsmith_div_f32(1471f, _wgslsmith_f_op_f32(-var_0.x)), 0i, true, vec4<u32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u) | vec3<u32>(32897u, u_input.b, u_input.b), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 2u)] << (global0[_wgslsmith_index_u32(1u, 2u)] % vec3<u32>(32u))), 7u)], ~(~17855u), 21184u, ~firstLeadingBit(u_input.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -111f, 164f, -1387f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2234f, 595f, 1000f, -1000f)))), Struct_3(-vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 104925i), reverseBits(u_input.e), u_input.d)));
    global1 = var_1.c.b;
    let var_2 = Struct_5(_wgslsmith_div_vec3_i32(func_3(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.c.d.x, global4[_wgslsmith_index_u32(0u, 7u)]), ~global4[_wgslsmith_index_u32(1u, 7u)])), firstLeadingBit(countOneBits(var_1.d.a))), -select(abs(-var_1.b), -u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(1u, 7u)], var_1.c.d.x, 0u, 1u), var_1.c.d) % 32u), _wgslsmith_f_op_f32(var_1.c.a * var_0.x) > var_1.c.e.x), var_1.c, var_1.d);
    global1 = _wgslsmith_dot_vec3_i32(reverseBits(firstTrailingBit(~var_2.a)), -u_input.c);
    return vec2<u32>(40903u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global4 = array<u32, 7>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(675f + 906f) - 846f);
    global0 = array<vec3<u32>, 2>();
    var var_2 = abs(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(12291u, 4294967295u) | vec2<u32>(global4[_wgslsmith_index_u32(u_input.b, 7u)], u_input.b), ~vec2<u32>(0u, u_input.b)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(40059u, 4294967295u)), vec2<u32>(global4[_wgslsmith_index_u32(u_input.b, 7u)], 16227u) << (vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15107u, 7u)], 7u)], 7u)], 1u) % vec2<u32>(32u)))), ~func_1()));
    global3 = array<bool, 9>();
    let var_3 = countOneBits(vec2<u32>(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(11894u, 11741u), 7u)], 4294967295u));
    var var_4 = select(select(!vec2<bool>(5109u != var_2.x, true), !vec2<bool>(global3[_wgslsmith_index_u32(min(1u, 37176u), 9u)], u_input.e >= 0i), false), vec2<bool>(_wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(step(-1242f, -1081f)), select(true, true, global3[_wgslsmith_index_u32(~0u, 9u)]) || any(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 9u)], false), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 9u)]), false))), true);
    var var_5 = !(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.x, var_2.x), 7u)], 7u)], 15326u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.b, global4[_wgslsmith_index_u32(var_2.x, 7u)], 25941u) | vec4<u32>(global4[_wgslsmith_index_u32(30284u, 7u)], u_input.b, 4294967295u, 4294967295u), max(vec4<u32>(var_3.x, var_3.x, 39758u, 227u), vec4<u32>(33024u, 38206u, global4[_wgslsmith_index_u32(u_input.b, 7u)], 1u)))), 9u)] | (select(var_4.x, false, false) || !any(vec3<bool>(false, global3[_wgslsmith_index_u32(var_2.x, 9u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 7u)], 9u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1283f)))), 865f)), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, var_3.x, 4683u), vec4<u32>(u_input.b, var_2.x, u_input.b, global4[_wgslsmith_index_u32(var_3.x, 7u)]))) << (vec4<u32>(~(~u_input.b), var_3.x, ~_wgslsmith_mult_u32(4174u, var_3.x), u_input.b) % vec4<u32>(32u)), 2147483647i);
}

