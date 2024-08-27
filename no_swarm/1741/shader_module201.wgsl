struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(436f))))))) * 552f);
    let var_0 = countOneBits(vec4<i32>(i32(-1i) * -u_input.c.x, _wgslsmith_mult_i32(~(~32309i), firstLeadingBit(u_input.c.x)), 1i, 0i));
    var var_1 = countOneBits(select(~vec4<u32>(firstLeadingBit(4294967295u), 4294967295u, ~1u, u_input.a.x), vec4<u32>(select(~arg_0.x, 1u, true), 70060u, ~30461u, _wgslsmith_sub_u32(~arg_0.x, min(arg_0.x, 45717u))), true));
    var var_2 = vec3<i32>(var_0.x, 0i << (arg_0.x % 32u), u_input.c.x);
    var var_3 = reverseBits(vec3<u32>(29978u, u_input.a.x, u_input.a.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(186f * -450f), _wgslsmith_f_op_f32(f32(-1f) * -1880f)) + 1830f))), _wgslsmith_f_op_f32(round(1000f)));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 66251u, arg_0, 80161u), vec4<u32>(arg_0, 62462u, 17173u, 1u), vec4<u32>(arg_0, arg_0, arg_0, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)), arg_0)));
    var var_1 = true && ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))) < -1512f) || any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), true)));
    var var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, 1488f <= var_0)), vec3<bool>(all(vec3<bool>(true, true, true)), u_input.b.x != ~arg_0, _wgslsmith_f_op_f32(var_0 * 518f) == _wgslsmith_f_op_f32(-1438f * -1276f)), vec3<bool>(any(vec2<bool>(true, true)), true, _wgslsmith_mult_u32(21671u, arg_0) == firstLeadingBit(arg_0)));
    var var_3 = true;
    var var_4 = select(!select(select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, false, var_2.x), var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, false, var_2.x)), var_2.x), !(!vec4<bool>(false, var_2.x, var_2.x, var_2.x)), var_2.x), vec4<bool>(true, var_2.x, !(!var_2.x), true), select(!(!(!vec4<bool>(true, true, var_2.x, var_2.x))), vec4<bool>(4294967295u != arg_0, var_2.x, (4294967295u < u_input.b.x) | select(var_2.x, false, false), !var_2.x), var_2.x));
    return -1000f;
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(func_2(u_input.a.x));
    let var_0 = -207f;
    global0 = -357f;
    var var_1 = (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(0u, 81493u, 358u, 41743u), vec4<u32>(1u, 66089u, 1u, 38623u)), vec4<u32>(u_input.b.x, 1u, arg_0.a.x, 4294967295u) >> (vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.b.x, arg_0.a.x) % vec4<u32>(32u))), u_input.b.x) | firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(91487u, arg_0.a.x, u_input.a.x), 18941u, arg_0.a.x))) << (_wgslsmith_mod_u32(u_input.a.x, 14454u) % 32u);
    var_1 = _wgslsmith_div_u32(firstLeadingBit(~u_input.b.x), ~arg_0.a.x);
    return 1000f > _wgslsmith_f_op_f32(func_2(abs(0u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> bool {
    let var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -683f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(342f)), _wgslsmith_f_op_f32(select(-257f, 445f, arg_0.x))), func_1(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, arg_2.x), vec2<u32>(u_input.a.x, arg_2.x)))), arg_0.x), arg_0, vec3<bool>(!(!func_1(Struct_1(u_input.b.zx))), _wgslsmith_f_op_f32(func_2(firstLeadingBit(8143u))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f) + _wgslsmith_f_op_f32(f32(-1f) * -2130f)), arg_0.x));
    global0 = -699f;
    global0 = _wgslsmith_f_op_f32(func_3(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.yw, vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_2.x), arg_2.x)), ~(_wgslsmith_mult_u32(arg_1.x, arg_2.x) >> ((arg_2.x | arg_2.x) % 32u)), arg_1.x)));
    global0 = -443f;
    let var_1 = Struct_1(~min(abs(vec2<u32>(u_input.a.x, 94691u)), countOneBits(u_input.b.yy) & ~arg_2));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -537f);
    let var_0 = select(vec2<bool>(func_4(vec3<bool>(u_input.b.x != u_input.a.x, true, func_1(Struct_1(u_input.b.zy))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, 46530u, 20782u, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x)), u_input.b.xz), true), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(3075f, _wgslsmith_f_op_f32(1259f + 1153f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-2306f)), -1451f))));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-490f))));
    let var_1 = Struct_1(~(~(vec2<u32>(u_input.a.x, 32577u) << ((vec2<u32>(u_input.a.x, 0u) ^ u_input.b.yx) % vec2<u32>(32u)))));
    let var_2 = Struct_1(abs(var_1.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(838f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f + -1237f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-183f - 1577f) - _wgslsmith_div_f32(1558f, -569f)) - 620f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-321f, _wgslsmith_f_op_f32(func_3(u_input.a))))), _wgslsmith_f_op_f32(sign(582f))) + _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.x, var_1.a.x, 0u), u_input.b))), _wgslsmith_div_f32(-1078f, _wgslsmith_div_f32(1134f, -455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + -281f)))));
    var var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.x + var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(func_3(vec3<u32>(1u, var_1.a.x, 3948u)))) + _wgslsmith_div_f32(982f, -1727f))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.xw, _wgslsmith_mult_vec2_i32(u_input.c.zz, u_input.c.yz)), ~select(-14554i, 23569i, false)), min(-2147483647i, _wgslsmith_mod_i32(~u_input.c.x, u_input.c.x ^ u_input.c.x)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -31311i, -1i), vec3<i32>(0i, u_input.c.x, u_input.c.x)) | _wgslsmith_div_i32(-u_input.c.x, -5785i)), ~max(u_input.c, firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 43955i))), var_3.x, _wgslsmith_mod_vec2_i32(u_input.c.yx, countOneBits(vec2<i32>(u_input.c.x, 17833i))));
}

