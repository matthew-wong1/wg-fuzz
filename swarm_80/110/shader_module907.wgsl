struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<i32, 12>;

var<private> global2: array<u32, 32> = array<u32, 32>(0u, 53933u, 1u, 46363u, 1u, 0u, 4294967295u, 1u, 0u, 12566u, 1167u, 56453u, 687u, 7431u, 40435u, 9241u, 4294967295u, 0u, 4294967295u, 59331u, 39273u, 122888u, 16779u, 4294967295u, 1u, 115088u, 1u, 4294967295u, 4294967295u, 25784u, 91700u, 57516u);

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    let var_0 = ~1u >> (~firstLeadingBit(~_wgslsmith_div_u32(u_input.a.x, 1u)) % 32u);
    var var_1 = Struct_2(-global3.a);
    var var_2 = global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(~46009u, _wgslsmith_add_u32(0u, 10804u), ~firstLeadingBit(1u))), 32u)];
    var var_3 = !(!select(vec4<bool>(true, 60037i == var_1.a.x, select(false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_4 = !select(select(!(!vec4<bool>(var_3.x, var_3.x, var_3.x, false)), !vec4<bool>(var_3.x, var_3.x, true, var_3.x), var_3.x), vec4<bool>(var_3.x, var_3.x != all(var_3.yxy), false, false), select(vec4<bool>(true, true, any(var_3.ywx), true), vec4<bool>(!var_3.x, all(vec4<bool>(var_3.x, false, true, var_3.x)), var_3.x, true | var_3.x), vec4<bool>(10565u > global2[_wgslsmith_index_u32(var_0, 32u)], any(vec4<bool>(var_3.x, var_3.x, false, var_3.x)), var_3.x, !var_3.x)));
    return -323f;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    var var_0 = (_wgslsmith_f_op_f32(-686f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-445f - -410f), arg_2.x))) <= _wgslsmith_f_op_f32(func_3())) | true;
    global1 = array<i32, 12>();
    let var_1 = 1u;
    global2 = array<u32, 32>();
    var var_2 = Struct_3(vec4<u32>(4294967295u, abs(~var_1) & ~_wgslsmith_add_u32(0u, 0u), 39497u, u_input.a.x), arg_2.x);
    return 601f;
}

fn func_1() -> Struct_2 {
    global2 = array<u32, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-373f, _wgslsmith_f_op_f32(func_2(global3.a.ww, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(188f, 270f, -316f), vec3<f32>(-133f, -1690f, 980f)))))))) - _wgslsmith_f_op_f32(f32(-1f) * -760f));
    let var_1 = 4294967295u;
    var var_2 = max(~u_input.a, vec2<u32>(_wgslsmith_div_u32(var_1, abs(global2[_wgslsmith_index_u32(31151u, 32u)])) << (select(select(global2[_wgslsmith_index_u32(8156u, 32u)], var_1, false), var_1, any(vec3<bool>(false, true, true))) % 32u), 4294967295u));
    var_2 = ~(_wgslsmith_add_vec2_u32(~select(u_input.a, u_input.a, vec2<bool>(true, false)), vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1, 32u)], 32u)], 4294967295u)) << (~_wgslsmith_mult_vec2_u32(abs(u_input.a), vec2<u32>(0u, 35557u)) % vec2<u32>(32u)));
    return Struct_2(_wgslsmith_div_vec4_i32(~(-global3.a), ~global3.a));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = ~(~firstTrailingBit(_wgslsmith_div_vec2_u32(min(u_input.a, vec2<u32>(arg_2.b, var_0.b)), u_input.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, arg_0, arg_2.a, -1572f) - vec4<f32>(1874f, -326f, 586f, -136f))), vec4<f32>(_wgslsmith_f_op_f32(-826f + -373f), -1208f, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.x, arg_0, arg_0, -746f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.x, arg_0, arg_0, var_0.a), vec4<f32>(arg_2.a, -1011f, arg_2.c.x, var_0.a))))) - vec4<f32>(-995f, _wgslsmith_f_op_f32(f32(-1f) * -998f), arg_0, _wgslsmith_div_f32(-2307f, 1102f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, -1093f, 343f, arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 666f, -1063f, -230f) + vec4<f32>(769f, var_0.c.x, -1290f, 225f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(658f, arg_0, -222f, 213f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(111f, var_0.a, arg_2.a, -2067f))))))))));
    global3 = func_1();
    global0 = array<vec2<bool>, 7>();
    return Struct_3(~vec4<u32>(30360u, arg_2.b, ~(~u_input.a.x), 86926u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(trunc(arg_0)))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3) -> vec4<f32> {
    global2 = array<u32, 32>();
    var var_0 = select(select(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-47533i, global3.a.x, 6258i)), vec3<i32>(global1[_wgslsmith_index_u32(arg_1.a.x, 12u)], 1i, -49479i) << ((arg_1.a.yyy ^ arg_1.a.wzz) % vec3<u32>(32u))), -(~func_1().a.xwy), vec3<bool>(all(vec2<bool>(true, false)), true, _wgslsmith_div_f32(arg_1.b, arg_1.b) <= _wgslsmith_f_op_f32(sign(arg_1.b)))), _wgslsmith_add_vec3_i32(global3.a.yyw, vec3<i32>(-1i) * -vec3<i32>(global3.a.x, global3.a.x, global3.a.x)), select(vec3<bool>(true, true, any(vec3<bool>(false, false, true)) || false), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), false));
    global3 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(1u, 12u)], -1i, 39210i, 6744i), global3.a, global3.a | global3.a), _wgslsmith_clamp_vec4_i32(global3.a, select(vec4<i32>(var_0.x, 1i, global1[_wgslsmith_index_u32(4294967295u, 12u)], -1i), vec4<i32>(-2147483647i, 2147483647i, -1i, var_0.x), vec4<bool>(false, false, true, false)), global3.a)), _wgslsmith_add_i32(24757i, ~global1[_wgslsmith_index_u32(4863u, 12u)]) & (i32(-1i) * -46512i), firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~u_input.a.x), 12u)]), countOneBits(select(global1[_wgslsmith_index_u32(~arg_0.x, 12u)], global3.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 32u)] < 0u))));
    let var_1 = reverseBits(_wgslsmith_mult_u32(abs(~15439u), ~(~arg_0.x))) | u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b, -135f, arg_1.b, 1671f)))))) + vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.b, -1569f, !any(vec4<bool>(false, true, false, true)))), arg_1.b, _wgslsmith_f_op_f32(func_2(-vec2<i32>(1i, 1i), firstTrailingBit(select(u_input.a.x, 19481u, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1695f, arg_1.b, arg_1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-186f, -2484f, arg_1.b) + vec3<f32>(arg_1.b, -536f, -775f))))), -287f));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(-353f)), _wgslsmith_div_f32(_wgslsmith_div_f32(847f, _wgslsmith_f_op_f32(var_2.x - 657f)), 1f), arg_1.b, _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(select(-677f, func_4(var_2.x, vec3<bool>(true, false, false), Struct_4(arg_1.b, arg_0.x, vec2<f32>(arg_1.b, 1379f), Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], 12u)], global3.a.x, 13425i, 13744i)))).b, 2517f < var_2.x)), all(vec4<bool>(true, true, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 7>();
    global0 = array<vec2<bool>, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(vec2<u32>(u_input.a.x, firstLeadingBit(~global2[_wgslsmith_index_u32(u_input.a.x, 32u)])), func_4(383f, vec3<bool>(true, true, u_input.a.x >= 15048u), Struct_4(_wgslsmith_div_f32(-499f, -1054f), 0u, vec2<f32>(-1000f, 764f), func_1())))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~5032u, 23282u));
}

