struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(27u, 4294967295u, 56668u, 0u, 1u, 1u, 125u, 4294967295u, 60226u, 0u, 36519u);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 29001i, i32(-2147483648)), vec3<bool>(false, true, true), vec3<i32>(-1i, i32(-2147483648), -138023i), 16819i), Struct_1(vec3<i32>(47104i, -3885i, -26319i), vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), -37697i, 2147483647i), 2147483647i), vec4<u32>(55314u, 14181u, 0u, 12886u), Struct_1(vec3<i32>(-1i, -1i, 79723i), vec3<bool>(false, true, true), vec3<i32>(-7332i, -1i, -11742i), 35310i), Struct_1(vec3<i32>(-1i, -10844i, 2147483647i), vec3<bool>(false, false, true), vec3<i32>(2147483647i, 6484i, -13874i), 11635i)), vec2<i32>(0i, i32(-2147483648)), Struct_2(Struct_1(vec3<i32>(-65559i, -18661i, 2147483647i), vec3<bool>(false, true, true), vec3<i32>(17601i, -31016i, 0i), 66001i), Struct_1(vec3<i32>(86078i, 0i, 2147483647i), vec3<bool>(true, true, false), vec3<i32>(34637i, 0i, 2147483647i), 28066i), vec4<u32>(4294967295u, 1u, 74009u, 0u), Struct_1(vec3<i32>(-28654i, -43860i, 15717i), vec3<bool>(true, false, true), vec3<i32>(20646i, -14287i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec3<i32>(1i, 3263i, 2147483647i), vec3<bool>(true, true, true), vec3<i32>(64221i, 0i, i32(-2147483648)), i32(-2147483648))), vec2<i32>(0i, 20549i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: f32) -> i32 {
    let var_0 = !(!arg_1.a.b.x && arg_1.d.b.x);
    let var_1 = vec3<bool>(arg_0.a.x, true, arg_2.x);
    var var_2 = Struct_2(Struct_1(global1.c.d.a, !(!arg_1.d.b), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_1.b.d, -44049i), ~vec3<i32>(-1i, arg_1.b.c.x, 28468i))), 38863i & _wgslsmith_mod_i32(~arg_1.e.a.x, min(0i, -5086i))), global1.c.e, vec4<u32>(4294967295u, ~(~(~1u)), 4294967295u, ~reverseBits(31800u) ^ global1.c.c.x), Struct_1(global1.a.a.c, select(global1.c.b.b, select(var_1, select(vec3<bool>(var_1.x, arg_2.x, var_0), vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(var_1.x, var_1.x, false)), global1.c.a.b), arg_0.a.x), _wgslsmith_mult_vec3_i32(min(global1.a.d.a & arg_0.b, vec3<i32>(arg_0.b.x, u_input.c, arg_0.b.x)), firstLeadingBit(~vec3<i32>(-1i, -45283i, -96137i))), -49205i), arg_1.e);
    var var_3 = arg_2;
    let var_4 = Struct_4(Struct_1(vec3<i32>(arg_1.a.c.x & u_input.e, i32(-1i) * -16037i, i32(-1i) * -45229i) << (_wgslsmith_clamp_vec3_u32(var_2.c.wwx, countOneBits(vec3<u32>(21669u, arg_1.c.x, u_input.d.x)), _wgslsmith_mult_vec3_u32(global1.c.c.yzx, var_2.c.zwy)) % vec3<u32>(32u)), select(vec3<bool>(!var_0, true, var_1.x), !vec3<bool>(true, false, arg_2.x), all(global1.c.e.b)), arg_1.a.c, i32(-1i) * -48339i));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-(arg_0.b.zx >> ((vec2<u32>(var_2.c.x, u_input.a) | vec2<u32>(0u, global1.c.c.x)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(~select(global1.a.b.c.yz, vec2<i32>(-1i, arg_1.e.d), var_0), var_4.a.a.zx)), ~(~var_2.d.d));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-368f - -720f) * _wgslsmith_f_op_f32(step(-644f, _wgslsmith_f_op_f32(f32(-1f) * -1408f)))) - 1f);
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(abs(63994u << (u_input.b % 32u)) & 1u, u_input.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(67780u, 11u)], u_input.b, u_input.b)), global1.a.c)), firstTrailingBit(21378u), global1.c.c.x);
    let var_2 = Struct_3(global1.a, vec2<i32>(global1.d.x, -_wgslsmith_mult_i32(global1.b.x, global1.a.b.a.x) ^ func_3(Struct_5(vec2<bool>(global1.a.d.b.x, global1.c.a.b.x), vec3<i32>(11180i, 2147483647i, u_input.e)), global1.a, vec4<bool>(global1.a.a.b.x, global1.c.d.b.x, global1.c.a.b.x, global1.c.a.b.x), -705f)), global1.c, global1.b);
    var var_3 = 1255f;
    var var_4 = var_2.a.c.x;
    return true;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = global1.a.b.c;
    let var_1 = var_0.zz;
    let var_2 = !select(!global1.c.e.b.zz, global1.c.b.b.yz, vec2<bool>(arg_0, func_2()));
    var var_3 = global1.a;
    var var_4 = u_input.d;
    return _wgslsmith_f_op_f32(1446f + _wgslsmith_f_op_f32(trunc(818f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_4 {
    global0 = array<u32, 11>();
    global1 = Struct_3(arg_2, vec2<i32>(1769i, -_wgslsmith_sub_i32(arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -25374i, 28847i), arg_2.e.a))), Struct_2(Struct_1(-arg_3, select(arg_2.e.b, arg_2.d.b, vec3<bool>(arg_2.b.b.x, false, false)), min(arg_2.e.c, vec3<i32>(2147483647i, arg_3.x, arg_3.x)), abs(abs(17839i))), arg_2.d, ~arg_2.c, Struct_1(arg_2.b.a, vec3<bool>(arg_0.x >= -1424f, !arg_2.a.b.x, arg_2.b.b.x), -reverseBits(global1.a.b.a), abs(-41167i)), arg_2.d), max(~vec2<i32>(reverseBits(u_input.c), u_input.c), vec2<i32>(-34224i, 1i)));
    global0 = array<u32, 11>();
    var var_0 = _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2061f))));
    global0 = array<u32, 11>();
    return Struct_4(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, -global1.a.d.d, 6700i), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-11105i, -2147483647i, 1i)), vec3<i32>(global1.b.x, u_input.c, arg_2.b.c.x))), !global1.a.a.b, arg_3, _wgslsmith_clamp_i32(arg_2.a.d, 1i, countOneBits(~global1.a.d.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(1f));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1661f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(func_1(global1.c.b.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-924f * 292f) - _wgslsmith_f_op_f32(2271f * -752f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f - -681f))))), u_input.c, global1.a, _wgslsmith_add_vec3_i32(global1.a.e.c >> (vec3<u32>(firstLeadingBit(17405u), _wgslsmith_sub_u32(31707u, global1.a.c.x), global0[_wgslsmith_index_u32(select(4294967295u, 1u, false), 11u)]) % vec3<u32>(32u)), global1.a.a.c & -abs(global1.c.b.c)));
    var var_2 = ~_wgslsmith_mult_u32(min(global0[_wgslsmith_index_u32(global1.c.c.x, 11u)] ^ 0u, _wgslsmith_div_u32(u_input.a, 0u)), _wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(4294967295u, u_input.b))) >> (0u % 32u);
    let var_3 = Struct_2(global1.a.a, var_1.a, abs(min(global1.c.c, max(vec4<u32>(global1.c.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], u_input.d.x, 1u) ^ global1.c.c, vec4<u32>(global1.a.c.x, 0u, 72645u, global1.c.c.x)))), Struct_1(global1.c.a.c, !var_1.a.b, global1.c.b.a, var_1.a.d), func_4(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1095f)), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -355f)))), max(-2147483647i, -(i32(-1i) * -54915i)), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1295f, 1753f, 1000f, -523f)), ~u_input.e, Struct_2(global1.a.d, var_1.a, vec4<u32>(0u, global0[_wgslsmith_index_u32(global1.c.c.x, 11u)], global1.a.c.x, 41016u), Struct_1(vec3<i32>(var_1.a.d, -2147483647i, -2147483647i), var_1.a.b, global1.c.e.c, -29110i), global1.c.a), global1.a.b.a | var_1.a.c).a, Struct_1(countOneBits(vec3<i32>(u_input.c, -2147483647i, 1i)), select(vec3<bool>(true, true, var_1.a.b.x), var_1.a.b, vec3<bool>(false, false, true)), -vec3<i32>(var_1.a.d, u_input.e, 10016i), ~var_1.a.c.x), vec4<u32>(4294967295u, u_input.a, _wgslsmith_mod_u32(20923u, global1.c.c.x), _wgslsmith_dot_vec4_u32(global1.c.c, vec4<u32>(74524u, 0u, u_input.a, 0u))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1315f, 205f, 219f, -211f) - vec4<f32>(455f, -2213f, -1000f, -342f)), u_input.c, global1.c, reverseBits(vec3<i32>(2147483647i, -1i, var_1.a.d))).a, Struct_1(vec3<i32>(2147483647i, 463i, -1i), select(global1.c.a.b, global1.c.d.b, var_1.a.b.x), ~vec3<i32>(var_1.a.c.x, 39686i, 2147483647i), _wgslsmith_mod_i32(var_1.a.c.x, 4219i))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(49088i, global1.a.a.a.x, 1i, 1i), vec4<i32>(-2147483647i, -24700i, 2147483647i, -18473i)), _wgslsmith_add_i32(14135i, global1.c.a.a.x)), global1.a.d.a)).a);
    global0 = array<u32, 11>();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f)));
    var var_5 = 22552u;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.e.a.zy | var_1.a.c.zy, global1.a.e.a.x << (countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 11u)], 0u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], 1u, global0[_wgslsmith_index_u32(19764u, 11u)])), 11u)]) % 32u), var_3.c.yww, vec2<i32>(var_1.a.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.d, 39799i, -49369i, -33418i), vec4<i32>(-2147483647i, -2147483647i, global1.a.d.a.x, 32292i)), ~(-74278i)), vec3<i32>(u_input.c, reverseBits(var_1.a.d), _wgslsmith_add_i32(1798i, 1981i))), vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(global1.d.x), max(global1.d.x, 2147483647i)), 2147483647i, ~(-2147483647i))));
}

