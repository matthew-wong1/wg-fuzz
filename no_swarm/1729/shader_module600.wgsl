struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    let var_0 = -41900i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(191f)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1736f) * _wgslsmith_f_op_f32(var_1.a * 1000f)), var_1.a)), Struct_1(_wgslsmith_f_op_f32(trunc(var_1.a))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1120f) - _wgslsmith_f_op_f32(trunc(-1134f))) + var_1.a));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = arg_2;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1199f * -162f) * var_0.b.a), _wgslsmith_f_op_f32(max(arg_2.b.a, var_0.a.a))))), arg_2.b);
}

fn func_1() -> f32 {
    let var_0 = u_input.c.xz;
    global0 = array<vec3<f32>, 14>();
    let var_1 = func_3(true, vec2<u32>(min(35095u, u_input.b), ~(_wgslsmith_sub_u32(4294967295u, u_input.c.x) & u_input.a)), Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1134f), 868f))), func_2(vec3<bool>(true, true, true), true)), ~(~reverseBits(vec4<u32>(var_0.x, 3852u, var_0.x, var_0.x))) ^ (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(1u, var_0.x, var_0.x, var_0.x)), vec4<u32>(u_input.b, var_0.x, 25774u, 1u) << (vec4<u32>(u_input.c.x, 1u, u_input.d, 48907u) % vec4<u32>(32u))) | vec4<u32>(0u, 4294967295u, _wgslsmith_mult_u32(30511u, u_input.d), var_0.x & 0u)));
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-899f))), var_1.a.a));
}

fn func_4(arg_0: vec3<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-804f))) * arg_0.x))));
    let var_1 = _wgslsmith_clamp_vec4_i32(max(_wgslsmith_sub_vec4_i32(-countOneBits(vec4<i32>(-30814i, 2147483647i, 2147483647i, 25539i)), abs(vec4<i32>(1i, 1i, 1i, 1i))), firstTrailingBit(select(~vec4<i32>(-2147483647i, 48829i, 83263i, 9844i), ~vec4<i32>(29181i, 1i, -1i, 9226i), any(vec3<bool>(false, false, false))))), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, -51527i) & (vec4<i32>(-38901i, -51915i, -2147483647i, -2147483647i) >> (vec4<u32>(1u, u_input.b, u_input.a, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 36038i, -23482i, 14687i), vec4<i32>(1i, 38274i, 10432i, -32656i))) ^ vec4<i32>(1i, 7656i, _wgslsmith_sub_i32(1i, ~1i), _wgslsmith_add_i32(~2147483647i, abs(2147483647i))), -reverseBits(vec4<i32>(~1i, 0i, ~(-23884i), _wgslsmith_mult_i32(7302i, 1i))));
    let var_2 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), (arg_0.x != arg_0.x) | all(vec3<bool>(true, true, false))), vec3<bool>(any(vec2<bool>(true, false)), _wgslsmith_div_f32(-1916f, arg_0.x) == _wgslsmith_f_op_f32(floor(arg_0.x)), any(vec3<bool>(false, false, true))), true));
    let var_3 = 1u;
    global0 = array<vec3<f32>, 14>();
    return Struct_4(_wgslsmith_mod_i32(-(~(-29000i)), -1i), !select(select(select(vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(true, var_2, true, var_2), vec4<bool>(var_2, var_2, var_2, var_2)), !vec4<bool>(false, var_2, var_2, true), var_2), select(select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(true, false, false, var_2), vec4<bool>(false, var_2, var_2, false)), vec4<bool>(true, true, var_2, true), var_2), select(vec4<bool>(false, var_2, false, var_2), vec4<bool>(true, false, var_2, var_2), arg_0.x >= arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), ~3503u, func_2(select(select(select(vec3<bool>(false, false, var_2), vec3<bool>(var_2, var_2, var_2), false), vec3<bool>(false, var_2, var_2), any(vec4<bool>(var_2, false, var_2, false))), vec3<bool>(all(vec3<bool>(var_2, false, var_2)), true, false), all(select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, var_2, false)))), select(!(var_3 < var_3), false, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<f32>(3213f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1682f)))))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(843f, var_0.e.a, _wgslsmith_f_op_f32(-var_0.e.a)) - global0[_wgslsmith_index_u32(u_input.d, 14u)]))));
    let var_2 = func_3(var_0.b.x, vec2<u32>(~93270u, var_1.d), func_3(true, vec2<u32>(var_0.d, ~_wgslsmith_div_u32(1u, u_input.d)), func_3(any(var_0.b.zxz), ~(~u_input.c.xx), Struct_2(Struct_1(var_1.e.a), Struct_1(var_0.e.a)), ~vec4<u32>(u_input.d, 4294967295u, 4294967295u, 819u) >> (vec4<u32>(4894u, var_0.d, 4294967295u, 1u) % vec4<u32>(32u))), vec4<u32>(u_input.d | 1u, var_1.d & var_1.d, firstLeadingBit(var_0.d), var_0.d) ^ vec4<u32>(var_0.d, func_4(global0[_wgslsmith_index_u32(u_input.a, 14u)]).d, 13048u | u_input.c.x, ~18634u)), _wgslsmith_sub_vec4_u32(vec4<u32>(min(_wgslsmith_sub_u32(4294967295u, var_1.d), _wgslsmith_mod_u32(42091u, var_0.d)), reverseBits(var_0.d), ~4294967295u, 39183u), _wgslsmith_mod_vec4_u32(~vec4<u32>(69576u, var_1.d, var_1.d, 4294967295u), ~vec4<u32>(var_0.d, 0u, u_input.c.x, 4294967295u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 68518u, var_0.d, var_0.d) | vec4<u32>(var_1.d, u_input.c.x, 1u, 1u), ~vec4<u32>(0u, 1u, var_1.d, 90476u)))).a;
    var var_3 = true || (var_0.c < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1231f, _wgslsmith_f_op_f32(597f * var_1.c))));
    let var_4 = all(select(!vec4<bool>(false, any(vec3<bool>(false, var_1.b.x, var_1.b.x)), var_1.b.x, var_0.b.x), var_0.b, var_1.b));
    var var_5 = var_0.a;
    global0 = array<vec3<f32>, 14>();
    var_5 = 1i ^ _wgslsmith_mult_i32(max(3280i, ~(-var_0.a)), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-308f, _wgslsmith_f_op_f32(var_1.e.a + var_0.e.a))), -2025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a))), _wgslsmith_f_op_f32(f32(-1f) * -925f)), var_0.c, firstLeadingBit((var_1.a ^ -2147483647i) | -2147483647i) << (var_0.d % 32u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2114f - var_1.e.a), _wgslsmith_f_op_f32(-184f * 1438f))), 230f, 1114f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))), reverseBits(~u_input.c));
}

