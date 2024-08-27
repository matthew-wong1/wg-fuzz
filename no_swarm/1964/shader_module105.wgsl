struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> u32 {
    let var_0 = arg_1 < abs(~firstLeadingBit(_wgslsmith_mult_u32(arg_1, 1u)));
    var var_1 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(2149i, ~(-5755i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-6191i, -59786i), vec2<i32>(u_input.b, 1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(-min(-2147483647i, -102324i), _wgslsmith_sub_i32(44112i, -8308i)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b, u_input.b) ^ ~vec2<i32>(-1i, 1i), select(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(73294i, -1i), vec2<i32>(u_input.b, -30473i)), vec2<bool>(var_0, var_0)), vec2<i32>(12673i, u_input.b))));
    var_1 = i32(-1i) * -select(33261i, i32(-1i) * -57371i, all(!vec2<bool>(var_0, var_0)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)));
    let var_3 = ~reverseBits(_wgslsmith_div_u32(select(u_input.d.x, ~32612u, all(vec3<bool>(true, true, true))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.x, 28727u), ~4294967295u)));
    return _wgslsmith_mult_u32(~abs(arg_1), _wgslsmith_sub_u32(var_3, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.x, 1u)), select(_wgslsmith_mult_vec2_u32(u_input.c, arg_0.zz), u_input.d.zw, vec2<bool>(true, true)))));
}

fn func_2() -> vec2<bool> {
    let var_0 = vec3<i32>(23918i, -18016i >> (func_3(vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.d.x), 30400u, 4294967295u), ~(~23037u)) % 32u), ~firstTrailingBit(countOneBits(~u_input.b)));
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1562f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f) - _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-var_2));
    let var_4 = vec4<i32>(_wgslsmith_dot_vec4_i32((-vec4<i32>(-2147483647i, var_0.x, var_1, 2147483647i) | firstLeadingBit(vec4<i32>(16680i, u_input.b, 11679i, 1i))) ^ select(~vec4<i32>(u_input.b, 23303i, var_0.x, 2147483647i), vec4<i32>(0i, -1i, u_input.b, 17329i), true), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.yz, _wgslsmith_mod_vec2_i32(var_0.yy, vec2<i32>(var_0.x, -10791i))), 60558i, ~_wgslsmith_dot_vec2_i32(var_0.xx, vec2<i32>(0i, u_input.b)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-22009i, -13873i), vec2<i32>(-2147483647i, 36370i))))), countOneBits(max(u_input.b, ~_wgslsmith_sub_i32(-1i, u_input.b))), ~(-4017i), firstLeadingBit(var_0.x));
    return select(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), false), vec2<bool>(true, true), var_4.x >= (var_0.x ^ var_4.x)), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(-378f != var_2, true), vec2<bool>(true, true)), any(vec2<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true))))), true);
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = select(vec4<bool>(any(func_2()), true, true, all(vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, -15597i <= u_input.b, all(vec2<bool>(false, true)), true), all(vec2<bool>(true, true))), vec4<bool>(true, true, _wgslsmith_f_op_f32(floor(-2199f)) <= _wgslsmith_f_op_f32(ceil(578f)), true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true))), 75452u != u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-975f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1039f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1959f, 1641f)), _wgslsmith_f_op_f32(step(-841f, -419f))) * _wgslsmith_f_op_f32(trunc(-573f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(425f + -469f))), -479f), _wgslsmith_f_op_f32(trunc(-1333f))));
    let var_2 = _wgslsmith_dot_vec4_u32(select(~countOneBits(~vec4<u32>(10122u, 4294967295u, u_input.a.x, arg_0)), firstLeadingBit(u_input.d), select(select(!vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), vec4<bool>(true, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true, !var_0.x), !select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true)))), u_input.d);
    var var_3 = Struct_3(countOneBits((vec2<i32>(u_input.b, 7893i) | reverseBits(vec2<i32>(-2147483647i, -6760i))) >> (select(select(u_input.c, vec2<u32>(0u, 1u), var_0.x), max(vec2<u32>(var_2, u_input.a.x), vec2<u32>(var_2, var_2)), var_0.x) % vec2<u32>(32u))));
    var var_4 = 1000f;
    return ~(~17177i);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = (arg_1.a.x | -8403i) | 29805i;
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), reverseBits(vec2<i32>(1i, 2147483647i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, -1000f, -1597f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(-287f, 308f), _wgslsmith_f_op_f32(trunc(-795f)), _wgslsmith_f_op_f32(-1000f * -1802f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2604f, -768f, 1383f))))));
    var var_3 = false | (5213u <= ~(43852u | func_3(arg_2.yxy, arg_2.x)));
    let var_4 = Struct_2(arg_1.a.x ^ _wgslsmith_add_i32(~(-arg_0), i32(-1i) * -1i));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(max(u_input.b, func_1(u_input.c.x)), Struct_3(vec2<i32>(u_input.b, max(u_input.b, ~(-15850i)))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, ~u_input.a.x, ~5843u, _wgslsmith_mult_u32(u_input.c.x, 17441u)), u_input.d & max(u_input.d, u_input.d)));
    var var_1 = var_0;
    let var_2 = u_input.d.x;
    var var_3 = ~u_input.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(var_1.a >> (65761u % 32u)) ^ ~(u_input.b ^ var_0.a)), 1u >> (~reverseBits(firstTrailingBit(var_3.x)) % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1280f, 575f, 1753f, -1035f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(877f, 995f, -1467f, -381f), vec4<f32>(-342f, -1119f, -472f, 156f))))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false))))), u_input.b, _wgslsmith_f_op_f32(min(-633f, -1258f)));
}

