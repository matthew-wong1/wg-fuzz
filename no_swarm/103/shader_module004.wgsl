struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<u32> = vec2<u32>(49316u, 70922u);

var<private> global2: f32 = 186f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    global0 = min(-_wgslsmith_add_vec2_i32(-vec2<i32>(1i, 1i), reverseBits(~vec2<i32>(arg_2.a, global0.x))), -vec2<i32>(-global0.x, _wgslsmith_mod_i32(~arg_2.a, _wgslsmith_div_i32(-1i, -20995i))));
    global1 = vec2<u32>(1u, ~arg_1);
    var var_0 = Struct_1(-2147483647i | (firstLeadingBit(arg_2.a) ^ arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(345f, -427f)));
    global0 = vec2<i32>(firstTrailingBit(countOneBits(var_0.a)), firstTrailingBit(max(global0.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, global0.x), vec2<i32>(-2147483647i, var_0.a)))));
    var var_1 = arg_2;
    return -10569i;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    let var_0 = ~(~vec3<u32>(abs(arg_2.x), 4294967295u, ~arg_0.x & 26707u));
    global1 = var_0.zx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(-arg_3)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1471f) + 316f))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(vec4<u32>(~_wgslsmith_add_u32(global1.x, u_input.a.x), u_input.a.x, ~1u | u_input.a.x, abs(global1.x)), Struct_1(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1675f, -303f) - vec2<f32>(1006f, -1355f)), arg_0, Struct_1(global0.x, 277f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f) * _wgslsmith_f_op_f32(ceil(-209f)))), ~vec4<u32>(4294967295u, global1.x, 1u, 0u), _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-252f)), -798f) * 804f)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f - -812f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-252f)))) * _wgslsmith_f_op_f32(f32(-1f) * -444f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1894f))) * 1564f), _wgslsmith_f_op_f32(-1054f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1843f, 395f, false)) + -827f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-210f)) - 132f));
    var var_2 = u_input.a.x;
    var var_3 = vec2<bool>(true, select(all(vec2<bool>(true, true)), _wgslsmith_add_i32(abs(0i), 1i) <= global0.x, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))) & true));
    global0 = ~max(~abs(countOneBits(vec2<i32>(global0.x, -33145i))), ~_wgslsmith_div_vec2_i32(~vec2<i32>(global0.x, 32065i), max(vec2<i32>(global0.x, -2147483647i), vec2<i32>(-2147483647i, global0.x))));
    return false;
}

fn func_5(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(2147483647i, 1f);
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(global0.x, var_0.a, _wgslsmith_clamp_i32(35528i, _wgslsmith_mod_i32(max(var_0.a, -1i), 30241i), -reverseBits(-42807i))), -4544i, arg_0.x);
    var var_2 = !select(!select(!vec4<bool>(arg_1, false, arg_1, arg_1), select(vec4<bool>(false, arg_1, false, false), vec4<bool>(arg_1, arg_1, arg_1, true), true), !vec4<bool>(arg_1, true, true, true)), select(vec4<bool>(false, all(vec2<bool>(false, false)), true != arg_1, !arg_1), vec4<bool>(global0.x <= var_0.a, all(vec2<bool>(true, arg_1)), arg_1, true), false), !select(!vec4<bool>(arg_1, true, true, arg_1), !vec4<bool>(false, arg_1, false, arg_1), select(vec4<bool>(true, arg_1, true, true), vec4<bool>(true, false, true, true), arg_1)));
    let var_3 = arg_1;
    let var_4 = Struct_1(-var_1.x, var_0.b);
    return Struct_1(-30340i, var_4.b);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<i32>) -> f32 {
    var var_0 = func_5(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-9429i, arg_2.x, arg_2.x, arg_2.x) ^ vec4<i32>(-17715i, arg_2.x, 38794i, arg_2.x), ~vec4<i32>(-2853i, arg_2.x, global0.x, 23826i)), vec4<i32>(_wgslsmith_mod_i32(-18722i, arg_2.x), global0.x, abs(-1i), abs(arg_2.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_2.x, -2147483647i, global0.x, arg_2.x), vec4<i32>(global0.x, arg_2.x, arg_2.x, -62613i) & vec4<i32>(arg_2.x, global0.x, arg_2.x, arg_2.x))), _wgslsmith_mult_vec4_i32(firstLeadingBit(select(vec4<i32>(global0.x, arg_2.x, global0.x, arg_2.x), vec4<i32>(global0.x, -1i, -43443i, 45584i), arg_1.x)), max(vec4<i32>(-2147483647i, arg_2.x, arg_2.x, 0i), -vec4<i32>(19747i, global0.x, 44110i, 35794i))), func_2(_wgslsmith_add_u32(firstTrailingBit(arg_0), global1.x ^ 1u))), !func_2(global1.x & u_input.a.x) || any(vec3<bool>(arg_1.x, true, !arg_1.x)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + var_0.b)));
    let var_2 = select(select(select(!vec4<bool>(true, false, arg_1.x, true), select(select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, false)), !vec4<bool>(false, arg_1.x, true, arg_1.x), any(vec2<bool>(arg_1.x, arg_1.x))), select(select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, true, arg_1.x, false)), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), arg_1.x)), select(!(!vec4<bool>(arg_1.x, false, true, arg_1.x)), vec4<bool>(any(vec4<bool>(false, false, arg_1.x, true)), true, all(arg_1), true), true), vec4<bool>(!all(arg_1), arg_1.x, false, any(select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false), true)))), vec4<bool>(true, true, arg_1.x, true), !select(select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), arg_1.x), !select(vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(arg_1.x, false, true, false), arg_1.x), ~arg_2.x < ~(-15653i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-193f, -744f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1529f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1521f, var_0.b))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(849f, var_0.b) + vec2<f32>(var_0.b, 126f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(657f, var_0.b))), vec2<f32>(var_0.b, 486f)))));
    var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(427f, var_0.b)) + 1241f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(1801f + var_3.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.x, var_3.x), vec2<f32>(var_0.b, 456f)))))))));
    return _wgslsmith_f_op_f32(var_0.b - var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(~u_input.a.x, 1u);
    let var_1 = Struct_1(reverseBits(_wgslsmith_mult_i32(~(-global0.x), ~global0.x >> (1u % 32u))), _wgslsmith_f_op_f32(242f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1658f)) - 435f), _wgslsmith_f_op_f32(func_1(~35612u, vec2<bool>(true, true), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -38638i, global0.x), vec3<i32>(global0.x, global0.x, 0i)))))));
    var var_2 = true;
    let var_3 = abs(abs(var_1.a) >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(select(u_input.a.x, u_input.a.x, true), u_input.a.x ^ u_input.a.x, 4294967295u)) % 32u));
    let var_4 = reverseBits(-reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 0i, var_3), vec3<i32>(24676i, -33956i, -40924i))) >> ((~_wgslsmith_mod_vec3_u32(u_input.a, u_input.a) << (~firstTrailingBit(vec3<u32>(var_0.x, 63920u, 24119u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_5 = _wgslsmith_add_vec3_i32(vec3<i32>(max(_wgslsmith_div_i32(firstTrailingBit(global0.x), -var_3), ~2147483647i << (firstLeadingBit(var_0.x) % 32u)), select(func_5(vec4<i32>(-1i, var_1.a, var_4.x, var_4.x), false).a, var_4.x, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))), firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, -1138i), -var_4.x))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(12643u, u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b, 715f, var_1.b, var_1.b)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * -1087f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + 1392f) * func_5(vec4<i32>(0i, global0.x, 581i, 0i), true).b))));
}

