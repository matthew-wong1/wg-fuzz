struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global1: array<bool, 7> = array<bool, 7>(false, false, true, true, true, false, false);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(500f, vec2<i32>(8659i, -1i), 34721i, -3444i, true), Struct_1(-123f, vec2<i32>(-34733i, 0i), i32(-2147483648), 6847i, false), Struct_1(670f, vec2<i32>(0i, -21689i), 1i, 27830i, true), Struct_1(1206f, vec2<i32>(0i, 0i), 0i, 0i, false), Struct_1(1632f, vec2<i32>(753i, 2147483647i), 38440i, i32(-2147483648), false), Struct_1(468f, vec2<i32>(63390i, 14093i), 41235i, 41633i, false), Struct_1(-403f, vec2<i32>(2147483647i, 2147483647i), 2147483647i, i32(-2147483648), true), Struct_1(964f, vec2<i32>(1i, 51796i), 37313i, 2147483647i, false), Struct_1(571f, vec2<i32>(34124i, -1i), i32(-2147483648), 1i, true), Struct_1(-655f, vec2<i32>(0i, -25347i), -23335i, 2147483647i, true), Struct_1(-984f, vec2<i32>(46107i, 379i), 2147483647i, 2147483647i, true), Struct_1(1149f, vec2<i32>(30074i, 2147483647i), 31816i, -19803i, true), Struct_1(454f, vec2<i32>(-1i, 1i), 1i, i32(-2147483648), false), Struct_1(-902f, vec2<i32>(2147483647i, 0i), -21191i, 51413i, false), Struct_1(129f, vec2<i32>(i32(-2147483648), 1i), 68508i, i32(-2147483648), false), Struct_1(526f, vec2<i32>(-21635i, 2147483647i), -18167i, 0i, true), Struct_1(1203f, vec2<i32>(i32(-2147483648), 2147483647i), 14829i, -18472i, true), Struct_1(-1000f, vec2<i32>(0i, -8189i), 7218i, i32(-2147483648), false), Struct_1(1424f, vec2<i32>(-1i, 2147483647i), 2147483647i, 2147483647i, false), Struct_1(701f, vec2<i32>(0i, i32(-2147483648)), 13903i, -1i, true), Struct_1(-1006f, vec2<i32>(2147483647i, 0i), 0i, 61644i, false));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1502f - -630f), _wgslsmith_f_op_f32(min(995f, 1886f))), _wgslsmith_f_op_f32(round(760f)))), 646f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1715f + _wgslsmith_f_op_f32(f32(-1f) * -1313f)) * -464f))));
    global2 = vec2<bool>(false == !(!(!global2.x)), !(!global1[_wgslsmith_index_u32(~1u, 7u)]));
    let var_1 = select(false, global2.x, ((!arg_0 || true) != (all(vec4<bool>(global2.x, global1[_wgslsmith_index_u32(16429u, 7u)], false, false)) == true)) | global2.x);
    global2 = vec2<bool>(all(vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -141f) > _wgslsmith_f_op_f32(var_0.x + var_0.x))), true);
    let var_2 = ~(min(~vec2<u32>(4294967295u, 39862u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(44407u, 0u), vec2<u32>(10514u, 4294967295u))) ^ (~vec2<u32>(106109u, 41929u) >> ((countOneBits(vec2<u32>(23356u, 6253u)) >> (select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 17310u), true) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(776f))))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(!global1[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_f32(max(-198f, _wgslsmith_f_op_f32(-791f * 420f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-284f)) + _wgslsmith_f_op_f32(f32(-1f) * -289f)))), vec2<i32>(-1i) * -vec2<i32>(-762i, -11262i), u_input.a.x, firstLeadingBit(0i), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 7u)]);
    global2 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !(!global1[_wgslsmith_index_u32(1u, 7u)]) | !global2.x);
    let var_1 = false;
    let var_2 = select(~1u, abs(1u), var_0.c < 2147483647i);
    global0 = 1i;
    return false || all(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, var_1, false), vec3<bool>(var_1, false, var_0.e), true), true), vec3<bool>(var_0.e, global1[_wgslsmith_index_u32(var_2 | var_2, 7u)], true), !(!vec3<bool>(var_1, var_0.e, global2.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - 1000f), arg_0.a) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(arg_0.a * 761f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1124f - 254f), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(804f, arg_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, -1000f, 1382f), vec3<f32>(arg_0.a, -1060f, -193f), false)), !vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 7u)], false, global1[_wgslsmith_index_u32(125351u, 7u)]))))));
    let var_1 = arg_1;
    global1 = array<bool, 7>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, _wgslsmith_f_op_f32(-318f + var_0.x), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, arg_0.a, 1583f), vec3<f32>(var_0.x, arg_0.a, -171f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_0.a, -1000f) * vec3<f32>(var_0.x, arg_0.a, var_0.x)), select(vec3<bool>(false, global2.x, false), vec3<bool>(arg_2, global2.x, arg_2), vec3<bool>(global1[_wgslsmith_index_u32(79642u, 7u)], true, arg_0.e)))))));
    return _wgslsmith_dot_vec2_i32(u_input.a, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(26887i, 1i)) >> (((~var_1.zy | ~arg_1.zz) >> (~arg_1.zx % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), vec2<i32>(-max(u_input.a.x, u_input.a.x), -21893i) << (vec2<u32>(~(~4294967295u), _wgslsmith_clamp_u32(~1398u, 71986u, _wgslsmith_mult_u32(1u, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_mod_i32(u_input.a.x, func_4(Struct_1(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(101433u, 7u)])), vec2<i32>(1i, 1i), -arg_0, 1i, func_3()), vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_i32(arg_0, arg_0) < _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 30060i, arg_0, arg_0), vec4<i32>(-10487i, -39542i, u_input.a.x, u_input.a.x)))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, 0i, -2147483647i)), vec4<i32>(-2147483647i, -23614i, -2147483647i, arg_0 ^ arg_0)), -max(vec4<i32>(37573i, 2147483647i, -16185i, arg_0), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_0, 2147483647i, 15914i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -39278i)))), _wgslsmith_f_op_f32(-2971f * _wgslsmith_f_op_f32(step(774f, 301f))) > _wgslsmith_f_op_f32(-116f + _wgslsmith_f_op_f32(-1460f * _wgslsmith_div_f32(-1325f, 1276f))));
    global1 = array<bool, 7>();
    let var_1 = Struct_1(571f, _wgslsmith_mult_vec2_i32(~var_0.b, u_input.a), _wgslsmith_div_i32(u_input.a.x, 0i), 1356i, false);
    let var_2 = Struct_1(var_1.a, -vec2<i32>(_wgslsmith_div_i32(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -22646i, -49194i, 36237i), vec4<i32>(-2147483647i, u_input.a.x, var_0.c, 42849i))), ~(-1i)), var_0.c, func_4(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))), u_input.a, -2147483647i, i32(-1i) * -76305i, all(!vec3<bool>(false, false, var_0.e))), reverseBits(_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 0u, 50388u), vec3<bool>(true, true, true)), vec3<u32>(4294967295u, 0u, 10845u))), var_1.e), var_0.e);
    global2 = !select(vec2<bool>(true, !(!var_0.e)), vec2<bool>(func_3() != true, var_2.e), all(!vec4<bool>(false, global2.x, true, false)));
    return 4294967295u;
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_mod_i32(~(~(-2147483647i)), arg_3.c));
    let var_1 = Struct_1(arg_3.a, -arg_3.b, _wgslsmith_dot_vec2_i32(arg_3.b, vec2<i32>(-u_input.a.x, 1i)), ~(-10933i), true);
    var var_2 = Struct_1(arg_3.a, reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_3.c), max(abs(vec2<i32>(var_0.x, arg_3.d)), vec2<i32>(var_0.x, arg_3.d)))), u_input.a.x, -5225i, !all(vec3<bool>(true, all(vec3<bool>(arg_2, arg_3.e, arg_3.e)), !arg_2)));
    var_2 = global3[_wgslsmith_index_u32(0u, 21u)];
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + 1032f)));
    return global3[_wgslsmith_index_u32(~(~arg_1), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = max(vec3<i32>(-2147483647i & var_0.x, -7981i, -2147483647i), ~(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, var_0.x, -1i), vec4<i32>(u_input.a.x, 1i, var_0.x, -54899i)), _wgslsmith_dot_vec2_i32(var_0, u_input.a), 29485i)));
    global0 = 2147483647i;
    var var_2 = func_5(vec3<u32>(~1u, _wgslsmith_sub_u32(~4294967295u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(37390u, 4294967295u, 48001u, 31894u), vec4<u32>(19139u, 4294967295u, 4294967295u, 59505u)), ~4294967295u)), 1u), func_1(~var_0.x), all(vec3<bool>(all(select(vec3<bool>(global2.x, true, true), vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(7847u, 7u)]))), !global2.x, true)), Struct_1(_wgslsmith_f_op_f32(-731f * 466f), firstTrailingBit(reverseBits(~vec2<i32>(var_1.x, var_1.x))), select(_wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(36311i, var_1.x, var_1.x), vec3<i32>(var_1.x, u_input.a.x, var_0.x))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 2147483647i, var_0.x), select(vec3<i32>(u_input.a.x, u_input.a.x, var_1.x), vec3<i32>(0i, -22988i, 49555i), false)), true), countOneBits(select(-2147483647i, 2147483647i, true)), !global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 66865u), vec2<u32>(9507u, 2428u)), 7u)]));
    var var_3 = ~(~((select(vec3<u32>(4407u, 64777u, 4294967295u), vec3<u32>(14217u, 4294967295u, 1u), vec3<bool>(false, global2.x, var_2.e)) << (~vec3<u32>(71074u, 1u, 4294967295u) % vec3<u32>(32u))) & vec3<u32>(~56086u, abs(1u), 2336u)));
    var_1 = vec3<i32>(u_input.a.x, select(var_2.b.x, i32(-1i) * -1i, var_2.e), u_input.a.x);
    let var_4 = func_5(min(vec3<u32>(_wgslsmith_add_u32(~1u, ~var_3.x), 4294967295u, _wgslsmith_div_u32(var_3.x, 42316u)), vec3<u32>(~_wgslsmith_div_u32(var_3.x, var_3.x), var_3.x, 1u)), 0u, any(select(select(vec2<bool>(var_2.e, var_2.e), vec2<bool>(var_2.e, global1[_wgslsmith_index_u32(var_3.x, 7u)]), false), select(vec2<bool>(true, var_2.e), vec2<bool>(var_2.e, true), vec2<bool>(true, true)), select(var_2.e, false, var_2.e))) & !global2.x, func_5(vec3<u32>(4294967295u, 0u, var_3.x) >> (vec3<u32>(var_3.x & 3227u, 1u, 38103u) % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_3.x, 17555u, var_3.x, var_3.x)), abs(vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x))), vec4<u32>(4162u, _wgslsmith_add_u32(var_3.x, 34425u), 1u, ~0u)), true, func_5(countOneBits(vec3<u32>(var_3.x, 42301u, 1u) & vec3<u32>(0u, var_3.x, 0u)), abs(22824u), global2.x, Struct_1(-1009f, vec2<i32>(-32524i, -10133i), _wgslsmith_mod_i32(var_2.c, 0i), var_1.x, true))));
    var_1 = _wgslsmith_clamp_vec3_i32(abs(abs(-max(vec3<i32>(-11006i, var_4.b.x, var_4.d), vec3<i32>(var_0.x, -1i, -1i)))), vec3<i32>(var_1.x, -1i, ~var_1.x & 0i), ~(~(firstTrailingBit(vec3<i32>(-31767i, -2147483647i, 2147483647i)) | (vec3<i32>(-2147483647i, var_0.x, 0i) >> (vec3<u32>(var_3.x, var_3.x, var_3.x) % vec3<u32>(32u))))));
    var_2 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

