struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    global1 = array<vec4<bool>, 13>();
    global0 = true;
    let var_0 = firstLeadingBit((_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, 0u, 14555u)) ^ (max(24843u, 1u) >> (countOneBits(0u) % 32u))) & 26459u);
    var var_1 = reverseBits(u_input.b.x);
    let var_2 = Struct_2(!any(vec2<bool>(true, false)));
    return vec2<bool>(true, any(vec4<bool>(var_2.a, var_2.a, _wgslsmith_f_op_f32(trunc(-1925f)) < _wgslsmith_f_op_f32(-1000f + -2173f), var_2.a)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(Struct_3(Struct_2(select(true, false, true))), Struct_2(false), vec4<u32>(~1u, 6392u, _wgslsmith_add_u32(select(11382u, 1u, false), ~1u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(21004u, 1u, 6838u, 15005u), vec4<u32>(1u, 1u, 1u, 1u)), 73354u), ~vec2<u32>(1u, 1u), Struct_2(true));
    var var_1 = all(func_3());
    global0 = var_0.a.a.a;
    global1 = array<vec4<bool>, 13>();
    var_1 = any(!select(!vec4<bool>(var_0.b.a, var_0.b.a, true, var_0.b.a), select(!vec4<bool>(false, true, true, var_0.b.a), vec4<bool>(var_0.e.a, true, var_0.a.a.a, true), all(global1[_wgslsmith_index_u32(var_0.d.x, 13u)])), !var_0.e.a));
    return Struct_3(Struct_2(var_0.a.a.a));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> u32 {
    global1 = array<vec4<bool>, 13>();
    var var_0 = global1[_wgslsmith_index_u32(71222u, 13u)];
    global1 = array<vec4<bool>, 13>();
    var var_1 = arg_2.a;
    global0 = true;
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~(~vec3<u32>(10967u, 4294967295u, 1u))), countOneBits(select(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 25307u, 11172u), _wgslsmith_sub_u32(1u, 1u), _wgslsmith_mod_u32(1u, 12462u)), ~vec3<u32>(1u, 1u, 1u), var_0.wwx)));
}

fn func_1() -> Struct_3 {
    var var_0 = 1u;
    global0 = select(all(vec2<bool>(true, true)), ~firstTrailingBit(21249u) >= 9005u, !any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))));
    var var_1 = !(!vec3<bool>(all(vec3<bool>(true, false, false)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true));
    global1 = array<vec4<bool>, 13>();
    var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(any(vec3<bool>(false, false, var_1.x)), -1395f, func_2(), false), ~1u, _wgslsmith_mult_u32(1u, 24668u), ~(~4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), 1u);
    return Struct_3(func_2().a);
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    global1 = array<vec4<bool>, 13>();
    global0 = !func_2().a.a | arg_0.a.a.a;
    global0 = (~_wgslsmith_mod_u32(countOneBits(arg_0.c.x), arg_0.d.x) >= 1u) == !func_2().a.a;
    global0 = arg_0.a.a.a;
    global0 = true;
    return Struct_4(Struct_3(Struct_2(true)), arg_0.e, select(~abs(arg_0.c), arg_0.c, !global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.d.x), 13u)]), ~arg_0.d, func_1().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global1 = array<vec4<bool>, 13>();
    let var_1 = func_5(Struct_4(func_1(), func_2().a, vec4<u32>(var_0, ~(32215u << (var_0 % 32u)), func_4(true, _wgslsmith_f_op_f32(abs(190f)), func_2(), true), var_0), vec2<u32>(var_0 >> (4294967295u % 32u), var_0), func_1().a));
    global1 = array<vec4<bool>, 13>();
    var var_2 = vec2<f32>(-755f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(625f, 955f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1700f - -105f) + _wgslsmith_f_op_f32(floor(1406f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-6611i, func_5(Struct_4(func_5(Struct_4(Struct_3(Struct_2(false)), Struct_2(true), var_1.c, var_1.c.ww, Struct_2(var_1.e.a))).a, func_1().a, ~(~var_1.c), max(vec2<u32>(104941u, 10950u), ~var_1.d), func_1().a)).d, u_input.b, firstTrailingBit(_wgslsmith_sub_vec2_u32(var_1.d, ~vec2<u32>(0u, 0u))) | firstTrailingBit(countOneBits(var_1.c.xw)));
}

