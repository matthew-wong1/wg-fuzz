struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: array<Struct_2, 31>;

var<private> global2: array<u32, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = ~_wgslsmith_mod_u32(firstTrailingBit(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] >> (65305u % 32u))), global2[_wgslsmith_index_u32(1u, 15u)]);
    global0 = array<vec2<f32>, 3>();
    let var_1 = select(vec4<bool>(!(reverseBits(5105i) != u_input.a), true, select(true, false, false) & (1772f != _wgslsmith_f_op_f32(step(-583f, 1000f))), false), !vec4<bool>(!any(vec4<bool>(true, false, false, false)), true, select(any(vec3<bool>(false, false, false)), true, true), -1051f < _wgslsmith_f_op_f32(floor(1363f))), !vec4<bool>(false, select(any(vec4<bool>(false, false, true, false)), any(vec2<bool>(false, false)), true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -47425i)) > abs(u_input.a), all(vec3<bool>(false, false, false)) | any(vec3<bool>(true, true, false))));
    var var_2 = -1000f;
    global0 = array<vec2<f32>, 3>();
    return 0i << (countOneBits(select(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], 0u, 29981u), global2[_wgslsmith_index_u32(u_input.b.x | ~u_input.b.x, 15u)], var_1.x)) % 32u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = min(vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(0i, arg_1.x), ~func_3()), min(-1i, -countOneBits(2147483647i))), -vec2<i32>(arg_1.x, _wgslsmith_div_i32(1i, i32(-1i) * -1i)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 2067f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.x)), -170f)), all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(false, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, false, true)), -1596f >= arg_0.x))));
    var var_2 = 1i;
    let var_3 = select(select(vec2<bool>(select(true, any(vec4<bool>(true, false, false, false)), true), !any(vec2<bool>(false, false))), vec2<bool>(true, true), !vec2<bool>(true, any(vec3<bool>(true, false, false)))), vec2<bool>(!any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, true)) | !(var_0.x != arg_1.x)), false);
    global1 = array<Struct_2, 31>();
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-426f * _wgslsmith_f_op_f32(-1129f - -1479f)), -611f)), Struct_1(vec2<bool>(true, abs(4294967295u) == global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.b.x, 15u)], 15u)], 15u)])), -1450f, reverseBits(select(vec3<i32>(1i, u_input.a, _wgslsmith_add_i32(-1387i, 90441i)), -_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_1.x, 28470i), vec3<i32>(36813i, 28554i, arg_1.x)), !vec3<bool>(true, false, var_3.x))), arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(716f, 1284f, 1000f);
    var var_1 = Struct_3(!vec3<bool>(true, arg_2.b.a.x, false), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1109f))))), arg_0.b.a.x, firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(29532u, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], 45633u), vec4<u32>(u_input.b.x, 26002u, arg_1, u_input.b.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, u_input.b.x, 13367u, arg_1), vec4<u32>(u_input.b.x, arg_1, 1u, global2[_wgslsmith_index_u32(u_input.b.x, 15u)])), ~vec4<u32>(arg_1, u_input.b.x, u_input.b.x, 4294967295u), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, arg_1, u_input.b.x, 34252u), ~vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(98925u, 15u)], 4294967295u, u_input.b.x)))));
    let var_2 = arg_0.b;
    var var_3 = arg_2.b;
    var var_4 = Struct_3(vec3<bool>(!any(vec3<bool>(arg_0.b.a.x, true, arg_0.b.a.x)) || var_2.a.x, all(vec2<bool>(all(arg_0.b.a), all(vec4<bool>(arg_2.b.a.x, var_1.a.x, arg_0.b.a.x, arg_0.b.a.x)))), !arg_2.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.d.x, 14058i), 1i), func_2(vec4<f32>(-854f, -1020f, -359f, 498f), arg_0.e).d.x, _wgslsmith_dot_vec3_i32(-arg_2.d, vec3<i32>(6493i, 14265i, u_input.a)), 13474i), vec4<i32>(-1i) * -(~vec4<i32>(-523i, u_input.a, var_1.b, 45009i))), _wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)), var_1.c), !(!(false && var_2.a.x)))), true, ~reverseBits(countOneBits(max(vec4<u32>(34336u, arg_1, u_input.b.x, 61950u), vec4<u32>(global2[_wgslsmith_index_u32(var_1.e.x, 15u)], global2[_wgslsmith_index_u32(arg_1, 15u)], 1u, arg_1)))));
    return func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.c, arg_0.a, var_0.x, var_1.c))))))), _wgslsmith_clamp_vec2_i32(~((arg_0.e ^ arg_2.e) >> (firstTrailingBit(vec2<u32>(var_4.e.x, 1u)) % vec2<u32>(32u))), vec2<i32>(-2147483647i, 4622i), ~arg_2.e)).b;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32) -> Struct_4 {
    var var_0 = select(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, 1i, 1i), vec3<i32>(2147483647i, arg_2, -24912i), abs(vec3<i32>(arg_2, arg_2, 1i))), vec3<i32>(u_input.a ^ -18719i, arg_2, -1i)), abs((i32(-1i) * -2147483647i) ^ ~u_input.a)), -32109i, false);
    var var_1 = func_4(Struct_2(1990f, Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), 1169f, -min(vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(u_input.a, arg_2, arg_2)), ~select(vec2<i32>(-27158i, arg_2), vec2<i32>(-6576i, 65749i), vec2<bool>(true, false)) >> (~(vec2<u32>(0u, 86733u) >> (u_input.b.yx % vec2<u32>(32u))) % vec2<u32>(32u))), ~(~29494u), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -224f, arg_0, -717f) + vec4<f32>(-1000f, arg_0, arg_0, arg_0))), _wgslsmith_div_vec2_i32(~(-vec2<i32>(-1813i, -81632i)), -(~vec2<i32>(-1i, arg_2)))));
    var var_2 = vec2<bool>(var_1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - -428f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1492f) * _wgslsmith_f_op_f32(floor(arg_0))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    var var_3 = any(!select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(var_1.a.x, var_2.x, var_2.x, var_1.a.x), var_1.a.x), !vec4<bool>(var_2.x, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x), vec4<bool>(all(vec3<bool>(var_1.a.x, true, true)), var_1.a.x, var_2.x, var_2.x)));
    var var_4 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, u_input.a, -2147483647i), vec3<i32>(-20787i, 32365i, u_input.a)), vec3<i32>(1931i, u_input.a, arg_2), _wgslsmith_sub_vec3_i32(vec3<i32>(-17102i, u_input.a, -5229i), vec3<i32>(arg_2, u_input.a, u_input.a)))), -(~vec3<i32>(u_input.a, u_input.a, 25593i) >> (~u_input.b % vec3<u32>(32u)))) >> (1u % 32u);
    return Struct_4(1i, arg_0, arg_2, any(!(!(!vec3<bool>(true, var_1.a.x, var_2.x)))), !vec4<bool>(any(select(vec4<bool>(var_2.x, false, var_1.a.x, true), vec4<bool>(false, var_1.a.x, false, var_2.x), var_2.x)), true, func_4(func_2(vec4<f32>(arg_0, arg_0, 1063f, arg_0), vec2<i32>(arg_2, 30542i)), ~global2[_wgslsmith_index_u32(12814u, 15u)], global1[_wgslsmith_index_u32(~u_input.b.x, 31u)]).a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(abs(1000f)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)] ^ _wgslsmith_mult_u32(~4294967295u, ~u_input.b.x), 15u)] << (_wgslsmith_mult_u32(19648u, abs(u_input.b.x)) % 32u), u_input.a);
    var var_1 = global0[_wgslsmith_index_u32(~reverseBits(~(~(~1u))), 3u)];
    var_1 = vec2<f32>(963f, _wgslsmith_f_op_f32(step(1000f, 254f)));
    let var_2 = _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(16814u, _wgslsmith_div_u32(32595u, 63995u), _wgslsmith_mult_u32(1u, 47271u)), 15u)], u_input.b.x);
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1730f, -1069f, var_0.b, var_1.x) * vec4<f32>(1000f, var_0.b, -1865f, var_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1153f, var_0.b, -106f, -1892f), vec4<f32>(612f, var_1.x, 277f, var_0.b), vec4<bool>(var_0.d, true, true, true))))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f, var_0.b, 811f), vec4<f32>(_wgslsmith_f_op_f32(-362f * 412f), var_0.b, 1144f, -265f))))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(1i, var_0.a), 1i), vec2<i32>(firstLeadingBit(-33645i), u_input.a)) ^ vec2<i32>(-2939i, firstTrailingBit(_wgslsmith_add_i32(-21146i, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(26665u);
}

