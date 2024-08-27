struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1260f, -1300f)) - _wgslsmith_f_op_f32(f32(-1f) * -358f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(482f)) * _wgslsmith_f_op_f32(f32(-1f) * -173f)), 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(877f, -1583f, -1199f), vec3<f32>(-451f, -1000f, 1346f), true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, 1264f, -603f) + vec3<f32>(163f, -841f, 112f)) * vec3<f32>(171f, 337f, 1296f)))), min(max(4294967295u, min(62767u, 1u)), u_input.a.x), false, Struct_1(26013u, u_input.a.zz), Struct_1(u_input.a.x, ~(~u_input.a.xy) >> (max(vec2<u32>(19555u, 4294967295u), u_input.a.yx) % vec2<u32>(32u))));
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    let var_1 = ~(~abs(vec3<i32>(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(var_0.e.b.x, 28u)], vec2<i32>(1i, -2147483647i)), countOneBits(-71758i), min(-1i, 2147483647i))));
    return _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, firstTrailingBit(62881u)), var_0.e.a);
}

fn func_2() -> vec4<u32> {
    global0 = array<vec2<i32>, 28>();
    let var_0 = abs(i32(-1i) * -16575i);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f * -230f)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(621f, 1535f)))))), func_3(), any(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !(0i == var_0))), Struct_1(~1u, select(select(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.xy), u_input.a.zy, true), reverseBits(max(u_input.a.yy, u_input.a.xy)), true)), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4998u), ~u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(~6382u, 0u), ~(u_input.a.zz ^ vec2<u32>(u_input.a.x, u_input.a.x)))));
    let var_2 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.b, ~27609u), _wgslsmith_sub_u32(33625u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_1.d.b), u_input.a.x))), u_input.a.xx);
    let var_3 = var_2;
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(4294967295u), 41759u, u_input.a.x, 4294967295u), reverseBits(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(var_1.e.b, var_2.b), 4294967295u, func_3())), min(select(vec4<u32>(var_3.a, ~var_3.a, abs(var_2.b.x), _wgslsmith_clamp_u32(var_1.b, 1u, 4294967295u)), min(~vec4<u32>(var_2.b.x, u_input.a.x, var_2.a, var_2.b.x), max(vec4<u32>(var_1.b, 114196u, 31312u, u_input.a.x), vec4<u32>(var_3.a, 91239u, 0u, var_3.b.x))), !(var_1.c && true)), vec4<u32>(_wgslsmith_clamp_u32(var_1.b, var_2.a, 1u), ~var_2.a, abs(var_3.a & 60511u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.a, 1u), 1u, var_1.e.b.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = ~(firstLeadingBit(0u) & (91425u ^ ~arg_2.b.x));
    return 1u;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = arg_1 & -40535i;
    let var_1 = _wgslsmith_mult_vec4_u32((~min(vec4<u32>(19826u, arg_0.e.a, arg_0.e.b.x, u_input.a.x), vec4<u32>(1u, 4294967295u, arg_2, arg_0.b)) | (~vec4<u32>(1u, 15914u, 0u, 55388u) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_3.e.a, 0u, 1u), vec4<u32>(arg_0.e.a, arg_3.b, 29018u, 16638u)))) & vec4<u32>(94087u, arg_3.d.b.x, firstTrailingBit(u_input.a.x), arg_2), vec4<u32>(arg_2, 4294967295u, func_4(~func_2(), Struct_1(_wgslsmith_mod_u32(4294967295u, arg_0.e.b.x), ~arg_3.e.b), arg_0.e), arg_0.d.b.x << (1u % 32u)));
    var var_2 = arg_3.d;
    global0 = array<vec2<i32>, 28>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, arg_3.a.x))) - _wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-367f, var_3, arg_0.a.x, -1922f), vec4<f32>(793f, arg_3.a.x, -1085f, 1564f), vec4<bool>(false, arg_3.c, arg_3.c, arg_0.c)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3, 1053f, 731f, var_3))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-452f, arg_0.a.x, arg_3.a.x, var_3)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 1259f, arg_3.a.x, -888f) * vec4<f32>(343f, arg_3.a.x, arg_0.a.x, -856f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<u32> {
    global0 = array<vec2<i32>, 28>();
    let var_0 = Struct_1(arg_2.a | ~0u, vec2<u32>(u_input.a.x, ~(~(~u_input.a.x))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -958f, -2066f)), _wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(arg_2.b.x, arg_2.b.x, 0u)) << (~_wgslsmith_clamp_u32(7871u, var_0.a, arg_2.a) % 32u), true, var_0, Struct_1(1u, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zz, vec2<u32>(arg_2.b.x, var_0.a)), func_2().zy, _wgslsmith_mod_vec2_u32(var_0.b, var_0.b)), vec2<u32>(select(15782u, 113535u, arg_1), min(39614u, 0u)))));
    var var_2 = var_1;
    global0 = array<vec2<i32>, 28>();
    return u_input.a >> (~vec3<u32>(min(0u, var_2.d.b.x) & ~var_1.b, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_2.b.x, arg_2.b.x, 0u, var_2.e.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.b.x, 1u, 4294967295u), vec4<u32>(0u, var_0.b.x, u_input.a.x, 27694u))), ~_wgslsmith_mod_u32(1u, var_0.b.x)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 28>();
    var var_0 = _wgslsmith_mult_u32(u_input.a.x, abs(~52564u));
    var_0 = u_input.a.x & 48039u;
    var var_1 = ~min(10020u, u_input.a.x);
    global0 = array<vec2<i32>, 28>();
    var var_2 = false;
    var var_3 = func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(769f, 1389f, -879f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1062f + 941f), _wgslsmith_f_op_f32(f32(-1f) * -734f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1692f, 157f, 1850f, 128f))), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec3<f32>(939f, 203f, -465f), 210u, true, Struct_1(u_input.a.x, u_input.a.xy), Struct_1(4294967295u, vec2<u32>(7088u, u_input.a.x))), 1i, 1u, Struct_2(vec3<f32>(841f, -115f, 1334f), u_input.a.x, true, Struct_1(4294967295u, vec2<u32>(26286u, 47935u)), Struct_1(0u, u_input.a.yy)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), true)))), true, Struct_1(firstLeadingBit(~u_input.a.x), select(u_input.a.yx | vec2<u32>(u_input.a.x, u_input.a.x), countOneBits(u_input.a.yx), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))) | vec2<u32>(u_input.a.x, 12100u)), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(1i, 1i, 1i)), _wgslsmith_sub_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -24675i, 7472i), vec3<i32>(-66609i, 34964i, -16506i))), vec3<i32>(~1760i, 1i, _wgslsmith_div_i32(-14504i, 1i))), ~vec3<i32>(~0i, 20061i, 1i)));
    let var_4 = any(select(vec4<bool>(false, true, true, !any(vec3<bool>(true, true, true))), vec4<bool>(var_3.x != (59339u | u_input.a.x), ~(-1i) <= _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(22608u, 28u)]), false, any(vec2<bool>(true, true))), vec4<bool>(false, true, !select(true, true, false), any(vec2<bool>(true, true)))));
    let var_5 = true && any(!(!select(vec3<bool>(false, var_4, var_4), vec3<bool>(var_4, var_4, var_4), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_mult_i32(0i, -18318i) << ((0u & var_3.x) % 32u), _wgslsmith_mod_i32(~(~3214i), -2147483647i), -1i));
}

