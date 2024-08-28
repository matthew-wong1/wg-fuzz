struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-148f, -123f, -1008f, 909f)), 42222u, -1628f);

var<private> global2: array<u32, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = Struct_5(arg_3, !(!select(vec3<bool>(false, false, false), arg_1.a.xyw, true)), vec4<i32>(firstLeadingBit(arg_2), _wgslsmith_mod_i32(~(-1i), _wgslsmith_mult_i32(-18988i, 1i)), ~(-8177i), arg_2), vec4<bool>(true, any(arg_1.a), select(arg_1.a.x, any(!arg_1.a.zx), (arg_1.a.x | arg_1.a.x) & true), all(!arg_1.a.yy)));
    let var_1 = arg_3.c;
    var var_2 = Struct_3(var_0.a.a, 673f, firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.c.x, countOneBits(arg_2), arg_3.a.x), vec3<i32>(min(var_0.c.x, arg_0), ~(-11376i), _wgslsmith_mod_i32(var_1.x, -1i)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f - var_2.b)) * var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1043f * var_2.b)), _wgslsmith_f_op_f32(round(var_0.a.b))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2) -> vec3<bool> {
    global2 = array<u32, 12>();
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(global1.a.a)));
    let var_2 = _wgslsmith_mult_vec3_i32(-max(~vec3<i32>(u_input.c, -4423i, u_input.c), select(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<i32>(u_input.c, 2147483647i, 2147483647i), arg_1.a.x)), vec3<i32>(u_input.c, reverseBits(-2147483647i), u_input.c)) >> (firstTrailingBit(vec3<u32>(~(~global0[_wgslsmith_index_u32(1u, 5u)]), ~max(arg_2.b, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]), 1u)) % vec3<u32>(32u));
    var var_3 = u_input.c;
    return arg_1.a.xzy;
}

fn func_2() -> u32 {
    let var_0 = Struct_5(Struct_3(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(u_input.c, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -187f))) + global1.a.a.x), vec3<i32>(_wgslsmith_add_i32(u_input.c, 2147483647i) | firstLeadingBit(1i), -(0i >> (0u % 32u)), u_input.c)), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global1.a.a)) * _wgslsmith_f_op_vec4_f32(max(global1.a.a, global1.a.a)))), Struct_4(vec4<bool>(true, true, true, true)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(1i, Struct_4(vec4<bool>(true, false, false, false)), 0i, Struct_3(vec2<i32>(31221i, u_input.c), global1.a.a.x, vec3<i32>(-243i, u_input.c, u_input.c))))), global1.b, _wgslsmith_div_f32(global1.a.a.x, _wgslsmith_f_op_f32(-global1.c)))), -(~(~vec4<i32>(1i, 1i, u_input.c, -1i))), !vec4<bool>(true, true, false, func_4(global1.a, Struct_4(vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec4<f32>(global1.a.a.x, -655f, 935f, 1306f)), 4294967295u, 467f)).x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.a.a))) + _wgslsmith_div_vec4_f32(global1.a.a, vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b * -1431f), _wgslsmith_f_op_f32(abs(var_0.a.b)), -379f, _wgslsmith_f_op_f32(max(503f, var_0.a.b))))));
    var var_2 = select(func_4(global1.a, Struct_4(!vec4<bool>(var_0.d.x, var_0.b.x, true, false)), Struct_2(Struct_1(var_1.a), global0[_wgslsmith_index_u32(abs(global1.b) | (16193u | global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 12u)]), 5u)], global1.c)).zx, select(var_0.b.yz, var_0.d.xw, select(vec2<bool>(true, true), var_0.b.zy, var_0.b.yy)), vec2<bool>(true, true));
    var_1 = global1.a;
    var var_3 = global1.a;
    return 81636u;
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> Struct_4 {
    var var_0 = Struct_5(Struct_3(abs(vec2<i32>(min(0i, u_input.c), -1i)), _wgslsmith_f_op_f32(f32(-1f) * -1423f), vec3<i32>(0i, reverseBits(-u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, 4201i, -1i), vec4<i32>(773i, u_input.c, u_input.c, 0i)))), !select(!select(arg_0, vec3<bool>(true, arg_0.x, arg_0.x), true), vec3<bool>(all(arg_0.xx), true, arg_0.x && true), select(arg_0, select(vec3<bool>(true, arg_0.x, false), arg_0, arg_0.x), false)), vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c, u_input.c, 1i), -vec3<i32>(u_input.c, -75800i, u_input.c)), ~vec3<i32>(23095i, u_input.c, -2147483647i) >> (firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(41424u, 5u)], 0u, 4294967295u)) % vec3<u32>(32u))), u_input.c, -1598i), select(vec4<bool>(!arg_0.x, false, arg_0.x, _wgslsmith_f_op_f32(1000f * 1000f) != _wgslsmith_f_op_f32(1264f - global1.a.a.x)), vec4<bool>(arg_0.x, any(vec4<bool>(false, false, true, true)), true, all(select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)))), select(select(!vec4<bool>(false, false, arg_0.x, true), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false)), !vec4<bool>(arg_0.x, true, true, arg_0.x)), !vec4<bool>(false, arg_0.x, true, arg_0.x), true | all(vec4<bool>(false, false, false, arg_0.x)))));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(9297i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.a.x, -8783i), var_0.c.yw), var_0.c.x, reverseBits(u_input.c)), min(~var_0.c, vec4<i32>(var_0.a.a.x, var_0.a.c.x, u_input.c, var_0.c.x))), select(abs(~vec4<i32>(var_0.a.c.x, var_0.a.c.x, 0i, var_0.c.x)), vec4<i32>(var_0.c.x, -1i, -1i << (1u % 32u), _wgslsmith_mult_i32(1i, 0i)), vec4<bool>(true, true, true, true))), 18181i);
    let var_2 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, 31083u, 14113u, 0u) & vec4<u32>(global1.b, 0u, 1u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56541u, 5u)], 5u)], 63044u, global0[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 12u)], 12u)]), abs(vec4<u32>(u_input.b.x, arg_1, 10784u, 0u)))), ~arg_1, abs(~4294967295u), func_2());
    return Struct_4(select(select(vec4<bool>(true, any(var_0.d.xxy), !var_0.d.x, true), vec4<bool>(func_4(Struct_1(global1.a.a), Struct_4(var_0.d), Struct_2(global1.a, 20487u, global1.a.a.x)).x, var_0.a.b > 1069f, true, false), !var_0.d), select(vec4<bool>(true, true, all(vec4<bool>(false, false, arg_0.x, false)), any(vec2<bool>(arg_0.x, var_0.b.x))), vec4<bool>(arg_0.x, true, arg_0.x, 180f < global1.c), var_0.d.x), true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    let var_0 = -vec3<i32>(13856i, ~_wgslsmith_div_i32(1i, firstTrailingBit(u_input.c)), -(-u_input.c | -2147483647i));
    global2 = array<u32, 12>();
    global2 = array<u32, 12>();
    let var_1 = vec4<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a << (1u % 32u), ~0u), _wgslsmith_sub_u32(global1.b, _wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(3440u, 12u)]))) >> (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global1.b, 5u)], 0u), firstLeadingBit(vec2<u32>(global1.b, arg_2.b)))) % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(global1.b, max(global1.b << (arg_2.b % 32u), firstTrailingBit(global2[_wgslsmith_index_u32(4389u, 12u)]))), 64452u), 4294967295u);
    var var_2 = func_5(vec3<bool>(0u != countOneBits(firstLeadingBit(arg_2.b)), any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), var_1.x < global0[_wgslsmith_index_u32(1u, 5u)]))), func_2());
    return all(!select(select(func_5(var_2.a.www, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 12u)]).a, vec4<bool>(false, var_2.a.x, var_2.a.x, true), var_2.a), !select(var_2.a, vec4<bool>(var_2.a.x, false, var_2.a.x, true), var_2.a.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(round(-210f)), _wgslsmith_f_op_f32(global1.a.a.x - -447f)), global1.a.a, select(func_1(Struct_1(vec4<f32>(var_0.x, global1.c, -565f, var_0.x)), global1.a, Struct_2(Struct_1(global1.a.a), global2[_wgslsmith_index_u32(35718u, 12u)], -1093f), vec2<i32>(-1i, -1i)), true, true)))), _wgslsmith_clamp_u32(1u, global1.b, 0u), -253f);
    var var_2 = ~(min(~(vec4<u32>(var_1.b, 1u, global0[_wgslsmith_index_u32(0u, 5u)], 33488u) | vec4<u32>(global0[_wgslsmith_index_u32(33678u, 5u)], u_input.b.x, global2[_wgslsmith_index_u32(12278u, 12u)], 5485u)), ~vec4<u32>(1u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12940u, 12u)], 12u)], u_input.a) | reverseBits(vec4<u32>(0u, 1u, global1.b, 9213u))) & select(vec4<u32>(_wgslsmith_mod_u32(24232u, u_input.b.x), ~global1.b, _wgslsmith_mult_u32(var_1.b, u_input.b.x), global0[_wgslsmith_index_u32(~u_input.b.x, 5u)]), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32440u, global2[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u, 10134u), vec4<u32>(117303u, global1.b, 19427u, global0[_wgslsmith_index_u32(u_input.a, 5u)])), reverseBits(52502u), u_input.b.x, u_input.b.x), !all(vec2<bool>(true, false))));
    let var_3 = func_5(select(!func_5(vec3<bool>(true, true, true), firstTrailingBit(global1.b)).a.yzy, func_5(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), true), _wgslsmith_dot_vec2_u32(var_2.yw, ~var_2.zx)).a.zyy, func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a.a)), func_5(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(var_2.x, 5u)]), var_1)), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b.x, var_1.b, var_2.x), vec3<u32>(var_2.x, u_input.b.x, global0[_wgslsmith_index_u32(89522u, 5u)])), select(vec3<u32>(4294967295u, 62890u, u_input.b.x), vec3<u32>(18321u, 142486u, 10172u), false))) | _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u >> (global0[_wgslsmith_index_u32(u_input.b.x, 5u)] % 32u), 60732u), ~(~4294967295u)), 5u)]);
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-184f)) - var_1.a.a.x), -167f, _wgslsmith_f_op_f32(step(var_1.c, -1220f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f * -339f)), _wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.a.yxy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.a.x, var_0.x, 339f), vec3<f32>(global1.a.a.x, var_0.x, 1764f))))));
    var_2 = vec4<u32>(~(~u_input.b.x), ~_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.a, 12u)], 28735u)), 48811u, 0u) & ~(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 5u)], 47247u, 16846u), vec4<u32>(var_1.b, global1.b, 52206u, global2[_wgslsmith_index_u32(21337u, 12u)]))));
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, reverseBits(-33030i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -157f))))));
}

