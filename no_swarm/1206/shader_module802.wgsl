struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: bool = true;

var<private> global2: array<u32, 9>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 4294967295u, ~u_input.b.x), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(7710u, 9u)] & u_input.b.x, ~42707u, ~global2[_wgslsmith_index_u32(4294967295u, 9u)])), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(20173u, 423u, global2[_wgslsmith_index_u32(u_input.b.x, 9u)], 0u), vec4<u32>(u_input.a, 0u, 0u, u_input.b.x))) << (global2[_wgslsmith_index_u32(4294967295u, 9u)] % 32u), ~_wgslsmith_dot_vec2_u32(u_input.b | vec2<u32>(global2[_wgslsmith_index_u32(37101u, 9u)], 12424u), abs(u_input.b))), all(vec2<bool>(true, true)));
    let var_1 = min(1i, ~(-2147483647i));
    global2 = array<u32, 9>();
    global2 = array<u32, 9>();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global3.zxy, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global3.yyw * global3.yzz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -469f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.x)), global3.x, global3.x)))));
    return _wgslsmith_div_i32(var_1, 0i);
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = select(vec4<i32>(reverseBits(~abs(36894i)), _wgslsmith_mod_i32(2147483647i, select(-30058i, -48772i, true) << (~1u % 32u)), abs(func_3()), -30870i), ~(~_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, -39369i, 2147483647i, 68252i), vec4<i32>(1i, 1i, 1i, 1i))), vec4<bool>(true, any(!(!vec3<bool>(arg_1, arg_1, false))), 7506u >= u_input.a, arg_1));
    global2 = array<u32, 9>();
    global2 = array<u32, 9>();
    var_0 = vec4<i32>(var_0.x, 21580i, -11384i, ~(-57875i));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f * 1177f) - arg_0), _wgslsmith_f_op_f32(sign(-1000f))), global3.x, true)), _wgslsmith_f_op_f32(exp2(arg_0))));
    return Struct_1(_wgslsmith_div_vec3_u32(~(~vec3<u32>(49906u, u_input.a, 30418u)), firstTrailingBit(~vec3<u32>(u_input.b.x, u_input.a, 1u) | _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(0u, 9u)]), vec3<u32>(1u, 1u, global2[_wgslsmith_index_u32(73769u, 9u)])))), !(!arg_1));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = global3.zzz;
    global0 = array<Struct_4, 28>();
    var var_1 = arg_0.a.yy;
    let var_2 = _wgslsmith_f_op_f32(global3.x * var_0.x);
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, var_1.x, 10331u), vec3<u32>(43337u, 1u, global2[_wgslsmith_index_u32(arg_0.a.x, 9u)])), arg_1.c.a), vec3<u32>(~arg_0.a.x, abs(var_1.x), ~0u)), ~global2[_wgslsmith_index_u32(~arg_0.a.x, 9u)] | max(0u, ~15753u), 12856u), true);
    return Struct_2(var_3.b, ~(~(~arg_1.b | _wgslsmith_add_i32(-2147483647i, 65542i))), Struct_1(max(~vec3<u32>(0u, 0u, u_input.a), abs(firstLeadingBit(vec3<u32>(0u, arg_1.d.a.x, arg_0.a.x)))), false), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.c.a.x, 4294967295u, arg_0.a.x << (var_1.x % 32u)), select(vec3<u32>(0u, arg_0.a.x, 0u), ~arg_1.c.a, arg_0.b & true)), arg_1.a));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> u32 {
    let var_0 = func_4(Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 9996u, 9403u), vec3<u32>(arg_0.a, global2[_wgslsmith_index_u32(55255u, 9u)], 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(12125u, 0u, 1u), vec3<u32>(1u, 1u, arg_0.a)), vec3<u32>(19822u, arg_0.a, u_input.a) >> (vec3<u32>(27752u, 0u, u_input.a) % vec3<u32>(32u))) & ~(vec3<u32>(1u, 33604u, arg_0.a) ^ vec3<u32>(global2[_wgslsmith_index_u32(74136u, 9u)], u_input.a, arg_0.a)), true), Struct_2(all(vec3<bool>(any(vec2<bool>(false, false)), true, true)), _wgslsmith_add_i32(~1i, firstLeadingBit(0i)) >> ((global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 5757u), 9u)] & u_input.a) % 32u), Struct_1(firstTrailingBit(vec3<u32>(0u, 1u, arg_0.a)), true), func_2(941f, !any(vec3<bool>(true, false, false)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global3.x);
    global1 = select(all(!select(vec3<bool>(var_0.c.b, true, true), vec3<bool>(var_0.d.b, var_0.c.b, var_0.a), vec3<bool>(var_0.a, var_0.d.b, true))), any(select(!vec2<bool>(var_0.a, true), !vec2<bool>(false, var_0.c.b), select(vec2<bool>(var_0.d.b, var_0.c.b), vec2<bool>(true, var_0.d.b), false))), any(!vec4<bool>(var_0.d.b, var_0.c.b, var_0.a, true))) | !all(vec4<bool>(any(vec4<bool>(false, true, var_0.a, false)), !var_0.d.b, false || var_0.c.b, true));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, -2305f)) + global3.x)))) + global3.x);
    let var_2 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, var_0.a, var_0.c.b, false), vec4<bool>(var_0.d.b, true, false, false), false), vec4<bool>(true, var_0.c.b, false, false), select(vec4<bool>(var_0.d.b, true, false, var_0.c.b), vec4<bool>(true, true, var_0.a, false), vec4<bool>(false, var_0.a, var_0.a, var_0.d.b))), select(select(vec4<bool>(false, var_0.a, var_0.d.b, true), vec4<bool>(true, true, var_0.a, var_0.d.b), vec4<bool>(var_0.d.b, var_0.d.b, true, true)), vec4<bool>(true, var_0.a, true, var_0.a), select(vec4<bool>(var_0.d.b, var_0.a, var_0.d.b, true), vec4<bool>(true, true, var_0.c.b, false), var_0.a))), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), var_0.c.b), select(vec4<bool>(false, true, false, true), !(!select(vec4<bool>(false, var_0.c.b, true, false), vec4<bool>(true, var_0.a, true, var_0.d.b), vec4<bool>(var_0.d.b, false, var_0.a, var_0.a))), false), var_0.c.b);
    return abs(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(arg_0.a ^ var_0.d.a.x, 9u)], u_input.b.x), min(0u, ~var_0.d.a.x)), 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~1i);
    let var_1 = reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(select(1u, u_input.a, true), abs(global2[_wgslsmith_index_u32(21059u, 9u)]), 4294967295u, 29590u) & vec4<u32>(global2[_wgslsmith_index_u32(~80421u, 9u)], u_input.b.x & 0u, select(4294967295u, 0u, true), func_1(Struct_4(global2[_wgslsmith_index_u32(56459u, 9u)]), global3.x)), select(_wgslsmith_add_vec4_u32(abs(vec4<u32>(59689u, u_input.a, u_input.a, 1u)), firstTrailingBit(vec4<u32>(0u, u_input.a, 80788u, global2[_wgslsmith_index_u32(u_input.a, 9u)]))), vec4<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62831u, 9u)], 9u)], firstTrailingBit(u_input.a), 59935u, ~u_input.a), !func_2(3578f, true).b)));
    global2 = array<u32, 9>();
    let var_2 = vec3<bool>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(func_2(global3.x, true).a, var_1.xwz), abs(80791u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 1u)) == global2[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), 9u)], true, !(!(!any(vec4<bool>(true, true, false, false)))));
    let var_3 = func_4(Struct_1(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 36214u)), 108010u, 9727u), 0u, firstTrailingBit(1u)), false), Struct_2(var_2.x, var_0, func_2(383f, var_2.x), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(1u, 9u)], select(var_1.x, 0u, var_2.x), ~u_input.b.x), var_2.x)));
    var var_4 = func_4(func_4(func_2(_wgslsmith_f_op_f32(max(global3.x, global3.x)), var_2.x), Struct_2(false, 1i, Struct_1(~vec3<u32>(var_3.c.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.c.a.x, 9u)], 9u)], 0u), true), func_4(var_3.c, func_4(var_3.c, Struct_2(var_2.x, var_3.b, var_3.d, Struct_1(var_3.c.a, true)))).d)).d, var_3).c;
    let var_5 = global0[_wgslsmith_index_u32(countOneBits(var_3.d.a.x), 28u)];
    var var_6 = select(select(select(vec4<bool>(false, true, var_3.d.b, var_3.d.b), select(select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(true, var_2.x, false, false), var_3.d.b), select(vec4<bool>(var_3.d.b, true, var_4.b, var_2.x), vec4<bool>(false, var_4.b, var_4.b, true), var_3.c.b), var_4.b), !var_2.x), vec4<bool>(var_3.a, _wgslsmith_mod_i32(var_3.b, var_3.b) > ~(-2147483647i), var_3.a, !var_2.x), select(!select(vec4<bool>(true, var_2.x, false, true), vec4<bool>(var_3.d.b, var_4.b, true, var_2.x), var_4.b), !vec4<bool>(var_3.d.b, var_3.a, false, false), true)), !(!vec4<bool>(any(var_2.xz), true, true, var_3.c.b)), vec4<bool>(-411f < _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(f32(-1f) * -1349f)), false, select(true, true, var_2.x & false) | (func_4(var_3.d, var_3).a || func_4(Struct_1(vec3<u32>(var_3.c.a.x, var_4.a.x, 0u), false), Struct_2(var_2.x, 2147483647i, var_3.d, var_3.c)).a), var_2.x));
    global2 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-1774f, global3.x, 1u, _wgslsmith_mult_vec4_i32(-(~firstLeadingBit(vec4<i32>(var_3.b, -2147483647i, -26471i, var_3.b))), vec4<i32>(~var_0, _wgslsmith_div_i32(0i, var_0), -10636i, select(-var_3.b, _wgslsmith_div_i32(var_0, -40921i), true))));
}

