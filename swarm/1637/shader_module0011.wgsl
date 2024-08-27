struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: array<u32, 21>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<i32>(24384i, 7762i, -34161i, -61492i), 3526i, 302f, 236f), Struct_1(vec4<i32>(-22827i, 7400i, 2147483647i, -77693i), 10743i, -445f, -724f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = 1299f;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-627f + _wgslsmith_f_op_f32(trunc(1000f))), vec2<bool>(true && any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), vec4<u32>(~(~28239u), ~4294967295u, ~abs(4294967295u), 38309u), true, ~vec2<u32>(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x ^ 47615u, firstLeadingBit(u_input.c.x)), 21u)], 21u)]));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-403f, 261f)) + _wgslsmith_div_f32(var_1.a, var_1.a)) - _wgslsmith_div_f32(-457f, _wgslsmith_f_op_f32(f32(-1f) * -105f)))), select(var_1.b, vec2<bool>(all(vec3<bool>(true, true, true)), true && !var_1.d), var_1.d), ~firstLeadingBit(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(31833u, 21u)], u_input.c.x, 6214u) >> (var_1.c % vec4<u32>(32u))), firstLeadingBit(select(-18031i, -2841i, var_1.b.x)) != -18960i, u_input.c);
    let var_3 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(~var_1.c.x, 6u)], firstTrailingBit(_wgslsmith_mod_i32(reverseBits(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.a.x, -45681i, -2147483647i, u_input.a.x), global2.a.a))), var_1.a, -372f), Struct_1(vec4<i32>(-global2.b.a.x, -15565i, u_input.a.x, 8573i) >> (var_1.c % vec4<u32>(32u)), global2.b.b, _wgslsmith_f_op_f32(abs(-217f)), _wgslsmith_div_f32(1239f, _wgslsmith_div_f32(var_1.a, -280f))));
    global0 = array<vec4<i32>, 6>();
    return -(u_input.a.x << ((~min(44135u, u_input.c.x) >> (~u_input.c.x % 32u)) % 32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> bool {
    let var_0 = ~vec3<i32>(global2.b.a.x, select(firstLeadingBit(_wgslsmith_mult_i32(-27214i, global2.b.a.x)), arg_3.a.b, arg_0.x), firstTrailingBit(1i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3.b.d, arg_3.c.d))) + _wgslsmith_f_op_vec2_f32(-arg_2.zw))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -834f))), arg_2.zx)));
    let var_2 = -534f;
    var var_3 = Struct_1(vec4<i32>(-26878i, func_3(), u_input.a.x, _wgslsmith_dot_vec2_i32(min(firstLeadingBit(vec2<i32>(0i, 3140i)), vec2<i32>(-2147483647i, -20569i)), ~(u_input.a.zz >> (vec2<u32>(11841u, 9139u) % vec2<u32>(32u))))), max(global2.a.a.x, _wgslsmith_dot_vec2_i32(reverseBits(abs(u_input.a.zz)), global2.a.a.yz)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2)) - _wgslsmith_f_op_f32(-arg_3.b.d)))), 686f));
    global0 = array<vec4<i32>, 6>();
    return false;
}

fn func_4(arg_0: bool) -> Struct_3 {
    let var_0 = ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, ~(-65342i), 3776i), -(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 21u)], 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 6u)]) >> (abs(vec4<u32>(1702u, 29665u, 4294967295u, u_input.c.x)) % vec4<u32>(32u))));
    let var_1 = Struct_5(-119f, vec2<bool>(true, true), vec4<u32>(72087u, select(reverseBits(~5838u), u_input.c.x >> (reverseBits(4294967295u) % 32u), arg_0), ~(~4294967295u), global1[_wgslsmith_index_u32(select(u_input.c.x, ~(~28181u), select(global1[_wgslsmith_index_u32(29681u, 21u)], 1u, arg_0) > (global1[_wgslsmith_index_u32(u_input.c.x, 21u)] << (4294967295u % 32u))), 21u)]), func_3() >= (~firstLeadingBit(global2.a.a.x) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(10292u, 21u)], 36871u), vec2<u32>(19969u, 93922u)), ~u_input.c.x) % 32u)), ~vec2<u32>(abs(~1u), 0u));
    let var_2 = min(u_input.a, -_wgslsmith_add_vec3_i32(vec3<i32>(var_0, -global2.b.a.x, i32(-1i) * -2147483647i), u_input.a));
    let var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-4664i, var_0) >> (u_input.c % vec2<u32>(32u)), global2.b.a.wx) & 2147483647i, abs((var_0 ^ _wgslsmith_mod_i32(-3487i, var_0)) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, var_0), vec3<i32>(u_input.b, u_input.b, var_0))));
    let var_4 = select(var_1.b, select(var_1.b, vec2<bool>(firstLeadingBit(var_1.e.x) == 4294967295u, select(any(vec3<bool>(false, arg_0, arg_0)), var_2.x <= -41606i, select(false, var_1.b.x, arg_0))), select(var_1.b, !select(var_1.b, vec2<bool>(var_1.b.x, arg_0), arg_0), vec2<bool>(var_1.c.x < u_input.c.x, true))), arg_0 | var_1.b.x);
    return Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(max(4611i, 11932i), 1i, global2.b.b, ~21249i), global0[_wgslsmith_index_u32(~(u_input.c.x & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57881u, 21u)], 21u)]), 6u)]), _wgslsmith_dot_vec3_i32(min(max(u_input.a, vec3<i32>(1i, global2.b.a.x, -2147483647i)), vec3<i32>(var_0, global2.a.a.x, -1i)), var_2), _wgslsmith_f_op_f32(global2.b.c - -808f), _wgslsmith_f_op_f32(step(-444f, _wgslsmith_div_f32(global2.a.d, _wgslsmith_f_op_f32(global2.a.d - -297f))))), global2.b);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = u_input.c.x;
    var var_1 = arg_2.a.a;
    var var_2 = func_4(any(vec3<bool>(func_2(vec2<bool>(false, false), vec3<bool>(false, true, false), vec4<f32>(-255f, 1000f, -207f, 1468f), arg_2) & true, false, _wgslsmith_dot_vec3_i32(vec3<i32>(-24505i, global2.b.b, global2.a.a.x), vec3<i32>(arg_0, 12269i, arg_1.b)) >= 1i)));
    var var_3 = vec2<bool>(false, (var_2.a.d <= 159f) & any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1646f * 691f))), _wgslsmith_f_op_f32(f32(-1f) * -1017f), 450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -728f)) + arg_2.d.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.c), _wgslsmith_f_op_f32(f32(-1f) * -2064f)), arg_1.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.d * var_2.a.d)))) * vec4<f32>(arg_1.d, arg_1.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1116f + arg_2.c.c))), -399f)));
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global1 = array<u32, 21>();
    var var_0 = 54276u;
    let var_1 = reverseBits(global1[_wgslsmith_index_u32(u_input.c.x, 21u)]);
    global0 = array<vec4<i32>, 6>();
    let var_2 = Struct_4(any(vec2<bool>(true, any(vec3<bool>(false, true, true)))), false);
    return func_1(11854i, arg_1.e, Struct_2(func_4(!any(vec4<bool>(var_2.a, false, var_2.a, true))).b, func_4(all(vec3<bool>(true, true, true))).b, Struct_1(select(vec4<i32>(23486i, global2.b.a.x, arg_0, arg_1.e.a.x), global0[_wgslsmith_index_u32(0u, 6u)], false) & reverseBits(global0[_wgslsmith_index_u32(u_input.c.x, 6u)]), global2.a.b, _wgslsmith_div_f32(809f, func_4(var_2.a).b.c), global2.b.c), global2.a, Struct_1(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(29645u, 6u)] ^ global2.a.a, vec4<i32>(u_input.a.x, 41110i, arg_1.b.a.x, u_input.a.x)), arg_1.d.a.x, _wgslsmith_f_op_f32(659f + func_1(109085i, global2.a, arg_1).c), -1384f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(~(-global2.a.a.x), Struct_2(func_1(global2.b.b, Struct_1(vec4<i32>(29804i, u_input.a.x, u_input.a.x, u_input.b), -13343i, 1000f, -1000f), Struct_2(global2.a, global2.a, Struct_1(vec4<i32>(-2374i, global2.b.a.x, -40758i, u_input.a.x), 0i, global2.b.d, global2.b.d), global2.b, global2.a)), func_1(u_input.a.x, global2.a, Struct_2(global2.a, global2.b, global2.a, Struct_1(vec4<i32>(u_input.a.x, 40497i, -2752i, -23635i), global2.b.b, 474f, -433f), Struct_1(vec4<i32>(u_input.b, global2.b.b, global2.a.b, global2.a.b), global2.b.b, global2.b.c, global2.b.d))), Struct_1(reverseBits(vec4<i32>(global2.b.b, 1i, -780i, u_input.b)), global2.a.a.x, _wgslsmith_f_op_f32(-379f - -453f), -588f), func_1(1i, Struct_1(vec4<i32>(global2.a.a.x, u_input.b, u_input.a.x, -1i), u_input.b, global2.b.d, global2.a.d), Struct_2(Struct_1(vec4<i32>(u_input.a.x, global2.b.b, global2.b.a.x, 0i), -63734i, 662f, global2.a.d), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 6u)], -1i, global2.b.d, global2.a.d), global2.a, global2.b, Struct_1(vec4<i32>(0i, global2.a.b, global2.a.a.x, 0i), u_input.b, -750f, global2.a.c))), func_1(0i, global2.b, Struct_2(global2.a, Struct_1(global0[_wgslsmith_index_u32(1u, 6u)], -13711i, -1000f, 546f), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 6u)], global2.a.a.x, -891f, 1422f), Struct_1(vec4<i32>(-31515i, global2.b.b, 20613i, -11516i), global2.b.b, -919f, global2.a.d), global2.a)))), global2.a, func_1(abs(~u_input.a.x), Struct_1(vec4<i32>(abs(global2.b.a.x), global2.a.b, global2.b.a.x, global2.b.a.x), ~(-2578i), global2.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.d) - _wgslsmith_f_op_f32(global2.a.d + global2.b.d))), Struct_2(func_5(_wgslsmith_mult_i32(1i, 2147483647i), Struct_2(global2.b, Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], -6796i, global2.a.c, 1000f), Struct_1(vec4<i32>(16432i, u_input.b, u_input.a.x, 2147483647i), -1i, global2.b.d, -482f), Struct_1(vec4<i32>(2147483647i, -11598i, 18931i, 6359i), global2.a.a.x, 128f, -830f), Struct_1(vec4<i32>(45415i, u_input.a.x, -2147483647i, global2.b.b), 2147483647i, global2.b.c, global2.b.c))), Struct_1(vec4<i32>(u_input.a.x, -11100i, 2147483647i, -2147483647i), 2147483647i, func_5(global2.a.b, Struct_2(global2.b, Struct_1(vec4<i32>(u_input.a.x, -32513i, global2.b.b, 2147483647i), -1i, global2.b.d, 792f), global2.a, Struct_1(vec4<i32>(-1i, global2.a.b, 0i, 70137i), -2147483647i, 340f, global2.b.c), Struct_1(vec4<i32>(u_input.b, 1i, -2147483647i, 7723i), global2.b.b, global2.b.d, global2.a.d))).c, 1020f), Struct_1(vec4<i32>(global2.b.a.x, u_input.a.x, u_input.b, global2.a.a.x), reverseBits(-814i), global2.b.c, _wgslsmith_f_op_f32(-263f * 697f)), global2.b, func_1(_wgslsmith_div_i32(-1i, 1735i), Struct_1(vec4<i32>(u_input.b, -1i, 2147483647i, global2.a.b), u_input.b, global2.b.c, global2.b.c), Struct_2(global2.b, global2.a, Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35319u, 21u)], 6u)], 14075i, global2.a.c, 538f), Struct_1(vec4<i32>(-20428i, global2.b.a.x, -2147483647i, -5651i), -2147483647i, -1000f, 1150f), global2.b)))), global2.a, global2.a);
    var var_1 = global2.a;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.d)) - 403f))));
    let var_3 = vec2<bool>(true, true);
    var var_4 = func_4(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1263f))) < _wgslsmith_f_op_f32(round(-292f))));
    var var_5 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(692f))));
    var_1 = func_1(var_0.a.b, Struct_1(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(20832u ^ u_input.c.x, 21u)], 6u)], abs(_wgslsmith_div_i32(min(u_input.a.x, -24038i), global2.a.a.x & var_4.b.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(753f)))), -756f), Struct_2(var_4.b, var_4.b, var_0.a, func_4(!(var_3.x | false)).b, global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1257f, global2.a.d, var_0.b.d))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1911f, -1000f, var_2)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.c, var_0.e.c, -1000f))))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 1u, 4294967295u, 53077u), abs(vec4<u32>(43695u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 21u)], 0u, u_input.c.x)), var_3.x), vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11244u, 21u)], 21u)], 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 1u, 0u), vec4<u32>(41580u, u_input.c.x, u_input.c.x, 4294967295u)), 53242u)) | ~vec4<u32>(u_input.c.x, ~global1[_wgslsmith_index_u32(u_input.c.x, 21u)], reverseBits(29460u), u_input.c.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.a.d, var_0.d.c, var_0.a.d))))))));
}

