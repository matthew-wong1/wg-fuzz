struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<i32>, 23>;

var<private> global2: array<vec4<f32>, 25>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = u_input.c.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(528f, _wgslsmith_f_op_f32(433f - -490f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -194f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(step(-2651f, 1008f)))))), Struct_1(vec2<bool>(!(!global0.x), true)), select(_wgslsmith_clamp_vec2_i32(u_input.c, ~(global1[_wgslsmith_index_u32(129457u, 23u)] << (vec2<u32>(3994u, 4294967295u) % vec2<u32>(32u))), min(vec2<i32>(0i, -1801i), global1[_wgslsmith_index_u32(~0u, 23u)])), reverseBits(-abs(vec2<i32>(u_input.c.x, 57562i))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, global0.x), vec2<bool>(false, global0.x)), !vec2<bool>(false, global0.x)), !select(vec2<bool>(true, false), vec2<bool>(global0.x, true), true), false)));
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(sign(-933f)), var_1.b, vec2<i32>(-1i, -13423i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)) * 1102f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(max(var_1.a, var_1.a)))), 781f);
    global0 = !(!var_1.b.a);
    let var_3 = var_0;
    return ~(~u_input.b.x);
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, ~_wgslsmith_mult_vec2_u32(vec2<u32>(103387u, 19524u), u_input.a.yy)), func_3() ^ ~_wgslsmith_add_u32(u_input.b.x, abs(4294967295u)));
    global2 = array<vec4<f32>, 25>();
    let var_1 = Struct_3(select(vec3<bool>(any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, false, true))), !(global0.x && global0.x), all(vec3<bool>(true, false, global0.x)) || global0.x), select(vec3<bool>(global0.x, false, false), vec3<bool>(!global0.x, true, u_input.b.x >= 24031u), vec3<bool>(true, any(vec2<bool>(global0.x, true)), global0.x)), vec3<bool>(!global0.x, false, true)), Struct_1(vec2<bool>(abs(2147483647i) >= u_input.c.x, any(vec4<bool>(global0.x, false, true, true)))), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(21868u, ~_wgslsmith_clamp_u32(u_input.a.x >> (var_0 % 32u), _wgslsmith_mod_u32(1u, u_input.b.x), 1u)), 25u)] + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-856f, _wgslsmith_f_op_f32(f32(-1f) * -326f), arg_0, -1952f))))));
    var var_3 = vec2<i32>(u_input.c.x, u_input.c.x);
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(-arg_0), Struct_1(!vec2<bool>(global0.x, global0.x)), u_input.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * 2012f), 1035f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1191f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), var_2.x)))), _wgslsmith_f_op_f32(abs(-822f)));
}

fn func_1(arg_0: f32) -> Struct_4 {
    global0 = vec2<bool>(u_input.c.x != u_input.c.x, true);
    global2 = array<vec4<f32>, 25>();
    let var_0 = (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 0u, 66561u), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 21429u), vec4<u32>(49796u, u_input.a.x, 1u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(42828u, 4294967295u, 1u, u_input.a.x), vec4<u32>(4294967295u, 36413u, u_input.b.x, 4294967295u), vec4<u32>(1u, u_input.a.x, 0u, u_input.b.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 8671u, 48343u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u))) >> (firstLeadingBit(firstLeadingBit(vec4<u32>(1u, u_input.b.x, 1u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 1u, 0u, 65765u))) % vec4<u32>(32u))) | max(~(~(~vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 22152u))), vec4<u32>(firstTrailingBit(74128u | u_input.a.x), ~(~4294967295u), 0u, _wgslsmith_mod_u32(u_input.b.x, 41053u)));
    var var_1 = ~(-(~u_input.c.x));
    return func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0)))));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(arg_0.b.yx, arg_0.b.yx, select(vec2<bool>(arg_0.b.x >= func_2(arg_0.c).c, _wgslsmith_f_op_f32(ceil(-2009f)) != _wgslsmith_f_op_f32(abs(777f))), func_1(-2217f).a.b.a, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, 236f, -1000f, arg_0.a.a) * vec4<f32>(var_0.x, arg_0.a.a, 771f, -869f)), global2[_wgslsmith_index_u32(u_input.a.x, 25u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - arg_0.b.x), _wgslsmith_f_op_f32(714f + -464f), -674f, _wgslsmith_div_f32(728f, -308f)))) - global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1715u, 0u), u_input.b), _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(4294967295u, 53589u, 0u)), 32171u)), 25u)]);
    let var_2 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(trunc(func_1(_wgslsmith_f_op_f32(ceil(1656f))).b.x))));
    let var_3 = func_1(-387f).a.b.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f + -539f));
    return Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(select(-2154f, var_0.x, true))).c))), Struct_1(!arg_0.a.b.a), select(global1[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_div_vec2_i32(var_2.a.c, var_2.a.c), !select(func_2(var_1.x).a.b.a, func_1(var_0.x).a.b.a, arg_0.a.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1868f, -1000f)), _wgslsmith_f_op_f32(step(512f, 955f)))))));
    var var_1 = all(select(select(vec3<bool>(global0.x, global0.x, true), !(!vec3<bool>(global0.x, global0.x, true)), true), vec3<bool>(global0.x, false, global0.x), !(!any(vec4<bool>(global0.x, false, global0.x, false)))));
    let var_2 = func_4(func_1(-1137f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(_wgslsmith_f_op_f32(-var_0.x)).c, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(819f, var_2.a, 1723f) + vec3<f32>(-594f, 285f, var_2.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.a, 561f) * vec3<f32>(-1371f, var_0.x, var_2.a))))));
    global0 = select(func_4(Struct_4(func_2(var_3.x).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1415f, var_2.a, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))).b.a, vec2<bool>(global0.x, !global0.x != true), !all(select(!vec3<bool>(false, global0.x, var_2.b.a.x), !vec3<bool>(false, global0.x, false), vec3<bool>(true, var_2.b.a.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(~u_input.c.x, _wgslsmith_div_i32(u_input.c.x, -10154i)), var_2.c.x) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, var_2.c.x), var_2.c, u_input.c), min(-vec2<i32>(u_input.c.x, u_input.c.x), func_2(var_3.x).a.c), global1[_wgslsmith_index_u32(~(~90945u), 23u)]), ~vec4<i32>(25349i, -24011i, u_input.c.x, func_1(var_3.x).a.c.x) ^ ~vec4<i32>(35756i, -22902i, ~var_2.c.x, firstTrailingBit(-1i)), ~u_input.a.x, vec3<u32>(~u_input.b.x, 13527u, ~(~u_input.b.x & 4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(342f, var_3.x) - var_3.zz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_0.x) - var_3.zx)), var_0))));
}

