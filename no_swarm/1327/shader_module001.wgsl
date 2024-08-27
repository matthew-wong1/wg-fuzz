struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(false, 2147483647i, true, Struct_2(-1690f)), Struct_3(false, i32(-2147483648), true, Struct_2(-529f)), Struct_3(false, -12928i, false, Struct_2(1000f)), Struct_3(true, 2147483647i, false, Struct_2(277f)), Struct_3(false, -1i, false, Struct_2(-779f)), Struct_3(false, 7266i, true, Struct_2(607f)), Struct_3(true, -11898i, false, Struct_2(-909f)), Struct_3(true, 17859i, false, Struct_2(711f)), Struct_3(true, 2147483647i, true, Struct_2(-680f)), Struct_3(false, i32(-2147483648), true, Struct_2(-246f)), Struct_3(true, i32(-2147483648), false, Struct_2(853f)), Struct_3(false, -1i, false, Struct_2(266f)), Struct_3(true, -25738i, true, Struct_2(278f)), Struct_3(true, -21308i, false, Struct_2(-868f)), Struct_3(false, 1i, true, Struct_2(202f)), Struct_3(false, 13741i, true, Struct_2(-598f)), Struct_3(true, -1i, false, Struct_2(719f)), Struct_3(false, 49243i, true, Struct_2(-496f)), Struct_3(false, 41788i, true, Struct_2(248f)), Struct_3(false, 20655i, false, Struct_2(-603f)), Struct_3(true, -1i, false, Struct_2(595f)), Struct_3(true, 14024i, true, Struct_2(-690f)), Struct_3(true, -33076i, false, Struct_2(-572f)));

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(4294967295u, 1u, 4294967295u, 23900u), vec4<u32>(26698u, 46167u, 65289u, 1u), vec4<u32>(4294967295u, 5409u, 25574u, 15708u), vec4<u32>(63763u, 11585u, 46140u, 83381u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(39821u, 1u, 21833u, 9168u), vec4<u32>(26481u, 59692u, 0u, 0u), vec4<u32>(1u, 18747u, 25445u, 4930u), vec4<u32>(4294967295u, 28555u, 0u, 53596u), vec4<u32>(33003u, 4294967295u, 27697u, 4011u), vec4<u32>(19789u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 74144u, 3695u, 0u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(109192u, 0u, 1u, 4294967295u), vec4<u32>(876u, 30873u, 0u, 1u), vec4<u32>(21485u, 4294967295u, 4294967295u, 3370u), vec4<u32>(37453u, 527u, 0u, 0u), vec4<u32>(4294967295u, 34107u, 0u, 16374u), vec4<u32>(15734u, 15253u, 32376u, 15371u), vec4<u32>(1u, 78485u, 33041u, 4294967295u), vec4<u32>(0u, 1u, 97432u, 72988u), vec4<u32>(6453u, 16070u, 1u, 2653u), vec4<u32>(63316u, 47467u, 11393u, 659u), vec4<u32>(74634u, 1u, 61576u, 4294967295u), vec4<u32>(4294967295u, 40184u, 0u, 8031u), vec4<u32>(4294967295u, 46111u, 4294967295u, 35751u), vec4<u32>(33226u, 4192u, 43319u, 0u), vec4<u32>(0u, 22248u, 0u, 21146u), vec4<u32>(0u, 39582u, 0u, 4294967295u), vec4<u32>(43922u, 78106u, 7090u, 29516u), vec4<u32>(4294967295u, 58520u, 4294967295u, 0u), vec4<u32>(0u, 4982u, 20482u, 80230u));

var<private> global3: array<f32, 7> = array<f32, 7>(-1909f, -871f, 544f, -1269f, 1000f, -822f, 726f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> Struct_2 {
    global2 = array<vec4<u32>, 32>();
    let var_0 = ~(~(~u_input.b));
    global3 = array<f32, 7>();
    var var_1 = arg_2.x;
    global2 = array<vec4<u32>, 32>();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f - -2855f))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_0))));
    let var_1 = func_2(any(select(vec3<bool>(arg_1.c.x, !arg_1.c.x, false), !arg_1.c.xwx, all(vec4<bool>(arg_1.c.x, true, arg_1.c.x, true)) & any(vec3<bool>(arg_1.c.x, true, arg_1.c.x)))), -1000f, ~vec2<i32>(arg_1.a, ~arg_1.a));
    let var_2 = _wgslsmith_mod_vec2_u32(min(vec2<u32>(6132u, 1u), _wgslsmith_div_vec2_u32(~u_input.b, firstTrailingBit(u_input.b)) & vec2<u32>(56667u, u_input.a)), abs(_wgslsmith_add_vec2_u32(u_input.b, max(u_input.b, vec2<u32>(u_input.a, 4294967295u)))));
    var var_3 = func_2(!(!all(vec2<bool>(arg_1.c.x, arg_1.c.x))), var_1.a, vec2<i32>(i32(-1i) * -arg_1.b, _wgslsmith_mult_i32(23520i, ~(~arg_1.b)))).a;
    global2 = array<vec4<u32>, 32>();
    return ~var_2.x ^ u_input.a;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(func_2(true, 1000f, _wgslsmith_sub_vec2_i32(~vec2<i32>(15394i, -15080i) << ((vec2<u32>(4294967295u, u_input.a) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(select(-2147483647i, 7732i, false), _wgslsmith_sub_i32(-24183i, -8253i)))), Struct_1(1i, abs(min(1i, 8252i)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1357f, global3[_wgslsmith_index_u32(2442u, 7u)], 669f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(7002u, 7u)], 261f, global3[_wgslsmith_index_u32(3812u, 7u)]) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(18700u, 7u)], -691f), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 7u)], -891f, global3[_wgslsmith_index_u32(u_input.b.x, 7u)])))))), Struct_1(~(i32(-1i) * -2147483647i), -1i, vec4<bool>(!all(vec3<bool>(true, true, true)), true, !any(vec3<bool>(true, true, true)), true)), countOneBits(vec3<u32>(func_3(262f, Struct_1(50844i, 2147483647i, vec4<bool>(true, true, true, false))), abs(u_input.b.x), ~116841u)) & firstLeadingBit(min(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(24876u, u_input.b.x, u_input.a), vec3<bool>(true, true, true)), vec3<u32>(23184u, u_input.a, 3440u) << (vec3<u32>(u_input.a, 37678u, u_input.b.x) % vec3<u32>(32u)))));
    var var_1 = all(var_0.b.c.zz) | false;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(1285f, 2023f), -1441f, var_0.a.a, _wgslsmith_f_op_f32(-var_0.a.a)))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + 488f) * global3[_wgslsmith_index_u32(~73683u, 7u)]), 134f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 1000f)))), -1484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-574f - global3[_wgslsmith_index_u32(17912u, 7u)])))), true));
    let var_3 = var_0.d.c;
    var var_4 = var_0.c.xx;
    return func_2(any(var_0.b.c), _wgslsmith_f_op_f32(-var_0.c.x), abs(reverseBits(vec2<i32>(-var_0.b.b, 2147483647i))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_4 {
    let var_0 = arg_0;
    global3 = array<f32, 7>();
    var var_1 = 21016u;
    return Struct_4(func_2(false, _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(step(var_0.a.a, 320f))), vec2<i32>(var_0.d.b, _wgslsmith_mod_i32(var_0.d.a, 12170i))), Struct_1(~2147483647i & ~var_0.d.b, 36297i, arg_0.d.c), vec3<f32>(_wgslsmith_f_op_f32(ceil(164f)), _wgslsmith_f_op_f32(-var_0.a.a), -957f), var_0.b, _wgslsmith_clamp_vec3_u32(abs(max(_wgslsmith_mult_vec3_u32(arg_0.e, arg_0.e), arg_0.e)), reverseBits(arg_0.e), var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(func_1(), Struct_1(min(_wgslsmith_mod_i32(-1i, 1i), 1i), abs(1i), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(63939u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<f32>(global3[_wgslsmith_index_u32(53053u, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)]), true)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1033f, global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(1u, 7u)]) * vec3<f32>(global3[_wgslsmith_index_u32(58227u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(958u, 7u)], 1461f))))), Struct_1(0i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(25908i, 2147483647i, 1i), 2147483647i, ~33553i), vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(34408u, 60680u, u_input.a), vec3<u32>(34913u, 0u, 4294967295u), vec3<u32>(3614u, 1u, 4294967295u)), ~vec3<u32>(u_input.b.x, 62727u, u_input.a)) & ~(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x) << (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)))), Struct_3((select(true, true, true) || true) & (_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 7u)], -1200f) > global3[_wgslsmith_index_u32(18023u, 7u)]), firstLeadingBit(max(-12973i, _wgslsmith_clamp_i32(-6759i, 30063i, 20689i))), any(vec4<bool>(true, true, true, true)), func_2(reverseBits(-1i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 21218i), vec2<i32>(49375i, 2147483647i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2685f)))), ~vec2<i32>(1i, 1i))));
    var var_1 = Struct_3(false, 5324i, false, Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 7u)]));
    var var_2 = !(!(!var_1.a));
    var var_3 = 1i;
    let var_4 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), abs(max(vec2<u32>(u_input.a, u_input.b.x), abs(var_0.e.yx)))) >> (~(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.e.x, var_0.e.x), vec2<u32>(var_0.e.x, u_input.a)) & ~vec2<u32>(u_input.a, 21211u)) % vec2<u32>(32u));
    var var_5 = true;
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_0.d.b), abs(vec2<i32>(-35574i, var_0.b.a))))));
}

