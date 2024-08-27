struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-2029f, -1932f, -523f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<f32> {
    global0 = array<f32, 3>();
    var var_0 = arg_0.c.yzy;
    let var_1 = arg_0.c.xyy;
    global0 = array<f32, 3>();
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(7565u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1076f, -1178f)) + vec2<f32>(-135f, global0[_wgslsmith_index_u32(0u, 3u)]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: i32) -> vec2<bool> {
    var var_0 = Struct_1(arg_0.xx, all(arg_2.zw), vec4<i32>(~(-246i), ~(-41531i), _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -21471i, 0i, arg_3), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 31964i)), select(vec4<i32>(-40075i, -1i, arg_3, u_input.a.x), vec4<i32>(0i, u_input.a.x, 23958i, -33022i), false), false), select(vec4<i32>(-74370i, arg_3, arg_3, u_input.a.x), vec4<i32>(0i, 1i, 30877i, arg_3), arg_2.x) ^ reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_3))), ~1685i), vec2<u32>(~arg_1.x, 0u));
    let var_1 = 0u;
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_div_u32(arg_1.x, ~(3825u << (var_1 % 32u))), arg_1.x), var_0.b, var_0.c, _wgslsmith_sub_vec2_u32(reverseBits(arg_0.zz ^ vec2<u32>(8920u, 4294967295u)) << (vec2<u32>(var_0.d.x, var_1 << (var_1 % 32u)) % vec2<u32>(32u)), vec2<u32>(4294967295u, ~arg_0.x)));
    var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 1u, ~1u, 6767u), max(~vec4<u32>(46476u, 0u, 0u, 37169u), firstTrailingBit(vec4<u32>(var_0.a.x, 0u, arg_0.x, var_1)))), ~(~0u)), false, var_2.c, ~select(var_0.a, ~vec2<u32>(arg_0.x, 4294967295u) >> (vec2<u32>(0u, arg_0.x) % vec2<u32>(32u)), all(select(vec3<bool>(var_2.b, true, arg_2.x), arg_2.xyx, vec3<bool>(arg_2.x, false, var_2.b)))));
    var var_3 = -_wgslsmith_mod_vec4_i32(~firstTrailingBit(vec4<i32>(-1i, var_2.c.x, 0i, -32210i)), max(_wgslsmith_mod_vec4_i32(var_2.c, vec4<i32>(u_input.a.x, var_2.c.x, -2147483647i, var_2.c.x)), _wgslsmith_clamp_vec4_i32(var_2.c, vec4<i32>(var_2.c.x, 0i, -26183i, -2147483647i), vec4<i32>(-28662i, var_2.c.x, 2044i, var_2.c.x)))) << ((((reverseBits(vec4<u32>(var_0.d.x, arg_0.x, 46368u, var_2.d.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, var_1, var_0.d.x), vec4<u32>(1u, 1u, var_0.d.x, 28316u))) & ~vec4<u32>(3606u, 49646u, var_0.a.x, 1u)) & firstTrailingBit(~vec4<u32>(var_0.d.x, arg_1.x, arg_0.x, 1u))) % vec4<u32>(32u));
    return vec2<bool>(false, false);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = array<f32, 3>();
    var var_0 = arg_3;
    let var_1 = !select(select(select(select(vec4<bool>(arg_3.b, var_0.b, false, true), vec4<bool>(arg_2.b, arg_2.b, arg_1.x, var_0.b), arg_3.b), vec4<bool>(false, true, var_0.b, arg_3.b), all(vec2<bool>(false, true))), vec4<bool>(false, true, arg_2.d.x < arg_3.a.x, arg_3.b || arg_3.b), !any(vec4<bool>(arg_2.b, false, arg_2.b, arg_1.x))), !(!vec4<bool>(var_0.b, arg_3.b, false, arg_1.x)), !vec4<bool>(true, 107198u < arg_2.a.x, !arg_1.x, true));
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    return Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_0.d.x, 3u)], 209f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.a.x, 3u)])), arg_0.x)), 2147483647i, arg_2);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    global0 = array<f32, 3>();
    var var_0 = func_4(func_4(arg_1.a, func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.d.d.x, 0u, 26092u), ~vec3<u32>(arg_1.d.d.x, 4294967295u, 4294967295u)), vec3<u32>(~arg_1.d.d.x, arg_1.d.a.x, arg_1.d.a.x), !select(vec4<bool>(arg_0, true, arg_1.d.b, arg_0), vec4<bool>(arg_0, false, arg_1.d.b, true), arg_0), select(abs(-42888i), ~arg_1.c, true)), func_4(arg_1.a, vec2<bool>(!arg_1.d.b, arg_1.d.b), func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1704f, global0[_wgslsmith_index_u32(arg_1.d.d.x, 3u)]))), vec2<bool>(false, arg_0), func_4(arg_1.a, vec2<bool>(false, arg_1.d.b), Struct_1(arg_1.d.d, false, vec4<i32>(arg_1.d.c.x, -54053i, arg_1.c, u_input.a.x), vec2<u32>(arg_1.d.a.x, arg_1.d.d.x)), Struct_1(arg_1.d.d, true, vec4<i32>(arg_1.c, 1i, -2147483647i, arg_1.d.c.x), vec2<u32>(31543u, arg_1.d.a.x))).d, Struct_1(arg_1.d.d, arg_1.d.b, vec4<i32>(arg_1.c, -3398i, 6501i, arg_1.c), vec2<u32>(0u, 76388u))).d, arg_1.d).d, Struct_1(~vec2<u32>(1u, 1u), any(vec4<bool>(true, arg_1.d.b, arg_1.d.b, arg_0)), select(arg_1.d.c, arg_1.d.c, arg_0) & vec4<i32>(arg_1.d.c.x, arg_1.c, -31666i, arg_1.c), min(_wgslsmith_div_vec2_u32(arg_1.d.a, arg_1.d.a), vec2<u32>(arg_1.d.a.x, arg_1.d.a.x)))).b, select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(arg_0, arg_0))), !(!arg_0)), func_3(firstLeadingBit(vec3<u32>(arg_1.d.d.x, arg_1.d.a.x, 36064u)) << (vec3<u32>(30965u, arg_1.d.d.x, 4294967295u) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 3828u, arg_1.d.a.x), vec3<u32>(0u, arg_1.d.d.x, 1u))), !(!vec4<bool>(arg_1.d.b, arg_1.d.b, arg_0, true)), u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_1.d.d.x), vec3<u32>(arg_1.d.a.x, arg_1.d.a.x, 1u)) >= (17632u ^ arg_1.d.d.x)), arg_1.d, arg_1.d);
    let var_1 = arg_1.d;
    global0 = array<f32, 3>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(var_0.b.x - 747f))) + 1121f);
    return arg_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    return func_5(-423f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 3u)]) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] - global0[_wgslsmith_index_u32(arg_1.x, 3u)])), -1026f), func_4(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_clamp_vec2_u32(arg_1.yy, arg_1.zy, arg_1.zy), true, -arg_0, arg_1.zx), abs(vec2<u32>(arg_2, arg_1.x)) | vec2<u32>(arg_1.x, 4294967295u))), !select(func_3(arg_1, vec3<u32>(40751u, 1u, arg_1.x), vec4<bool>(true, false, false, true), u_input.a.x), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(arg_1.yy, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), arg_0 >> ((vec4<u32>(54046u, 0u, arg_2, 28064u) | vec4<u32>(4294967295u, 0u, 22031u, arg_1.x)) % vec4<u32>(32u)), vec2<u32>(1u, 0u ^ arg_2)), Struct_1(vec2<u32>(1u, 4294967295u), false, vec4<i32>(~18267i, ~arg_0.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 7861i >> (arg_2 % 32u)), ~arg_1.xy)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0.d;
    let var_1 = ~(~select(firstTrailingBit(func_4(vec2<f32>(-795f, -1583f), arg_2.xy, arg_0.d, Struct_1(vec2<u32>(var_0.d.x, 1u), var_0.b, vec4<i32>(u_input.a.x, var_0.c.x, -5939i, -1i), vec2<u32>(0u, arg_0.d.d.x))).d.d.x), ~var_0.a.x, (var_0.d.x != 4294967295u) != (var_0.b || true)));
    let var_2 = false;
    let var_3 = _wgslsmith_clamp_u32(28958u, 1u, ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.a.x, var_1), ~var_0.a), var_0.d.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(~select(vec4<i32>(-1i, -35216i, -14375i, u_input.a.x) << (vec4<u32>(1u, 17521u, 20093u, 1086u) % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 11724i), vec4<bool>(false, false, false, false)), vec3<u32>(1u, 1u, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u)), min(vec2<u32>(0u, 1u), vec2<u32>(0u, 1856u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(round(-1351f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~68986u, 3u)])))), !(!vec3<bool>(all(vec4<bool>(true, false, true, true)), true, func_4(vec2<f32>(333f, global0[_wgslsmith_index_u32(43959u, 3u)]), vec2<bool>(false, true), Struct_1(vec2<u32>(7695u, 44466u), false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(21680u, 0u), true, vec4<i32>(u_input.a.x, u_input.a.x, 0i, -1i), vec2<u32>(4294967295u, 1u))).d.b)));
    var var_1 = Struct_1(func_6(var_0, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(-1000f, var_0.a.x)), var_0.b))), select(!(!vec3<bool>(true, true, var_0.d.b)), vec3<bool>(all(vec4<bool>(false, var_0.d.b, true, var_0.d.b)), !var_0.d.b, var_0.d.b), true)).d.a, !(!func_3(vec3<u32>(0u, var_0.d.d.x, var_0.d.a.x), vec3<u32>(1u, var_0.d.a.x, 1u), vec4<bool>(var_0.d.b, true, true, var_0.d.b), u_input.a.x).x) && any(select(select(vec4<bool>(false, var_0.d.b, true, false), vec4<bool>(true, var_0.d.b, false, var_0.d.b), var_0.d.b), vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_0.d.b, var_0.d.b))), var_0.d.c, var_0.d.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1435f, 822f, global0[_wgslsmith_index_u32(var_0.d.a.x, 3u)], global0[_wgslsmith_index_u32(16251u, 3u)]), vec4<f32>(var_0.b.x, 609f, -974f, var_0.b.x), true)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1644f, -1320f, global0[_wgslsmith_index_u32(var_0.d.d.x, 3u)], 449f))))))));
    global0 = array<f32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xw, firstLeadingBit(vec4<i32>(var_0.d.c.x, func_4(_wgslsmith_f_op_vec2_f32(var_0.b - var_2.yz), vec2<bool>(true, var_1.b), func_4(var_2.wx, vec2<bool>(false, true), var_0.d, Struct_1(var_0.d.d, true, vec4<i32>(1i, 0i, -1i, -25610i), var_0.d.d)).d, Struct_1(var_0.d.d, false, vec4<i32>(-2147483647i, var_1.c.x, u_input.a.x, var_0.d.c.x), var_0.d.a)).d.c.x, _wgslsmith_dot_vec2_i32(-u_input.a, ~vec2<i32>(var_0.d.c.x, 0i)), ~var_1.c.x)), var_1.c.xx, vec3<i32>(~(-2147483647i), u_input.a.x, firstTrailingBit(firstLeadingBit(var_0.c))));
}

