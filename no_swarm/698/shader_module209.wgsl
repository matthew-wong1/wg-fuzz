struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-980f, -1507f), vec2<f32>(1191f, 495f), vec2<f32>(2953f, -554f), vec2<f32>(1934f, 157f), vec2<f32>(783f, 1397f), vec2<f32>(-382f, -1524f), vec2<f32>(1000f, -871f), vec2<f32>(-571f, 1000f), vec2<f32>(1225f, 118f), vec2<f32>(-430f, -454f), vec2<f32>(-1000f, 1785f), vec2<f32>(-974f, 710f), vec2<f32>(-297f, -1727f), vec2<f32>(-1000f, 833f), vec2<f32>(-1103f, -650f), vec2<f32>(1780f, 653f), vec2<f32>(-1140f, 903f), vec2<f32>(-1850f, -977f), vec2<f32>(-1000f, 202f), vec2<f32>(-1677f, 1447f), vec2<f32>(1550f, 481f), vec2<f32>(1000f, -426f), vec2<f32>(688f, -227f), vec2<f32>(-214f, -1034f), vec2<f32>(195f, -521f), vec2<f32>(345f, -418f), vec2<f32>(-438f, 199f), vec2<f32>(-814f, 731f), vec2<f32>(545f, 648f), vec2<f32>(1153f, -1000f), vec2<f32>(-1978f, 1566f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>) -> f32 {
    global0 = array<vec2<f32>, 31>();
    let var_0 = any(select(vec4<bool>(!any(vec3<bool>(false, false, true)), false, true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), vec4<bool>(all(vec2<bool>(true, true)), true, !any(vec4<bool>(true, true, false, false)), (arg_1.x << (18352u % 32u)) == 17536u), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), false)));
    global0 = array<vec2<f32>, 31>();
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(-(arg_0.x & u_input.b), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(9137i, u_input.b, -10736i)), abs(vec3<i32>(2147483647i, arg_0.x, arg_0.x)))), max(-(0i << (u_input.a % 32u)), -1i), -select(~17618i, countOneBits(u_input.b), 0u < u_input.a), arg_0.x), vec4<u32>(9868u, u_input.a, select(arg_1.x, 1u, true), firstLeadingBit(4294967295u)), ~u_input.a, max(vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(u_input.b, arg_0.x)), 46837i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(18191i, arg_0.x, -2147483647i), vec3<i32>(-23315i, 35084i, -1i)), arg_0.x), u_input.b), _wgslsmith_add_vec4_i32(~select(vec4<i32>(5672i, u_input.b, 2958i, arg_0.x), vec4<i32>(arg_0.x, u_input.b, -2147483647i, 29562i), vec4<bool>(true, true, var_0, true)), vec4<i32>(arg_0.x, 0i >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.x), vec2<i32>(17415i, arg_0.x)), -arg_0.x))));
    var var_2 = vec2<bool>(!var_0, any(select(vec4<bool>(all(vec2<bool>(var_0, var_0)), var_0 | true, false, select(false, true, var_0)), vec4<bool>(var_0, var_0, var_0, var_0), select(vec4<bool>(var_0, var_0, var_0, true), !vec4<bool>(var_0, true, var_0, var_0), var_0))));
    return _wgslsmith_f_op_f32(min(949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(741f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1139f))))))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, firstLeadingBit(u_input.a)), 31u)])), select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(286f, -432f))) > _wgslsmith_f_op_f32(func_3(~vec2<i32>(1i, -11498i), ~vec2<u32>(1u, u_input.a))), true, true)));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.x, var_0.x));
    return Struct_1(vec4<i32>(countOneBits(~_wgslsmith_mod_i32(u_input.b, u_input.b)), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b) >> (~vec3<u32>(17154u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.b, u_input.b, 18813i), vec3<i32>(0i, 1i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-920i, u_input.b, u_input.b), vec3<i32>(-33574i, u_input.b, u_input.b), vec3<i32>(u_input.b, 0i, -4209i)))), -44943i), vec4<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.a, 57100u, _wgslsmith_add_u32(u_input.a, u_input.a)), 24616u, u_input.a), min(_wgslsmith_mult_u32(~u_input.a, u_input.a), 0u), 0u), _wgslsmith_div_u32(reverseBits(~(~16124u)), _wgslsmith_mult_u32(~(~19955u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(26725u, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), _wgslsmith_mod_vec4_i32(~vec4<i32>(~2147483647i, ~(-35804i), firstTrailingBit(u_input.b), -u_input.b), vec4<i32>(i32(-1i) * -1i, -(~u_input.b), 0i, _wgslsmith_mod_i32(18662i, abs(1i)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    return abs(arg_2.a);
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(~(~1i), 2147483647i, max(-3383i, _wgslsmith_sub_i32(u_input.b, u_input.b)), ~reverseBits(max(u_input.b, u_input.b)));
    var var_1 = -44088i;
    global0 = array<vec2<f32>, 31>();
    var_0 = func_4(func_2(), Struct_1(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(2147483647i, 67732i, -1i, 23814i), vec4<i32>(1i, -1i, var_0.x, -2147483647i), true), vec4<i32>(-var_0.x, -29540i, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(var_0.zxw, vec3<i32>(var_0.x, var_0.x, -45545i)))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u) | vec2<u32>(1u, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 59954u, u_input.a, 4997u), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)) | 53951u, max(_wgslsmith_sub_u32(36871u, u_input.a), abs(u_input.a)), 1u), 1u, ~(-vec4<i32>(u_input.b, -30945i, 20222i, var_0.x) ^ (vec4<i32>(2147483647i, -1i, var_0.x, var_0.x) >> (vec4<u32>(140581u, 0u, u_input.a, 1u) % vec4<u32>(32u))))), func_2(), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false)))));
    global0 = array<vec2<f32>, 31>();
    return Struct_1(reverseBits(_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(32368i, var_0.x, -31875i, var_0.x), vec4<i32>(u_input.b, 48949i, 37457i, u_input.b)), -vec4<i32>(var_0.x, u_input.b, 2147483647i, 1i))), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a), u_input.a, ~(u_input.a | 57128u), u_input.a >> (~0u % 32u)), vec4<u32>(93870u, _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 1u), 1u), ~u_input.a, abs(~u_input.a)), vec4<u32>(~0u, ~firstLeadingBit(u_input.a), min(40647u, ~u_input.a), u_input.a)), 92015u, abs(-vec4<i32>(u_input.b, _wgslsmith_clamp_i32(var_0.x, -25908i, u_input.b), 1i, var_0.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = vec2<u32>(66907u >> (~arg_3.b.x % 32u), ~7986u) ^ reverseBits(arg_3.b.zz);
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(~73969u, _wgslsmith_dot_vec2_u32(vec2<u32>(9609u, arg_2.b.x), vec2<u32>(1u, 73487u))), ~(arg_2.b.x | arg_0.b.x)), _wgslsmith_mult_u32(arg_0.b.x, reverseBits(21488u)) >> (u_input.a % 32u)), func_1().b.xy);
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    let var_2 = min(31266u, ~arg_0.b.x >> (~4294967295u % 32u));
    return select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, !all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x < 95657u, true, true), !any(vec4<bool>(false, false, true, false)))), select(!vec4<bool>(true, any(vec3<bool>(true, false, false)), arg_1.c > 1577u, true), !vec4<bool>(true, true, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))))), vec4<bool>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_3.a.x, 16688i, 2147483647i, arg_3.d.x), vec4<i32>(arg_3.a.x, 0i, 20451i, arg_0.a.x)) >= 16039i, false, all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, true)) || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(func_5(Struct_1(vec4<i32>(u_input.b, -41140i, u_input.b, -20976i), vec4<u32>(u_input.a, 1u, 41622u, 1u), u_input.a, vec4<i32>(u_input.b, u_input.b, -14685i, u_input.b)), func_1(), Struct_1(vec4<i32>(-37647i, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), u_input.a, vec4<i32>(1i, -38875i, -15920i, u_input.b)), Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<u32>(4294967295u, 49478u, 4294967295u, 4294967295u), u_input.a, vec4<i32>(u_input.b, u_input.b, u_input.b, -14212i)))) && any(vec3<bool>(false, true, true)), !all(vec2<bool>(true, false)), !any(select(func_5(Struct_1(vec4<i32>(2147483647i, u_input.b, u_input.b, 2147483647i), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a, vec4<i32>(2147483647i, 7310i, 4733i, 7002i)), Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, 7036i), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), 13604u, vec4<i32>(u_input.b, 92917i, u_input.b, u_input.b)), Struct_1(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<u32>(17393u, 91682u, 25341u, u_input.a), 10165u, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), Struct_1(vec4<i32>(1i, 2147483647i, -56117i, 16412i), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), 4294967295u, vec4<i32>(u_input.b, u_input.b, u_input.b, 9681i))).xx, vec2<bool>(true, true), vec2<bool>(true, true))), true);
    global0 = array<vec2<f32>, 31>();
    var var_1 = -2311f;
    var_0 = vec4<bool>(false, var_0.x && (_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), func_2().d.x) != 11948i), select(select(true, all(vec4<bool>(true, false, var_0.x, true)), any(vec3<bool>(true, true, var_0.x))) | !any(vec3<bool>(var_0.x, var_0.x, var_0.x)), false && (_wgslsmith_f_op_f32(select(1346f, 309f, false)) >= _wgslsmith_f_op_f32(-890f * -857f)), !all(vec3<bool>(var_0.x, var_0.x, false)) | !all(vec4<bool>(var_0.x, var_0.x, true, true))), var_0.x);
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~1u, firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.a))) << (~abs(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), countOneBits(~vec2<u32>(u_input.a, 1u)));
    var var_3 = Struct_1(countOneBits(vec4<i32>(~u_input.b, u_input.b, reverseBits(_wgslsmith_clamp_i32(28104i, u_input.b, -10781i)), 0i)), func_1().b, ~4294967295u, -vec4<i32>(u_input.b, firstLeadingBit(u_input.b & u_input.b), _wgslsmith_mod_i32(-u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_1().a.xy) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(var_3.a.xx & vec2<i32>(var_3.d.x, u_input.b), var_3.a.wx), var_3.d.yx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 284f) * vec2<f32>(-1881f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(624f, 139f) + global0[_wgslsmith_index_u32(var_2.x, 31u)]))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-470f)) + _wgslsmith_f_op_f32(sign(1308f))), 1000f), !select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, var_0.x), var_0.xx, vec2<bool>(false, true))))));
}

