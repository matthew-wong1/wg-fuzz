struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    var var_0 = -u_input.a.x;
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(max(~(~53877i), u_input.a.x), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, _wgslsmith_mod_u32(arg_1, 0u)), 10u)], -48687i), max(-1i, 45204i)), vec3<i32>(~_wgslsmith_sub_i32(-5963i, ~global0[_wgslsmith_index_u32(arg_1, 10u)]), -2147483647i, u_input.a.x));
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_2 = 542f;
    return ~(~(~22667u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    var var_0 = firstTrailingBit(~vec4<u32>(arg_1.c.c, func_3(_wgslsmith_f_op_f32(-1164f - arg_0.c.b.x), arg_0.a.d.x, select(vec2<bool>(arg_2, arg_0.b), vec2<bool>(true, arg_0.b), arg_1.b)), arg_1.c.d.x, 4294967295u));
    var_0 = vec4<u32>(~arg_0.d.c, var_0.x, var_0.x, var_0.x);
    var var_1 = _wgslsmith_add_vec4_i32(~(~abs(vec4<i32>(u_input.a.x, 1i, 4777i, -2147483647i))), vec4<i32>(arg_1.e.x, ~2147483647i, 0i, select(-global0[_wgslsmith_index_u32(var_0.x, 10u)], global0[_wgslsmith_index_u32(~119853u, 10u)], arg_2))) & vec4<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(29252u, 10u)], 26993i), u_input.a.x | 2147483647i, arg_0.e.x, -arg_3.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.b.x * arg_1.d.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.b.x, -326f, -163f, arg_1.d.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b.x, arg_1.d.a, arg_0.a.a, arg_1.c.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-581f, 315f, _wgslsmith_f_op_f32(-1316f - arg_1.c.a), _wgslsmith_f_op_f32(-arg_1.c.a)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.a, arg_1.d.b.x, -2051f, arg_1.d.a))))), _wgslsmith_sub_u32(~(~0u << (firstTrailingBit(15086u) % 32u)), 122919u), _wgslsmith_sub_vec2_u32(~vec2<u32>(~1u, var_0.x << (arg_0.d.c % 32u)), ~((arg_1.a.d & vec2<u32>(arg_0.c.c, arg_1.d.d.x)) ^ vec2<u32>(15476u, 0u))));
    var_0 = _wgslsmith_mod_vec4_u32((~vec4<u32>(0u, 47949u, arg_0.d.d.x, 58245u) & ~vec4<u32>(var_0.x, 0u, var_2.d.x, arg_0.a.c)) & vec4<u32>(var_2.c, ~arg_1.c.d.x, ~var_0.x, ~var_2.d.x), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.c, var_2.d.x, 70814u, arg_0.d.c), vec4<u32>(4813u, 4294967295u, 1u, var_2.c)) & ~vec4<u32>(var_2.c, arg_1.d.d.x, var_0.x, arg_0.c.d.x), firstTrailingBit(max(vec4<u32>(arg_1.d.c, arg_0.d.d.x, var_0.x, 48965u), vec4<u32>(1u, 131u, var_2.d.x, 0u))))) >> (vec4<u32>(38629u, ~min(var_0.x, var_2.c), ~arg_0.a.c, ~firstLeadingBit(8437u)) % vec4<u32>(32u));
    return arg_0.e.x | arg_3.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = vec4<i32>(-11578i, ~(-29508i), func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1401f, 1000f, -613f), vec4<f32>(arg_0.x, 1266f, arg_1.a.a.b.x, 1000f), arg_1.a.b)), func_3(arg_0.x, arg_1.a.c.d.x, vec2<bool>(arg_1.a.b, false)), vec2<u32>(1u, arg_1.a.c.c)), false, arg_1.a.c, Struct_1(-472f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, -778f, arg_1.a.c.b.x, arg_1.a.d.a)), 0u, arg_1.a.c.d | vec2<u32>(8564u, arg_1.a.a.d.x)), vec2<i32>(arg_1.a.e.x, 0i)), arg_1.a, !any(vec4<bool>(arg_1.a.b, true, false, arg_1.a.b)), vec3<i32>(-1i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_1.a.d.d.x, 4294967295u), 10u)], 0i)), firstLeadingBit(arg_1.a.e.x));
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_f32(952f * -392f);
    var var_3 = arg_1.a.d;
    let var_4 = min(var_0.x, _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec4_i32(var_0 & var_0, var_0)), u_input.a.x));
    return _wgslsmith_add_i32(func_4(var_1, var_1, true, ~var_0.zyx), _wgslsmith_dot_vec2_i32(var_1.e, u_input.a));
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = vec4<i32>(~global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u >> (arg_0.x % 32u), ~0u), 10u)], -22044i, ~_wgslsmith_sub_i32(u_input.a.x & 30485i, ~func_2(vec2<f32>(663f, -278f), Struct_3(Struct_2(Struct_1(213f, vec4<f32>(688f, 266f, -1465f, 1000f), 32491u, arg_0), false, Struct_1(1000f, vec4<f32>(1148f, 1444f, -979f, -204f), arg_0.x, vec2<u32>(76203u, arg_0.x)), Struct_1(370f, vec4<f32>(1000f, 319f, 1000f, -563f), 24088u, arg_0), vec2<i32>(1i, 1i))))), i32(-1i) * -(~global0[_wgslsmith_index_u32(4294967295u, 10u)] >> (arg_0.x % 32u)));
    var var_1 = vec3<bool>(select(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !all(vec4<bool>(false, true, false, false))) && true, select(true, all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(-166f + _wgslsmith_f_op_f32(f32(-1f) * -1382f)) >= _wgslsmith_f_op_f32(ceil(893f)));
    global0 = array<i32, 10>();
    let var_2 = -1455f;
    let var_3 = Struct_1(var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f) - _wgslsmith_div_f32(589f, -1198f)), _wgslsmith_f_op_f32(-var_2), var_2)), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 1u), _wgslsmith_mult_vec2_u32(reverseBits(arg_0), arg_0 ^ vec2<u32>(arg_0.x, 1u << (0u % 32u))));
    return StorageBuffer(_wgslsmith_mod_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(0u, 10u)], u_input.a.x, global0[_wgslsmith_index_u32(arg_0.x, 10u)]), var_0.yzz) | vec3<i32>(max(_wgslsmith_div_i32(-63349i, var_0.x), -2147483647i), _wgslsmith_add_i32(func_2(var_3.b.xw, Struct_3(Struct_2(Struct_1(1175f, vec4<f32>(var_2, var_3.a, -986f, var_2), 1u, vec2<u32>(var_3.c, 51520u)), false, Struct_1(-1270f, var_3.b, 67550u, vec2<u32>(4294967295u, var_3.d.x)), var_3, vec2<i32>(var_0.x, u_input.a.x)))), _wgslsmith_mult_i32(-1i, u_input.a.x)), global0[_wgslsmith_index_u32(select(arg_0.x, _wgslsmith_div_u32(1u, 1u), any(vec4<bool>(var_1.x, false, var_1.x, var_1.x))), 10u)]), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(~arg_0.x, arg_0.x)), countOneBits(reverseBits(vec2<u32>(1u, arg_0.x)))), vec2<u32>(~var_3.c, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(717f + _wgslsmith_div_f32(485f, -283f)), vec4<f32>(_wgslsmith_f_op_f32(263f - -1012f), _wgslsmith_f_op_f32(step(-905f, 460f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -299f), _wgslsmith_mult_u32(min(1u, 0u), ~20493u), vec2<u32>(9089u, firstLeadingBit(18026u))), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))) || true, Struct_1(-761f, vec4<f32>(_wgslsmith_f_op_f32(sign(-212f)), -351f, _wgslsmith_f_op_f32(ceil(1413f)), _wgslsmith_f_op_f32(f32(-1f) * -215f)), _wgslsmith_mod_u32(1u, 10950u), vec2<u32>(countOneBits(49732u), 1u)), Struct_1(-1000f, vec4<f32>(_wgslsmith_f_op_f32(-799f + 516f), _wgslsmith_f_op_f32(1010f - 1109f), -954f, _wgslsmith_f_op_f32(trunc(-1091f))), _wgslsmith_mod_u32(0u, 49744u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(42304u, 96734u, 33583u), vec3<u32>(4294967295u, 17097u, 25974u)) % 32u), abs(vec2<u32>(1u, 1u))), abs(u_input.a)));
    var var_1 = Struct_3(var_0.a);
    global0 = array<i32, 10>();
    let x = u_input.a;
    s_output = func_1(vec2<u32>(~_wgslsmith_sub_u32(0u, var_1.a.a.d.x), ~1u));
}

