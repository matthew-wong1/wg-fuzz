struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: vec4<bool>;

var<private> global3: array<vec2<bool>, 29>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global1 = Struct_1(all(select(!(!vec3<bool>(global1.a, global0.a, false)), global2.zzy, true)));
    let var_0 = Struct_3(Struct_1(true != global1.a), vec2<bool>(true, true), vec3<i32>(1i, -1i, 1i), -firstLeadingBit(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(30516i, 2147483647i), vec2<i32>(28756i, -44448i)))), all(global3[_wgslsmith_index_u32(u_input.b.x, 29u)]));
    let var_1 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 51984i, 1202i, var_0.d), vec4<i32>(-73097i, -58924i, var_0.d, 0i)), ~vec4<i32>(var_0.c.x, -19415i, 4030i, var_0.c.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.a, 28437u), vec4<u32>(u_input.c.x, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u)), ~vec4<i32>(1i, var_0.c.x, -1i, 2147483647i) >> (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.c.x) % vec4<u32>(32u))), ~vec4<i32>(~(-31466i), -15519i, -21792i, 1i), vec4<i32>(~31005i, abs(_wgslsmith_clamp_i32(var_0.d, var_0.d, 2147483647i)), ~_wgslsmith_div_i32(-1i, var_0.c.x), var_0.c.x));
    var var_2 = var_0;
    global3 = array<vec2<bool>, 29>();
    return _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-var_0.c, var_0.c), ~var_2.c);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = func_3();
    global2 = select(select(select(vec4<bool>(!global0.a, global2.x, true, arg_0 != 4294967295u), select(vec4<bool>(true, global0.a, false, global0.a), select(vec4<bool>(true, global1.a, false, false), vec4<bool>(global2.x, true, false, global2.x), global1.a), vec4<bool>(false, global2.x, global0.a, true)), select(select(vec4<bool>(true, global0.a, global1.a, global2.x), vec4<bool>(true, global0.a, global1.a, global2.x), global1.a), vec4<bool>(false, global2.x, global0.a, global2.x), all(vec4<bool>(false, false, global0.a, global1.a)))), vec4<bool>(false, (var_0 << (1u % 32u)) <= 0i, any(!global2.ywz), global0.a), !select(vec4<bool>(true, global0.a, global1.a, false), !vec4<bool>(true, true, global0.a, false), global2.x)), !select(vec4<bool>(global2.x | true, all(vec4<bool>(global1.a, true, true, false)), true, false), select(vec4<bool>(false, false, global1.a, false), select(vec4<bool>(true, global2.x, global2.x, global0.a), vec4<bool>(false, false, true, false), vec4<bool>(global2.x, true, global2.x, global2.x)), global0.a), any(select(vec2<bool>(true, global2.x), global3[_wgslsmith_index_u32(arg_0, 29u)], global3[_wgslsmith_index_u32(arg_0, 29u)]))), _wgslsmith_f_op_f32(f32(-1f) * -973f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(685f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-747f)) - _wgslsmith_f_op_f32(f32(-1f) * -1102f))));
    var var_1 = Struct_1(!(global0.a & global2.x) || global2.x);
    var var_2 = Struct_2(vec3<u32>(abs(1u), max(~_wgslsmith_add_u32(u_input.a, 15128u), arg_0), min(~u_input.a, 3390u)), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_0), vec2<i32>(1i, var_0)) & countOneBits(min(vec2<i32>(var_0, var_0), vec2<i32>(1i, var_0))), vec2<i32>(-2147483647i, var_0)), min(reverseBits(u_input.c.x), ~12164u), Struct_1(true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(round(-285f)))))));
    global1 = Struct_1(any(vec3<bool>(any(vec4<bool>(false, global1.a, true, global2.x)), true, any(vec3<bool>(false, global2.x, global2.x)))));
    return Struct_2(~((vec3<u32>(u_input.b.x, arg_0, 4294967295u) & _wgslsmith_add_vec3_u32(var_2.a, var_2.a)) >> (vec3<u32>(reverseBits(u_input.a), 4294967295u, var_2.a.x) % vec3<u32>(32u))), -1i | (var_2.b >> (var_2.a.x % 32u)), u_input.b.x, var_2.d, 488f);
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = func_2(0u);
    let var_1 = _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(~_wgslsmith_mod_u32(var_0.c, 1u), arg_0, u_input.a, 4294967295u)), _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(6412u, 0u, var_0.c, 1u), vec4<u32>(arg_0, var_0.a.x, arg_0, u_input.b.x) << (vec4<u32>(4294967295u, 4294967295u, 19607u, 4187u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.c, var_0.c, u_input.c.x, u_input.a)), min(vec4<u32>(4294967295u, 1u, 0u, 26830u), vec4<u32>(2940u, 37796u, arg_0, 10253u)))));
    global3 = array<vec2<bool>, 29>();
    global3 = array<vec2<bool>, 29>();
    let var_2 = Struct_2(max(u_input.b | var_1.yyy, vec3<u32>(~1u, _wgslsmith_mod_u32(1u, var_0.c), max(4294967295u, 1u) ^ arg_0)), 1i, u_input.a, func_2(max(var_1.x, select(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_0, 4294967295u, var_0.c)), abs(var_0.c), global0.a))).d, 646f);
    return var_2;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = func_1(firstTrailingBit(arg_1.a.x), 1f).d;
    let var_1 = Struct_3(func_2(_wgslsmith_mod_u32(~arg_1.c, ~4294967295u | (0u ^ arg_1.c))).d, global2.wy, ~_wgslsmith_div_vec3_i32(vec3<i32>(abs(-10972i), 1i, 74473i), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(37198i, arg_1.b, 2147483647i), vec3<i32>(27573i, arg_1.b, arg_1.b)))), arg_1.b, global0.a);
    global2 = !select(select(vec4<bool>(any(vec4<bool>(var_1.a.a, true, false, var_1.a.a)), true, func_1(u_input.c.x, arg_1.e).d.a, true), vec4<bool>(!global1.a, any(vec4<bool>(var_1.a.a, arg_1.d.a, true, true)), !arg_0, true), vec4<bool>(!var_0.a, true, true, any(vec4<bool>(false, global1.a, var_1.a.a, true)))), vec4<bool>(false, !select(arg_1.d.a, true, arg_1.d.a), func_2(u_input.a).d.a, var_1.e), vec4<bool>(false, var_1.a.a, arg_1.d.a, !func_1(4294967295u, arg_1.e).d.a));
    global0 = func_1(0u, _wgslsmith_div_f32(-1221f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) + _wgslsmith_f_op_f32(select(-809f, arg_1.e, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1890f)), _wgslsmith_f_op_f32(arg_1.e * -294f), !arg_0)))))).d;
    var var_2 = -140f;
    return Struct_3(Struct_1(func_1(abs(~arg_1.c), 341f).d.a), select(var_1.b, select(global2.yx, vec2<bool>(!global2.x, all(vec3<bool>(false, false, true))), arg_0), !global2.yx), var_1.c, -_wgslsmith_add_i32(countOneBits(max(32667i, arg_1.b)), countOneBits(2147483647i)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global0.a, func_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(988f, _wgslsmith_f_op_f32(f32(-1f) * -401f), false)))), u_input.c);
    let var_1 = Struct_1(true);
    global3 = array<vec2<bool>, 29>();
    let var_2 = -804f;
    let var_3 = 1156f;
    let var_4 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, u_input.c.x), func_2(u_input.c.x).c, 41765u), ~_wgslsmith_mod_u32(u_input.a, 1u)), u_input.c.zy, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, ~u_input.c), ~vec3<u32>(0u, u_input.c.x, u_input.b.x)), 29u)]), ~u_input.b.xx);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x & u_input.b.x, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.c.zx, max(~var_0.c.xx, ~vec2<i32>(0i, 30297i)), -(~vec2<i32>(var_0.c.x, -54878i))), firstLeadingBit(-vec2<i32>(-2147483647i, var_0.c.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, 0u), u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(567f, var_2)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -1413f)))));
}

