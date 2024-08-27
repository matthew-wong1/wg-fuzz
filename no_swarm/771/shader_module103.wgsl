struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_2 {
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    var var_0 = vec3<bool>(true, !arg_2, !all(select(vec2<bool>(true, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), vec2<bool>(false, true)), vec2<bool>(true, arg_2))));
    return Struct_2(17695i, reverseBits(arg_1.b));
}

fn func_3() -> bool {
    let var_0 = all(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec3<bool>(false, true, false))))) || true;
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(0u, 12686u), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~11842u, ~22173u, firstTrailingBit(4294967295u)), reverseBits(~vec3<u32>(35794u, 4294967295u, 0u)))));
    global0 = array<vec4<f32>, 3>();
    return any(!(!vec4<bool>(all(vec3<bool>(true, var_0, true)), var_0, false, !var_0)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> bool {
    var var_0 = select(arg_0, arg_0, (!any(arg_0) & arg_1.b) && (u_input.a != 5784i));
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    var var_1 = abs(arg_1.d.xy);
    var var_2 = arg_0;
    return _wgslsmith_clamp_u32(~(~arg_1.a.b), _wgslsmith_add_u32(_wgslsmith_add_u32(~arg_1.a.b, ~0u), 3173u), arg_1.a.b) > abs(_wgslsmith_div_u32(16929u, reverseBits(1u)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    var var_0 = any(vec4<bool>(func_4(vec3<bool>(true, true, true), Struct_3(func_2(arg_1, Struct_2(u_input.a, 0u), false, arg_2.x), func_3(), _wgslsmith_f_op_f32(exp2(arg_1)), max(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(1i, 23129i, 16659i)), _wgslsmith_f_op_f32(-arg_1))), false, true, true));
    let var_1 = Struct_3(Struct_2(17606i, ~_wgslsmith_dot_vec3_u32(vec3<u32>(28187u, arg_2.x, arg_2.x), arg_2) ^ ~abs(1u)), false, _wgslsmith_f_op_f32(select(-651f, _wgslsmith_f_op_f32(-arg_1), any(vec4<bool>(true, true, true, true)))), vec3<i32>(2147483647i, i32(-1i) * -u_input.a, abs(func_2(_wgslsmith_f_op_f32(trunc(-1483f)), func_2(-348f, Struct_2(21955i, arg_2.x), false, 1u), true, 1u).a)), -1754f);
    let var_2 = !(!select(!(!vec3<bool>(false, var_1.b, true)), select(vec3<bool>(var_1.b, false, var_1.b), select(vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, false)), true), var_1.b));
    let var_3 = -(_wgslsmith_mult_vec4_i32(~(vec4<i32>(u_input.a, -1i, u_input.a, var_1.d.x) << (vec4<u32>(arg_2.x, 62036u, arg_2.x, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, 21008i, 1i), vec4<i32>(-1i, u_input.a, -14282i, var_1.a.a)) | firstLeadingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, -13105i))) & firstTrailingBit(abs(-vec4<i32>(u_input.a, -1i, -5112i, var_1.a.a))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, _wgslsmith_f_op_f32(f32(-1f) * -333f)));
    return max(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_2.x, var_1.a.b, 0u, var_1.a.b) << (vec4<u32>(4294967295u, arg_2.x, arg_0, arg_0) % vec4<u32>(32u))) | (firstLeadingBit(vec4<u32>(15072u, 22429u, var_1.a.b, arg_0)) << (firstLeadingBit(vec4<u32>(69603u, 41081u, var_1.a.b, var_1.a.b)) % vec4<u32>(32u))), abs(firstTrailingBit(abs(vec4<u32>(var_1.a.b, 1u, 1u, 0u))))), ~abs(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_2.x, arg_2.x), vec3<u32>(var_1.a.b, arg_0, 4294967295u)), vec3<u32>(1u, var_1.a.b, 32395u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    let var_0 = ~_wgslsmith_add_vec3_i32(firstTrailingBit(~(~vec3<i32>(u_input.a, u_input.a, -2147483647i))), vec3<i32>(abs(-u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a) ^ -u_input.a, abs(countOneBits(1i))));
    let var_1 = var_0;
    global0 = array<vec4<f32>, 3>();
    var var_2 = vec4<u32>(func_1(abs(~0u), -351f, ~abs(countOneBits(vec3<u32>(33864u, 1u, 2000u)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(587f * 266f), _wgslsmith_f_op_f32(ceil(-2370f))) * _wgslsmith_f_op_f32(f32(-1f) * -733f)), Struct_2((-2147483647i >> (1u % 32u)) << (min(1u, 1u) % 32u), _wgslsmith_mod_u32(~1u, 22234u)), false, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(21695u, 34393u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(63358u, 0u)))).b, 1u, min(4294967295u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 39616u, 12076u, 1u)), abs(select(vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(97832u, 481u, 1u, 4294967295u), true)))));
    var var_3 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-720f * -215f) - _wgslsmith_f_op_f32(f32(-1f) * -1100f)) + _wgslsmith_f_op_f32(ceil(1390f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1606f - 252f)))), Struct_2(firstLeadingBit(_wgslsmith_div_i32(-1i, var_0.x) >> (min(73304u, 0u) % 32u)), 4294967295u), _wgslsmith_dot_vec3_i32(var_0, var_0) < var_0.x, ~var_2.x);
    let var_4 = Struct_4(var_3.b >= ~1u, Struct_2(var_1.x, var_3.b), vec3<f32>(_wgslsmith_f_op_f32(trunc(2393f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f - -458f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -105f))), -1710f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(479f, -1713f)))), vec4<u32>(var_4.b.b | ~_wgslsmith_clamp_u32(47269u, 72657u, 56943u), 4294967295u, select(1u, 12294u, var_4.a), firstTrailingBit(min(1u, 0u))), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-175f + _wgslsmith_div_f32(var_4.c.x, var_4.c.x)))), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(170f, -567f))), func_2(_wgslsmith_f_op_f32(-var_4.c.x), func_2(746f, var_4.b, false, var_4.b.b), var_4.a & true, var_4.b.b), any(vec3<bool>(true, var_4.a, var_4.a)), reverseBits(var_3.b)), var_4.a, var_3.b).a);
}

