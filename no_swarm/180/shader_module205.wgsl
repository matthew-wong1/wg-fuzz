struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec2_i32(abs(abs(vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a)))), _wgslsmith_mult_vec2_i32(reverseBits(countOneBits(vec2<i32>(u_input.a, -42234i))) >> (vec2<u32>(41788u, ~0u) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a)));
    let var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false));
    let var_2 = ~countOneBits(vec2<i32>(-902i, _wgslsmith_mult_i32(-26724i, 0i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    var_0 = select(vec2<i32>(var_0.x, -3974i), var_2, vec2<bool>(!any(var_1.xx), true));
    let var_3 = Struct_1(vec2<f32>(1f, 1f), _wgslsmith_div_i32(countOneBits(max(_wgslsmith_clamp_i32(u_input.a, -2147483647i, 2147483647i), i32(-1i) * -1i)), -1i), -735f, select(var_1.yx, select(!var_1.zz, var_1.zy, select(select(var_1.yx, vec2<bool>(var_1.x, var_1.x), var_1.x), vec2<bool>(false, true), u_input.a > 0i)), var_1.x), -var_2.x);
    return !var_1.x;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = 1000f;
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -101f) - vec2<f32>(arg_1, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-197f, arg_1) + vec2<f32>(666f, arg_1)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-266f, -3230f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, 755f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1832f) - vec2<f32>(1167f, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-883f, arg_1)))), true)), -(~(-17661i)), 1446f, vec2<bool>(false, func_3()), _wgslsmith_dot_vec4_i32(vec4<i32>(56671i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 23758i), vec2<i32>(u_input.a, -1847i)), u_input.a | (u_input.a >> (0u % 32u)), -1i), firstTrailingBit(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, 22688i, 17891i, u_input.a), false), vec4<i32>(0i, 54229i, 0i, -2147483647i)))));
    var_0 = Struct_1(var_0.a, -39681i, -1094f, !(!select(!var_0.d, !var_0.d, true)), _wgslsmith_mod_i32(u_input.a << (select(abs(22119u), 0u, var_0.d.x) % 32u), u_input.a));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.x, arg_0)))) * var_0.a), 0i, var_0.a.x, !select(!var_0.d, select(vec2<bool>(var_0.d.x, true), select(vec2<bool>(var_0.d.x, true), var_0.d, var_0.d.x), all(vec3<bool>(var_0.d.x, var_0.d.x, false))), var_0.d), ~(-14477i));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - -502f), 1000f))), 2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1289f), _wgslsmith_div_f32(-382f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1706f - -806f), _wgslsmith_f_op_f32(-arg_1))))), !var_0.d, -(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, var_0.b)) << (reverseBits(_wgslsmith_sub_u32(0u, 0u)) % 32u)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, var_0.c), var_0.a)))))), 2147483647i, -598f, select(!(!select(vec2<bool>(false, false), vec2<bool>(var_0.d.x, false), vec2<bool>(false, true))), var_0.d, var_0.d), 2147483647i);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(~vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1062f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(ceil(arg_0.a.x))) + _wgslsmith_f_op_f32(floor(-273f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1442f)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1436f, arg_0.c).a.x - -352f));
    let var_2 = select(select(!vec3<bool>(false, true, arg_0.d.x), select(vec3<bool>(true, true, arg_0.d.x), vec3<bool>(true, true, !arg_0.d.x), any(func_2(713f, var_1.x).d)), select(!(!vec3<bool>(true, arg_0.d.x, true)), vec3<bool>(!arg_0.d.x, arg_0.d.x || arg_0.d.x, false), !vec3<bool>(arg_0.d.x, arg_0.d.x, false))), vec3<bool>(!(!(!arg_0.d.x)), arg_0.d.x, true), !(!vec3<bool>(any(vec4<bool>(false, arg_0.d.x, true, arg_0.d.x)), arg_0.d.x, false & arg_0.d.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.a)));
    return func_2(-1333f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(1822f * -2369f))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = func_2(func_4(arg_1).a.x, arg_2);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1536f * 1000f) * _wgslsmith_f_op_f32(-arg_1.c))) + _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1633f, var_0.a.x)), func_2(arg_3, arg_1.c).a.x, arg_0.d.x)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-465f, -200f)))), 829f)));
}

fn func_1() -> f32 {
    global0 = -624f;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(func_2(_wgslsmith_f_op_f32(round(2210f)), _wgslsmith_div_f32(1801f, -1000f))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -551f), 268f), -586f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-347f * _wgslsmith_f_op_f32(f32(-1f) * -256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1050f, -957f)) - _wgslsmith_f_op_f32(f32(-1f) * -1186f)))))));
    var_0 = _wgslsmith_f_op_f32(func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(448f * 961f) + _wgslsmith_f_op_f32(f32(-1f) * -783f)), 2449f), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, -464f))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 32905i), vec2<i32>(0i, 3473i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -47659i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -1i))), 383f, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), ~abs(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1481f, _wgslsmith_f_op_f32(f32(-1f) * -3323f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-716f, 1000f) + _wgslsmith_f_op_f32(max(-185f, -352f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-754f, func_4(Struct_1(vec2<f32>(-203f, -132f), u_input.a, 475f, vec2<bool>(true, false), -2147483647i)).a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1745f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1038f * _wgslsmith_f_op_f32(round(266f))) * -809f);
    var_0 = 174f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(f32(-1f) * -870f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a << (54475u % 32u), u_input.a, countOneBits(u_input.a)), firstLeadingBit(u_input.a)), 21555i) ^ (vec2<i32>(~u_input.a, -u_input.a ^ u_input.a) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(948f, -535f)))), _wgslsmith_f_op_f32(-777f - -179f)));
    var var_1 = vec3<i32>(-1i, abs(50791i), 22265i);
    var var_2 = vec2<bool>(var_1.x > u_input.a, ~86884u == max(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 65488u, 4294967295u), vec3<u32>(42459u, 4294967295u, 4294967295u)), reverseBits(5883u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -601f), vec2<f32>(-137f, -1065f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-582f, 111f) - vec2<f32>(-707f, 360f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-527f, 1740f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2460f, -1391f) * vec2<f32>(-2540f, 760f))))), countOneBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, var_1.x), max(-878i | u_input.a, countOneBits(var_1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(138f * -437f)))))), vec2<bool>(func_3(), true), -var_0.x);
    var_1 = -min(vec3<i32>(abs(1i), _wgslsmith_dot_vec2_i32(min(var_1.yz, var_1.zx), firstTrailingBit(vec2<i32>(0i, -1i))), abs(u_input.a)), abs(min(vec3<i32>(0i, var_0.x, 1i), vec3<i32>(1i, -16903i, var_3.b))));
    var_1 = ~(vec3<i32>(countOneBits(21816i), ~(-56125i), -_wgslsmith_clamp_i32(16671i, 34828i, var_1.x)) << (~vec3<u32>(~55094u, firstLeadingBit(4363u), _wgslsmith_mod_u32(22235u, 33676u)) % vec3<u32>(32u)));
    var var_4 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1106f + _wgslsmith_f_op_f32(f32(-1f) * -1214f)) - var_3.c) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.c, var_3.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(u_input.a, _wgslsmith_div_i32(var_0.x, var_1.x), var_1.x, i32(-1i) * -61395i));
}

