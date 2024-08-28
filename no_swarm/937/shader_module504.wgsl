struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(vec3<u32>(~u_input.a, u_input.a, min(u_input.a, 4294967295u) & (u_input.a ^ ~u_input.a)), vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), true)), false, true, true));
    var var_1 = vec3<bool>(select(any(vec3<bool>(var_0.b.x, false, var_0.b.x)) && true, var_0.b.x, any(!(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)))), !any(select(var_0.b.zy, select(var_0.b.zx, vec2<bool>(true, var_0.b.x), var_0.b.wx), !vec2<bool>(var_0.b.x, var_0.b.x))), !var_0.b.x);
    global1 = array<vec2<i32>, 32>();
    var var_2 = min(arg_0, -48127i & _wgslsmith_sub_i32(-arg_0 >> (_wgslsmith_div_u32(var_0.a.x, u_input.a) % 32u), 91063i));
    let var_3 = Struct_3(Struct_2(Struct_1(var_0.a, !var_0.b), -vec4<i32>(-1i, arg_0 | arg_0, -1i, arg_0 << (u_input.a % 32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-752f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1104f, -835f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-266f - _wgslsmith_f_op_f32(-1194f + 607f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1f + -1034f), var_0.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f) + -2206f), false != var_1.x))));
    return var_0.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> f32 {
    var var_0 = -5674i;
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, _wgslsmith_sub_u32(~65242u, firstTrailingBit(115558u)), func_3(-1704i), func_3(~947i)), firstLeadingBit(~vec4<u32>(59709u, 103575u, 1u, 66983u) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 32496u, 64802u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(54704u, u_input.a, 1u, u_input.a))) % vec4<u32>(32u))));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 59068u), vec3<u32>(u_input.a, u_input.a, 1u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(4294967295u, 1u, u_input.a)), !select(arg_0, vec4<bool>(arg_0.x, true, true, true), false)), _wgslsmith_add_vec4_i32(vec4<i32>(-35642i, 16513i, 78397i, 4922i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(-35228i, 1i, -2147483647i, 19503i)) & vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(776f, -1159f, arg_1, arg_1), vec4<f32>(arg_1, 1000f, 796f, arg_1), arg_0.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(1075f, -803f, 1246f, -296f)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, -398f, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(100f, -843f, arg_1, -1289f) - vec4<f32>(arg_1, 527f, -428f, arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1088f, -2031f, 1577f, arg_1), vec4<f32>(arg_1, -1024f, -147f, -735f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(-608f, 2244f, 225f, -1009f), vec4<f32>(1189f, 1961f, arg_1, arg_1))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, -1054f) * vec4<f32>(arg_1, arg_1, 470f, 761f))), vec4<bool>(arg_0.x, arg_0.x, all(vec2<bool>(true, arg_0.x)), false))));
    return -718f;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, true, true), -1311f)), _wgslsmith_f_op_f32(min(-692f, 1352f))))), -1628f);
    global0 = false;
    let var_1 = vec4<bool>(true || !(min(arg_0, arg_0) != (2147483647i >> (u_input.a % 32u))), all(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), false)), any(vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true)), true, !all(vec4<bool>(true, true, false, false)), true)), true);
    var var_2 = Struct_1(countOneBits(min(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(9134u, u_input.a, u_input.a) % vec3<u32>(32u))) & _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 22722u), vec3<u32>(39903u, u_input.a, u_input.a))), vec4<bool>(false && var_1.x, 54998i != -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, arg_0), vec3<i32>(-25108i, arg_0, -24321i)), false, var_1.x == true));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - _wgslsmith_f_op_f32(floor(-394f))), _wgslsmith_f_op_f32(1000f + var_0.x), _wgslsmith_f_op_f32(-291f + _wgslsmith_f_op_f32(-var_0.x)))))));
    return _wgslsmith_mult_i32(-_wgslsmith_add_i32(~(~2147483647i), firstTrailingBit(arg_0)), 1i);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec4<f32>) -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(vec3<u32>(~41053u, u_input.a ^ ~u_input.a, 1u), vec4<bool>(false, true, true, true)), _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1697i, -818i, arg_1, -2147483647i), vec4<i32>(-9827i, 1i, arg_1, -1i)), vec4<i32>(-10440i, 1i, arg_1, arg_1))), select(vec4<i32>(firstTrailingBit(arg_1), arg_1, 15226i, 0i), -vec4<i32>(5035i, arg_1, 21181i, arg_1), vec4<bool>(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true))));
    let var_1 = var_0.a.b.x;
    let var_2 = _wgslsmith_f_op_f32(min(1f, arg_3.x));
    return StorageBuffer(~vec2<u32>(~_wgslsmith_sub_u32(u_input.a, 4294967295u), ~_wgslsmith_mod_u32(u_input.a, arg_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-282f))))), vec2<u32>(_wgslsmith_mod_u32(57075u, var_0.a.a.x), var_0.a.a.x), arg_1, min(812i, ~arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(sign(-101f)), _wgslsmith_sub_i32(func_1(_wgslsmith_mult_i32(1i, -2147483647i)), -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-8721i, -2147483647i, 27704i), vec3<i32>(-38369i, 1i, -42168i)))), ~u_input.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, -870f, -470f, -718f) * vec4<f32>(-2038f, -275f, 538f, 1527f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 385f, 971f, -850f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1950f, 1326f, 1112f, -1398f))))))));
}

