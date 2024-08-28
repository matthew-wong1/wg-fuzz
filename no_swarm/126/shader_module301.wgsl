struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16>;

var<private> global1: Struct_5;

var<private> global2: Struct_2 = Struct_2(false, 204f, vec2<bool>(true, true), vec3<i32>(-16508i, 1i, 0i), Struct_1(vec2<i32>(-68144i, 3618i)));

var<private> global3: Struct_2 = Struct_2(false, 417f, vec2<bool>(true, false), vec3<i32>(10570i, -7730i, 0i), Struct_1(vec2<i32>(1i, 2147483647i)));

var<private> global4: f32 = 402f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-1326f * _wgslsmith_f_op_f32(trunc(global3.b))))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-672f * global1.a))) * -543f) - _wgslsmith_f_op_f32(max(-326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1799f)))))));
    global2 = Struct_2(any(select(vec3<bool>(global3.c.x, false, global1.c), arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(max(-319f, _wgslsmith_f_op_f32(abs(1f)))), global2.c, global2.d | global3.d, Struct_1(-(~arg_2)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(-1188f)) > global1.a, -438f, arg_0.b.zz, global2.d, global3.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(-696f)), _wgslsmith_div_f32(957f, global2.b), _wgslsmith_f_op_f32(global1.a * -355f)))))));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(40003u, _wgslsmith_sub_u32(~u_input.a, 28612u >> (u_input.b % 32u))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 0u, 23211u), vec4<u32>(1u, u_input.b, arg_0.d, arg_0.d)), 1u, select(4294967295u, 1u, false)), u_input.a, firstLeadingBit(u_input.b))), 4294967295u), 16u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))));
    return arg_1.a;
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: u32) -> bool {
    global3 = arg_1.e;
    let var_0 = abs(~(~vec4<i32>(-1i, max(global2.e.a.x, global2.e.a.x), 1i, firstLeadingBit(global2.e.a.x))));
    var var_1 = ~countOneBits(reverseBits(countOneBits(abs(vec3<u32>(arg_3, 59349u, arg_1.c.d)))));
    let var_2 = reverseBits(~(1567u << (_wgslsmith_add_u32(0u ^ u_input.b, u_input.a << (22361u % 32u)) % 32u)));
    var var_3 = _wgslsmith_div_u32(arg_1.c.d, 1u);
    return select(false | any(vec2<bool>(any(arg_2), global2.c.x)), !arg_1.c.b.x, all(!vec3<bool>(global3.b <= arg_1.b, global2.a, global2.c.x)));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global1 = Struct_5(_wgslsmith_f_op_f32(ceil(global2.b)), global2.d.x, false);
    let var_0 = global2.b;
    var var_1 = global3.c.x || (global2.e.a.x <= global1.b);
    var var_2 = ~arg_0.yz;
    var_2 = firstLeadingBit(_wgslsmith_add_vec2_u32(~(~vec2<u32>(4294967295u, arg_0.x)), arg_0.zx ^ ~select(vec2<u32>(4294967295u, 26817u), vec2<u32>(arg_0.x, 1u), global3.c)));
    return func_5(global2.e.a.x, Struct_4(global2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(2147483647i, vec3<bool>(true, false, false), global2.e, 37319u), global1.c, vec2<i32>(1i, -2147483647i))), Struct_5(377f, -1i, global1.c)))), Struct_3(_wgslsmith_clamp_i32(max(global1.b, global1.b), -69598i, global1.b), select(vec3<bool>(global3.c.x, global3.c.x, false), select(vec3<bool>(global1.c, false, true), vec3<bool>(true, global1.c, global3.c.x), false), global3.b > global1.a), global2.e, 67760u), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(0i, global3.e.a.x, global3.e.a.x, global3.d.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(global2.e.a.x, -2147483647i, global3.d.x, 931i), abs(vec4<i32>(global2.d.x, global3.e.a.x, global1.b, 2147483647i)))), Struct_2(any(select(vec3<bool>(true, true, global2.c.x), vec3<bool>(true, global3.c.x, global3.a), vec3<bool>(true, global2.c.x, global1.c))), -1000f, global2.c, firstTrailingBit(firstTrailingBit(vec3<i32>(-2147483647i, global2.d.x, -12495i))), global2.e)), vec3<bool>(global3.c.x, all(vec3<bool>(any(vec4<bool>(false, global2.c.x, false, global1.c)), all(vec4<bool>(global1.c, global2.c.x, false, false)), any(vec2<bool>(true, global3.a)))), _wgslsmith_div_i32(countOneBits(0i), 2147483647i >> (var_2.x % 32u)) <= (global2.e.a.x ^ ~global2.e.a.x)), 0u);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(22626i, global1.b & -reverseBits(0i));
    global1 = Struct_5(global3.b, -48012i, u_input.b < 10470u);
    global3 = Struct_2(global1.c, global2.b, select(vec2<bool>(true, false), select(select(global2.c, select(global2.c, global2.c, arg_1.c.x), true), select(!vec2<bool>(arg_0, false), select(arg_1.c, global2.c, false), true & global1.c), global1.c), all(!select(vec4<bool>(global3.a, true, global2.a, global3.c.x), vec4<bool>(global1.c, global3.a, arg_1.a, true), arg_1.a))), _wgslsmith_div_vec3_i32(vec3<i32>(~countOneBits(-996i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.e.a.x, -2147483647i), ~global1.b), 0i), vec3<i32>(global1.b, _wgslsmith_div_i32(0i, arg_1.e.a.x), global1.b << (~u_input.b % 32u))), arg_1.e);
    let var_1 = Struct_3(1i, select(!vec3<bool>(!arg_0, arg_1.c.x, arg_1.c.x), vec3<bool>(global3.a, true, all(select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_0, arg_0), global2.c))), vec3<bool>(!global1.c, true, true)), arg_1.e, ~(~_wgslsmith_add_u32(abs(1u), ~4294967295u)));
    var var_2 = ~(~(vec4<u32>(var_1.d, u_input.b, var_1.d, 27594u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a, 16986u), vec4<u32>(0u, var_1.d, var_1.d, 1u)) % vec4<u32>(32u))) ^ ~(~select(vec4<u32>(var_1.d, var_1.d, u_input.a, var_1.d), vec4<u32>(var_1.d, var_1.d, u_input.b, u_input.b), false)));
    return arg_1;
}

fn func_1(arg_0: Struct_2) -> f32 {
    global3 = func_6(func_2(_wgslsmith_sub_vec3_u32((vec3<u32>(1376u, 9401u, 13163u) << (vec3<u32>(u_input.b, 47986u, u_input.b) % vec3<u32>(32u))) ^ firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.b)), vec3<u32>(abs(u_input.b), ~4294967295u, 4294967295u))), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 2147483647i), -arg_0.d.xx) <= ~abs(global2.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), global3.b) + _wgslsmith_f_op_f32(ceil(global3.b))), select(arg_0.c, !vec2<bool>(true, arg_0.a), select(!global2.c, global3.c, false)), vec3<i32>(~global2.d.x, firstLeadingBit(~47366i), ~(-19385i)), Struct_1(vec2<i32>(_wgslsmith_add_i32(global1.b, arg_0.d.x), min(global1.b, global1.b)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(655f + _wgslsmith_f_op_f32(trunc(1000f))), global2.b)), _wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(sign(global1.a))))));
    let var_0 = arg_0.e;
    let var_1 = global2.e;
    let var_2 = _wgslsmith_f_op_f32(min(global3.b, arg_0.b));
    let var_3 = min(global2.d, abs(-reverseBits(global3.d) << (vec3<u32>(~u_input.a, reverseBits(108353u), 59971u) % vec3<u32>(32u))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!select(1u >= u_input.a, all(vec3<bool>(false, false, global2.c.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(global1.c, 921f, select(vec2<bool>(true, true), vec2<bool>(global1.c, global1.c), global3.c), global3.d | global3.d, Struct_1(global3.d.zx))))), global3.c, firstLeadingBit(vec3<i32>(-abs(1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(13968i, global1.b, global2.d.x), vec3<i32>(0i, global1.b, global1.b)), global2.d.x)), func_6(false, Struct_2(global2.a, 1306f, vec2<bool>(true, select(global1.c, true, global1.c)), select(_wgslsmith_sub_vec3_i32(global3.d, vec3<i32>(global2.e.a.x, 18771i, global2.d.x)), ~global2.d, false), func_6(true, func_6(false, Struct_2(global1.c, global3.b, global3.c, global2.d, global3.e), vec3<f32>(-341f, global1.a, 298f)), vec3<f32>(global3.b, global3.b, -620f)).e), vec3<f32>(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1188f, global1.a)), _wgslsmith_f_op_f32(-global1.a))).e);
    global1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.b))), reverseBits(_wgslsmith_sub_i32(~(-12189i), -15717i)), func_6(-var_0.e.a.x == var_0.d.x, func_6(global1.c & true, Struct_2(true, global2.b, global2.c, var_0.d, global3.e), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(564f, -2952f, global2.b), vec3<f32>(1146f, -1475f, -167f), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-769f, global3.b, -955f) - vec3<f32>(global3.b, 1009f, -333f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a, 1200f, global3.b), vec3<f32>(global1.a, -1602f, global1.a))))).a != (((var_0.b >= 811f) != false) || false));
    global3 = Struct_2(true & func_6(select(u_input.a < 0u, 47684u == u_input.a, true), func_6(var_0.c.x, var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-835f, 2409f, global1.a) * vec3<f32>(global2.b, 240f, -1685f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, global3.b)))).a, var_0.b, !(!vec2<bool>(any(vec3<bool>(false, global2.a, true)), u_input.a >= 4294967295u)), vec3<i32>(abs(19595i), -18535i, -(_wgslsmith_add_i32(2147483647i, -17373i) >> ((37038u ^ u_input.b) % 32u))), Struct_1(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, global2.d.x) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), var_0.e.a))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(955f, _wgslsmith_f_op_f32(-global1.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(u_input.a | 6706u, 16u)], vec2<f32>(global3.b, -1668f), false)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, 289u, u_input.a), 16u)])));
    let var_2 = vec2<i32>(-1i) * -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.e.a.x, global3.e.a.x), global3.d.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global2.d.x), global2.d.yy)), vec2<i32>(-2147483647i, func_6(var_0.a, Struct_2(global1.c, 391f, var_0.c, global2.d, Struct_1(vec2<i32>(0i, global1.b))), vec3<f32>(global2.b, var_1.x, global1.a)).d.x), global3.a);
    let var_3 = -_wgslsmith_clamp_vec3_i32(select(global2.d, var_0.d, !(!vec3<bool>(global2.a, global2.c.x, global1.c))), global2.d, _wgslsmith_clamp_vec3_i32(global3.d, ~(~global2.d), -var_0.d | abs(vec3<i32>(15238i, 0i, var_2.x))));
    global1 = Struct_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(var_1 + var_1), Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-219f, global1.a), _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(u_input.a, 16u)], Struct_5(-1172f, 43718i, true))))), -1i, (0u < u_input.b) || true))), global3.e.a.x, !global1.c);
    var var_4 = vec4<i32>(abs(var_0.e.a.x), -8888i, 2147483647i >> (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.a), vec4<u32>(87084u, 1u, 4294967295u, 4294967295u))) % 32u), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(vec2<u32>(select(u_input.b, 47394u, var_0.a), u_input.a), max(vec2<u32>(4294967295u, u_input.b) ^ vec2<u32>(102779u, u_input.a), vec2<u32>(u_input.b, u_input.a) & vec2<u32>(2950u, 93156u)), reverseBits(vec2<u32>(3771u, 29242u))));
}

