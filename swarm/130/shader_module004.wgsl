struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, u_input.a | 5532u)), _wgslsmith_mult_u32(min(u_input.a, 4294967295u) | 1u, u_input.b.x), ~_wgslsmith_add_u32(39928u, u_input.b.x), 4294967295u);
    return _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0, ~arg_0), ~2147483647i, firstLeadingBit(~_wgslsmith_mult_i32(-arg_0, _wgslsmith_div_i32(30951i, arg_0))));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = u_input.b.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), ~((u_input.b.xy >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) ^ ~u_input.b.xx));
    var var_1 = _wgslsmith_add_i32(~_wgslsmith_div_i32(-44962i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.x, -2147483647i, 2147483647i), vec3<i32>(arg_0.x, arg_0.x, 30288i))), func_3(-_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -47328i, 11989i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, 1i, arg_0.x)), vec4<i32>(1i, arg_0.x, arg_0.x, 1i) << (vec4<u32>(65538u, var_0, 0u, 0u) % vec4<u32>(32u)))));
    var var_2 = Struct_2(Struct_1(var_0, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-176f, 833f))))), _wgslsmith_div_vec2_f32(vec2<f32>(1116f, _wgslsmith_div_f32(-389f, 535f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(103f, -441f), vec2<f32>(266f, 686f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -470f))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(704f * -941f))))));
    let var_3 = vec4<bool>(all(vec3<bool>(var_2.b, true, -1128f == var_2.a.c.x)), var_2.b, var_2.b, true);
    let var_4 = Struct_2(var_2.a, var_2.b);
    return arg_0.x;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(~(~reverseBits(17175u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.c.x, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_div_f32(arg_3.c.x, arg_3.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(floor(1377f)))), false);
    let var_1 = vec2<bool>(!all(select(vec2<bool>(true, true), select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), false), var_0.b)), any(!(!(!vec3<bool>(var_0.b, false, var_0.b)))));
    var var_2 = var_0.a.c;
    var_2 = var_0.a.b;
    var var_3 = 151993u;
    return _wgslsmith_mod_u32(reverseBits(var_0.a.a) << ((4294967295u & arg_3.a) % 32u), firstLeadingBit(0u));
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = all(vec2<bool>(!(_wgslsmith_mult_i32(arg_2, -2147483647i) >= (-2147483647i >> (arg_0 % 32u))), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)) && (~0i >= arg_1.x)));
    var var_1 = Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(~u_input.b.x) & ~u_input.a, firstTrailingBit(u_input.a | _wgslsmith_sub_u32(u_input.a, 1u)), 25083u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-845f, 163f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1336f, -996f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-971f, -1000f) - vec2<f32>(1673f, -150f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(686f, -526f), vec2<f32>(177f, -794f)))), true))));
    var_1 = Struct_1(select(1u, _wgslsmith_sub_u32(reverseBits(4976u), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.xy), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a, 4294967295u), u_input.b.yx, vec2<u32>(var_1.a, 17019u)))), !all(!vec2<bool>(var_0, true))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1222f)), var_1.c);
    let var_2 = Struct_2(Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(var_1.b.x, -250f))))), var_1.b), false);
    let var_3 = _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1159f - _wgslsmith_f_op_f32(-2105f * var_1.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1881f), _wgslsmith_f_op_f32(abs(-652f)), var_0)))));
    return Struct_1(arg_0, vec2<f32>(2496f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1729f)))), 785f)), vec2<f32>(_wgslsmith_f_op_f32(var_2.a.c.x * _wgslsmith_f_op_f32(select(-746f, -181f, !var_2.b))), var_2.a.b.x));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = -1058f;
    let var_1 = arg_0.a.b.x;
    var var_2 = func_5(_wgslsmith_sub_u32(func_4(~0u, func_2(~vec2<i32>(2147483647i, 23769i)), reverseBits(0i), Struct_1(u_input.a | arg_0.a.a, _wgslsmith_f_op_vec2_f32(min(arg_0.a.b, vec2<f32>(arg_0.a.b.x, var_1))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, -1000f))))), 56448u), select(~vec4<i32>(~50483i, i32(-1i) * -6802i, firstLeadingBit(-51103i), -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, -1i, ~(-36520i)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 16748i, 0i), vec4<i32>(-1i, 0i, 29777i, -15933i)))), select(!(!vec4<bool>(arg_2, false, false, arg_1)), !select(vec4<bool>(arg_2, arg_0.b, arg_0.b, arg_1), vec4<bool>(true, true, arg_1, false), arg_1), arg_1)), ~abs(func_2(~vec2<i32>(2147483647i, -1i))));
    let var_3 = arg_0;
    var_2 = func_5(u_input.a, vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), max(2147483647i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(-41849i, -61487i))), -21837i, max(_wgslsmith_mod_i32(58177i << (u_input.a % 32u), func_2(vec2<i32>(5096i, 29289i))), -1i)), 1i);
    return var_3;
}

fn func_6(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(891f, arg_0.a.c.x, arg_0.a.b.x, arg_0.a.c.x), vec4<f32>(arg_0.a.c.x, -302f, 262f, -2134f), vec4<bool>(false, false, false, arg_0.b))), vec4<f32>(arg_0.a.c.x, -683f, 827f, arg_0.a.c.x), !vec4<bool>(arg_0.b, false, arg_0.b, true)))))), vec4<f32>(arg_0.a.b.x, arg_0.a.b.x, _wgslsmith_f_op_f32(func_5(u_input.b.x, vec4<i32>(0i, 2147483647i, 2147483647i, 0i), 45916i).c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x))), _wgslsmith_f_op_f32(383f * _wgslsmith_f_op_f32(-arg_0.a.c.x)))));
    var var_1 = select(!(!select(!vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), 5308u == arg_0.a.a)), select(select(!vec3<bool>(false, arg_0.b, true), select(!vec3<bool>(true, arg_0.b, arg_0.b), select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, true), arg_0.b), true), vec3<bool>(all(vec3<bool>(false, true, arg_0.b)), arg_0.b, !arg_0.b)), !select(vec3<bool>(true, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), !(!vec3<bool>(arg_0.b, arg_0.b, true))), !vec3<bool>(false, arg_0.b, any(select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, true, true)))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-404f)) * _wgslsmith_f_op_f32(min(-1858f, _wgslsmith_f_op_f32(f32(-1f) * -920f)))), _wgslsmith_f_op_f32(f32(-1f) * -382f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1743f + -836f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) + _wgslsmith_f_op_f32(select(-1046f, 228f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2817f)) + _wgslsmith_f_op_f32(f32(-1f) * -164f)), _wgslsmith_f_op_f32(func_6(func_1(Struct_2(Struct_1(u_input.a, vec2<f32>(-479f, -2234f), vec2<f32>(-804f, 327f)), false), true, false))))));
    var_0 = Struct_1(~(~(~(~62706u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_5(var_0.a, vec4<i32>(11572i, 1i, 32224i, 58111i), 9162i).b.x, -1247f)) * vec2<f32>(var_0.b.x, var_0.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-112f, -1064f) + var_0.c)) + _wgslsmith_f_op_vec2_f32(max(var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1017f, var_0.c.x) - vec2<f32>(-544f, -606f)))))));
    var var_1 = vec3<i32>(reverseBits(70798i), -16296i, -22655i);
    var var_2 = select(true, true, false);
    var var_3 = func_5(1359u, _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_mult_i32(~818i, _wgslsmith_div_i32(-51225i, var_1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -1i, var_1.x) << (vec4<u32>(var_0.a, var_0.a, var_0.a, 4294967295u) % vec4<u32>(32u)), vec4<i32>(65926i, var_1.x, -33146i, 2147483647i) & vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x)), var_1.x), _wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<i32>(firstLeadingBit(var_1.x), 1i, _wgslsmith_div_i32(2147483647i, 1i), ~var_1.x))), var_1.x);
    var_3 = Struct_1(~_wgslsmith_mult_u32(func_4(var_0.a, -1i, -2147483647i, Struct_1(30719u, vec2<f32>(-2378f, -393f), var_3.b)) | (var_3.a ^ 24757u), var_3.a), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1902f, var_0.b.x)))), _wgslsmith_f_op_f32(step(1667f, 1876f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, false)) * _wgslsmith_f_op_f32(var_3.b.x + var_0.b.x)) * _wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-select(select(var_1.x << (var_3.a % 32u), ~var_1.x, true), var_1.x, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), ~abs(-vec4<i32>(2147483647i, -1i, 2147483647i, var_1.x) | _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, -10190i, var_1.x, var_1.x), vec4<i32>(var_1.x, -1i, var_1.x, var_1.x))), vec4<f32>(892f, -617f, var_3.c.x, _wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(-var_3.c.x))));
}

