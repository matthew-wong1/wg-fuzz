struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.d.wyz, arg_0.d.xwz), ~_wgslsmith_mult_vec3_i32(arg_0.d.yxz, vec3<i32>(arg_1, arg_1, 33177i))) & -1i, min(_wgslsmith_div_u32(firstLeadingBit(0u), arg_0.c), ~min(112511u ^ arg_0.c, ~arg_0.c)), abs(u_input.b), true);
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.xzz - _wgslsmith_f_op_vec3_f32(vec3<f32>(1455f, arg_0.a.x, -1023f) + var_0.a.xxy)))));
    var var_2 = var_0.a.yy;
    return _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(countOneBits(arg_0.d | vec4<i32>(u_input.a, var_0.d.x, 2147483647i, u_input.b.x)), vec4<i32>(arg_1, arg_1, 1123i, 0i)), -vec4<i32>(-43752i, select(6810i, 0i, arg_0.e) >> (4294967295u % 32u), var_0.b & -var_0.d.x, reverseBits(_wgslsmith_clamp_i32(var_0.b, arg_0.b, arg_0.b))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-238f + 515f)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1617f - -520f) * -833f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3122f), _wgslsmith_f_op_f32(floor(-582f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<vec3<u32>, 22>();
    let var_1 = Struct_3(var_0.a, vec3<i32>(1i & u_input.a, _wgslsmith_div_i32(~(-1i), countOneBits(u_input.b.x)), -3861i), _wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_f32(sign(-1186f)), ~(vec2<u32>(0u, arg_0) | vec2<u32>(11051u, arg_0)) ^ ~(~vec2<u32>(4294967295u, arg_0)));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-839f, var_1.c.x) * 962f), -1387f, var_0.a.x, 237f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-638f, 1054f, var_0.a.x, var_1.d) + vec4<f32>(var_0.a.x, var_0.a.x, 184f, var_1.c.x)) * vec4<f32>(var_1.c.x, var_1.a.x, var_0.a.x, -295f)))), var_1.b.x, ~(~20299u), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-22087i | var_1.b.x, abs(-2147483647i)), _wgslsmith_mod_i32(-1076i, firstLeadingBit(var_1.b.x))), u_input.b.x, _wgslsmith_add_i32(u_input.a & -6785i, func_3(Struct_1(vec4<f32>(var_1.d, 1557f, var_1.a.x, 1341f), var_1.b.x, 23187u, vec4<i32>(2147483647i, -2147483647i, u_input.a, -2166i), true), _wgslsmith_div_i32(-1i, -2147483647i))), u_input.b.x), any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), var_1.e.x > var_1.e.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 2700f, 135f) - vec3<f32>(var_1.d, 201f, -1654f)) + _wgslsmith_f_op_vec3_f32(var_0.a + var_2.a.wyy))), _wgslsmith_f_op_vec3_f32(trunc(var_0.a)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, -389f, 1343f)))), all(vec3<bool>(any(!vec2<bool>(var_2.e, true)), true, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(375f))) * _wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, -598f)));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(891f)), 1494f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u))));
    global0 = array<vec3<u32>, 22>();
    let var_1 = -vec3<i32>(firstLeadingBit(countOneBits(0i)), 1i, firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.b.zyz ^ u_input.b.xxw, u_input.b.ywz)));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), 700f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), var_0));
    var var_3 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, max(u_input.b.x, 1i), 34037i), firstLeadingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, var_1.x, 63096i), var_1)));
    return _wgslsmith_f_op_f32(round(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 22>();
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-161f, 1388f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), 988f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f))));
    var var_1 = firstTrailingBit(u_input.a);
    var var_2 = u_input.b.yz;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, true)), -1127f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_f_op_f32(-var_0.a.x), -860f))));
    var_1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(select(_wgslsmith_div_i32(-1i, var_2.x), func_3(Struct_1(vec4<f32>(697f, var_0.a.x, -1000f, var_0.a.x), 6806i, 1u, u_input.b, true), u_input.b.x), true), 1i), (i32(-1i) * -var_2.x) & u_input.a), -u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(~abs(1682u), 1u, abs(~7122u), 4294967295u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, ~(~17805u)), ~(~1u)), 22u)]);
}

