struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(2147483647i, 11079i, 78315i), vec3<i32>(-23659i, i32(-2147483648), -1i), vec3<i32>(21472i, 34743i, 324i), vec3<i32>(2147483647i, 2147483647i, 29612i), vec3<i32>(0i, 1i, 28990i), vec3<i32>(28037i, -32201i, 0i), vec3<i32>(24498i, -1i, -1i), vec3<i32>(27400i, 2147483647i, 36129i), vec3<i32>(0i, 19272i, 29056i), vec3<i32>(0i, -1i, 18003i), vec3<i32>(-61890i, -1i, 3922i), vec3<i32>(i32(-2147483648), -36022i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1252i, 1i), vec3<i32>(2147483647i, -35721i, 49379i), vec3<i32>(-5310i, -33625i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 32192i));

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: bool) -> vec4<f32> {
    global0 = array<vec3<i32>, 16>();
    var var_0 = ~_wgslsmith_mod_u32(35692u, u_input.b.x);
    var var_1 = countOneBits(u_input.c.wzz);
    let var_2 = u_input.c >> (vec4<u32>(4294967295u, ~reverseBits(4294967295u), ~_wgslsmith_mult_u32(~u_input.a, 39297u), firstTrailingBit(arg_0.x)) % vec4<u32>(32u));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~arg_0.x, 0u, reverseBits(abs(u_input.a & u_input.b.x))), ~70187u, 1u), 16u)];
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -931f), 664f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2249f * 539f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(925f + 963f)))), -337f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(517f, _wgslsmith_f_op_f32(min(-1700f, -347f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -2378f) - _wgslsmith_f_op_f32(f32(-1f) * -392f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<bool> {
    global1 = ~(-(~u_input.c.x));
    global0 = array<vec3<i32>, 16>();
    global1 = 1i;
    var var_0 = u_input.c.yx;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(214f, arg_1.x))))), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 1095f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.zy, u_input.c.x, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1645f, -907f, arg_1.x, 576f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1000f, arg_1.x, 882f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 723f, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-666f, 751f, arg_1.x, arg_1.x) + vec4<f32>(arg_1.x, -1389f, 1944f, arg_1.x)))))));
    return vec2<bool>(-674f >= _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f))), true);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    global1 = u_input.c.x;
    global0 = array<vec3<i32>, 16>();
    var var_0 = !select(vec2<bool>(true, true), select(func_2(Struct_1(true, vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(vec2<f32>(228f, -887f), vec2<f32>(-417f, 833f))), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), func_2(Struct_1(true, vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-133f, -725f)))), vec2<bool>(true, true)));
    let var_1 = Struct_1(var_0.x, select(vec2<bool>(!func_2(Struct_1(true, vec2<bool>(true, var_0.x)), vec2<f32>(-595f, 919f)).x, false), vec2<bool>(!all(vec4<bool>(false, false, var_0.x, var_0.x)), true), var_0.x));
    let var_2 = Struct_1(true, var_1.b);
    return Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-1581f, -1011f))) == _wgslsmith_f_op_vec4_f32(func_3(select(~vec2<u32>(0u, u_input.b.x), max(vec2<u32>(2228u, 0u), vec2<u32>(arg_1, arg_1)), false), -12510i, var_0.x)).x, select(var_1.b, !var_1.b, vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 35210i;
    global0 = array<vec3<i32>, 16>();
    let var_0 = func_1(u_input.c | vec4<i32>(0i, ~_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.c.x | u_input.c.x, -(1i | u_input.c.x)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, select(4294967295u, u_input.b.x, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(64961u, u_input.b.x, 4294967295u), vec3<u32>(0u, 4294967295u, 19735u), u_input.b))), _wgslsmith_div_u32(1u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, 17083u), ~1u)), firstLeadingBit(u_input.c.yz));
    var var_1 = func_1((firstLeadingBit(u_input.c) << (vec4<u32>(~54315u, 4294967295u, ~u_input.a, u_input.b.x) % vec4<u32>(32u))) << (vec4<u32>(select(~u_input.b.x, min(0u, u_input.a), true), max(_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zx), _wgslsmith_sub_u32(u_input.b.x, 1u)), ~1u, u_input.b.x) % vec4<u32>(32u)), firstTrailingBit(~firstTrailingBit(_wgslsmith_div_u32(68477u, u_input.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, firstLeadingBit(0u)), 61090u, ~1u, ~27118u), abs(~vec4<u32>(7473u, 61065u, u_input.a, 1u))), -(~select(u_input.c.yz, ~vec2<i32>(1i, 0i), !var_0.b)));
    var var_2 = Struct_1(true, var_0.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(func_3(abs(vec2<u32>(99827u, _wgslsmith_add_u32(4294967295u, u_input.b.x)) >> (~u_input.b.yz % vec2<u32>(32u))), u_input.c.x, func_2(Struct_1(var_1.a, var_0.b), vec2<f32>(_wgslsmith_f_op_f32(select(-276f, 1000f, !var_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -102f))).x)).x;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.zx, select(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b.x, 1u), vec2<u32>(2921u, 1u), false), ~vec2<u32>(u_input.a, 4294967295u)), select(~vec2<u32>(4294967295u, u_input.b.x), u_input.b.xz, var_1.b.x || var_0.a), vec2<bool>(true, select(false, var_1.b.x, false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(323f, var_3, var_0.b.x)), _wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3 - 1654f)))), -968f), ~_wgslsmith_mod_u32(~(~7762u), reverseBits(~490u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(166f, var_3, 779f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1946f, 1822f, var_3) * vec3<f32>(328f, -1040f, -1820f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, var_3, var_3)))))));
}

