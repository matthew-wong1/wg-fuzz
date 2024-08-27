struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_1(max(vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(u_input.b), 0u), _wgslsmith_add_u32(arg_1.c.c.b.x, min(u_input.b, u_input.b)), 20699u, arg_2.x), arg_1.e.a), _wgslsmith_div_f32(arg_0.c.a, arg_1.c.c.a) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.c.a) + arg_0.c.a)), 1u, 0i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f * _wgslsmith_f_op_f32(-1528f + -599f))))), ~(~countOneBits(firstTrailingBit(arg_2))), _wgslsmith_mult_u32(arg_1.b.x, firstLeadingBit(_wgslsmith_div_u32(arg_2.x, u_input.b))), arg_0.c.d);
    let var_2 = abs(arg_0.a.x);
    let var_3 = ~(reverseBits(1u) & _wgslsmith_div_u32(min(0u, arg_1.b.x), 29723u));
    var var_4 = select(false, all(select(select(!vec3<bool>(true, true, arg_1.e.b), vec3<bool>(var_0.b, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(arg_0.b, arg_1.c.b, false), vec3<bool>(true, arg_1.c.b, var_0.b), false), var_1.d.x > (i32(-1i) * -1i))), !var_0.b);
    return var_1.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: u32) -> i32 {
    var var_0 = arg_1.e;
    var_0 = Struct_1(select(~(~vec4<u32>(1u, u_input.b, arg_1.c.c.c, u_input.b)), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(56545u, arg_1.c.c.c, 4294967295u, arg_3), arg_2), u_input.b, abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 34960u, 4294967295u, 11745u), ~vec4<u32>(1u, 0u, 4294967295u, arg_3))), select(!vec4<bool>(arg_1.e.b, true, arg_1.e.b, false), !select(vec4<bool>(false, arg_1.e.b, false, arg_1.e.b), vec4<bool>(var_0.b, arg_1.e.b, false, arg_1.e.b), true), arg_2.x != arg_1.e.c)), true, func_3(arg_1.a, Struct_4(arg_1.a, countOneBits(vec3<u32>(4294967295u, 4294967295u, 49906u)), Struct_3(max(arg_1.a.a, arg_1.a.c.d), arg_1.a.b || arg_1.e.b, arg_1.c.c), ~(~arg_1.c.c.d.zwy), arg_1.e), select(vec3<u32>(48789u, ~arg_2.x, ~10810u), var_0.a.xwz, vec3<bool>(var_0.b & var_0.b, all(vec4<bool>(arg_1.e.b, true, false, false)), arg_1.c.b))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, ~(-9048i)), -5562i));
    var var_1 = arg_0;
    var var_2 = arg_1.a;
    let var_3 = arg_1.a;
    return -_wgslsmith_mod_i32(0i, 1i);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = select(vec3<bool>(!(func_2(vec4<f32>(arg_3.a, 570f, 2196f, -639f), Struct_4(Struct_3(arg_3.d, arg_0.b, arg_3), vec3<u32>(4294967295u, arg_0.a.x, 9424u), Struct_3(arg_3.d, arg_0.b, Struct_2(arg_3.a, vec3<u32>(0u, 1u, arg_1), 4294967295u, vec4<i32>(1i, -1i, arg_0.d, arg_0.d))), arg_3.d.xzw, arg_0), vec4<u32>(0u, 4294967295u, arg_0.c, 2275u), arg_0.c) > -2147483647i), any(!select(vec4<bool>(arg_0.b, true, arg_0.b, false), vec4<bool>(false, true, arg_0.b, true), vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b))), arg_0.b), vec3<bool>(select(arg_0.b, true, arg_0.d != ~(-30087i)), false, true), vec3<bool>(false, !arg_0.b, !(!(arg_0.b || arg_0.b))));
    var_0 = !vec3<bool>(all(vec2<bool>(true, true)), true, var_0.x);
    var_0 = !(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, var_0.x, true), false))));
    var var_1 = arg_0.a.xxy;
    var var_2 = ~arg_3.d;
    return Struct_3(~(~vec4<i32>(-19220i, firstLeadingBit(-60096i), -u_input.a.x, -47130i)), false, arg_3);
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    var var_0 = arg_0.e.b;
    let var_1 = ~_wgslsmith_add_vec2_u32(arg_0.e.a.yy, ~arg_0.a.c.b.zz << (countOneBits(vec2<u32>(4294967295u, arg_0.b.x)) % vec2<u32>(32u))) | vec2<u32>(u_input.b, ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_0.a.c.c, arg_0.a.c.b.x)), arg_0.c.c.b));
    var var_2 = _wgslsmith_clamp_i32(arg_2.x << (arg_0.c.c.b.x % 32u), -(~arg_2.x), ~arg_0.a.a.x);
    let var_3 = u_input.a.x;
    let var_4 = func_1(Struct_1(arg_0.e.a, !(_wgslsmith_f_op_f32(-arg_1) <= -359f), max(4294967295u, ~(~0u)), ~(~(-63904i))), 39423u, vec2<u32>(_wgslsmith_dot_vec2_u32(func_1(Struct_1(arg_0.e.a, arg_0.e.b, arg_0.c.c.b.x, u_input.a.x), 3146u, _wgslsmith_add_vec2_u32(arg_0.e.a.yx, arg_0.c.c.b.xz), func_1(arg_0.e, 4294967295u, arg_0.a.c.b.zy, Struct_2(276f, vec3<u32>(u_input.b, u_input.b, var_1.x), var_1.x, arg_0.a.c.d)).c).c.b.yz, ~_wgslsmith_div_vec2_u32(vec2<u32>(66639u, arg_0.b.x), vec2<u32>(var_1.x, 7119u))), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.x, abs(arg_0.c.c.b.x)), ~(var_1.x << (var_1.x % 32u)))), Struct_2(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1144f))), _wgslsmith_mod_vec3_u32(vec3<u32>(~54011u, arg_0.c.c.c, _wgslsmith_mult_u32(u_input.b, var_1.x)), countOneBits(firstLeadingBit(arg_0.a.c.b))), firstTrailingBit(72660u), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-38965i, var_3), -5017i), func_1(Struct_1(arg_0.e.a, arg_0.c.b, 1u, u_input.a.x), ~u_input.b, _wgslsmith_add_vec2_u32(arg_0.e.a.zz, arg_0.b.xx), arg_0.c.c).a.x, _wgslsmith_add_i32(var_3, var_3), 1i))).c;
    return _wgslsmith_f_op_f32(abs(-158f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_4(func_1(Struct_1(abs(vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), true, u_input.b, -22242i), ~u_input.b, ~_wgslsmith_add_vec2_u32(vec2<u32>(61812u, u_input.b), vec2<u32>(0u, 25745u)), Struct_2(_wgslsmith_f_op_f32(1427f - -793f), ~vec3<u32>(u_input.b, 13865u, 4294967295u), 1u, ~vec4<i32>(u_input.a.x, u_input.a.x, -1i, -93i))), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, 41273u, u_input.b), false), max(vec3<u32>(u_input.b, u_input.b, 65795u), vec3<u32>(u_input.b, u_input.b, 8117u))), func_1(Struct_1(vec4<u32>(1u, u_input.b, 1u, u_input.b), any(vec4<bool>(false, true, true, true)), u_input.b, 61709i & u_input.a.x), select(~u_input.b, firstTrailingBit(4294967295u), true), firstLeadingBit(~vec2<u32>(u_input.b, u_input.b)), func_1(Struct_1(vec4<u32>(56553u, 21945u, 0u, 4294967295u), true, u_input.b, -78145i), 1u, min(vec2<u32>(58183u, 1u), vec2<u32>(u_input.b, 1u)), func_1(Struct_1(vec4<u32>(1u, 13681u, u_input.b, u_input.b), false, u_input.b, -1i), 0u, vec2<u32>(4294967295u, u_input.b), Struct_2(1003f, vec3<u32>(1u, u_input.b, 1u), 1u, vec4<i32>(u_input.a.x, 0i, 18875i, 1i))).c).c), vec3<i32>(reverseBits(u_input.a.x & u_input.a.x), -(~2102i), -2147483647i), Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 57281u, 94173u, 0u), ~vec4<u32>(78200u, u_input.b, u_input.b, u_input.b)), true, u_input.b & _wgslsmith_clamp_u32(2178u, u_input.b, u_input.b), -2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1015f)) * _wgslsmith_f_op_f32(min(275f, -347f)))), 1f, false)), u_input.a.yz));
    var var_1 = vec2<bool>(true, !(!all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false))));
    var var_2 = Struct_4(Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, -4976i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 9834i, u_input.a.x, 2147483647i), vec4<i32>(-2147483647i, u_input.a.x, 1i, 21364i))), !(var_1.x & var_1.x), func_1(Struct_1(min(vec4<u32>(u_input.b, u_input.b, 0u, 47413u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u)), false, _wgslsmith_mod_u32(4294967295u, u_input.b), ~1450i), ~u_input.b >> (u_input.b % 32u), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 79368u), vec2<u32>(u_input.b, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 59839u))), func_1(Struct_1(vec4<u32>(93294u, u_input.b, 6941u, u_input.b), true, u_input.b, -1i), func_1(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 78674u), var_1.x, 1u, -30651i), 32793u, vec2<u32>(u_input.b, u_input.b), Struct_2(var_0, vec3<u32>(u_input.b, u_input.b, 3977u), 57997u, vec4<i32>(642i, 0i, -13741i, -1806i))).c.c, countOneBits(vec2<u32>(14943u, 4294967295u)), func_1(Struct_1(vec4<u32>(4294967295u, u_input.b, 2608u, u_input.b), var_1.x, u_input.b, u_input.a.x), 1u, vec2<u32>(u_input.b, u_input.b), Struct_2(var_0, vec3<u32>(18791u, u_input.b, 0u), u_input.b, vec4<i32>(-1i, u_input.a.x, -1i, 2147483647i))).c).c).c), select(vec3<u32>(_wgslsmith_mod_u32(u_input.b, 0u), _wgslsmith_mod_u32(u_input.b, u_input.b), ~u_input.b) ^ min(~vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.b, reverseBits(1u << (u_input.b % 32u)), func_1(Struct_1(vec4<u32>(u_input.b, 0u, u_input.b, 21532u), var_1.x, u_input.b, u_input.a.x), 1u, countOneBits(vec2<u32>(u_input.b, 65992u)), func_1(Struct_1(vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), var_1.x, 25256u, 26183i), u_input.b, vec2<u32>(u_input.b, u_input.b), Struct_2(var_0, vec3<u32>(u_input.b, 16109u, u_input.b), 1u, vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))).c).c.b.x), !vec3<bool>(var_1.x, var_1.x, !var_1.x)), Struct_3(max(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 0i, u_input.a.x, -40671i), ~vec4<i32>(u_input.a.x, 21576i, u_input.a.x, u_input.a.x)), ~(~vec4<i32>(-18059i, u_input.a.x, u_input.a.x, u_input.a.x))), any(!vec3<bool>(var_1.x, var_1.x, true)), Struct_2(var_0, abs(vec3<u32>(u_input.b, u_input.b, 0u)) | vec3<u32>(u_input.b, 4294967295u, 4294967295u), 29063u, _wgslsmith_mod_vec4_i32(vec4<i32>(-21743i, 11523i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)))), select(~(-vec3<i32>(u_input.a.x, u_input.a.x, 0i)), vec3<i32>(-1i) * -u_input.a, !select(!vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(false, var_1.x, var_1.x))), Struct_1(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 48173u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 47672u, u_input.b))), false, u_input.b, 55008i));
    let var_3 = Struct_4(func_1(Struct_1(var_2.e.a, false, ~(~u_input.b), 49969i >> (1u % 32u)), 0u, ~vec2<u32>(~var_2.e.c, ~u_input.b), func_1(var_2.e, select(~28338u, u_input.b, true), ~var_2.a.c.b.zy, var_2.a.c).c), _wgslsmith_clamp_vec3_u32(var_2.e.a.xwx, vec3<u32>(_wgslsmith_div_u32(countOneBits(73223u), 73470u), _wgslsmith_add_u32(4294967295u, 1u | var_2.c.c.b.x), var_2.b.x), vec3<u32>(~var_2.e.a.x, u_input.b, 27571u | ~u_input.b)), Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(func_1(var_2.e, var_2.a.c.c, vec2<u32>(u_input.b, var_2.c.c.c), var_2.c.c).a.x, 3077i, var_2.d.x, 1i), vec4<i32>(_wgslsmith_div_i32(-1i, var_2.a.c.d.x), -401i, _wgslsmith_sub_i32(-21137i, u_input.a.x), 0i)), var_1.x, var_2.a.c), reverseBits(_wgslsmith_mod_vec3_i32(var_2.c.a.zzw, -(vec3<i32>(36720i, 1i, var_2.d.x) | var_2.a.a.zyz))), var_2.e);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(var_3.a.c.a + 1227f), _wgslsmith_f_op_f32(-var_0));
    let var_5 = !select(vec2<bool>(any(!vec3<bool>(true, var_1.x, true)), !var_3.a.b), !select(vec2<bool>(false, var_3.a.b), select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), var_3.e.b), var_2.e.b), var_1.x != all(vec3<bool>(true, true, var_2.c.b)));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a, countOneBits(vec4<i32>(5041i, -2147483647i, _wgslsmith_dot_vec3_i32(var_2.c.a.zxw, var_2.a.c.d.yzy), _wgslsmith_sub_i32(var_2.a.a.x, -13738i)) & reverseBits(countOneBits(var_3.c.c.d))), _wgslsmith_f_op_f32(func_1(var_3.e, firstLeadingBit(var_2.e.a.x), func_1(var_2.e, var_3.e.a.x, firstLeadingBit(var_3.b.yx), Struct_2(-446f, var_3.c.c.b, 20677u, var_2.a.c.d)).c.b.zy, Struct_2(var_4.x, var_2.e.a.wzy >> (vec3<u32>(var_3.e.a.x, var_2.b.x, 9915u) % vec3<u32>(32u)), max(1u, var_2.a.c.b.x), -vec4<i32>(u_input.a.x, -1i, var_3.a.a.x, var_2.d.x))).c.a * _wgslsmith_f_op_f32(1248f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1345f) * _wgslsmith_f_op_f32(var_2.a.c.a + -323f)))), _wgslsmith_sub_i32(abs(var_3.c.a.x), -func_1(var_3.e, 1u, min(var_3.a.c.b.xx, var_2.b.xx), Struct_2(var_2.a.c.a, vec3<u32>(var_3.a.c.c, var_3.b.x, var_3.a.c.c), 47390u, vec4<i32>(var_2.a.c.d.x, 32151i, 0i, -7527i))).a.x));
}

