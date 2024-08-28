struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<bool>(true, true, false), false, vec4<bool>(true, false, true, false), vec3<i32>(-25832i, -9591i, -32149i), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, true), false, vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, -1i, 21260i), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, false, false), true, vec4<bool>(false, false, false, true), vec3<i32>(0i, 2147483647i, -23072i), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, false, true), true, vec4<bool>(false, false, false, false), vec3<i32>(-1i, 37586i, 2147483647i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, false, true), true, vec4<bool>(true, false, false, true), vec3<i32>(16275i, 15052i, 1i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, false, false), false, vec4<bool>(false, true, true, true), vec3<i32>(-8580i, 1i, 56798i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, false), true, vec4<bool>(false, false, true, true), vec3<i32>(-39327i, -49140i, 0i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(true, true, true), true, vec4<bool>(true, false, false, true), vec3<i32>(5051i, i32(-2147483648), 1219i), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, false, false), false, vec4<bool>(false, true, true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, false, false), false, vec4<bool>(true, true, true, true), vec3<i32>(721i, 7316i, 0i), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(true, false, false), true, vec4<bool>(false, false, true, true), vec3<i32>(-9138i, i32(-2147483648), 1i), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, false), false, vec4<bool>(false, false, false, false), vec3<i32>(i32(-2147483648), -14418i, -1i), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, false, true), true, vec4<bool>(false, false, false, true), vec3<i32>(3501i, 37973i, 2147483647i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, false), false, vec4<bool>(true, false, false, true), vec3<i32>(-36497i, 1834i, i32(-2147483648)), vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(false, false, true), false, vec4<bool>(true, false, true, false), vec3<i32>(31652i, -24695i, 36889i), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(true, true, true), false, vec4<bool>(true, true, false, true), vec3<i32>(19020i, -7042i, 43244i), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, false, true), false, vec4<bool>(false, false, false, true), vec3<i32>(7932i, 2147483647i, 26427i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, false), true, vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, 2147483647i, 27426i), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(true, true, false), true, vec4<bool>(false, false, true, true), vec3<i32>(11291i, 0i, -564i), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(true, true, true), true, vec4<bool>(false, true, true, true), vec3<i32>(1i, 0i, 30198i), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, false, false), true, vec4<bool>(true, false, true, true), vec3<i32>(13304i, -28043i, -2886i), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, false), true, vec4<bool>(true, false, true, false), vec3<i32>(0i, 2147483647i, -42799i), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(true, false, true), true, vec4<bool>(true, false, true, false), vec3<i32>(-1i, 55442i, -38022i), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, true, true), true, vec4<bool>(true, true, true, false), vec3<i32>(-21655i, 2147483647i, -8841i), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, false, false), true, vec4<bool>(true, false, false, false), vec3<i32>(0i, i32(-2147483648), 49157i), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, false), true, vec4<bool>(false, false, false, false), vec3<i32>(1i, 38172i, -27741i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, true, true), false, vec4<bool>(false, true, false, true), vec3<i32>(1i, 0i, 0i), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(false, true, true), false, vec4<bool>(true, false, true, true), vec3<i32>(27307i, i32(-2147483648), 1i), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, false, true), false, vec4<bool>(false, true, true, true), vec3<i32>(-7715i, 42483i, 1i), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, true, true), true, vec4<bool>(true, true, true, true), vec3<i32>(-1i, -9499i, -25368i), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, true), true, vec4<bool>(false, false, true, true), vec3<i32>(0i, 1i, 0i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, false, false), true, vec4<bool>(true, false, true, false), vec3<i32>(-27304i, -1i, -1i), vec4<bool>(false, true, false, true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> bool {
    global0 = array<Struct_1, 32>();
    let var_0 = min(_wgslsmith_mult_vec4_i32(countOneBits(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (~vec4<u32>(60182u, 62609u, 26732u, 54998u) % vec4<u32>(32u))), min(min(vec4<i32>(u_input.a, -8551i, u_input.a, -2147483647i) ^ vec4<i32>(u_input.a, -41004i, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, -51264i)), abs(vec4<i32>(0i, u_input.a, 6120i, 0i)))), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.a, u_input.a, -6324i, -31719i)), ~vec4<i32>(24864i, countOneBits(u_input.a), u_input.a | u_input.a, u_input.a)));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    return true;
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec4<f32> {
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_sub_vec3_i32(~vec3<i32>(-abs(arg_0), arg_0, arg_0), min(vec3<i32>(-arg_0, 39466i, _wgslsmith_add_i32(1i, arg_0)) | -vec3<i32>(-1i, u_input.a, u_input.a), countOneBits(vec3<i32>(~72421i, select(2147483647i, arg_0, false), 2707i))));
    var var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(41064i, _wgslsmith_dot_vec4_i32(vec4<i32>(40876i, arg_0, 7034i, 5857i), min(vec4<i32>(u_input.a, 29838i, arg_0, var_0.x), vec4<i32>(1865i, var_0.x, var_0.x, var_0.x)))), select(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-52320i, var_0.x, -3339i), arg_0), _wgslsmith_add_i32(-arg_0, abs(-2147483647i))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a | 14448i, u_input.a >> (11514u % 32u)), ~vec2<i32>(-48171i, 29658i)), arg_1.ww));
    global0 = array<Struct_1, 32>();
    var var_2 = vec4<bool>(!arg_1.x, any(vec2<bool>(true, select(true, all(vec3<bool>(arg_1.x, false, true)), arg_1.x))), all(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(576f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 310f, arg_1.x)))) < -936f);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1000f) + _wgslsmith_div_f32(-1248f, _wgslsmith_f_op_f32(f32(-1f) * -189f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f - 396f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-3019f, -1161f), -2075f))), 1000f)));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 32>();
    var var_0 = false;
    var var_1 = ~(~vec4<u32>(~(~12042u), 1u, 9017u >> (countOneBits(53876u) % 32u), reverseBits(~1u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_3(~firstTrailingBit(-u_input.a | -u_input.a), select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), any(vec3<bool>(true, true, true))), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(all(vec2<bool>(true, false)), func_2(), true, true), select(true, true, any(vec4<bool>(false, false, false, false)))))));
    var_0 = false;
    return ~(u_input.a & 11500i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a, -1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(40024i, -2484i), 2147483647i), func_1());
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(627f * 589f)))) - _wgslsmith_f_op_f32(f32(-1f) * -123f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-214f, 233f) * 240f))));
    var var_2 = select(select(vec4<bool>(true, true, true, !all(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), false)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), var_0.x >= _wgslsmith_mod_i32(-2147483647i, -1i))), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, false), true));
    global0 = array<Struct_1, 32>();
    let var_3 = var_0.x;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-924f * var_1.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))), -669f, var_1.x);
    global0 = array<Struct_1, 32>();
    var var_5 = Struct_4(!select(vec4<bool>(var_1.x > var_1.x, !var_2.x, any(var_2.yz), u_input.a < -2147483647i), vec4<bool>(all(vec3<bool>(var_2.x, var_2.x, false)), !var_2.x, false, true), _wgslsmith_f_op_f32(min(-335f, var_1.x)) > _wgslsmith_f_op_f32(f32(-1f) * -824f)), Struct_3(29445i, u_input.a, -1i, _wgslsmith_mod_vec4_u32(vec4<u32>(30531u, _wgslsmith_clamp_u32(0u, 8934u, 4294967295u), 1u, 1u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u)), 4294967295u, 1u, ~1u)), select(var_2.xxy, !select(var_2.yyx, var_2.wwz, var_2.x), select(var_2.xxw, var_2.wzz, any(var_2.yw)))), select(!(!(!var_2.yz)), vec2<bool>(true, !(var_1.x < var_1.x)), !select(!var_2.yy, !vec2<bool>(true, var_2.x), true)), vec3<u32>(~firstTrailingBit(~0u), _wgslsmith_clamp_u32(firstLeadingBit(1u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(71463u, 3657u)) ^ 55766u), 1u));
    let var_6 = Struct_4(select(var_5.a, select(!var_5.a, vec4<bool>(all(var_5.a), var_2.x && true, var_4.x > var_1.x, any(vec2<bool>(true, var_2.x))), var_5.a), !vec4<bool>(select(var_5.c.x, var_2.x, var_5.c.x), any(var_2.zwx), false, true)), var_5.b, vec2<bool>(var_2.x, true), ~max(var_5.b.d.zyy, ~var_5.b.d.yxx ^ (var_5.d ^ var_5.b.d.wzw)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-181f, _wgslsmith_f_op_f32(-1f)), reverseBits(select(var_0.zxw, vec3<i32>(u_input.a, u_input.a, 0i), true)) ^ vec3<i32>(1i, select(-1i, var_0.x, !var_6.a.x), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.x))));
}

