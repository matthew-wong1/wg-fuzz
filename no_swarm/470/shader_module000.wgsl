struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1785f * global0.x))), 966f, -102f, -1808f), ~(~firstTrailingBit(vec4<u32>(0u, u_input.b.x, 938u, 127796u))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b.x), u_input.b.x, min(1u, u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(35575u, u_input.b.x, 4294967295u, 0u), vec4<u32>(107336u, u_input.d, 0u, u_input.b.x))), vec4<u32>(firstTrailingBit(0u), _wgslsmith_sub_u32(1u, u_input.b.x), ~u_input.b.x, 1u)), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(18851i, -71877i), vec2<i32>(41804i, u_input.a)) & ~(vec2<i32>(1i, u_input.c) >> (vec2<u32>(u_input.b.x, u_input.d) % vec2<u32>(32u))), -(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(-1i, -47679i))), vec2<i32>(-1684i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -39978i), vec2<i32>(u_input.a, 22027i)))), true);
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_2 = Struct_1(select(!(!var_0.d), false, (var_0.a.x != 114f) || any(vec4<bool>(true, var_0.d, false, false))) || var_0.d, min(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.c.x, 13085i, -20550i), ~vec4<i32>(2744i, var_0.c.x, -17967i, -3086i)), _wgslsmith_dot_vec2_i32(var_0.c, vec2<i32>(u_input.a, var_0.c.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.a)), _wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(724f, 583f, -1375f, global0.x) * var_0.a))))), true, vec3<bool>(var_1 != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-242f - var_0.a.x), _wgslsmith_f_op_f32(ceil(var_1)), any(vec2<bool>(false, var_0.d)))), var_0.d, !(var_0.c.x < _wgslsmith_add_i32(-2147483647i, u_input.a))));
    var_2 = Struct_1(!var_0.d, -17459i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1139f, 1132f, var_1, 1185f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, -1168f, var_0.a.x, var_0.a.x), vec4<f32>(-1363f, global0.x, var_1, var_1)))))), !any(var_2.e.xx), !select(var_2.e, vec3<bool>(true, !var_2.e.x, true), var_0.d));
    var var_3 = vec3<bool>(!var_2.e.x, var_2.d, -2147483647i != ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 39705i, -2147483647i, u_input.a), select(vec4<i32>(31598i, 0i, var_0.c.x, 2147483647i), vec4<i32>(16814i, var_0.c.x, var_0.c.x, 1i), false)));
    return var_0.b;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(vec3<u32>(1u | firstLeadingBit(~u_input.b.x), abs(u_input.d), u_input.d), arg_0, Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) - _wgslsmith_f_op_vec4_f32(-arg_0.c)))), ~(vec4<u32>(u_input.b.x, 0u, 4294967295u, 18466u) | func_3()), _wgslsmith_div_vec2_i32(~(-vec2<i32>(-2147483647i, u_input.c)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-37935i, 1i, 2147483647i, 2147483647i), vec4<i32>(arg_0.b, u_input.a, u_input.c, arg_0.b)), ~1i)), !arg_0.e.x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.xx));
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.c);
    var var_2 = select(countOneBits(_wgslsmith_sub_vec4_i32(select(vec4<i32>(0i, 1i, arg_0.b, var_0.c.c.x), -vec4<i32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), arg_0.e.x != arg_0.a), vec4<i32>(min(0i, -1i), var_0.c.c.x, -1i, 23434i))), vec4<i32>(max(max(var_0.c.c.x, -16457i), u_input.a), _wgslsmith_mult_i32(u_input.a, arg_0.b), 19284i, _wgslsmith_sub_i32(u_input.c, arg_0.b)), arg_0.d);
    let var_3 = var_2.x;
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = func_3().xxy;
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c.wy - vec2<f32>(1263f, 1555f))) * arg_0.c.zz))));
    global0 = arg_0.c.zy;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(-arg_0.c.x), 786f, global0.x)))));
    let var_2 = u_input.d;
    return -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a, 2147483647i), 1i) >> (var_0.xy % vec2<u32>(32u)), vec2<i32>(-19831i, -30245i));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(620f, global0.x)), -1116f, -1328f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -661f)))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(0u, arg_0, 0u, 0u)), vec4<u32>(1u, ~arg_0, 99451u, u_input.d & 4294967295u)), vec4<u32>(max(abs(u_input.b.x), arg_0), arg_0, select(~arg_0, arg_0, select(false, true, false)), firstTrailingBit(firstTrailingBit(0u)))), firstTrailingBit(func_4(func_2(Struct_1(true, 1i, vec4<f32>(global0.x, 1000f, global0.x, global0.x), true, vec3<bool>(false, false, true))))), true);
    global0 = _wgslsmith_f_op_vec2_f32(ceil(var_0.a.yz));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1560f, -718f))) < _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x * 1269f), _wgslsmith_f_op_f32(step(-471f, var_0.a.x))))), select(u_input.c, countOneBits(-(44122i << (1u % 32u))), (1486f < _wgslsmith_f_op_f32(-var_0.a.x)) | any(select(vec2<bool>(true, true), vec2<bool>(var_0.d, var_0.d), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(210f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1030f)), _wgslsmith_f_op_f32(f32(-1f) * -904f), global0.x)), true, vec3<bool>(true, var_0.d, !select(var_0.d, true || var_0.d, true)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_3 {
    var var_0 = ~arg_0.x;
    var var_1 = !any(vec4<bool>(true, !(!arg_2), !select(true, true, arg_2), false));
    global0 = _wgslsmith_f_op_vec2_f32(-arg_1.b.c.wz);
    var var_2 = func_2(arg_1.b);
    let var_3 = Struct_1(arg_1.c.d && false, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, _wgslsmith_mult_i32(-1i, firstTrailingBit(-5156i)), arg_3), arg_0.wyz), vec4<f32>(-1582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1610f * global0.x) * arg_1.b.c.x)), func_1(u_input.b.x & ~arg_1.c.b.x).c.x, var_2.c.x), false, !(!select(vec3<bool>(var_2.a, false, true), select(arg_1.b.e, vec3<bool>(true, arg_2, true), vec3<bool>(true, arg_2, false)), func_2(arg_1.b).e)));
    return arg_1;
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = u_input.c;
    var var_1 = Struct_3(arg_1.a, Struct_1(func_5(vec4<i32>(u_input.c, var_0, ~1i, arg_1.b.b >> (u_input.d % 32u)), func_5(~vec4<i32>(-46528i, var_0, arg_1.b.b, arg_1.b.b), func_5(vec4<i32>(-1i, -24557i, -2147483647i, u_input.a), Struct_3(arg_2.c.b.yyx, Struct_1(false, var_0, vec4<f32>(global0.x, 102f, arg_1.c.a.x, -111f), arg_1.b.d, arg_1.b.e), Struct_2(vec4<f32>(-2164f, 1129f, -2136f, 704f), arg_2.c.b, vec2<i32>(var_0, 2503i), arg_2.b.d)), arg_2.c.d, -2147483647i), func_5(vec4<i32>(0i, arg_2.b.b, u_input.c, u_input.c), Struct_3(vec3<u32>(1u, u_input.d, 0u), Struct_1(arg_2.b.d, -2147483647i, arg_1.c.a, true, arg_1.b.e), arg_1.c), arg_2.b.a, u_input.c).b.e.x, -23240i), true, ~1i).c.d, arg_1.b.b, arg_2.b.c, arg_1.c.d && !func_1(949u).e.x, vec3<bool>(false, ~arg_2.c.c.x == arg_2.c.c.x, false)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0)), 408f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(571f)))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) + _wgslsmith_div_f32(316f, -415f))), vec4<u32>(reverseBits(_wgslsmith_add_u32(arg_1.c.b.x, arg_1.a.x)), u_input.b.x, 0u, 4294967295u), arg_1.c.c, arg_1.c.d));
    let var_2 = Struct_1(!arg_2.c.d && true, -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1007f, var_1.c.a.x, -359f, arg_2.b.c.x), arg_1.c.a, true)) - vec4<f32>(global0.x, arg_0, global0.x, var_1.c.a.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.c.a))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(arg_1.b.c)))))), all(vec4<bool>(!func_5(vec4<i32>(u_input.a, -47505i, -1i, 24578i), Struct_3(arg_1.a, arg_2.b, Struct_2(vec4<f32>(arg_0, arg_2.b.c.x, -1368f, -323f), arg_2.c.b, arg_2.c.c, true)), arg_2.c.d, arg_2.b.b).b.d, any(vec4<bool>(false, false, false, arg_2.c.d)) | !arg_2.b.e.x, all(vec4<bool>(false, arg_1.c.d, false, false)), false)), func_2(func_1(1u)).e);
    var var_3 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(arg_1.a.x, 42231u), ~76145u) << (vec2<u32>(var_1.a.x, 1u >> (arg_2.c.b.x % 32u)) % vec2<u32>(32u))), vec2<u32>(select(10974u, 24420u, arg_2.c.d), ~arg_1.a.x), vec2<u32>(63396u, _wgslsmith_clamp_u32(4294967295u & ~arg_2.c.b.x, ~u_input.b.x, _wgslsmith_add_u32(4294967295u, var_1.c.b.x))));
    var var_4 = arg_2.b;
    return StorageBuffer(0i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(-663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(591f + global0.x)) * 1078f));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(1078f + global0.x), func_5(select(vec4<i32>(-15564i, _wgslsmith_sub_i32(u_input.a, 2147483647i), u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.a, 1i)), ~(~vec4<i32>(-2147483647i, 13529i, -1i, u_input.a)), any(vec4<bool>(false, true, true, true))), Struct_3(~(vec3<u32>(u_input.b.x, u_input.b.x, u_input.d) | vec3<u32>(u_input.d, 17226u, u_input.b.x)), func_1(u_input.b.x), Struct_2(vec4<f32>(global0.x, -252f, 1073f, global0.x), _wgslsmith_add_vec4_u32(vec4<u32>(17064u, 0u, 29355u, 1u), vec4<u32>(1u, u_input.d, u_input.b.x, 38520u)), -vec2<i32>(-53793i, u_input.c), true)), false, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 4012i, u_input.c, 40782i), vec4<i32>(22079i, -5481i, u_input.a, u_input.c))), func_5(firstLeadingBit(-vec4<i32>(u_input.c, 15416i, u_input.a, u_input.a)), func_5(vec4<i32>(select(u_input.c, 42402i, true), 0i, func_1(4294967295u).b, 3468i), Struct_3(vec3<u32>(u_input.d, 4294967295u, u_input.d), func_1(u_input.b.x), func_5(vec4<i32>(-1i, -1i, -27250i, u_input.a), Struct_3(vec3<u32>(u_input.b.x, 1u, 53744u), Struct_1(true, u_input.c, vec4<f32>(249f, global0.x, global0.x, 461f), true, vec3<bool>(true, false, true)), Struct_2(vec4<f32>(622f, global0.x, global0.x, -465f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec2<i32>(-2147483647i, -5408i), false)), true, -9777i).c), any(vec4<bool>(true, false, true, false)), u_input.c), !(_wgslsmith_sub_u32(4294967295u, 25657u) != max(u_input.b.x, 23166u)), -26490i));
}

