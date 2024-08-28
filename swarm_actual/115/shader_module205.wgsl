struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(467f, 110f, -287f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.b.x, u_input.b.x), countOneBits(vec3<i32>(u_input.e, 2147483647i, u_input.e))), vec3<i32>(~1i, _wgslsmith_mult_i32(-1i, 27341i), select(u_input.e, 4782i, true))), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -u_input.b.x, -u_input.b.x));
    let var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, false, false, true)), (4294967295u >> (arg_0 % 32u)) > min(0u, arg_1.b), true), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, u_input.d), min(arg_1.b, 10527u)) == _wgslsmith_dot_vec4_u32(vec4<u32>(43208u, 0u, u_input.c.x, arg_0) >> (vec4<u32>(5445u, arg_1.b, 1u, arg_0) % vec4<u32>(32u)), select(vec4<u32>(23108u, arg_1.b, 4294967295u, 24877u), vec4<u32>(arg_0, 0u, 65327u, 20091u), true)));
    let var_2 = 4294967295u;
    var var_3 = arg_0;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(339f, arg_1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1351f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1543f) + -561f), 1057f)))));
    return ~vec2<i32>(u_input.b.x, firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, abs(8496i))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = Struct_5(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(19645u, 12569u), vec2<u32>(43914u, u_input.a.x)) >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, 27299u, u_input.c.x)), vec3<u32>(u_input.c.x, 7793u, u_input.d) & u_input.a), u_input.a.x));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-385f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), 108f)), global0.x) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1439f - -430f), _wgslsmith_f_op_f32(exp2(global0.x)), -1000f))));
    let var_1 = min(u_input.b, func_3(u_input.a.x, Struct_2(vec2<f32>(global0.x, global0.x), 6018u, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, global0.x)))))) << (~(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.d), abs(vec2<u32>(var_0.a.x, var_0.a.x))) >> (vec2<u32>(65887u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = ~_wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, var_1.x, var_1.x, u_input.b.x), vec4<i32>(0i, 4367i, 2147483647i, u_input.b.x)), countOneBits(-7521i), u_input.b.x, func_3(35295u, Struct_2(global0.xz, 12151u, vec3<f32>(global0.x, global0.x, 1199f))).x), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x >> (1u % 32u), ~var_1.x, -1i, arg_0), ~(~vec4<i32>(var_1.x, arg_0, 13124i, -2147483647i))));
    var var_3 = Struct_1(var_1, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(293f * global0.x)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, _wgslsmith_f_op_f32(var_3.c * global0.x)))))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(-1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.xy)) + vec2<f32>(arg_3, arg_2.c)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_3)), arg_0)));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1577f, arg_3, arg_3)) * vec3<f32>(190f, global0.x, arg_2.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -213f, arg_1) * vec3<f32>(356f, arg_2.c, arg_3)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(430f, 621f, arg_3)))))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2.c, -647f), _wgslsmith_f_op_f32(ceil(-1510f)), _wgslsmith_f_op_vec2_f32(func_2(arg_2.a.x)).x) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + arg_2.c) * _wgslsmith_f_op_f32(arg_2.c - -1101f)))));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(799f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(global0.x, global0.x))), vec3<f32>(var_0.x, global0.x, _wgslsmith_f_op_f32(floor(-1094f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(u_input.b, -(-u_input.b | ~(~u_input.b)));
    var var_1 = false;
    let var_2 = -1i;
    let var_3 = ~2147483647i;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, 574f), vec3<f32>(1516f, global0.x, -706f), false)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(841f, 1143f, 131f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(false, 2241f, Struct_1(vec2<i32>(-1i, var_2), true, 1201f), 276f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1118f, global0.x, -944f) * vec3<f32>(global0.x, -1720f, global0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, 873f), vec3<f32>(113f, global0.x, 1316f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1480f, global0.x, -208f) + vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 211f) + vec3<f32>(1162f, 1113f, 1000f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1123f, 691f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, global0.x, 1119f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-211f, 533f, global0.x) + vec3<f32>(global0.x, -154f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1433f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + global0.x))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))))));
    var var_5 = vec2<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))) == false, (firstLeadingBit(-2147483647i) != (min(1i, var_2) << (~4294967295u % 32u))) || true);
    let var_6 = Struct_4(Struct_3(u_input.a.zz), !(!select(vec3<bool>(true, true, true), !vec3<bool>(var_5.x, var_5.x, false), vec3<bool>(var_5.x, true, true))), min(_wgslsmith_div_u32(u_input.c.x, 27554u), min(0u, firstTrailingBit(0u))));
    let var_7 = vec3<i32>(var_2, -37840i, 1i >> (abs(0u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

