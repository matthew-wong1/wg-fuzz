struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec3<u32> {
    let var_0 = Struct_2(-reverseBits(min(arg_0.x << (u_input.b.x % 32u), 1i)), global1.b, -2147483647i);
    global0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 7468i, -_wgslsmith_mod_i32(arg_0.x, 21196i), 1i), arg_0);
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1844f, 1355f, -867f) * vec4<f32>(-1000f, -208f, 1499f, 2100f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -159f, -894f, -1548f), vec4<f32>(-398f, -556f, -145f, 1465f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(219f, -317f, 1026f, -1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(872f, 1268f, -971f, -205f) + vec4<f32>(-284f, -1703f, 419f, -1371f))))), _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(arg_0 & arg_0, arg_0), -arg_0), -768f);
    let var_3 = Struct_2(-reverseBits(_wgslsmith_mod_i32(-43831i, arg_1)), global1.b, abs(~((i32(-1i) * -18946i) << (u_input.b.x % 32u))));
    return vec3<u32>(~u_input.b.x, u_input.b.x, 29545u);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = func_3(vec4<i32>(arg_0, select(arg_0, 1i, global1.b) | -arg_0, ~(-34084i << (u_input.b.x % 32u)), countOneBits(_wgslsmith_mult_i32(498i, 3482i))), global1.a) >> (~(~(vec3<u32>(0u, 4294967295u, 114745u) & vec3<u32>(u_input.b.x, u_input.b.x, 12655u)) ^ vec3<u32>(min(17962u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), func_3(vec4<i32>(global1.c, global1.a, 1i, global1.a), 10974i).x)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_clamp_vec2_i32(~(abs(-vec2<i32>(53847i, -2147483647i)) ^ (_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 26565i)) & countOneBits(vec2<i32>(-1i, u_input.a)))), _wgslsmith_div_vec2_i32(~(_wgslsmith_add_vec2_i32(vec2<i32>(global1.c, arg_0), vec2<i32>(arg_0, -2147483647i)) << (u_input.b % vec2<u32>(32u))), firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(arg_0, 53583i))))), vec2<i32>(i32(-1i) * -u_input.a, firstLeadingBit(select(~global1.c, -5922i << (var_0.x % 32u), select(global1.b, global1.b, global1.b)))));
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a), _wgslsmith_mod_vec2_i32(-vec2<i32>(18478i, 0i), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(40037i, -1i), vec2<i32>(global1.c, u_input.a), vec2<i32>(global1.a, -1i)), ~vec2<i32>(-1i, var_1.x))) & abs(~(vec2<i32>(global1.a, global1.c) & vec2<i32>(u_input.a, 19892i))), max(vec2<i32>(global1.a, 2147483647i), select(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-2147483647i, -69970i)), vec2<i32>(arg_0, u_input.a)), ~vec2<i32>(global1.c, -2147483647i), vec2<bool>(any(vec2<bool>(global1.b, false)), any(vec3<bool>(true, true, true))))));
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a, global1.a, global1.c) << (var_0 % vec3<u32>(32u)), vec3<i32>(global1.a, 10146i, 23361i)), select(vec3<i32>(var_1.x, global1.c, arg_0), -vec3<i32>(global1.c, var_1.x, 35610i), !vec3<bool>(global1.b, true, global1.b))) << (~firstTrailingBit(var_0.x) % 32u), false, _wgslsmith_clamp_i32(-2147483647i, -_wgslsmith_mod_i32(var_1.x << (42682u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, arg_0, arg_0, global1.a), vec4<i32>(var_1.x, var_1.x, -63798i, 2147483647i))), -2147483647i));
    var var_2 = Struct_2(firstLeadingBit(5200i), false, 6742i);
    return Struct_2(var_1.x, true, firstLeadingBit(_wgslsmith_mult_i32(41490i, var_1.x) << (_wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.xz), ~var_0.yz) % 32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = arg_1;
    let var_1 = global1.b & !arg_1.b;
    return arg_2.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1645f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1637f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * -776f) + _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1), vec2<i32>(u_input.a, u_input.a)), arg_1, arg_1, 0i) & vec4<i32>(u_input.a, u_input.a, max(global1.a, 17289i), -u_input.a), reverseBits(firstTrailingBit(vec4<i32>(2147483647i, arg_1, global1.a, global1.c)))), 2122f);
    let var_1 = 50660u;
    global1 = func_2(~(-1i >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 10022u), vec3<u32>(var_1, 35570u, 19924u)), 13735u) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.a.wzx)) * _wgslsmith_f_op_vec3_f32(-arg_2.yxy))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1510f, 1149f, var_0.a.x), vec3<f32>(var_0.a.x, arg_2.x, var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3, 583f, var_0.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -816f, -648f) - arg_2.xzz)))));
    let var_2 = func_2(global1.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.ywz + var_0.a.zyw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -504f, _wgslsmith_f_op_f32(floor(-1517f))))));
    let var_3 = u_input.b.x;
    return func_2(-((1i >> ((1u >> (u_input.b.x % 32u)) % 32u)) ^ -select(-1i, arg_1, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-951f)), _wgslsmith_f_op_f32(select(var_0.a.x, 905f, arg_0.x)), _wgslsmith_f_op_f32(-421f + var_0.a.x)), var_0.a.yyy))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec4<i32>(-47375i, ~min(firstTrailingBit(1i), abs(_wgslsmith_sub_i32(-28637i, 0i))), firstTrailingBit(arg_0.c), _wgslsmith_div_i32(2147483647i, 2147483647i));
    var var_1 = select(!(!(!(!vec4<bool>(false, arg_0.b, false, false)))), !vec4<bool>(arg_2.b, !(0u <= u_input.b.x), select(!arg_0.b, all(vec2<bool>(global1.b, false)), global1.b), true), vec4<bool>(any(!(!vec2<bool>(global1.b, arg_2.b))), all(vec4<bool>(false, true, true, true)), true, arg_2.b));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(!func_2(_wgslsmith_mult_i32(-25210i, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 743f, arg_1.x) + vec3<f32>(1417f, arg_1.x, arg_1.x))).b, arg_0.b), arg_0.b);
    var var_3 = 975f;
    var var_4 = Struct_2(abs(firstTrailingBit(0i)), !all(vec4<bool>(arg_0.b, arg_2.b, true, select(var_2.x, false, true))), abs(-_wgslsmith_mult_i32(2147483647i << (u_input.b.x % 32u), _wgslsmith_div_i32(26554i, 2147483647i))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-812f, _wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -428f)), _wgslsmith_f_op_f32(ceil(-393f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * _wgslsmith_f_op_f32(-1000f * 1513f)))), select(abs(~max(vec4<i32>(-2147483647i, var_0.x, global1.c, 38267i), var_0)), ~var_0, any(vec2<bool>(var_0.x < 2147483647i, arg_2.b))), _wgslsmith_f_op_f32(-arg_1.x));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 128f, _wgslsmith_f_op_f32(f32(-1f) * -1026f), _wgslsmith_f_op_f32(-arg_0.c))) - arg_0.a) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-177f, _wgslsmith_f_op_f32(max(-379f, 795f)), _wgslsmith_f_op_f32(ceil(arg_0.c)), -842f), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1521f)), _wgslsmith_f_op_vec4_f32(arg_0.a + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(685f, arg_0.c, arg_1.x, 270f))))))));
    let var_1 = var_0.wyz;
    let var_2 = ~countOneBits(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-8796i, global1.a, -51150i), select(arg_0.b.x, arg_0.b.x, global1.b))));
    let var_3 = arg_0;
    var var_4 = func_2(1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-225f - 278f), _wgslsmith_f_op_f32(step(var_3.a.x, 1483f)), arg_1.x) * vec3<f32>(_wgslsmith_f_op_f32(abs(var_3.a.x)), _wgslsmith_f_op_f32(step(var_1.x, arg_0.c)), -342f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-1091f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(-109034i, Struct_2(var_2, true, 0i), Struct_1(vec4<f32>(-183f, arg_1.x, arg_1.x, arg_0.c), var_3.b, 1981f))).x), var_3.a.x)));
    return func_2(-1i, arg_1);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    global1 = func_7(func_6(func_5(!select(vec4<bool>(arg_3.b, arg_3.b, true, true), vec4<bool>(false, arg_3.b, false, global1.b), vec4<bool>(true, false, false, global1.b)), arg_3.c, _wgslsmith_f_op_vec4_f32(func_4(~(-1i), func_2(0i, vec3<f32>(arg_0.a.x, 628f, -1000f)), arg_0)), -561f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.xz)), Struct_2(-global1.a, false && (true & arg_3.b), select(_wgslsmith_sub_i32(-1i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, global1.c), arg_0.b.wxw), true))), _wgslsmith_f_op_vec3_f32(-func_6(func_2(~(-18209i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) + _wgslsmith_f_op_vec4_f32(func_4(global1.a, arg_3, arg_0)).yw), func_2(u_input.a, _wgslsmith_f_op_vec3_f32(round(arg_0.a.zyw)))).a.wyz));
    let var_0 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(~vec3<u32>(arg_2.x, 4294967295u, u_input.b.x)) ^ vec3<u32>(u_input.b.x >> (~u_input.b.x % 32u), _wgslsmith_sub_u32(~u_input.b.x, ~4294967295u), _wgslsmith_sub_u32(countOneBits(u_input.b.x), arg_2.x)), firstLeadingBit(vec3<u32>(~func_3(arg_0.b, -1i).x, arg_2.x, ~1u)));
    var var_1 = ~select(~vec4<u32>(firstLeadingBit(0u), u_input.b.x, 3976u ^ arg_2.x, arg_2.x), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(49u, arg_2.x, u_input.b.x, 0u), vec4<u32>(0u, 4294967295u, var_0, u_input.b.x)), vec4<u32>(4294967295u, var_0, arg_2.x, 42572u), vec4<u32>(u_input.b.x, 52717u, 33474u, arg_2.x)), vec4<bool>(global1.b, arg_3.b, all(select(vec2<bool>(true, true), vec2<bool>(global1.b, global1.b), global1.b)), func_2(global1.c | 0i, vec3<f32>(arg_0.c, -289f, -257f)).b));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-393f, -1000f) * vec2<f32>(-1000f, arg_1))), _wgslsmith_div_vec2_f32(arg_0.a.xw, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 2764f), vec2<f32>(880f, -1137f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c, -280f), vec2<f32>(801f, 598f)))))));
    var_1 = _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(11449u, 48004u, 4294967295u, 41858u) & firstTrailingBit(vec4<u32>(58800u, 0u, 4294967295u, 4294967295u)))), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_2, reverseBits(vec2<u32>(arg_2.x, var_1.x))), 20000u, arg_2.x, arg_2.x));
    return -(~(-arg_3.a)) >> (_wgslsmith_add_u32(1541u, abs(min(4294967295u, 4294967295u)) | ~_wgslsmith_div_u32(var_0, var_1.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.a, true, -(~(func_1(Struct_1(vec4<f32>(747f, -498f, 1000f, 1000f), vec4<i32>(global1.a, u_input.a, 19382i, u_input.a), -1357f), -387f, u_input.b, Struct_2(u_input.a, true, global1.a)) | ~global1.c)));
    var_0 = func_7(func_6(Struct_2(reverseBits(abs(1539i)), any(vec3<bool>(global1.b, global1.b, global1.b)), abs(1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(534f, 439f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-522f, 228f), vec2<f32>(-615f, 741f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), Struct_2(-1i, !(!var_0.b), 65243i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(490f, 1717f, -1000f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-798f, 1086f, 898f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1412f, 1000f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(838f, -826f, 572f, 961f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-385f, -1272f, -1162f, 597f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-936f, 364f, 1312f, 785f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-791f, -1524f, 1354f, 970f), vec4<f32>(1474f, -1381f, 638f, 2469f)) + vec4<f32>(998f, 1746f, 132f, 304f)), func_5(vec4<bool>(var_0.b, global1.b, global1.b, false), min(9477i, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(3338f, 286f, 501f, 391f)), _wgslsmith_f_op_f32(516f + -308f)).b))), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(global1.a, global1.a, 34310i, -2147483647i)) ^ -vec4<i32>(global1.c, -5477i, -23549i, global1.a), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.a, -51805i, u_input.a), vec4<i32>(u_input.a, global1.c, global1.a, 26138i), vec4<i32>(global1.a, 0i, -31018i, -2147483647i))) >> (~vec4<u32>(u_input.b.x ^ u_input.b.x, ~0u, 6985u << (u_input.b.x % 32u), 1u) % vec4<u32>(32u)), 1f);
    var_0 = func_5(!select(select(!vec4<bool>(global1.b, true, var_0.b, global1.b), vec4<bool>(true, false, var_0.b, true), false), select(!vec4<bool>(global1.b, var_0.b, true, false), vec4<bool>(global1.b, var_0.b, var_0.b, var_0.b), !var_0.b), !select(vec4<bool>(false, false, global1.b, false), vec4<bool>(global1.b, false, false, global1.b), false)), -27362i, vec4<f32>(-252f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c)) * -1280f))), var_1.c, var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x));
    let var_2 = func_7(func_6(func_7(Struct_1(func_6(Struct_2(var_0.a, false, -48072i), var_1.a.xy, Struct_2(u_input.a, true, -1i)).a, select(vec4<i32>(-1i, 53153i, var_1.b.x, u_input.a), vec4<i32>(2147483647i, u_input.a, -24977i, 2147483647i), var_0.b), 1317f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1055f, 2049f)), _wgslsmith_f_op_vec3_f32(var_1.a.zwz * vec3<f32>(1248f, 224f, 132f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.a.xw * var_1.a.xy), _wgslsmith_f_op_vec2_f32(-var_1.a.yz), vec2<bool>(true, global1.b))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -902f)), func_5(vec4<bool>(false, true, any(vec4<bool>(global1.b, global1.b, false, true)), var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 1i), -vec3<i32>(var_0.c, -1i, var_0.c)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(var_1.a.x, -276f, var_1.a.x, -816f), true)))), _wgslsmith_f_op_f32(var_1.a.x - -447f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.xyw - _wgslsmith_f_op_vec3_f32(vec3<f32>(924f, -567f, var_1.c) - _wgslsmith_f_op_vec3_f32(var_1.a.yzw + var_1.a.wyz)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ~(~4294967295u), vec3<f32>(-1000f, 478f, var_1.c), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-func_6(var_2, vec2<f32>(var_1.a.x, -1660f), var_2).a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.c, 1531f)) - var_1.c), var_1.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.a))))));
}

