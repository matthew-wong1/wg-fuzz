struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1242f, arg_0.d.x, 1251f, -225f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.d.x, 123f, arg_0.d.x) * vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, -1000f)), vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, 883f)))), arg_0, Struct_1(arg_0.b, -20341i, all(select(!vec3<bool>(arg_1, true, false), !vec3<bool>(arg_1, arg_1, false), all(vec4<bool>(true, true, true, arg_1)))), _wgslsmith_f_op_vec3_f32(abs(arg_0.d)), 62567i), arg_0);
    let var_1 = !(_wgslsmith_f_op_f32(select(arg_0.d.x, _wgslsmith_f_op_f32(-839f * _wgslsmith_f_op_f32(-676f - arg_0.d.x)), all(vec4<bool>(false, arg_0.c, arg_1, false)))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_div_f32(1000f, arg_0.d.x))));
    var var_2 = 1682f;
    var_2 = _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(159f, var_0.e.d.x), _wgslsmith_f_op_f32(-arg_0.d.x))));
    let var_3 = Struct_2(Struct_1(-abs(var_0.c.a), var_0.c.b, -2147483647i >= countOneBits(min(u_input.a, arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.d)), ~(-50997i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e.d.x, _wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(round(227f)), _wgslsmith_div_f32(arg_0.d.x, 778f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.d.x, -1246f, arg_0.d.x)) * _wgslsmith_f_op_vec4_f32(min(var_0.b, vec4<f32>(arg_0.d.x, -415f, arg_0.d.x, arg_0.d.x)))))) - vec4<f32>(752f, -1868f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + 2361f), _wgslsmith_f_op_f32(-1000f - -998f))), Struct_1(var_0.e.a, u_input.a, all(vec3<bool>(false, !var_0.e.c, var_0.e.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.d)), arg_0.b), Struct_1(_wgslsmith_clamp_i32(2147483647i, var_0.e.e, ~arg_0.a), firstTrailingBit((arg_0.e & -8973i) >> (countOneBits(u_input.c.x) % 32u)), arg_1, _wgslsmith_f_op_vec3_f32(-var_0.c.d), select(i32(-1i) * -18724i, ~3932i, var_0.d.c)), var_0.e);
    return -1i;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(func_3(Struct_1(u_input.b, countOneBits(42738i), true, vec3<f32>(1803f, 833f, 979f), ~u_input.a), !select(true, false, false)), 17657i, !(select(true, true, true) && true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(474f, 528f, -1508f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(468f, -1695f, 154f))))), select(abs(~1i), ~(1i >> (u_input.d.x % 32u)), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-833f, -2100f, 1434f, -383f) * vec4<f32>(247f, -456f, -674f, 1630f)) + vec4<f32>(327f, -1000f, -2032f, _wgslsmith_div_f32(-2128f, 1097f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2690f - -519f), -990f)), 140f, _wgslsmith_f_op_f32(trunc(-2095f)), 434f), !vec4<bool>(true, false, false, all(vec3<bool>(true, true, true))))), Struct_1(u_input.a, abs(_wgslsmith_mod_i32(-arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -64961i), vec2<i32>(arg_0, -51i)))), !all(vec3<bool>(true, true, true)), vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(1061f)), _wgslsmith_div_f32(-960f, 509f)), u_input.b), Struct_1(~u_input.a, _wgslsmith_div_i32(u_input.b, arg_0), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), any(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-901f, -141f, 803f), vec3<f32>(223f, 1239f, -1000f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(236f, 1190f, 912f), vec3<f32>(104f, -2178f, -302f), true)))), u_input.b), Struct_1(-u_input.b, ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-30164i, u_input.a)), vec2<i32>(0i, arg_0)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true))), vec3<f32>(_wgslsmith_f_op_f32(-1364f - -321f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-417f))), _wgslsmith_f_op_f32(abs(-1547f))), u_input.b));
    global0 = array<vec4<i32>, 32>();
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(300f, 1499f, 1778f, var_0.e.d.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(var_0.b))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1207f, -728f, 354f, -1074f) - vec4<f32>(var_0.b.x, var_0.a.d.x, var_0.a.d.x, 242f))))))));
    return select(vec3<i32>(max(arg_0, 2147483647i), -_wgslsmith_clamp_i32(1i, u_input.b, -2147483647i), -2147483647i) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x), vec3<u32>(5387u, 6193u, 61794u)) % vec3<u32>(32u)), vec3<i32>(var_0.c.e, _wgslsmith_clamp_i32(-arg_0, reverseBits(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], vec4<i32>(u_input.a, arg_0, arg_0, -1i))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-32757i, var_0.a.b, var_0.c.b), vec3<i32>(4539i, 52335i, var_0.a.e))), abs(_wgslsmith_div_i32(-29270i, -1i))), -1573f < _wgslsmith_f_op_f32(-846f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), var_0.c.d.x, true))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(1f, arg_1.x)), 1f, _wgslsmith_f_op_f32(1319f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))))), 1467f);
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.a, firstLeadingBit(u_input.a << (_wgslsmith_mult_u32(55734u, u_input.d.x) % 32u))), func_2(0i));
    var var_2 = all(!vec3<bool>(arg_0, arg_0, true));
    var var_3 = Struct_2(Struct_1((~8229i ^ _wgslsmith_div_i32(u_input.a, var_1.x)) >> (~u_input.c.x % 32u), -firstTrailingBit(~u_input.b), any(select(!vec4<bool>(true, true, arg_0, arg_0), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0)), all(vec3<bool>(arg_0, true, true)))), _wgslsmith_f_op_vec3_f32(max(var_0.zwz, vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(arg_1.x, 1000f)), _wgslsmith_f_op_f32(var_0.x + arg_1.x)))), select(_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(var_1.x, 1i)), -_wgslsmith_clamp_i32(7165i, var_1.x, 0i), arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 - var_0) + vec4<f32>(1000f, 1008f, arg_1.x, 654f)))), Struct_1(min(_wgslsmith_div_i32(var_1.x, countOneBits(u_input.a)), var_1.x), max(~_wgslsmith_add_i32(u_input.b, 2147483647i), 1i), all(select(vec4<bool>(true, arg_0, true, arg_0), !vec4<bool>(arg_0, true, true, true), true)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-266f)), _wgslsmith_f_op_f32(round(-1069f)), -203f), ~_wgslsmith_div_i32(u_input.b, var_1.x) ^ countOneBits(min(7301i, u_input.a))), Struct_1(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, var_1.x), vec3<i32>(u_input.b, 47813i, u_input.a)), 19230i), 0i, !((true && arg_0) == true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-760f - var_0.x), 988f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(arg_1.x))), -490f), _wgslsmith_sub_i32(var_1.x, var_1.x)), Struct_1(firstLeadingBit(firstLeadingBit(1i)), 201i, any(!select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.xxw * var_0.yxz), _wgslsmith_div_vec3_f32(var_0.zyz, vec3<f32>(1221f, 1579f, var_0.x)), vec3<bool>(true, arg_0, true)))), _wgslsmith_add_i32(-10488i, u_input.a)));
    var_2 = arg_0;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec4<u32>(u_input.d.x | _wgslsmith_clamp_u32(~15057u, 82445u, u_input.d.x), reverseBits(u_input.c.x << (68839u % 32u)), ~57221u >> (_wgslsmith_mult_u32(u_input.c.x, ~3241u) % 32u), abs(max(1u, u_input.c.x)) & _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, u_input.c.x), min(9786u, 38229u))));
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(max(~(~u_input.a), -_wgslsmith_mult_i32(u_input.b, -11072i)), _wgslsmith_mod_i32(-(i32(-1i) * -34700i), u_input.b)), countOneBits(~(-1i | _wgslsmith_sub_i32(u_input.a, u_input.a))), countOneBits(func_1(~u_input.d.x == 0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1362f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-237f, 469f)))))));
    var var_2 = ~_wgslsmith_add_vec4_i32(min(-firstLeadingBit(global0[_wgslsmith_index_u32(34474u, 32u)]), vec4<i32>(0i, countOneBits(60535i), ~u_input.a, u_input.a)), vec4<i32>(2147483647i & (1i << (u_input.c.x % 32u)), -22138i, -1i, reverseBits(_wgslsmith_clamp_i32(-1i, u_input.b, -1i))));
    global0 = array<vec4<i32>, 32>();
    var var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(max(var_0.x, var_0.x)) >> (var_0.x % 32u), _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x) ^ vec3<u32>(u_input.d.x, var_0.x, 4294967295u), vec3<u32>(var_0.x, u_input.d.x, 12806u))), reverseBits(_wgslsmith_mult_u32(reverseBits(43694u), ~u_input.c.x)), ~u_input.c.x), var_1.x);
}

