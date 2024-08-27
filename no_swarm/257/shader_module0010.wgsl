struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(i32(-2147483648), 18116i), true, vec3<u32>(28535u, 1u, 4294967295u), 0i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-1i, 1i), false, vec3<u32>(0u, 0u, 17132u), -1i, vec3<bool>(true, false, true)), Struct_1(vec2<i32>(-39704i, -1i), true, vec3<u32>(63265u, 4294967295u, 0u), 0i, vec3<bool>(true, false, true)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(395f * -759f)))));
    var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = max(min(~_wgslsmith_clamp_vec3_u32(global0.c >> (vec3<u32>(u_input.b.x, 0u, 4294967295u) % vec3<u32>(32u)), min(u_input.b.xwz, vec3<u32>(global0.c.x, 20709u, 1u)), global0.c), vec3<u32>(5816u, 1u, 4294967295u) << (u_input.b.wxy % vec3<u32>(32u))), firstTrailingBit(~u_input.b.zwy));
    let var_2 = Struct_1(vec2<i32>(1i, _wgslsmith_mult_i32(abs(21183i), 1i)), any(!vec2<bool>(!global0.b, any(vec4<bool>(false, global0.e.x, false, false)))), min(~vec3<u32>(29045u, 1u, global0.c.x) | select(~vec3<u32>(u_input.b.x, 4294967295u, var_1.x), global0.c ^ vec3<u32>(0u, var_1.x, u_input.b.x), true), ~reverseBits(global0.c) & ~_wgslsmith_mult_vec3_u32(u_input.b.yzz, global0.c)), _wgslsmith_div_i32(max(firstLeadingBit(u_input.d.x << (1u % 32u)), 1i), ((16013i & global0.a.x) << ((0u ^ u_input.b.x) % 32u)) | -19257i), vec3<bool>(false, true, arg_1 != _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(29093i, arg_1))));
    return 16379i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_1, 3>();
    var var_0 = Struct_1(vec2<i32>(abs(1i), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-371f, 792f, 218f, -279f)), arg_1.d)) ^ global0.a, select(true, false, _wgslsmith_add_u32(_wgslsmith_sub_u32(38503u, arg_1.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 51511u), arg_0.c)) > _wgslsmith_add_u32(abs(34806u), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 38945u, 0u, 4294967295u)))), vec3<u32>(arg_0.c.x, firstTrailingBit(51363u), arg_0.c.x), _wgslsmith_div_i32(countOneBits(-11461i), ~min(0i, -30722i)), select(!(!arg_1.e), vec3<bool>(true, true, !(!global0.e.x)), select(vec3<bool>(!arg_1.e.x, arg_0.b, true), !arg_1.e, true)));
    var_0 = global1[_wgslsmith_index_u32(arg_1.c.x, 3u)];
    var_0 = Struct_1(_wgslsmith_add_vec2_i32(abs(max(vec2<i32>(-565i, -11431i), vec2<i32>(1i, var_0.d))) >> (vec2<u32>(~61810u, arg_0.c.x) % vec2<u32>(32u)), arg_0.a), all(!select(var_0.e, vec3<bool>(false, true, global0.b), vec3<bool>(true, false, arg_1.b))), _wgslsmith_div_vec3_u32(firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(29636u, var_0.c.x, 4294967295u), arg_0.c)), abs(_wgslsmith_mod_vec3_u32(u_input.b.yxw, vec3<u32>(var_0.c.x, 5494u, 1u)) << (vec3<u32>(global0.c.x, 51140u, global0.c.x) % vec3<u32>(32u)))), global0.d, global0.e);
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-371f, -254f), -741f, select(var_0.e.x, true, true))) + _wgslsmith_f_op_f32(select(-220f, _wgslsmith_f_op_f32(-266f + -500f), select(global0.b, true, arg_0.b)))), _wgslsmith_f_op_f32(floor(319f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2179f)) * -792f))));
    return i32(-1i) * -92049i;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(347f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) * _wgslsmith_f_op_f32(320f - 721f))))));
    var var_1 = Struct_1(vec2<i32>(min(~max(55131i, 42136i), _wgslsmith_sub_i32(countOneBits(27248i), arg_2.d << (4294967295u % 32u))), 0i), !select(true, -2045f < _wgslsmith_f_op_f32(floor(-1000f)), arg_0), arg_2.c & abs(arg_2.c), ~func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1523f, -1098f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(672f, 677f, var_0, -1624f) + vec4<f32>(var_0, -261f, -1000f, -1000f))), -2147483647i), select(!select(global0.e, !arg_2.e, global0.e), !(!select(arg_2.e, global0.e, global0.e)), vec3<bool>(arg_0, all(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1, arg_2.b, false, true), false)), false)));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_sub_i32(var_1.a.x, var_1.a.x)), arg_2.a.x, -(~u_input.c.x & u_input.a.x), ~_wgslsmith_dot_vec2_i32(select(arg_2.a, vec2<i32>(-1i, arg_2.d), true), vec2<i32>(2147483647i, 30167i))), vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, reverseBits(-2147483647i)), u_input.a.x, global0.a.x, 41870i));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(var_0, -2224f)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1914f, var_0))))))));
    return global1[_wgslsmith_index_u32(u_input.b.x, 3u)];
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_1, 3>();
    var var_0 = func_4(true, false, Struct_1(abs(vec2<i32>(u_input.a.x, -7393i)), global0.b, global0.c, ~func_2(Struct_1(arg_0.xx, false, vec3<u32>(1u, u_input.b.x, global0.c.x), 2147483647i, vec3<bool>(global0.b, global0.e.x, global0.b)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(7401u, global0.c.x), 3u)]), !(!select(global0.e, global0.e, global0.e))));
    let var_1 = countOneBits(countOneBits(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_0.c.x, u_input.b.x), global0.c.xz, true), global0.c.xz, _wgslsmith_add_vec2_u32(global0.c.yx, vec2<u32>(global0.c.x, global0.c.x)))) | (~_wgslsmith_clamp_vec2_u32(var_0.c.zy, u_input.b.zz, u_input.b.yw) ^ u_input.b.wz));
    var var_2 = 40026u;
    let var_3 = global1[_wgslsmith_index_u32(~68629u, 3u)];
    return func_4(var_3.b, var_0.e.x, Struct_1(min(~vec2<i32>(u_input.d.x, arg_0.x), var_3.a), true, select(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(0u, global0.c.x, var_1.x)), var_1.x, abs(var_1.x)), vec3<u32>(~1u, 0u & u_input.b.x, var_3.c.x), select(!var_3.e, vec3<bool>(true, false, true), !var_3.e.x)), i32(-1i) * -2147483647i, !(!vec3<bool>(false, var_3.e.x, global0.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c.x;
    let var_1 = ~(u_input.a.x << (u_input.b.x % 32u)) >> (0u % 32u);
    let var_2 = func_1(vec3<i32>(-max(var_1, -65631i), _wgslsmith_add_i32(~39680i, _wgslsmith_div_i32(-43216i, -29055i)), select(~(-18558i), firstLeadingBit(2147483647i), true)) & (vec3<i32>(_wgslsmith_sub_i32(var_1, 46459i), u_input.d.x, -2642i | u_input.a.x) >> (~(~global0.c) % vec3<u32>(32u))));
    let var_3 = var_2;
    global1 = array<Struct_1, 3>();
    let var_4 = vec4<u32>(u_input.b.x, select(_wgslsmith_div_u32(global0.c.x, var_2.c.x), select(_wgslsmith_add_u32(var_2.c.x, 1u), global0.c.x, true), all(select(!vec4<bool>(true, false, var_3.e.x, true), !vec4<bool>(true, var_3.b, var_2.b, false), !vec4<bool>(false, false, var_2.e.x, false)))), 9857u, var_2.c.x);
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1396f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-327f, 886f, false))), _wgslsmith_f_op_f32(f32(-1f) * -383f), (i32(-1i) * -17757i) > var_1)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1447f, -1000f, -1000f, -1734f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, 901f, 1020f, -281f)), vec4<bool>(false, false, false, global0.e.x)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-765f, -1000f, 883f, -1000f), vec4<f32>(-447f, -323f, 100f, -139f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(343f, -116f, 1289f, 117f), vec4<f32>(402f, -785f, -776f, -203f), vec4<bool>(global0.e.x, var_3.b, var_2.e.x, var_3.e.x))))))))));
}

