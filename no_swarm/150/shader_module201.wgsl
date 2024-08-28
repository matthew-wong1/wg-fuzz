struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-168f, 2545f, -739f), vec3<f32>(-1116f, 1000f, 462f), vec3<f32>(340f, 1455f, 170f), vec3<f32>(1218f, 491f, 456f), vec3<f32>(-1000f, -1842f, 1564f), vec3<f32>(-541f, -1071f, 651f), vec3<f32>(-1506f, 867f, -1231f), vec3<f32>(337f, -1045f, 479f), vec3<f32>(-1185f, 1648f, 888f), vec3<f32>(-394f, 610f, 2257f), vec3<f32>(1749f, 681f, 2365f));

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: vec2<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(vec2<bool>(any(vec4<bool>(true, true, true, !arg_0.c)), !(!any(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)))), arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -104f, arg_0.a.a, -182f)) * global1[_wgslsmith_index_u32(u_input.b.x, 7u)])), Struct_1(-1000f, -1i, -10446i), arg_2.xz);
    let var_1 = firstLeadingBit(var_0.e);
    var var_2 = Struct_3(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(314f, var_0.b.a), vec2<f32>(-577f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - vec2<f32>(var_0.b.a, arg_3.a)), !var_0.a.x || all(select(vec2<bool>(arg_0.e, arg_0.d), select(var_0.a, var_0.a, arg_0.e), !var_0.a.x)), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * 822f) * var_0.c.x) >= var_0.c.x);
    var var_3 = Struct_2(select(!vec2<bool>(true, !var_2.c), select(!select(vec2<bool>(var_2.c, arg_0.e), var_0.a, true), select(select(vec2<bool>(arg_0.c, var_0.a.x), var_0.a, vec2<bool>(true, true)), vec2<bool>(var_0.a.x, var_2.c), false), true), var_0.a), arg_1, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1695f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3.a)), _wgslsmith_f_op_f32(f32(-1f) * -1697f)))), _wgslsmith_f_op_f32(step(var_2.a.a, arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(305f, 1f))), Struct_1(_wgslsmith_f_op_f32(trunc(421f)), max(global2.x & ~var_2.a.b, 0i), ~var_2.a.c >> ((u_input.b.x & ~u_input.a.x) % 32u)), vec2<i32>(_wgslsmith_sub_i32(min(0i, var_1.x) | _wgslsmith_div_i32(arg_3.b, var_0.d.c), countOneBits(arg_3.b >> (u_input.b.x % 32u))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, arg_0.a.b, arg_3.b, 5215i) & vec4<i32>(arg_2.x, -19823i, -38046i, var_2.a.c), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 16876i, u_input.c, -2147483647i), vec4<i32>(global2.x, -1i, arg_3.c, var_1.x)))));
    var var_4 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(191f, -220f)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = true;
    var var_2 = any(!vec2<bool>(select(all(vec4<bool>(true, false, false, true)), false, true), true));
    let var_3 = Struct_3(Struct_1(arg_0, u_input.c, abs(~firstTrailingBit(6314i))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(226f, u_input.c, -14378i), vec2<f32>(-1441f, 1960f), false, true, false), Struct_1(1000f, 1i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, global2.x, u_input.c), vec3<i32>(global2.x, u_input.c, 0i)), Struct_1(610f, 1i, global2.x))), -928f), _wgslsmith_f_op_f32(-302f + _wgslsmith_div_f32(arg_1.x, 648f))), false, select(~global2.x < abs(max(global2.x, -43189i)), !any(vec4<bool>(true, true, true, true)), true), any(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(all(vec2<bool>(true, false)), false, 41214u >= arg_2.x))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -616f);
    return Struct_3(Struct_1(1072f, 1i, 2147483647i), arg_1, !var_3.c, any(vec2<bool>(true, var_3.e)), all(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, var_3.e, var_3.c), vec3<bool>(true, var_3.e, true)), vec3<bool>(false & var_3.d, true, var_3.d), !vec3<bool>(var_3.c, var_3.e, false))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> u32 {
    global2 = _wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, -2147483647i << (min(1u, u_input.b.x) % 32u)), reverseBits(-vec2<i32>(2147483647i, 0i)));
    global1 = array<vec4<f32>, 7>();
    let var_0 = !(!vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.d, arg_0.d, arg_0.c), vec3<bool>(false, false, arg_1.e))), all(vec2<bool>(arg_2, arg_2)) && true, true, arg_1.c));
    let var_1 = Struct_2(vec2<bool>(true, !arg_1.c), arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 7u)]))) + global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, abs(u_input.a)), 7u)]), func_2(1161f, vec2<f32>(-1705f, arg_1.a.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), u_input.a << (vec4<u32>(u_input.b.x, 4294967295u, 88457u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(11884u, u_input.b.x, u_input.b.x, u_input.a.x)), ~(~u_input.a), u_input.a)).a, firstTrailingBit(vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, arg_0.a.c, global2.x), vec3<i32>(25819i, -2147483647i, 7969i)), 7965i)));
    var var_2 = arg_1.e;
    return 77313u;
}

fn func_1() -> Struct_4 {
    let var_0 = true;
    global1 = array<vec4<f32>, 7>();
    let var_1 = vec3<u32>(~(~func_4(func_2(-1234f, vec2<f32>(-203f, -1000f), vec4<u32>(97358u, u_input.a.x, u_input.b.x, u_input.b.x)), func_2(112f, vec2<f32>(1057f, -1445f), u_input.a), var_0)), ~firstTrailingBit(firstTrailingBit(u_input.a.x << (u_input.b.x % 32u))), u_input.b.x);
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(24079i, -74559i, global2.x), -vec3<i32>(-1i, 20356i, -1i)), -vec3<i32>(1i, 2147483647i, u_input.c)), vec3<i32>(global2.x, global2.x, _wgslsmith_mod_i32(u_input.c, ~u_input.c))), ~global2.x, 2147483647i);
    let var_3 = _wgslsmith_add_i32(-abs(var_2.x) << (4294967295u % 32u), var_2.x) <= ~(-1i);
    return Struct_4(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(390f, -652f)), _wgslsmith_div_f32(-449f, -1000f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2677f, -330f) * vec2<f32>(735f, -1486f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1445f, -481f) + vec2<f32>(393f, -1086f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-513f, -376f) + vec2<f32>(-164f, 820f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1182f, 1000f) + vec2<f32>(-1000f, -599f))))), vec4<u32>(abs(~53626u), ~(u_input.a.x >> (var_1.x % 32u)), ~(~var_1.x), var_1.x)), vec2<bool>(any(!select(vec2<bool>(var_3, var_3), vec2<bool>(var_0, var_3), vec2<bool>(false, var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1372f)), 3036f) == -933f), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.b.x), firstLeadingBit(4294967295u)));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<vec3<f32>, 11>();
    var var_0 = func_1();
    let var_1 = var_0.a;
    global0 = array<vec3<f32>, 11>();
    let var_2 = Struct_2(select(vec2<bool>(!arg_0.a.c && true, var_1.c), func_1().b, false), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(var_0.a.a.a * -1631f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.a))), _wgslsmith_f_op_vec2_f32(floor(var_1.b)), firstLeadingBit(u_input.a)).a, _wgslsmith_f_op_vec4_f32(ceil(global1[_wgslsmith_index_u32(~(~4294967295u), 7u)])), var_1.a, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~firstLeadingBit(vec2<i32>(88893i, arg_0.a.a.b)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2276i, -2147483647i), vec2<i32>(-3470i, 24378i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a.c, global2.x), vec2<i32>(59461i, 13984i)))), ~(vec2<i32>(var_0.a.a.b, -1i) >> (~vec2<u32>(arg_2.x, 23064u) % vec2<u32>(32u)))));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(808f + 730f)) + func_2(_wgslsmith_f_op_f32(round(-945f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1366f, -1624f), vec2<f32>(-1111f, 1079f), false)), vec4<u32>(0u, u_input.a.x, 1u, 53440u)).b.x), _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(35420u), 1u), u_input.b ^ (vec2<u32>(1u, u_input.b.x) | u_input.a.yx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-556f, func_1().a.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, -165f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(668f, -389f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1732f, -586f))))), all(vec4<bool>(!all(vec3<bool>(true, false, false)), true, all(vec3<bool>(false, true, true)), ~(-1i) <= global2.x)), true, false | !(!(2171i >= u_input.c)));
    var var_1 = var_0.a.a;
    let var_2 = countOneBits(-abs(max(u_input.c, _wgslsmith_sub_i32(u_input.c, global2.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2454f, -765f), vec2<f32>(var_0.b.x, var_0.b.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(123f, -733f) - vec2<f32>(var_0.a.a, var_0.b.x))), vec2<bool>(all(vec3<bool>(true, var_0.d, var_0.c)), -1044f < var_0.a.a))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(331f, var_0.b.x) + var_0.b) + var_0.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1979f, var_0.b.x)))))));
    global2 = abs(min(min(-vec2<i32>(var_0.a.b, var_0.a.c), abs(vec2<i32>(-21697i, 2147483647i))) | -vec2<i32>(global2.x, global2.x), -_wgslsmith_mod_vec2_i32(abs(vec2<i32>(0i, var_0.a.b)), select(vec2<i32>(-2147483647i, 1i), vec2<i32>(var_2, var_0.a.c), vec2<bool>(false, var_0.e)))));
    let var_4 = _wgslsmith_f_op_f32(round(var_3.x));
    var_1 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~countOneBits(firstLeadingBit(1i)), abs(u_input.c)), u_input.a.x, var_0.b.x);
}

