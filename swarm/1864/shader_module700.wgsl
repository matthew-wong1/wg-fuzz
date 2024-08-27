struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<Struct_4, 29>;

var<private> global2: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 4294967295u), vec2<u32>(16997u, 15835u), vec2<u32>(6288u, 1u), vec2<u32>(1u, 0u), vec2<u32>(39573u, 0u));

var<private> global3: i32 = 1i;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global1 = array<Struct_4, 29>();
    var var_0 = Struct_4(vec4<bool>(any(select(vec4<bool>(arg_1, true, false, true), vec4<bool>(false, false, arg_1, false), u_input.c.x < arg_0.a.x)), arg_1, ~_wgslsmith_dot_vec3_u32(vec3<u32>(25177u, 4294967295u, 1u), vec3<u32>(6376u, u_input.a, 36257u)) == u_input.a, u_input.b < _wgslsmith_dot_vec4_u32(arg_0.c, arg_0.c)));
    global0 = array<f32, 20>();
    global2 = array<vec2<u32>, 5>();
    global2 = array<vec2<u32>, 5>();
    return ~4294967295u;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_4(select(vec4<bool>(!arg_2.x, any(vec2<bool>(true, true)), true, false), vec4<bool>(arg_2.x, true, true, false), arg_1.e));
    var var_1 = Struct_3(_wgslsmith_mod_i32(min(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.a, u_input.c.x, u_input.c.x), u_input.c), -(arg_1.a | u_input.c.x)), u_input.c.x), -362f, arg_1.c, select(!vec2<bool>(true, arg_1.c.e.x), !vec2<bool>(true, var_0.a.x), var_0.a.x), var_0.a);
    global0 = array<f32, 20>();
    var var_2 = arg_1;
    global0 = array<f32, 20>();
    return var_1.c.d;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_3(u_input.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1339f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(u_input.a) << (u_input.a % 32u), 20u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 20u)] - -751f) + _wgslsmith_f_op_f32(-698f + -359f))))), Struct_2(~_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c.x, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.c.yxw, u_input.c.zxz)), !all(vec3<bool>(true, true, true)), max(-5131i, -(242i & u_input.c.x)), func_4(328f, Struct_3(-2147483647i, global0[_wgslsmith_index_u32(func_3(Struct_1(u_input.c, vec3<u32>(17488u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.c.x), arg_0.x), 20u)], Struct_2(u_input.c.x, false, 2147483647i, vec3<u32>(4294967295u, 0u, u_input.b), vec3<bool>(false, arg_0.x, false)), arg_0, !arg_1.a), !arg_1.a.yxx), arg_1.a.zxz), vec2<bool>(~u_input.c.x <= 1i, select(!any(arg_1.a), all(arg_0), all(vec4<bool>(arg_1.a.x, false, false, true)))), arg_1.a);
    global2 = array<vec2<u32>, 5>();
    let var_1 = Struct_1(u_input.c, ~(~(~_wgslsmith_mult_vec3_u32(var_0.c.d, var_0.c.d))), vec4<u32>(_wgslsmith_dot_vec2_u32(~func_4(-610f, Struct_3(var_0.c.c, global0[_wgslsmith_index_u32(var_0.c.d.x, 20u)], var_0.c, var_0.d, var_0.e), var_0.e.xwx).zy, firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(14192u, var_0.c.d.x), var_0.c.d.xx))), 10232u, _wgslsmith_add_u32(0u, u_input.a), var_0.c.d.x), 34324i);
    let var_2 = firstLeadingBit(15728i);
    var var_3 = countOneBits(vec2<u32>(_wgslsmith_div_u32(u_input.b, 59801u), 4294967295u ^ reverseBits(var_0.c.d.x)) << (~(select(vec2<u32>(0u, var_1.c.x), vec2<u32>(61106u, 24894u), vec2<bool>(arg_0.x, true)) ^ ~vec2<u32>(32115u, 0u)) % vec2<u32>(32u)));
    return var_2;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.d, select(vec3<u32>(func_3(Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.c.x), arg_0.d, vec4<u32>(arg_0.d.x, u_input.a, 4294967295u, arg_0.d.x), u_input.c.x), arg_0.b), 4597u >> (~arg_0.d.x % 32u), arg_0.d.x), vec3<u32>(0u, abs(arg_0.d.x), ~1u), arg_0.e.x)), 29u)];
    var var_1 = -1931i;
    let var_2 = Struct_2(u_input.c.x, all(vec2<bool>(true, true)) == ((_wgslsmith_div_f32(global0[_wgslsmith_index_u32(74641u, 20u)], global0[_wgslsmith_index_u32(30738u, 20u)]) > _wgslsmith_f_op_f32(min(-659f, 1874f))) && (all(vec4<bool>(arg_0.b, arg_0.e.x, true, arg_0.e.x)) & true)), _wgslsmith_sub_i32(arg_0.a >> ((~arg_0.d.x << (min(0u, arg_0.d.x) % 32u)) % 32u), _wgslsmith_mult_i32(-50914i, _wgslsmith_mod_i32(-arg_0.a, -16039i))), arg_0.d, vec3<bool>(all(var_0.a.xyz), true, any(vec4<bool>(!var_0.a.x, true, 13189i < u_input.c.x, var_0.a.x))));
    var var_3 = reverseBits(~select(max(firstTrailingBit(vec4<u32>(1u, 1u, 1170u, 1u)), vec4<u32>(4294967295u, 4294967295u, 1u, arg_0.d.x)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.d.x, arg_0.d.x, u_input.a, 1u), vec4<u32>(var_2.d.x, u_input.b, var_2.d.x, 27277u)), vec4<u32>(arg_0.d.x, u_input.b, arg_0.d.x, 0u)), var_0.a));
    let var_4 = vec3<i32>(~firstLeadingBit(arg_0.a), 7074i, arg_0.a ^ -1i);
    return var_2;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_1 {
    global0 = array<f32, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(35798u, 20u)], 2343f, -1797f) * _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.d.x, 20u)], -924f, 708f), vec3<f32>(1033f, global0[_wgslsmith_index_u32(39709u, 20u)], -1537f))), vec3<f32>(252f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 20u)]))))));
    global2 = array<vec2<u32>, 5>();
    global2 = array<vec2<u32>, 5>();
    return Struct_1(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, 5443i, 19603i), vec4<i32>(arg_0.a, 0i, u_input.c.x, 24242i)), ~reverseBits(vec4<i32>(-1i, 1i, 1i, 2147483647i)), min(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-3845i, arg_0.a, 4044i, 36313i)), abs(u_input.c))), vec3<u32>(u_input.b, ~(_wgslsmith_mult_u32(0u, 1u) ^ _wgslsmith_add_u32(0u, u_input.a)), _wgslsmith_div_u32(func_3(Struct_1(u_input.c, arg_0.d, vec4<u32>(54411u, 1u, arg_0.d.x, u_input.b), -13765i), false), ~7953u ^ ~arg_0.d.x)), select(_wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(8062u, 1u, 34852u, u_input.b)), abs(max(vec4<u32>(4441u, arg_0.d.x, 13967u, u_input.b), vec4<u32>(37630u, u_input.b, arg_0.d.x, u_input.b)))), vec4<u32>(arg_0.d.x, _wgslsmith_sub_u32(~u_input.a, select(arg_0.d.x, 20549u, arg_1.x)), reverseBits(~2024u), u_input.a), false), 43199i);
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    var var_0 = func_6(func_5(Struct_2(u_input.c.x, ~arg_0.x < _wgslsmith_mult_i32(18904i, u_input.c.x), func_2(vec2<bool>(false, true), Struct_4(vec4<bool>(false, true, true, true))), firstTrailingBit(vec3<u32>(4294967295u, 4668u, u_input.a)), vec3<bool>(0u <= u_input.a, true, any(vec4<bool>(false, false, true, true))))), !func_5(func_5(Struct_2(u_input.c.x, true, 1i, vec3<u32>(0u, u_input.b, 22902u), vec3<bool>(false, true, false)))).e, Struct_4(select(vec4<bool>(true, true, any(vec3<bool>(false, false, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)))));
    var var_1 = ~var_0.a.x;
    let var_2 = Struct_1(vec4<i32>(0i, u_input.c.x, i32(-1i) * -35861i, -2147483647i) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-56579i, var_0.d, u_input.c.x, -2147483647i), firstTrailingBit(var_0.a)), vec4<i32>(-1i) * -var_0.a), _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), var_0.c.xxw), vec3<u32>(_wgslsmith_sub_u32(1u, var_0.b.x), 56533u, max(4294967295u, u_input.a))) << (select(max(~var_0.c.zwz, var_0.b >> (var_0.b % vec3<u32>(32u))), var_0.c.wxw, ~u_input.a <= 57333u) % vec3<u32>(32u)), vec4<u32>(~31161u, (u_input.b ^ _wgslsmith_mult_u32(1u, var_0.b.x)) | var_0.b.x, func_3(func_6(func_5(Struct_2(var_0.a.x, false, 0i, var_0.c.xzz, vec3<bool>(false, false, false))), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(4294967295u, 29u)]), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), ((39602u >> (u_input.b % 32u)) ^ (u_input.a | 128656u)) | 4294967295u), -firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_0.x, -2147483647i, u_input.c.x, var_0.a.x))) | ~1i);
    let var_3 = vec3<i32>(func_6(Struct_2(1i, true, ~1i, ~var_2.b, func_5(Struct_2(-28160i, true, -15053i, vec3<u32>(1u, 0u, var_2.b.x), vec3<bool>(true, false, false))).e), select(func_5(Struct_2(arg_0.x, false, u_input.c.x, vec3<u32>(var_2.b.x, 1u, u_input.b), vec3<bool>(true, true, true))).e, select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true), global1[_wgslsmith_index_u32(u_input.b ^ 1642u, 29u)]).d, -2147483647i, -2147483647i) ^ max(reverseBits(arg_0), -arg_0);
    global2 = array<vec2<u32>, 5>();
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], -1000f, global0[_wgslsmith_index_u32(0u, 20u)], -296f)))))));
    global2 = array<vec2<u32>, 5>();
    let var_1 = all(vec4<bool>(all(vec2<bool>(true, true)), true, ~func_1(u_input.c.yyy) != abs(2147483647i >> (u_input.b % 32u)), true));
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_0);
    var var_3 = Struct_4(select(select(!vec4<bool>(false, var_1, var_1, true), select(!vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, false, var_1), !vec4<bool>(var_1, false, var_1, var_1)), !(!var_1)), !(!select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, true, false, false), vec4<bool>(var_1, var_1, true, true))), all(vec4<bool>(false, true, u_input.b >= u_input.a, var_1 || true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(func_5(Struct_2(countOneBits(u_input.c.x), true, -30597i, vec3<u32>(u_input.b, 4294967295u, 1u), vec3<bool>(var_3.a.x, var_3.a.x, false))).d.xx, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(26742u, 45129u), func_6(Struct_2(u_input.c.x, var_3.a.x, u_input.c.x, vec3<u32>(154110u, u_input.b, u_input.b), var_3.a.wwy), vec3<bool>(var_3.a.x, var_3.a.x, true), global1[_wgslsmith_index_u32(u_input.b, 29u)]).c.xw), global2[_wgslsmith_index_u32(4294967295u, 5u)])), func_5(func_5(Struct_2(u_input.c.x, var_2.x != global0[_wgslsmith_index_u32(0u, 20u)], ~u_input.c.x, countOneBits(vec3<u32>(u_input.b, u_input.a, 51552u)), var_3.a.zyx))).c, global2[_wgslsmith_index_u32(~(~func_5(func_5(Struct_2(2147483647i, var_1, 1i, vec3<u32>(u_input.b, 16963u, u_input.a), var_3.a.wxw))).d.x), 5u)], -1059f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-583f * var_2.x), 826f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(var_0.xx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -1008f) * var_0.yy)))), var_2.wy));
}

