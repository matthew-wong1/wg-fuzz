struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

var<private> global2: f32;

var<private> global3: array<f32, 15>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_vec4_i32(select(select(vec4<i32>(-2147483647i, -1i, -23289i, 53158i) << (vec4<u32>(u_input.a.x, 351u, global0.a, 35642u) % vec4<u32>(32u)), -vec4<i32>(-19916i, 48230i, -2147483647i, -38546i), !vec4<bool>(false, false, global0.b.x, global0.b.x)), ~vec4<i32>(1i, 1i, 1i, 1i), global0.b.x) ^ vec4<i32>(abs(_wgslsmith_clamp_i32(28101i, -2147483647i, -2147483647i)), 1i, -1i, -1i >> (_wgslsmith_add_u32(u_input.a.x, 68462u) % 32u)), countOneBits(vec4<i32>(1i, 1i, 1i, 1i)) ^ -vec4<i32>(-39030i, firstTrailingBit(-2147483647i), firstTrailingBit(-21455i), 0i));
    global1 = array<vec3<bool>, 8>();
    let var_1 = global1[_wgslsmith_index_u32(min(~(~(~u_input.a.x)), reverseBits(0u) >> (~_wgslsmith_add_u32(0u ^ global0.c, select(19932u, 0u, global0.b.x)) % 32u)), 8u)];
    global2 = global3[_wgslsmith_index_u32(11055u ^ ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, global0.a, u_input.a.x), ~u_input.a.wzy), u_input.a.xxy), 15u)];
    var var_2 = ~41594u;
    return 117773u;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = Struct_1(vec3<i32>(-67995i, _wgslsmith_add_i32(max(_wgslsmith_div_i32(-8442i, 20513i), ~(-1i)), 1i), 1i), select(vec4<bool>(any(vec4<bool>(false, true, false, arg_0.x)), true, true, true), select(select(!vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), !vec4<bool>(true, arg_0.x, true, true), true != arg_0.x), !arg_0, !select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, true, true), arg_0)), arg_0), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.a << ((_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) & 4294967295u) % 32u), 15u)] * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x & (global0.a >> (0u % 32u)), 15u)], -698f)), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(~25785i, ~0i), ~vec2<i32>(1i, 946i))));
    global3 = array<f32, 15>();
    global3 = array<f32, 15>();
    var var_1 = ~(~reverseBits(u_input.a.x ^ func_3()));
    var var_2 = var_0.b.x;
    return var_0.c;
}

fn func_1() -> i32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-517f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(80816u, 15u)], global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 15u)], true)) + -626f), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~10110u), ~global0.c), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1114f)))) + vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, true, var_0, global0.b.x)))))), -1260f, _wgslsmith_f_op_f32(max(386f, 640f)), _wgslsmith_f_op_f32(func_2(vec4<bool>(true, global0.b.x, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(58595u, 15u)]))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1264f);
    global3 = array<f32, 15>();
    return -3430i;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_u32(arg_0, ~arg_0), vec2<bool>(true, !arg_3.b.x), 119048u);
    var var_1 = any(!select(!select(vec2<bool>(var_0.b.x, var_0.b.x), arg_3.b.zy, false), !select(arg_3.b.wy, arg_3.b.xw, var_0.b), 11664u > global0.a));
    global2 = arg_2.x;
    global1 = array<vec3<bool>, 8>();
    global0 = Struct_2(0u, select(vec2<bool>(true, true), !vec2<bool>(!arg_3.b.x, -8785i <= arg_3.d.x), any(select(select(arg_3.b, arg_3.b, var_0.b.x), vec4<bool>(true, false, true, true), vec4<bool>(global0.b.x, true, true, true)))), arg_0.x << ((_wgslsmith_mult_u32(global0.a, _wgslsmith_add_u32(1u, global0.c)) | var_0.c) % 32u));
    return Struct_2(firstLeadingBit(countOneBits(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, 18066u)))), vec2<bool>(true, global0.b.x), 36205u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.a.xz, vec4<i32>(~firstTrailingBit(-1i), -53491i, _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -16148i, -29220i), vec4<i32>(38565i, -1i, 3281i, 0i))), 4200i), func_1()), vec2<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.zwx, vec3<u32>(19878u, u_input.a.x, u_input.a.x)), ~u_input.a.x), 15u)])), global3[_wgslsmith_index_u32(func_3(), 15u)]), Struct_1(select(select(vec3<i32>(-27278i, -83247i, -51611i), vec3<i32>(-1i, 2147483647i, -16794i), global1[_wgslsmith_index_u32(global0.a, 8u)]) >> ((vec3<u32>(global0.a, 38270u, global0.c) & u_input.a.xwy) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(81968i, 2147483647i, 35272i), vec3<i32>(5625i, -1i, 35672i)), -vec3<i32>(0i, -2147483647i, -21818i), vec3<i32>(1i, 1i, 1i)), global1[_wgslsmith_index_u32(global0.a, 8u)]), select(select(select(vec4<bool>(global0.b.x, global0.b.x, true, true), vec4<bool>(global0.b.x, false, global0.b.x, true), global0.b.x), !vec4<bool>(true, false, global0.b.x, global0.b.x), global0.b.x), !select(vec4<bool>(true, false, true, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec4<bool>(true, global0.b.x, global0.b.x, false)), !(!vec4<bool>(false, true, global0.b.x, global0.b.x))), _wgslsmith_div_f32(-1135f, _wgslsmith_f_op_f32(trunc(-1576f))), max(vec2<i32>(reverseBits(-11769i), -14171i), max(firstTrailingBit(vec2<i32>(-45273i, -43435i)), _wgslsmith_mod_vec2_i32(vec2<i32>(44282i, 13080i), vec2<i32>(-94865i, 6486i))))));
    var var_1 = ~(-firstLeadingBit(_wgslsmith_mod_i32(-1i, i32(-1i) * -47665i)));
    var var_2 = func_4(u_input.a.zz, firstTrailingBit(vec4<i32>(1i, -28926i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -2147483647i), vec3<i32>(-1i, 3130i, -2147483647i)), ~1i), firstTrailingBit(-29399i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-454f, global3[_wgslsmith_index_u32(0u, 15u)]) * vec2<f32>(global3[_wgslsmith_index_u32(var_0.a, 15u)], global3[_wgslsmith_index_u32(var_0.c, 15u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(1583f, global3[_wgslsmith_index_u32(1786u, 15u)]) * vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], -368f))))), Struct_1(min(vec3<i32>(1i, 1i, 1i), -abs(vec3<i32>(2147483647i, 45149i, -2147483647i))), !select(!vec4<bool>(false, false, global0.b.x, global0.b.x), !vec4<bool>(global0.b.x, true, var_0.b.x, var_0.b.x), global0.b.x), global3[_wgslsmith_index_u32(max(~u_input.a.x, ~(~global0.c)), 15u)], ~min(-vec2<i32>(2147483647i, -19286i), _wgslsmith_sub_vec2_i32(vec2<i32>(-25964i, -2147483647i), vec2<i32>(-8357i, -1i)))));
    var var_3 = 1u;
    global1 = array<vec3<bool>, 8>();
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(0i, -45382i), vec2<i32>(-2147483647i, -1i), !var_0.b)), firstLeadingBit(firstTrailingBit(vec2<i32>(12025i, -4182i)))), 1i, countOneBits(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(44718i, -2147483647i, -57781i), 52989i, _wgslsmith_add_i32(-13080i, 19843i)) << (global0.c % 32u)), select(4294967295u, 12309u, any(!select(vec3<bool>(global0.b.x, true, true), vec3<bool>(true, global0.b.x, false), vec3<bool>(false, var_0.b.x, false)))), ~(~u_input.a.x));
}

