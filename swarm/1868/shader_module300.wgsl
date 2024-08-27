struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, false, false, true, true, false, true, true, true, true, true, true, true, true, true, false);

var<private> global1: array<vec4<f32>, 29>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    global1 = array<vec4<f32>, 29>();
    global0 = array<bool, 17>();
    var var_0 = u_input.b;
    var var_1 = arg_0.a;
    var var_2 = arg_0;
    return vec2<f32>(_wgslsmith_f_op_f32(294f - _wgslsmith_f_op_f32(1133f * 1000f)), var_2.a);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: i32) -> vec2<f32> {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_1, 308f)), arg_1))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-599f, -492f, global0[_wgslsmith_index_u32(4294967295u, 17u)])), -1849f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(-176f)), 1457f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * _wgslsmith_f_op_f32(f32(-1f) * -493f)), ~arg_2, !global0[_wgslsmith_index_u32(max(select(u_input.a, 48075u, false), ~arg_0), 17u)] & global0[_wgslsmith_index_u32(4294967295u, 17u)], false);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(549f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) - -1077f)), 1837f) + _wgslsmith_f_op_vec2_f32(-var_1));
    var var_4 = Struct_1(arg_1, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~var_2.b.x, select(30763u, var_2.b.x, true)), ~u_input.a, ~0u, u_input.a), var_2.b, vec4<u32>(abs(73540u), var_2.b.x | _wgslsmith_mod_u32(0u, var_2.b.x), 78020u, ~(~0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), arg_1), 4294967295u > abs(var_2.b.x));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + arg_1) + 868f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(892f, var_4.a, !any(vec4<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 17u)], false, var_2.c, true))))));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 17>();
    global1 = array<vec4<f32>, 29>();
    var var_0 = !vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.a, 17u)] && (816f != _wgslsmith_f_op_f32(sign(965f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_1(165f, vec4<u32>(140869u, 43527u, u_input.a, 21968u), global0[_wgslsmith_index_u32(23975u, 17u)], false), !global0[_wgslsmith_index_u32(0u, 17u)]))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1060f, _wgslsmith_f_op_f32(818f + -1325f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(208f, 1080f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-471f, -757f) * vec2<f32>(-135f, -935f)), true)) * vec2<f32>(-580f, 1187f)) + _wgslsmith_f_op_vec2_f32(func_3(u_input.a, _wgslsmith_f_op_f32(min(-534f, _wgslsmith_f_op_vec2_f32(func_2(Struct_1(-155f, vec4<u32>(4294967295u, 4294967295u, 38916u, 0u), true, var_0.x), var_0.x)).x)), abs(vec4<u32>(u_input.a, u_input.a, 1u, 32848u) & vec4<u32>(u_input.a, u_input.a, 27535u, u_input.a)), u_input.b))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mod_u32(min(u_input.a & 1u, u_input.a), reverseBits(~u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(1912u, _wgslsmith_f_op_f32(1769f + -745f), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 3380u, 1u), vec4<u32>(0u, 1511u, 35393u, u_input.a)), u_input.b << (u_input.a % 32u))).x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 35552u, 84570u), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 3621u, u_input.a), vec4<u32>(81717u, 4294967295u, u_input.a, u_input.a), true), vec4<u32>(914u, 50626u, 1u, 0u))), ~firstTrailingBit(-1i))).x));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 1412f)) - _wgslsmith_f_op_f32(max(470f, var_1.x))), _wgslsmith_f_op_f32(-var_2)))), select(vec4<u32>(u_input.a, ~(~u_input.a), ~u_input.a & _wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a ^ u_input.a, 17291u)), ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), select(!select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, false, false, var_0.x), global0[_wgslsmith_index_u32(u_input.a, 17u)]), select(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 17u)], true, var_0.x)), vec4<bool>(true, var_0.x, false, true), true), select(select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, false, true, global0[_wgslsmith_index_u32(u_input.a, 17u)]), true), !vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 17u)], false, false), true))), global0[_wgslsmith_index_u32(u_input.a, 17u)], !(!(var_1.x > var_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    global0 = array<bool, 17>();
    return _wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_clamp_i32(-1i, ~u_input.b, 1i), min(u_input.b, -30230i) >> (firstLeadingBit(16718u) % 32u), -10731i, firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, 37538i, u_input.b))), max(vec4<i32>(u_input.b, max(u_input.b, u_input.b), u_input.b, 1i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(-1i, 28501i, u_input.b)), u_input.b, u_input.b, u_input.b >> (43219u % 32u))) & ~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 32453i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 8190i), vec4<i32>(u_input.b, u_input.b, -35055i, u_input.b)), vec4<i32>(u_input.b, -37119i, u_input.b, -1i)));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = array<vec4<f32>, 29>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_sub_vec4_u32(arg_2.b, firstLeadingBit(_wgslsmith_mult_vec4_u32(arg_2.b, ~vec4<u32>(15380u, 20498u, 4294967295u, arg_2.b.x)))), false, any(vec2<bool>(all(!vec3<bool>(global0[_wgslsmith_index_u32(22817u, 17u)], true, false)), u_input.a > _wgslsmith_mult_u32(76415u, u_input.a))));
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var_0 = arg_2;
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)))))), ~vec4<u32>(~_wgslsmith_mult_u32(1u, u_input.a), arg_2.b.x, arg_2.b.x, ~max(var_0.b.x, u_input.a)), arg_1.x != u_input.b, global0[_wgslsmith_index_u32(select(~(~_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a)), 1u, true), 17u)]);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -128f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3529f - var_0.a)))) - -1208f));
    let var_2 = true;
    let var_3 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 29>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 177f, 1000f, 1000f), global1[_wgslsmith_index_u32(u_input.a, 29u)])))) + vec4<f32>(-882f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f - -1786f) * _wgslsmith_f_op_f32(-179f + 637f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1342f), _wgslsmith_div_f32(2135f, -743f)), _wgslsmith_f_op_f32(trunc(-1155f)))) + vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = -1333f;
    var var_2 = _wgslsmith_add_i32(u_input.b, 19663i);
    global0 = array<bool, 17>();
    let var_3 = _wgslsmith_f_op_f32(-var_1);
    let var_4 = func_6(!(!vec4<bool>(true, 2385f >= var_0.x, 1i > u_input.b, !global0[_wgslsmith_index_u32(0u, 17u)])), func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)), 29u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(9375u, 29u)] - vec4<f32>(306f, -718f, var_0.x, 1114f)), vec4<f32>(1479f, 1262f, -1318f, var_0.x)), any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], false)))), func_4(func_1(), Struct_1(_wgslsmith_f_op_f32(ceil(-1000f)), vec4<u32>(51699u, 46598u, u_input.a, u_input.a) ^ vec4<u32>(1u, 35130u, u_input.a, u_input.a), func_1().d, true), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], false)) && true), func_1(), var_0.x), func_1());
    let var_5 = select(-_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 9965i), vec2<i32>(6782i, u_input.b)) << (var_4.b.xy % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b), max(-vec2<i32>(u_input.b, u_input.b) ^ (vec2<i32>(-555i, u_input.b) ^ vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(i32(-1i) * -16791i, abs(-21328i)))), !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)] && false, !global0[_wgslsmith_index_u32(44478u, 17u)])));
    let var_6 = reverseBits(~_wgslsmith_clamp_vec2_u32(var_4.b.zy, _wgslsmith_div_vec2_u32(vec2<u32>(var_4.b.x, var_4.b.x), var_4.b.zw) >> ((var_4.b.yx & vec2<u32>(31249u, var_4.b.x)) % vec2<u32>(32u)), var_4.b.xx));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1, var_4.a), var_0.zx, 1u, vec3<i32>(u_input.b, 37219i, max(firstLeadingBit(_wgslsmith_sub_i32(var_5.x, u_input.b)), u_input.b)), ~firstTrailingBit(var_5.x));
}

