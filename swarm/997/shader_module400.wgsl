struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: i32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = 1f;
    var var_1 = min(_wgslsmith_add_u32(u_input.e, ~max(49314u & u_input.a, u_input.e)), _wgslsmith_mult_u32(_wgslsmith_div_u32(countOneBits(4294967295u), _wgslsmith_mult_u32(~u_input.c, 0u)), 101522u));
    var var_2 = ~_wgslsmith_dot_vec3_u32(abs(~select(vec3<u32>(u_input.a, u_input.a, u_input.e), vec3<u32>(2917u, 38384u, 30631u), vec3<bool>(true, false, arg_1.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(19847u, 4658u, 4294967295u), vec3<u32>(0u, u_input.a, 4294967295u)) ^ vec3<u32>(u_input.a, 1u, u_input.e), firstTrailingBit(abs(vec3<u32>(0u, u_input.e, 6215u)))));
    let var_3 = select(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 5514u, 22595u, u_input.a), abs(vec4<u32>(4294967295u, u_input.a, u_input.e, 1u))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u)), ~vec4<u32>(u_input.e, u_input.e, 4294967295u, 4294967295u), countOneBits(vec4<u32>(u_input.a, u_input.e, 4930u, 20170u)))) | ~countOneBits(vec4<u32>(u_input.c, 4294967295u, u_input.a, 79888u)), ~(~(vec4<u32>(44072u, 43390u, 55136u, 9160u) & vec4<u32>(u_input.e, 0u, u_input.e, u_input.e)) >> (vec4<u32>(~1u, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.e), vec2<u32>(u_input.e, 7149u)), 0u) % vec4<u32>(32u))), any(vec2<bool>(arg_3.c.x, any(arg_0.b.a.d))));
    var_2 = 0u;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(u_input.b << (0u % 32u)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d, -35538i), u_input.b)), 11925i, ~arg_3.b.a.a, arg_0.b.a.a ^ 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(~arg_0.a.x, ~(arg_3.d & arg_0.c.a), 0i, u_input.b), arg_0.a));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_5(_wgslsmith_clamp_vec4_i32(~func_3(Struct_5(vec4<i32>(2147483647i, -28830i, -38060i, u_input.d), Struct_2(Struct_1(u_input.b, -210f, vec2<f32>(-1734f, -108f), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec3<i32>(u_input.d, 113569i, u_input.b)), vec3<f32>(-1386f, 472f, -1349f)), Struct_1(-1i, 498f, vec2<f32>(1841f, 1064f), vec4<bool>(arg_0.x, false, arg_0.x, true), vec3<i32>(u_input.b, -58682i, 2147483647i)), vec3<bool>(arg_0.x, false, arg_0.x), Struct_4(vec3<bool>(arg_0.x, false, arg_0.x), u_input.d, Struct_1(u_input.d, -431f, vec2<f32>(-1555f, -1226f), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec3<i32>(u_input.d, u_input.b, u_input.b)))), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, false, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1127f, -1289f, -313f, -152f)), Struct_3(279f, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 24u)], vec3<f32>(886f, 1650f, -1562f)), vec3<bool>(false, arg_0.x, true), -23992i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, abs(15496i), 2147483647i, _wgslsmith_add_i32(u_input.b, -84921i)), -(~vec4<i32>(10447i, u_input.b, u_input.b, 1i))), firstLeadingBit((vec4<i32>(u_input.b, -2147483647i, u_input.b, 2147483647i) << (vec4<u32>(u_input.a, 4294967295u, u_input.e, u_input.e) % vec4<u32>(32u))) ^ vec4<i32>(3330i, 1i, 0i, u_input.b))), Struct_2(Struct_1(3157i, _wgslsmith_f_op_f32(ceil(138f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-188f, 1012f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(516f, -743f))), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, 94461i, u_input.b), vec3<i32>(-1i, 32285i, -1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(379f, -327f, -253f))), vec3<f32>(502f, -1991f, 436f)))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~max(1u, u_input.c)), abs(firstLeadingBit(u_input.e))), 24u)], !vec3<bool>(any(!vec3<bool>(arg_0.x, false, arg_0.x)), !(u_input.d > 49835i), !arg_0.x), Struct_4(vec3<bool>(!all(vec4<bool>(true, arg_0.x, arg_0.x, true)), false, select(63905u >= u_input.e, all(arg_0), !arg_0.x)), firstTrailingBit(func_3(Struct_5(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), Struct_2(global0[_wgslsmith_index_u32(u_input.e, 24u)], vec3<f32>(-1000f, -3052f, -2407f)), Struct_1(0i, -268f, vec2<f32>(-372f, 200f), vec4<bool>(arg_0.x, true, arg_0.x, false), vec3<i32>(-15184i, u_input.d, 19704i)), vec3<bool>(arg_0.x, true, false), Struct_4(vec3<bool>(arg_0.x, false, false), u_input.d, global0[_wgslsmith_index_u32(u_input.e, 24u)])), vec3<bool>(arg_0.x, true, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1481f, 448f, 603f) * vec4<f32>(-236f, 1648f, -1116f, -1000f)), Struct_3(1294f, Struct_2(Struct_1(29731i, -568f, vec2<f32>(387f, 1236f), vec4<bool>(true, false, arg_0.x, arg_0.x), vec3<i32>(21364i, u_input.b, u_input.d)), vec3<f32>(640f, -402f, -323f)), vec3<bool>(false, true, false), 23504i, 1i)).x), global0[_wgslsmith_index_u32(0u, 24u)]));
    let var_1 = var_0.e;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1785f, 317f, var_0.e.c.b, var_1.c.c.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.b, var_0.b.a.c.x, 1000f, var_0.c.c.x)))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, 1763f, var_1.c.b, var_1.c.c.x)))))));
    let var_3 = min(abs(~(~firstLeadingBit(1u))), 1u);
    var var_4 = _wgslsmith_sub_vec4_i32(max(var_0.a & min(_wgslsmith_clamp_vec4_i32(var_0.a, var_0.a, var_0.a), var_0.a), func_3(Struct_5(min(vec4<i32>(1i, var_1.c.a, 49450i, var_0.c.a), var_0.a), Struct_2(Struct_1(13833i, var_1.c.b, vec2<f32>(-804f, 1000f), var_0.e.c.d, var_0.b.a.e), vec3<f32>(var_2.x, 1811f, -1217f)), global0[_wgslsmith_index_u32(u_input.e, 24u)], vec3<bool>(arg_0.x, var_1.c.d.x, false), Struct_4(vec3<bool>(false, false, var_1.a.x), var_0.b.a.e.x, Struct_1(-1i, 1000f, var_2.yy, vec4<bool>(var_1.c.d.x, false, var_0.b.a.d.x, false), var_1.c.e))), !(!var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1826f, 377f, -1271f, var_2.x))), Struct_3(-1631f, var_0.b, select(var_0.e.a, vec3<bool>(false, false, arg_0.x), arg_0.x), countOneBits(9548i), var_1.b))), abs(countOneBits(var_0.a) ^ (var_0.a | vec4<i32>(u_input.b, -11269i, var_0.a.x, 1i))) << (~vec4<u32>(15946u, var_3 >> (49989u % 32u), 15650u, _wgslsmith_dot_vec3_u32(vec3<u32>(36520u, 79945u, var_3), vec3<u32>(9759u, 1u, var_3))) % vec4<u32>(32u)));
    return !(all(select(arg_0, arg_0, vec2<bool>(var_0.c.d.x, arg_0.x))) && false);
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-852f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) + -541f))), _wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f)), -1055f);
    global0 = array<Struct_1, 24>();
    global1 = u_input.d;
    let var_1 = Struct_3(var_0.x, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 31833u, 356u, u_input.c), vec4<u32>(u_input.c, 1u, 31910u, u_input.c)) | vec4<u32>(20593u, u_input.a, 6106u, u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e, u_input.a, u_input.c, 1u), ~vec4<u32>(4294967295u, u_input.c, 0u, u_input.e))), 24u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x)))), vec3<bool>(true && any(select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, false), false)), arg_0, !all(vec4<bool>(true, false, true, arg_0))), ~_wgslsmith_div_i32(u_input.d, 29711i & _wgslsmith_clamp_i32(-30751i, 1i, 37431i)), u_input.d);
    var var_2 = Struct_5(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(2147483647i, var_1.e | 2147483647i), var_1.e, u_input.d, var_1.b.a.e.x), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.d, var_1.e, u_input.d, u_input.b)), -vec4<i32>(u_input.d, u_input.d, -2147483647i, -2147483647i)) << (~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u))), Struct_2(Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.e, -8143i, var_1.e), vec4<i32>(29363i, 27915i, var_1.d, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), var_1.b.a.c, var_1.b.a.d, abs(var_1.b.a.e)), vec3<f32>(var_0.x, 714f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a, var_1.a), var_1.a)))), Struct_1(5463i, var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.a.c.x, var_0.x), vec2<f32>(var_1.a, -352f)))), !var_1.b.a.d, var_1.b.a.e), !var_1.b.a.d.xzw, Struct_4(var_1.c, i32(-1i) * -(~u_input.d), Struct_1(_wgslsmith_sub_i32(i32(-1i) * -13562i, 2147483647i), var_0.x, var_0.ww, vec4<bool>(var_1.b.a.d.x, !arg_0, true, var_1.c.x && arg_0), var_1.b.a.e)));
    return Struct_1(var_1.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_1.b.a.c.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-460f * _wgslsmith_f_op_f32(var_0.x - var_0.x)), -1454f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.wy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.b.b.yx))), !vec2<bool>(var_2.a.x == var_2.c.e.x, var_2.b.a.d.x))), vec4<bool>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(20804u, u_input.c, 20191u), vec3<u32>(28186u, u_input.a, u_input.a), vec3<u32>(53396u, u_input.a, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 0u, 1u), vec3<u32>(13216u, u_input.c, 0u))) <= 48477u, true | !(true || arg_0), select(all(!var_2.d), !(!var_2.c.d.x), 1i <= u_input.d), any(var_1.c)), var_1.b.a.e);
}

fn func_1() -> Struct_1 {
    global1 = -2147483647i;
    global0 = array<Struct_1, 24>();
    return func_4(true && func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    global0 = array<Struct_1, 24>();
    var var_0 = false;
    var var_1 = Struct_1(-9997i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))) + _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1410f + arg_0.c.x)))), _wgslsmith_f_op_vec2_f32(arg_0.c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1, 1111f), arg_1))), arg_0.d, vec3<i32>(select(_wgslsmith_mod_i32(arg_0.e.x << (40321u % 32u), 0i), _wgslsmith_clamp_i32(1i, -2610i >> (u_input.e % 32u), 17279i), all(vec2<bool>(false, arg_0.d.x))), func_1().e.x, -19232i));
    var var_2 = _wgslsmith_sub_vec2_i32(-var_1.e.xx, func_1().e.zx & ~_wgslsmith_mult_vec2_i32(arg_0.e.xz, vec2<i32>(-1i, arg_0.e.x)));
    var_0 = func_1().d.x;
    return Struct_2(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-arg_0.b)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-826f, arg_0.c.x, var_1.d.x)))), arg_0.b, var_1.b)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: f32, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3.e << (39614u % 32u);
    let var_1 = _wgslsmith_dot_vec3_i32(~func_1().e, ~arg_3.b.a.e & -_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -11464i, arg_1.b.a.e.x), vec3<i32>(u_input.b, 0i, -15169i)), -vec3<i32>(13762i, u_input.d, 7574i)));
    var var_2 = _wgslsmith_sub_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), abs(vec2<u32>(29785u, u_input.a)))), ~vec2<u32>(10508u, _wgslsmith_mult_u32(u_input.c & 37167u, u_input.e)));
    var var_3 = Struct_1(i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-108701i, var_1, u_input.b), -arg_1.e.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a * 227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.b.x, 1264f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(arg_3.a, _wgslsmith_div_f32(1198f, _wgslsmith_f_op_f32(f32(-1f) * -811f)))), _wgslsmith_f_op_f32(ceil(arg_3.a))), vec4<bool>(any(vec4<bool>(true, !arg_1.b.a.d.x, func_2(vec2<bool>(true, arg_3.c.x)), any(arg_3.b.a.d))), false, false, arg_1.e.c.d.x == !(!arg_1.b.a.d.x)), vec3<i32>(func_5(global0[_wgslsmith_index_u32(u_input.c, 24u)], _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-1001f - arg_1.e.c.c.x))).a.a, var_1, ~(~arg_3.d)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    let var_0 = Struct_4(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), true), func_6(vec2<bool>(true, true), Struct_5(max(-vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.b), -vec4<i32>(u_input.d, u_input.b, u_input.d, -48611i)), func_5(func_1(), 692f), Struct_1(u_input.b & u_input.b, _wgslsmith_f_op_f32(1767f - 497f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1084f, 635f)), vec4<bool>(false, false, false, false), vec3<i32>(u_input.d, u_input.d, -1i)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, true, true), _wgslsmith_mult_i32(u_input.d, -2147483647i), Struct_1(u_input.b, 326f, vec2<f32>(-594f, 942f), vec4<bool>(false, true, false, false), vec3<i32>(u_input.d, 27412i, -35194i)))), func_1().b, Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(704f)))), func_5(func_1(), _wgslsmith_div_f32(230f, -1475f)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), -(~2147483647i), _wgslsmith_clamp_i32(u_input.b, u_input.b, i32(-1i) * -1i))), func_1());
    global1 = firstLeadingBit(-(var_0.c.a ^ 2147483647i) << (u_input.e % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b, var_0.c.b) - var_0.c.c) + var_0.c.c)))), vec2<f32>(-614f, var_0.c.b)));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_5(Struct_1(-14894i, var_0.c.b, vec2<f32>(-527f, 2195f), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.c.d.x), var_0.c.e), -1091f).a.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.e), vec2<u32>(0u, 1u)) % 32u), u_input.b << (~54932u % 32u), -func_4(true).a, u_input.b) ^ _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_0.b, 27489i, 1i), vec4<i32>(-21028i, var_0.b, -70796i, 2147483647i))), _wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, u_input.d, -1i, u_input.b), vec4<i32>(1i, u_input.b, var_0.b, var_0.b)), reverseBits(abs(vec4<i32>(u_input.b, -2147483647i, 2147483647i, -28174i)))), countOneBits(~countOneBits(67615u)));
}

