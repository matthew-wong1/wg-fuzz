struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(1u, 18096u, 10749u), vec3<u32>(0u, 4294967295u, 45816u), vec3<u32>(4294967295u, 13267u, 0u), vec3<u32>(1u, 96196u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 28910u), vec3<u32>(4294967295u, 0u, 4079u), vec3<u32>(14542u, 70548u, 1u), vec3<u32>(4294967295u, 51312u, 37292u), vec3<u32>(1u, 78413u, 346u), vec3<u32>(77427u, 0u, 0u), vec3<u32>(9657u, 78119u, 1u), vec3<u32>(8634u, 0u, 0u), vec3<u32>(29953u, 1u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global0 = array<vec3<u32>, 14>();
    var var_0 = 12291i;
    var var_1 = 1509f;
    var var_2 = Struct_1(max(vec2<i32>(43089i, u_input.c), _wgslsmith_add_vec2_i32(~select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(3297i, -1i), arg_0.x), vec2<i32>(u_input.c, -u_input.c))), vec3<u32>(1u, u_input.a, ~1u));
    var var_3 = Struct_1(-var_2.a, global0[_wgslsmith_index_u32(u_input.a, 14u)]);
    return 0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c & arg_0.x, arg_0.x) << ((~u_input.b ^ vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(arg_0, arg_0)), vec3<u32>(u_input.a, u_input.b.x, ~reverseBits(func_3(vec3<bool>(true, false, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(567f, arg_1.x), arg_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(489f, arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * 593f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-778f, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-818f, arg_1.x, 419f, -710f) + vec4<f32>(arg_1.x, arg_1.x, -1922f, arg_1.x)))))))));
    var var_2 = Struct_1(~var_0.a, firstLeadingBit(min(vec3<u32>(u_input.a, u_input.b.x, 50765u) | ~vec3<u32>(var_0.b.x, u_input.b.x, 35209u), vec3<u32>(~u_input.a, min(4294967295u, u_input.a), _wgslsmith_sub_u32(0u, u_input.a)))));
    var_0 = Struct_1(vec2<i32>(6527i, i32(-1i) * -1i), ~min(vec3<u32>(var_2.b.x, var_0.b.x, u_input.a), firstTrailingBit(~global0[_wgslsmith_index_u32(64207u, 14u)])));
    var var_3 = Struct_1(arg_0, vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(91605u, var_0.b.x, 4294967295u, 0u), vec4<u32>(4294967295u, 49538u, var_2.b.x, 66656u) | vec4<u32>(1u, 0u, var_2.b.x, 0u)), ~(~vec4<u32>(var_2.b.x, var_0.b.x, 0u, 58964u))), _wgslsmith_dot_vec2_u32(var_2.b.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 22827u), vec2<u32>(0u, var_0.b.x))), 4294967295u));
    return select(!(!vec2<bool>(all(vec2<bool>(false, true)), false)), select(vec2<bool>(true, !all(vec2<bool>(false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(true, true)), vec2<bool>(select(false, all(vec4<bool>(false, false, false, true)), any(vec2<bool>(false, false))), all(vec3<bool>(true, true, true)) | true)), !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = array<vec3<u32>, 14>();
    let var_0 = vec4<bool>(true, 1000f <= _wgslsmith_f_op_f32(trunc(1f)), all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), func_2(arg_0.a, vec3<f32>(-1470f, 180f, 1121f)), vec2<bool>(true, true)), any(vec2<bool>(true, true)))), any(vec2<bool>(true, true)));
    global0 = array<vec3<u32>, 14>();
    global0 = array<vec3<u32>, 14>();
    global0 = array<vec3<u32>, 14>();
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<vec3<u32>, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-648f, arg_0.x), arg_0.zw));
    let var_1 = Struct_1(abs(func_1(func_1(Struct_1(arg_3.a, vec3<u32>(u_input.a, arg_1.x, 1u)), arg_3.a.x), -32831i | u_input.c).a) ^ ~(-vec2<i32>(u_input.c, arg_2.x) ^ arg_3.a), ~(~vec3<u32>(func_1(arg_3, 33886i).b.x, 1u, arg_1.x | 47346u)));
    let var_2 = arg_2.x;
    global0 = array<vec3<u32>, 14>();
    return ~global0[_wgslsmith_index_u32(~45993u, 14u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 21326u;
    var var_1 = firstTrailingBit(vec3<u32>(~(~arg_1.b.x) >> ((22457u | abs(u_input.b.x)) % 32u), 8952u, ~u_input.a));
    global0 = array<vec3<u32>, 14>();
    let var_2 = select(vec4<i32>(_wgslsmith_sub_i32(1i, abs(-2147483647i)), _wgslsmith_mult_i32(arg_1.a.x, func_1(func_1(Struct_1(arg_1.a, global0[_wgslsmith_index_u32(50582u, 14u)]), -76471i), u_input.c).a.x), _wgslsmith_mod_i32(~arg_1.a.x, _wgslsmith_mod_i32(arg_1.a.x, 2147483647i) & ~arg_0.a.x), 9274i), countOneBits(~firstTrailingBit(vec4<i32>(-2147483647i, 16630i, -3142i, 1i))) >> (vec4<u32>(arg_0.b.x, _wgslsmith_div_u32(~0u, arg_0.b.x), var_1.x, _wgslsmith_sub_u32(13923u, 72759u << (arg_1.b.x % 32u))) % vec4<u32>(32u)), vec4<bool>(~var_1.x != var_1.x, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), func_2(vec2<i32>(arg_1.a.x, -1i), vec3<f32>(-231f, 1435f, 757f)).x)), any(func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a.x, arg_0.a.x), arg_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(128f, -512f, 451f) + vec3<f32>(-308f, 763f, 289f)))), true));
    var_0 = u_input.a;
    return arg_1;
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    global0 = array<vec3<u32>, 14>();
    let var_0 = arg_3;
    var var_1 = arg_3.b.x;
    var var_2 = u_input.c;
    var var_3 = func_5(var_0, Struct_1((vec2<i32>(-1i) * -arg_3.a) & arg_0.yy, ~(~countOneBits(vec3<u32>(arg_3.b.x, var_0.b.x, 42378u)))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 14>();
    var var_0 = func_6(vec3<i32>(2147483647i, 22569i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, u_input.c), vec3<i32>(u_input.c & 1i, 0i, u_input.c))), ~2147483647i, 956f, func_5(Struct_1(max(vec2<i32>(781i, u_input.c) & vec2<i32>(-58338i, 39696i), select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(56450i, u_input.c), false)), firstLeadingBit(firstLeadingBit(global0[_wgslsmith_index_u32(63016u, 14u)]))), Struct_1(min(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -46123i) >> (vec2<u32>(13167u, u_input.a) % vec2<u32>(32u))), func_4(vec4<f32>(687f, 1089f, -1000f, -1669f), vec2<u32>(u_input.a, 7943u), vec4<i32>(-8420i, 8018i, 1i, 15889i), func_1(Struct_1(vec2<i32>(u_input.c, 20814i), global0[_wgslsmith_index_u32(1u, 14u)]), 7632i)))));
    let var_1 = ~_wgslsmith_add_u32(66165u, countOneBits(1u));
    global0 = array<vec3<u32>, 14>();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1544f, 507f, -1152f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(310f, -681f, 1519f), vec3<f32>(-269f, 560f, -1621f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, -805f, 978f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(752f, _wgslsmith_f_op_f32(round(-745f)), _wgslsmith_f_op_f32(select(-582f, -511f, false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(137f, 515f, 698f), vec3<f32>(-355f, -1248f, 245f), vec3<bool>(false, false, true)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-304f, -504f, -1175f) + vec3<f32>(663f, 1763f, -199f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1891f, -528f, 824f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-319f, -360f, 1240f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)))))));
    let var_3 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(firstLeadingBit(1i)), var_0.x), vec2<i32>(-2147483647i, -53631i)), vec3<u32>(_wgslsmith_mult_u32(4294967295u, ~4294967295u), 11340u >> (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, u_input.a)) % 32u), 42860u));
    let var_4 = _wgslsmith_clamp_u32(17933u, u_input.a << (~_wgslsmith_add_u32(u_input.b.x, ~0u) % 32u), var_3.b.x);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2350f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(floor(-698f)))), -657f);
    let var_5 = firstTrailingBit(func_6(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-35433i, var_0.x, u_input.c)), vec3<i32>(var_3.a.x, -11890i, 47178i), countOneBits(vec3<i32>(1i, u_input.c, var_3.a.x))) ^ vec3<i32>(-2147483647i, ~(-56558i), ~2147483647i), -(~func_5(var_3, var_3).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(var_2.x, 571f))))), var_3).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-34787i, ~func_5(Struct_1(var_3.a, global0[_wgslsmith_index_u32(var_4, 14u)]), var_3).a.x) ^ (((-36505i << (var_1 % 32u)) & ~u_input.c) >> (firstTrailingBit(0u) % 32u)), firstTrailingBit(4294967295u) << (0u % 32u));
}

