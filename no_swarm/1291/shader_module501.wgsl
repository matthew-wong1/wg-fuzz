struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<vec2<i32>, 2>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = select(select(select(vec3<bool>(true, true && arg_0.b.d, arg_0.b.d), select(vec3<bool>(arg_0.b.d, true, arg_0.b.d), select(vec3<bool>(true, true, arg_0.b.d), vec3<bool>(arg_0.b.d, false, arg_0.b.d), vec3<bool>(false, arg_0.b.d, arg_0.b.d)), !vec3<bool>(arg_0.b.d, true, arg_0.b.d)), !(!vec3<bool>(false, arg_0.b.d, true))), select(!select(vec3<bool>(arg_0.b.d, true, false), vec3<bool>(true, arg_0.b.d, arg_0.b.d), vec3<bool>(false, arg_0.b.d, false)), vec3<bool>(all(vec4<bool>(true, arg_0.b.d, false, arg_0.b.d)), !arg_0.b.d, true), !(!vec3<bool>(arg_0.b.d, arg_0.b.d, false))), !vec3<bool>(all(vec2<bool>(arg_0.b.d, true)), false, arg_0.b.d)), select(vec3<bool>(_wgslsmith_f_op_f32(max(arg_0.c.a.x, arg_0.b.b)) != arg_0.b.e, !(!arg_0.b.d), any(!vec3<bool>(arg_0.b.d, arg_0.b.d, false))), select(!select(vec3<bool>(false, arg_0.b.d, arg_0.b.d), vec3<bool>(true, true, false), arg_0.b.d), vec3<bool>(true, true, arg_0.b.d), arg_0.b.d), vec3<bool>(!(!arg_0.b.d), all(select(vec4<bool>(false, arg_0.b.d, false, true), vec4<bool>(arg_0.b.d, arg_0.b.d, arg_0.b.d, arg_0.b.d), true)), arg_0.b.d)), arg_0.b.d | true);
    var_0 = select(select(select(vec3<bool>(!var_0.x, arg_0.b.a >= 65730u, !var_0.x), select(select(vec3<bool>(true, arg_0.b.d, arg_0.b.d), vec3<bool>(true, true, true), arg_0.b.d), vec3<bool>(arg_0.b.d, arg_0.b.d, var_0.x), vec3<bool>(false, true, true)), all(vec3<bool>(false, true, true))), select(select(vec3<bool>(var_0.x, false, arg_0.b.d), select(vec3<bool>(arg_0.b.d, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x), true), true), select(select(vec3<bool>(arg_0.b.d, false, var_0.x), vec3<bool>(true, arg_0.b.d, false), arg_0.b.d), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(arg_0.b.d, var_0.x, false)), vec3<bool>(true, false, arg_0.b.d)), select(select(vec3<bool>(var_0.x, arg_0.b.d, false), vec3<bool>(arg_0.b.d, arg_0.b.d, false), arg_0.b.d), vec3<bool>(arg_0.b.d, true, arg_0.b.d), false)), any(var_0.zz)), vec3<bool>(any(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, arg_0.b.d, true), vec3<bool>(arg_0.b.d, true, arg_0.b.d)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(false, true, false)), true)), true, false), all(vec2<bool>(arg_0.b.d, true)));
    var var_1 = Struct_1(2702u, -912f, min(-u_input.b, ~2147483647i), all(vec3<bool>(false, !arg_0.b.d, arg_0.b.d)), 569f);
    let var_2 = Struct_1(17718u, _wgslsmith_f_op_f32(round(984f)), _wgslsmith_mult_i32(-5727i, abs(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_sub_i32(arg_0.a.x, 48244i)))), false, arg_0.d.x);
    let var_3 = Struct_4(~countOneBits(_wgslsmith_mod_vec3_i32(~arg_0.a, arg_0.c.b.wxy)), arg_0.b, Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, -727f, var_2.b, 1278f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_0.d)))), arg_0.c.b), vec4<f32>(_wgslsmith_f_op_f32(sign(-662f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-838f, _wgslsmith_f_op_f32(var_1.e + arg_0.d.x)))), -451f));
    return !vec4<bool>(!(!(!var_0.x)), (1520f <= _wgslsmith_f_op_f32(select(-603f, var_3.c.a.x, true))) || true, var_2.d, firstLeadingBit(4294967295u) <= arg_0.b.a);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_1, 31>();
    var var_0 = Struct_4(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 38346i, u_input.c), vec3<i32>(u_input.b, 1i, u_input.b)), u_input.d.x), max(vec3<i32>(u_input.e, 35419i, u_input.b) << (u_input.a.xww % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.e, u_input.b), vec3<i32>(u_input.b, u_input.d.x, u_input.d.x)))), global0[_wgslsmith_index_u32(4294967295u, 31u)], Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1034f, arg_0.x, 625f) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1165f)), vec4<f32>(1815f, 1000f, arg_0.x, arg_0.x), func_3(Struct_4(vec3<i32>(-39859i, u_input.e, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 31u)], Struct_3(vec4<f32>(arg_0.x, -170f, arg_0.x, -732f), vec4<i32>(-2147483647i, u_input.b, u_input.e, u_input.d.x)), vec4<f32>(968f, arg_0.x, arg_0.x, 155f)))))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x << (0u % 32u), 0i, u_input.d.x, -37696i ^ u_input.e), reverseBits(firstLeadingBit(vec4<i32>(2147483647i, u_input.c, u_input.c, 0i))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-108f, arg_0.x, arg_0.x, arg_0.x)) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-189f - -2070f), _wgslsmith_f_op_f32(max(1216f, arg_0.x)), arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 873f, arg_0.x)) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(arg_0.x)), -467f, _wgslsmith_f_op_f32(f32(-1f) * -473f))), all(vec2<bool>(true, true)) == any(func_3(Struct_4(vec3<i32>(68570i, u_input.d.x, u_input.c), global0[_wgslsmith_index_u32(1u, 31u)], Struct_3(vec4<f32>(732f, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(u_input.c, u_input.c, u_input.e, u_input.c)), vec4<f32>(arg_0.x, 504f, arg_0.x, arg_0.x)))))));
    global1 = array<vec2<i32>, 2>();
    var_0 = Struct_4(max(var_0.c.b.zyz, var_0.a & ~var_0.c.b.zwx), global0[_wgslsmith_index_u32(u_input.a.x, 31u)], Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 689f) * _wgslsmith_f_op_f32(-var_0.b.e)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(1094f - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2418f) + -470f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f))), vec4<i32>(14089i, ~reverseBits(1i), _wgslsmith_dot_vec2_i32(var_0.a.yy, ~var_0.c.b.wz), -2147483647i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1059f, -1476f, 1046f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.e, -676f, arg_0.x, var_0.b.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c.a, var_0.c.a)), true)));
    let var_1 = var_0.c.a.wzy;
    return Struct_2(((_wgslsmith_add_i32(36812i, u_input.c) >> (_wgslsmith_mult_u32(var_0.b.a, var_0.b.a) % 32u)) >> (var_0.b.a % 32u)) >= reverseBits(u_input.e));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> i32 {
    var var_0 = func_2(arg_1.a.wwz);
    let var_1 = 8641i;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(exp2(arg_1.a.x)))), 725f, _wgslsmith_f_op_f32(-1809f + _wgslsmith_f_op_f32(f32(-1f) * -168f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f) - arg_1.a.x)), vec4<f32>(1328f, arg_1.a.x, arg_1.a.x, 247f))), arg_1.b);
    var_0 = Struct_2(853f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1602f + _wgslsmith_f_op_f32(arg_2 + 1253f)))));
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(466f, _wgslsmith_f_op_f32(-511f * var_2.a.x), arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.a.wxx, vec3<f32>(-390f, -201f, arg_1.a.x), vec3<bool>(true, var_0.a, false))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_1.a.xwy), vec3<f32>(-180f, 1000f, -1184f))))));
    return -17852i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 40515u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), max(u_input.a, u_input.a)), vec4<u32>(u_input.a.x, min(44789u, u_input.a.x), firstLeadingBit(u_input.a.x), 4294967295u)), ~u_input.a);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(472f - 140f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(242f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2422f - -958f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-210f)))))));
    var var_2 = _wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(firstTrailingBit(~(~vec3<i32>(1i, 5362i, -17606i))), vec3<i32>(u_input.e, u_input.d.x, 2147483647i)));
    var var_3 = reverseBits(func_1(true, Struct_3(vec4<f32>(var_1, -2062f, 844f, var_1), vec4<i32>(u_input.c, u_input.d.x, u_input.c, u_input.e)), 469f)) >> (var_0.x % 32u);
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1), -1677f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1)))), 331f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-451f, _wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1328f), _wgslsmith_f_op_f32(f32(-1f) * -445f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1)), -104f, -1245f, _wgslsmith_f_op_f32(step(var_1, -235f))), vec4<bool>(true, true, true, true)))), abs(_wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(81656i, 0i, u_input.d.x, u_input.e), vec4<i32>(-2147483647i, u_input.b, u_input.e, -20099i)), abs(vec4<i32>(7150i, -2147483647i, -2147483647i, u_input.e)))));
    var var_5 = ~abs(vec3<i32>(var_4.b.x, _wgslsmith_mod_i32(2147483647i, abs(u_input.d.x)), min(~var_4.b.x, var_4.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0);
}

