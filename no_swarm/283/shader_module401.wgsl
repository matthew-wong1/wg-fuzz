struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(150f, -1312f) + vec2<f32>(-509f, -1212f)), vec2<f32>(1288f, 1515f), true)), vec2<f32>(_wgslsmith_f_op_f32(step(870f, -1334f)), _wgslsmith_f_op_f32(-1000f + 1792f)))) * vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    var var_1 = _wgslsmith_f_op_f32(max(var_0.x, var_0.x));
    let var_2 = _wgslsmith_add_i32(u_input.a, -u_input.a) | u_input.b;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-278f, var_0.x) * vec2<f32>(var_0.x, -462f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(779f, var_0.x)), false)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(943f, var_0.x), vec2<f32>(var_0.x, -438f)))), all(vec3<bool>(true, true, true)))))) * vec2<f32>(var_0.x, -1709f));
    var var_3 = Struct_2(countOneBits(reverseBits(-u_input.a >> (~64828u % 32u))), Struct_1(any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))), any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, true), true), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 5823u, 27930u), vec4<u32>(4294967295u, 0u, 62768u, 0u)) != 13594u)), true, 4294967295u);
    return var_3.b.a;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(Struct_1(true), vec2<bool>(true, all(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))), true, -33226i, -34528i);
    let var_1 = _wgslsmith_f_op_f32(floor(1f));
    let var_2 = Struct_3(Struct_2(-(~(-7084i)), var_0.a, !select(var_0.b.x, true, var_0.c), false, _wgslsmith_div_u32(38203u, 1u)));
    let var_3 = var_2.a.b;
    var_0 = Struct_4(var_3, select(vec2<bool>(all(select(vec3<bool>(true, true, var_0.a.a), vec3<bool>(true, var_2.a.c, var_3.a), vec3<bool>(var_2.a.d, false, true))), var_3.a), select(!vec2<bool>(false, var_0.b.x), !(!var_0.b), select(vec2<bool>(false, var_0.b.x), var_0.b, var_0.b)), (var_2.a.e << (_wgslsmith_sub_u32(var_2.a.e, var_2.a.e) % 32u)) == var_2.a.e), func_3(), _wgslsmith_sub_i32(29975i, abs(var_2.a.a)), u_input.a);
    return Struct_2(abs(1i), var_3, -1i > firstLeadingBit(i32(-1i) * -u_input.b), select(var_2.a.d, true, all(select(vec4<bool>(var_2.a.b.a, true, false, false), vec4<bool>(true, true, var_3.a, false), true))) & true, reverseBits(_wgslsmith_sub_u32(~_wgslsmith_add_u32(var_2.a.e, 69706u), 0u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = Struct_3(var_0);
    let var_2 = -950f;
    let var_3 = !vec3<bool>(false, any(select(!vec3<bool>(false, false, arg_0.a), select(vec3<bool>(true, var_1.a.b.a, true), vec3<bool>(var_1.a.c, var_0.d, false), vec3<bool>(var_0.b.a, true, var_0.b.a)), !vec3<bool>(var_1.a.c, false, false))), any(!vec4<bool>(arg_0.a, false, var_0.d, var_1.a.b.a)) && var_0.b.a);
    let var_4 = var_1;
    return var_4;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: u32) -> vec3<u32> {
    let var_0 = arg_0.a.e;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-325f, 1312f, 1000f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(914f, _wgslsmith_f_op_f32(sign(-548f)), _wgslsmith_f_op_f32(-396f * _wgslsmith_div_f32(-992f, 614f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 1371f, 1000f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1364f, 427f, -1000f)))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, 1770f, var_1.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(var_1.x + var_1.x), -442f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x, var_1.x)));
    var var_2 = true;
    return reverseBits(reverseBits(vec3<u32>(var_0, arg_2.x, 4294967295u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_4(func_2().b, vec2<bool>(func_1(func_1(Struct_1(true), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)).a.b, ~vec4<u32>(4294967295u, 81347u, arg_0.x, 1u)).a.a <= u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(ceil(718f)))) <= arg_1.x), arg_1.x > arg_1.x, -u_input.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, -45344i, -2147483647i) & vec3<i32>(0i, u_input.a, -2147483647i)), vec3<i32>(-1i, -u_input.a, 1i)), firstTrailingBit(-1i), -u_input.b << (_wgslsmith_div_u32(arg_0.x, arg_0.x) % 32u)));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.x, arg_0.x), 16427u);
    var_1 = arg_0.x;
    let var_2 = firstLeadingBit(reverseBits(-max(-vec2<i32>(16307i, 24452i), vec2<i32>(var_0.d, u_input.a))));
    var var_3 = ((var_0.e & 0i) | 26946i) >> (arg_0.x % 32u);
    return _wgslsmith_f_op_f32(-arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(127f, _wgslsmith_f_op_f32(func_5(func_4(func_1(Struct_1(true), vec4<u32>(1u, 39341u, 0u, 45024u)), firstLeadingBit(vec2<i32>(-7644i, -32341i)), _wgslsmith_clamp_vec2_u32(vec2<u32>(5081u, 0u), vec2<u32>(13709u, 76134u), vec2<u32>(2990u, 0u)), 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(185f, -836f, 1015f, -959f) * vec4<f32>(-765f, 1203f, -515f, 975f)))), _wgslsmith_f_op_f32(round(-1000f))) + vec3<f32>(_wgslsmith_f_op_f32(-1149f * -730f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1499f, -1232f, true))), 905f), 1000f));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-284f + _wgslsmith_f_op_f32(exp2(var_0.x)))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec3<u32>(func_2().e, ~1u, ~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1113f, 342f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, -1221f, -591f, var_0.x))))) + 576f));
    var var_1 = select(firstTrailingBit(~(~vec3<i32>(23770i, u_input.a, 1i))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(10693i, -1i, u_input.a), ~vec3<i32>(27930i, u_input.a, 659i)), select(vec3<i32>(u_input.b, u_input.a, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(-12512i, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.b, u_input.b)), vec3<bool>(true, true, true))), u_input.b > -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 29498i, -56027i, u_input.b), vec4<i32>(-1i, u_input.a, u_input.a, -1i))) >> (_wgslsmith_clamp_vec3_u32(~(select(vec3<u32>(53581u, 50855u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), false) & _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(56492u, 126872u, 1u))), vec3<u32>(4294967295u, ~(~0u), ~(~1u)), countOneBits(firstTrailingBit(vec3<u32>(1u, 1u, 1u)))) % vec3<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_add_i32(-14661i, min(var_1.x, 17608i)), func_1(func_1(func_2().b, abs(vec4<u32>(1u, 40849u, 1u, 87605u))).a.b, ~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(43490u, 21417u, 35013u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))).a.b, any(vec3<bool>(true, any(vec2<bool>(true, false)), true)) | !(all(vec4<bool>(false, false, true, false)) != all(vec4<bool>(true, false, false, true))), !(!(true && (var_0.x < var_0.x))), 7501u);
    var var_3 = Struct_3(Struct_2(_wgslsmith_sub_i32(1i, ~var_1.x) << (_wgslsmith_div_u32(6068u, 38406u) % 32u), Struct_1(!(!var_2.d)), var_2.b.a, false, var_2.e));
    let var_4 = _wgslsmith_add_i32(1i, 4045i);
    var_2 = func_1(func_2().b, ~(~vec4<u32>(~var_2.e, firstLeadingBit(var_3.a.e), 59833u, countOneBits(9107u)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.e);
}

