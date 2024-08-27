struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-459f, -131f, -908f);

var<private> global1: bool = false;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(2147483647i, 21179i, -46521i), vec3<i32>(20640i, 0i, -33649i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), 5522i, 1i), vec3<i32>(2286i, -26854i, 55285i), vec3<i32>(-25885i, -1i, -7336i), vec3<i32>(-1i, 2147483647i, -7489i), vec3<i32>(i32(-2147483648), -13222i, 27766i), vec3<i32>(51479i, -3261i, 77908i), vec3<i32>(2147483647i, -5630i, -6068i), vec3<i32>(-31003i, 31095i, 7118i), vec3<i32>(i32(-2147483648), -18264i, -1i), vec3<i32>(0i, 61708i, -43366i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(-1i, -574i, 61267i), vec3<i32>(39805i, 18101i, 9248i), vec3<i32>(-1i, -23283i, 12751i), vec3<i32>(66186i, 2147483647i, -4822i), vec3<i32>(-11364i, 18625i, 4351i), vec3<i32>(12073i, 0i, 1i), vec3<i32>(-4088i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -36337i, 2147483647i));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(68120u, 1u, 4294967295u), vec4<u32>(0u, 39784u, 101685u, 42160u), vec3<f32>(149f, 174f, 1696f));

var<private> global4: array<vec2<bool>, 11>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    let var_0 = u_input.b | 31504u;
    var var_1 = select(~_wgslsmith_mod_vec3_i32(~global2[_wgslsmith_index_u32(30611u, 22u)] | global2[_wgslsmith_index_u32(u_input.c, 22u)], _wgslsmith_mod_vec3_i32(vec3<i32>(-5705i, u_input.a.x, u_input.a.x), abs(global2[_wgslsmith_index_u32(75902u, 22u)]))), global2[_wgslsmith_index_u32(~10510u, 22u)], all(vec4<bool>(true && any(vec4<bool>(true, true, false, false)), true, _wgslsmith_add_i32(u_input.a.x, 33161i) != -2147483647i, true)));
    var var_2 = Struct_4(Struct_2(!select(vec2<bool>(true, false), !global4[_wgslsmith_index_u32(1u, 11u)], select(global4[_wgslsmith_index_u32(global3.a.x, 11u)], vec2<bool>(true, true), vec2<bool>(false, false))), global3.c, _wgslsmith_mult_vec3_u32(global3.b.ywy, global3.b.yww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.x)), 1852f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global3.c.x, global3.c.x, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, 1675f, global0.x, -692f) + vec4<f32>(global3.c.x, 757f, global3.c.x, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 166f, -605f, global0.x))))), !vec4<bool>(~var_0 > 1u, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), any(vec2<bool>(false, false)), 1u <= global3.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1937f, -949f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 502f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + 1295f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.x + global3.c.x) + _wgslsmith_f_op_f32(global3.c.x * -590f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2392f, global3.c.x)) + -998f), 1181f)), firstTrailingBit(~1i) == u_input.a.x);
    var_1 = ~(abs(global2[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(var_2.a.c.x, 50463u, 1075u), ~u_input.b, var_2.e), 22u)]) | -select(global2[_wgslsmith_index_u32(var_0 >> (37045u % 32u), 22u)], global2[_wgslsmith_index_u32(max(var_0, global3.a.x), 22u)], select(vec3<bool>(var_2.e, true, false), vec3<bool>(true, false, var_2.e), false)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d.ywx + global3.c));
    return ~(~(firstLeadingBit(var_2.a.c) | global3.b.wwz));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = u_input.a.x;
    return _wgslsmith_clamp_vec3_u32(~(~global3.b.xxy), ~global3.a, vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(16204u, 4294967295u), vec2<u32>(4294967295u, global3.a.x))), 4294967295u, global3.a.x) & func_3());
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    global3 = Struct_1(~select(~global3.a, global3.b.wwx, arg_3.a.x), ~reverseBits(~_wgslsmith_div_vec4_u32(global3.b, global3.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d.x))), _wgslsmith_f_op_f32(max(arg_3.d, _wgslsmith_f_op_f32(-arg_3.b.x))), 1071f)));
    var var_0 = reverseBits(vec3<u32>(1u, _wgslsmith_mod_u32(global3.b.x, _wgslsmith_add_u32(arg_3.c.x, arg_3.c.x)), _wgslsmith_clamp_u32(0u, ~17517u, 1u))) >> ((vec3<u32>(arg_3.c.x, 27255u, ~u_input.c) & func_2(vec2<f32>(_wgslsmith_f_op_f32(1000f + arg_1.x), _wgslsmith_f_op_f32(ceil(arg_1.x))), arg_0.d, !vec4<bool>(false, arg_0.c.x, true, true))) % vec3<u32>(32u));
    global0 = vec3<f32>(_wgslsmith_div_f32(-1281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1296f)))), global3.c.x, -413f);
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-u_input.a.x, -1i, ~u_input.a.x), vec3<i32>(2147483647i | ~arg_2, arg_2, ~arg_2 & _wgslsmith_div_i32(u_input.a.x, -39394i)), ~(vec3<i32>(2131i, u_input.a.x, 1i) ^ global2[_wgslsmith_index_u32(var_0.x, 22u)]) << (~(~arg_3.c) % vec3<u32>(32u))), vec3<i32>(8075i, -63991i, u_input.a.x));
    var var_2 = !arg_3.a.x;
    return 35301u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_div_u32(_wgslsmith_mult_u32(max(1u, 63471u), func_1(Struct_4(Struct_2(global4[_wgslsmith_index_u32(global3.b.x, 11u)], vec3<f32>(-800f, 1618f, global0.x), vec3<u32>(0u, 1u, global3.a.x), -1000f), vec4<f32>(-1191f, 2103f, global0.x, global0.x), vec4<bool>(false, false, false, false), vec4<f32>(global3.c.x, global3.c.x, 1258f, 995f), true), vec2<f32>(1000f, -1410f), -28170i, Struct_2(global4[_wgslsmith_index_u32(25266u, 11u)], global3.c, vec3<u32>(47279u, global3.a.x, u_input.c), global3.c.x))), ~(~35177u)) << (u_input.b % 32u));
    var var_1 = u_input.a.x;
    var var_2 = Struct_1(vec3<u32>(~3476u, _wgslsmith_clamp_u32(4294967295u >> (u_input.c % 32u), ~u_input.c, 0u) & (1u | _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, 4294967295u, u_input.c, global3.b.x), global3.b)), u_input.c), ~abs(min(abs(global3.b), global3.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(700f, global3.c.x, true)), -503f, -402f)), global3.c, !(!(u_input.a.x >= u_input.a.x)))));
    var_0 = 18315u;
    var var_3 = Struct_2(vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(1544f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c.x, global0.x)) - _wgslsmith_f_op_f32(-103f * global0.x))), var_2.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1902f))))))), vec3<u32>(~(firstTrailingBit(var_2.a.x) | (var_2.b.x & 4294967295u)), abs(48323u), var_2.b.x >> (func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.x, 222f) + global3.c.yx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_2.c.x, global0.x, global3.c.x)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)).x % 32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.c.x)) - 553f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(step(794f, global3.c.x)))))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1224f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(475f * _wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.c.x, -1596f)) - -1000f))));
    var var_5 = ~(-_wgslsmith_div_vec2_i32(-select(vec2<i32>(u_input.a.x, 1i), u_input.a, vec2<bool>(false, true)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-436f, _wgslsmith_mult_u32(1u, var_3.c.x), 4294967295u, var_3.c, -_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, -3877i, u_input.a.x), -63326i)));
}

