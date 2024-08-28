struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, true, false, false, true, false, false, false, true, false, false, false, true, false, false, false, false, true, true, false, true, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2;
    global0 = array<bool, 24>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -384f) * _wgslsmith_f_op_f32(f32(-1f) * -1296f))) - _wgslsmith_f_op_f32(-1328f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1651f + -1825f))))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(-arg_2.a.x)))), vec2<bool>(false, 24597u >= ~u_input.d.x));
    var var_2 = arg_2;
    let var_3 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(553f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-822f, -1260f)) + var_0.a.x)) * 656f);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, arg_2.a.x, all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec2<bool>(arg_1, false), arg_1)))))), any(vec4<bool>(!global0[_wgslsmith_index_u32(reverseBits(u_input.d.x), 24u)], all(vec2<bool>(false, arg_1)), true, firstLeadingBit(u_input.d.x) <= min(u_input.d.x, 24665u))), -643f, vec2<bool>(any(vec2<bool>(arg_1, any(vec2<bool>(true, true)))), arg_1));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(536f)))), _wgslsmith_f_op_f32(floor(658f))), all(vec2<bool>(select(false, arg_1, true), var_0.b)), _wgslsmith_f_op_f32(func_3(~(~(~1u)), arg_0.x, Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, arg_2.a.x, var_0.c, var_0.c)))))), var_0.d);
    var_0 = var_1;
    let var_2 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-var_0.a), arg_2.a.x);
    let var_3 = u_input.c.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a))))) - vec4<f32>(_wgslsmith_f_op_f32(1595f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f))), var_2.x, -199f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 470f)), _wgslsmith_f_op_f32(round(var_2.x))))));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(238f, arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_div_f32(1000f, arg_0.a)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 1019f, arg_0.c))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(4294967295u, u_input.d.x), _wgslsmith_f_op_f32(arg_0.a - arg_0.a), Struct_2(vec4<f32>(-1000f, arg_0.a, arg_0.c, arg_0.a)))) == 753f, Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -424f, arg_0.a, -1302f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.c, arg_0.a, arg_0.a)), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)], false)))))));
    let var_1 = !arg_0.d;
    let var_2 = !vec3<bool>(true, u_input.d.x == ~_wgslsmith_mult_u32(u_input.d.x, 49652u), _wgslsmith_dot_vec4_i32(vec4<i32>(32218i, u_input.b.x, u_input.c.x, u_input.b.x), ~vec4<i32>(0i, 1i, u_input.c.x, u_input.b.x)) < _wgslsmith_sub_i32(u_input.a, reverseBits(u_input.b.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_0.a.zzx + var_0.a.yww);
    let var_4 = _wgslsmith_sub_u32(max(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(30711u, 28916u, 1u, 4294967295u), min(~vec4<u32>(5538u, u_input.d.x, u_input.d.x, 4575u), countOneBits(vec4<u32>(32093u, 0u, u_input.d.x, u_input.d.x))))), 87293u);
    return ~vec4<u32>(_wgslsmith_mod_u32(~(~1u), _wgslsmith_sub_u32(u_input.d.x, ~22438u)), 1u >> (1u % 32u), countOneBits(1u), 63281u);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(~select(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d.x, 4294967295u, 45204u), vec4<u32>(1u, 31915u, u_input.d.x, u_input.d.x)), select(vec4<u32>(u_input.d.x, 28061u, u_input.d.x, 43791u), vec4<u32>(u_input.d.x, 1u, 69387u, 4294967295u), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)]))), vec4<u32>(52405u << (u_input.d.x % 32u), u_input.d.x, max(u_input.d.x, 4052u), abs(28937u)), vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(7129u, 24u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], false)), !global0[_wgslsmith_index_u32(4294967295u, 24u)], false, true)), ~(~select(func_2(Struct_1(arg_1, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], -1000f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]))), vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x), global0[_wgslsmith_index_u32(select(1u, 0u, global0[_wgslsmith_index_u32(u_input.d.x, 24u)]), 24u)])));
    var var_1 = Struct_1(675f, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], -1490f, select(vec2<bool>(global0[_wgslsmith_index_u32(max(~u_input.d.x, var_0.x), 24u)], (-363f <= arg_1) & any(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]))), select(!select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 24u)], false), global0[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec2<bool>(false, all(vec2<bool>(global0[_wgslsmith_index_u32(26988u, 24u)], global0[_wgslsmith_index_u32(27264u, 24u)]))), all(!vec2<bool>(true, global0[_wgslsmith_index_u32(10504u, 24u)]))), select(all(!vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 24u)])), global0[_wgslsmith_index_u32(1u, 24u)], 805f > arg_1)));
    let var_2 = vec2<bool>(true, var_1.b);
    global0 = array<bool, 24>();
    var_0 = ~(_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(u_input.d.x, 17657u, u_input.d.x, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, 51606u, 1u, var_0.x), select(vec4<u32>(u_input.d.x, 46965u, 6483u, var_0.x), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), true))) & ~vec4<u32>(27248u, 66477u << (var_0.x % 32u), _wgslsmith_dot_vec2_u32(var_0.yw, var_0.xx), ~18720u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a)));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(825f));
    let var_1 = ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.d.x, max(u_input.d.x, u_input.d.x), 4294967295u), ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), true), _wgslsmith_sub_vec3_u32(~vec3<u32>(32192u, u_input.d.x, u_input.d.x), func_2(Struct_1(arg_1, false, 1021f, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)]))).yzy) << (vec3<u32>(_wgslsmith_sub_u32(40858u, u_input.d.x), u_input.d.x >> (u_input.d.x % 32u), u_input.d.x) % vec3<u32>(32u)));
    let var_2 = ~(~var_1.x);
    var var_3 = var_2;
    var var_4 = vec3<f32>(arg_1, 619f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(453f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(489f - -797f), _wgslsmith_f_op_f32(-arg_1), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(15589u, 24u)]))))), arg_1)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), 847f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-921f + var_4.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1639f + _wgslsmith_f_op_f32(-arg_1))))), vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    let var_0 = !(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(4294967295u, min(u_input.d.x, u_input.d.x)), abs(96732u)), 24u)]);
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    let var_1 = func_5(abs(vec2<i32>(u_input.c.x, ~(i32(-1i) * -4000i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-(u_input.c | u_input.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1310f)), _wgslsmith_f_op_f32(f32(-1f) * -205f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, var_1.c))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -860f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 474f))))));
    let var_3 = func_5(vec2<i32>(u_input.c.x, u_input.a), _wgslsmith_f_op_f32(var_1.c - -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(~(~u_input.d.x), abs(~u_input.d.x)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), vec4<u32>(10484u, 4294967295u, 23929u, u_input.d.x)), abs(0u | select(u_input.d.x, u_input.d.x, false))), u_input.d.x, 686f);
}

