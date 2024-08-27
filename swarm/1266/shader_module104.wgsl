struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: bool;

var<private> global2: array<vec4<f32>, 5>;

var<private> global3: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(20292u, 0u, 1u, 4294967295u), vec4<u32>(0u, 25863u, 1u, 0u), vec4<u32>(4294967295u, 93963u, 6905u, 6995u), vec4<u32>(4099u, 26950u, 0u, 1u), vec4<u32>(30135u, 4294967295u, 32246u, 0u), vec4<u32>(4294967295u, 0u, 76544u, 0u), vec4<u32>(0u, 19497u, 0u, 0u), vec4<u32>(4294967295u, 0u, 16644u, 97829u), vec4<u32>(105914u, 37249u, 23311u, 1u), vec4<u32>(29955u, 0u, 1u, 27081u), vec4<u32>(4294967295u, 15097u, 1u, 1u), vec4<u32>(54647u, 0u, 4294967295u, 47636u), vec4<u32>(19854u, 1u, 1u, 41746u), vec4<u32>(0u, 0u, 25383u, 4294967295u), vec4<u32>(0u, 64590u, 58082u, 71196u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(34710u, 55256u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 5296u, 0u), vec4<u32>(94870u, 18815u, 13601u, 0u), vec4<u32>(21633u, 82534u, 4294967295u, 4294967295u), vec4<u32>(48880u, 4294967295u, 50553u, 32145u), vec4<u32>(1u, 4294967295u, 16559u, 1u), vec4<u32>(4294967295u, 1u, 20366u, 4294967295u), vec4<u32>(0u, 0u, 6464u, 0u), vec4<u32>(31761u, 10573u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 45899u), vec4<u32>(4294967295u, 0u, 64569u, 4294967295u), vec4<u32>(37935u, 4294967295u, 75616u, 1u), vec4<u32>(4294967295u, 13546u, 63296u, 89801u), vec4<u32>(9498u, 0u, 12456u, 26795u), vec4<u32>(0u, 53101u, 4294967295u, 1128u), vec4<u32>(0u, 1u, 1u, 4294967295u));

var<private> global4: array<bool, 31> = array<bool, 31>(false, false, false, false, true, true, false, true, false, false, true, false, false, true, true, true, true, false, false, true, false, false, true, true, false, false, false, true, true, false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = !vec3<bool>(true, any(vec3<bool>(true, all(vec3<bool>(false, false, global4[_wgslsmith_index_u32(37025u, 31u)])), all(vec2<bool>(global4[_wgslsmith_index_u32(10088u, 31u)], global4[_wgslsmith_index_u32(u_input.a.x, 31u)])))), all(vec3<bool>(true, true, true)));
    var var_1 = !((select(true, true, true) & false) & all(!select(var_0.zx, vec2<bool>(var_0.x, true), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], var_0.x))));
    var var_2 = Struct_1(select(vec3<u32>(u_input.a.x, 4519u, firstLeadingBit(1u)), abs(u_input.a.zzz), true), 129f, _wgslsmith_div_vec4_i32(~min(-vec4<i32>(918i, 33246i, u_input.b.x, 2147483647i), -vec4<i32>(-3779i, u_input.b.x, 5954i, u_input.b.x)), select(select(vec4<i32>(u_input.b.x, 1i, 5277i, u_input.b.x), ~vec4<i32>(2147483647i, u_input.b.x, 1i, u_input.b.x), false), vec4<i32>(firstTrailingBit(u_input.b.x), 44810i, u_input.b.x, u_input.b.x), vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 31u)] | var_0.x, true, global4[_wgslsmith_index_u32(9078u, 31u)] == true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-586f, -410f))), vec2<bool>(true, true));
    let var_3 = abs(u_input.b.x) & (abs(7787i) & abs(_wgslsmith_div_i32(~var_2.c.x, -56608i)));
    var var_4 = vec2<i32>(_wgslsmith_sub_i32(~u_input.b.x, var_2.c.x), -2147483647i);
    return var_2.c;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(611f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-894f + -959f)) - 2035f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = Struct_1(~_wgslsmith_mult_vec3_u32((vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u))) | (vec3<u32>(u_input.a.x, 37231u, 10918u) & u_input.a.ywx), u_input.a.zyw), var_0.x, ~func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-471f, 1034f) * var_0)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(470f + -525f)), false))), select(vec2<bool>(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), 31u)], all(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 31u)], global4[_wgslsmith_index_u32(u_input.a.x, 31u)]))), vec2<bool>(true, false), !(!select(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], global4[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec2<bool>(false, true), global4[_wgslsmith_index_u32(u_input.a.x, 31u)]))));
    let var_2 = var_1;
    global1 = var_1.e.x;
    var var_3 = var_1;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.x, 16544u, u_input.a.x), arg_1.a)), _wgslsmith_div_vec3_u32(u_input.a.wwx, vec3<u32>(25663u, ~14577u, ~0u)), vec3<u32>(firstTrailingBit(29307u), u_input.a.x, abs(arg_0.a.x)) | ~arg_1.a), -1000f, ~vec4<i32>(select(1i, arg_1.c.x, -1019f > arg_0.d.x), -1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(arg_0.c.x, -2147483647i, 0i)), _wgslsmith_clamp_i32(arg_0.c.x & 0i, arg_1.c.x, 0i & u_input.b.x)), arg_1.d, func_2().e);
    global0 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(arg_0.c.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-16525i, var_0.c.x), vec2<i32>(u_input.b.x, -2147483647i))), abs(_wgslsmith_sub_i32(-48422i, arg_0.c.x)))));
    global1 = true;
    global0 = ~func_2().c.x;
    global3 = array<vec4<u32>, 32>();
    return Struct_1(vec3<u32>(~abs(_wgslsmith_mod_u32(arg_1.a.x, 125699u)), ~64622u, select(~countOneBits(6251u), _wgslsmith_add_u32(~31241u, 1u), true)), 1205f, func_2().c, vec2<f32>(1694f, 1537f), vec2<bool>(func_2().e.x, false && all(select(arg_2, vec2<bool>(false, arg_1.e.x), arg_2))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    var var_0 = func_4(func_2(), func_2(), select(vec2<bool>(global4[_wgslsmith_index_u32(4699u, 31u)], global4[_wgslsmith_index_u32(~u_input.a.x, 31u)]), select(select(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], false), vec2<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec2<bool>(global4[_wgslsmith_index_u32(arg_0, 31u)], false), vec2<bool>(false, global4[_wgslsmith_index_u32(arg_2.x, 31u)]), vec2<bool>(global4[_wgslsmith_index_u32(35584u, 31u)], true))), vec2<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(arg_0, 31u)], false, global4[_wgslsmith_index_u32(78600u, 31u)], global4[_wgslsmith_index_u32(2277u, 31u)])), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(70643u, arg_0), 31u)]), true), !(!(u_input.b.x > arg_1))));
    global1 = true;
    global0 = _wgslsmith_dot_vec3_i32(abs(u_input.b), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(8550i, var_0.c.x, var_0.c.x, arg_1), var_0.c), -2147483647i), (arg_1 | var_0.c.x) >> (~arg_0 % 32u), _wgslsmith_dot_vec4_i32(func_4(Struct_1(u_input.a.xxx, var_0.d.x, vec4<i32>(u_input.b.x, arg_1, -1i, 2119i), vec2<f32>(1157f, 134f), vec2<bool>(false, false)), Struct_1(vec3<u32>(var_0.a.x, 1u, 4294967295u), 310f, vec4<i32>(-4715i, arg_1, -13572i, var_0.c.x), var_0.d, vec2<bool>(global4[_wgslsmith_index_u32(arg_0, 31u)], false)), var_0.e).c, vec4<i32>(26770i, arg_1, u_input.b.x, var_0.c.x) << (vec4<u32>(var_0.a.x, 1u, 4294967295u, 10498u) % vec4<u32>(32u))))) ^ (-14928i << (arg_2.x % 32u));
    return ~_wgslsmith_mod_i32(~arg_1 << ((var_0.a.x >> (var_0.a.x % 32u)) % 32u), ~(-u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(84467u, 7626u), u_input.a.x, ~u_input.a.x) & ~u_input.a.yzx, -336f, vec4<i32>(u_input.b.x, -7155i, 28371i, firstLeadingBit(func_1(1u, select(u_input.b.x, -29984i, global4[_wgslsmith_index_u32(u_input.a.x, 31u)]), firstLeadingBit(vec3<u32>(5251u, 4294967295u, 4294967295u))))), func_4(Struct_1(vec3<u32>(~u_input.a.x, ~25867u, 29629u), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(-599f))), ~vec4<i32>(u_input.b.x, u_input.b.x, 21581i, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(-874f + -2034f), _wgslsmith_f_op_f32(f32(-1f) * -232f)), vec2<bool>(any(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], false, false)), any(vec2<bool>(true, true)))), func_2(), vec2<bool>(true, global4[_wgslsmith_index_u32(0u, 31u)])).d, !select(vec2<bool>(true, true), vec2<bool>(u_input.a.x <= 59088u, any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], false))), vec2<bool>(!global4[_wgslsmith_index_u32(u_input.a.x, 31u)], global4[_wgslsmith_index_u32(1u, 31u)])));
    let var_1 = func_2();
    var var_2 = var_1.e;
    var var_3 = -2147483647i;
    var var_4 = vec4<u32>(u_input.a.x, 27478u >> (var_1.a.x % 32u), ~(firstTrailingBit(func_4(Struct_1(u_input.a.xzx, var_0.d.x, vec4<i32>(18204i, var_0.c.x, u_input.b.x, u_input.b.x), var_0.d, vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)])), Struct_1(var_0.a, var_0.b, var_1.c, var_0.d, vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], false)), var_1.e).a.x) | _wgslsmith_add_u32(countOneBits(4294967295u), 0u)), u_input.a.x ^ ~48731u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_4(var_0, Struct_1(var_1.a, var_1.d.x, vec4<i32>(var_1.c.x, 1i, var_1.c.x, -19613i), vec2<f32>(1673f, 855f), var_1.e), var_1.e).b))), var_0.e.x)));
}

