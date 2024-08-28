struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = 535f;
    return Struct_1(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), -1351f, _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, -26911i, arg_0.x, -1i), countOneBits(vec4<i32>(arg_0.x, 30662i, 0i, u_input.a))), ~abs(~vec4<i32>(-48219i, 1i, 1i, u_input.a))));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + -621f);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1228f + arg_0.x)));
    let var_0 = !select(vec4<bool>(select(true, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, false))), true, func_2(vec2<i32>(u_input.a, 1i)).b >= 691f, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), true), select(vec4<bool>(u_input.a < u_input.a, all(vec2<bool>(false, false)), func_2(vec2<i32>(u_input.a, u_input.a)).a, select(true, false, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, false, false))));
    global0 = _wgslsmith_f_op_f32(select(arg_0.x, func_2(select(vec2<i32>(2147483647i, -71610i) >> (select(vec2<u32>(74726u, 466u), vec2<u32>(1u, 0u), vec2<bool>(var_0.x, false)) % vec2<u32>(32u)), ~(-vec2<i32>(14427i, u_input.a)), true)).b, !any(vec2<bool>(var_0.x, var_0.x))));
    let var_1 = func_2(vec2<i32>(1i, 1i));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = func_2(vec2<i32>(-1i, i32(-1i) * -1i));
    let var_1 = false;
    let var_2 = vec3<u32>(abs(~(~133408u) ^ firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(30010u, 10519u), vec2<u32>(0u, 27999u)))), _wgslsmith_div_u32(9134u, ~_wgslsmith_mod_u32(0u, ~6079u)), ~(~(~1u)));
    var var_3 = (min(76503u, var_2.x) >> (var_2.x % 32u)) <= var_2.x;
    var var_4 = arg_1.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-var_0.b))))));
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<bool>(false, true), func_2(vec2<i32>(2147483647i, u_input.a)), !vec3<bool>(func_3(vec3<f32>(-1048f, -914f, -1481f)), true, true))) - -888f);
    var var_0 = func_2(_wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(u_input.a, 18088i), _wgslsmith_mult_i32(u_input.a, u_input.a)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, -1i)), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(1i, 2147483647i))), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(3091i, -10773i), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i), true)), min(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-2147483647i, u_input.a), countOneBits(vec2<i32>(u_input.a, 5100i))))));
    let var_1 = countOneBits(_wgslsmith_dot_vec4_u32(select(select(abs(vec4<u32>(2221u, 2497u, 1u, 66301u)), countOneBits(vec4<u32>(0u, 40481u, 1u, 4294967295u)), all(vec3<bool>(var_0.a, var_0.a, var_0.a))), vec4<u32>(1u, 1u, 1u, 1u), select(select(vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), false), select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, true, var_0.a), true), false)), select(~(~vec4<u32>(1u, 69040u, 1u, 1344u)), ~vec4<u32>(32615u, 32482u, 1u, 3558u), !vec4<bool>(false, var_0.a, var_0.a, false))));
    let var_2 = Struct_1(82650u >= min(~_wgslsmith_dot_vec3_u32(vec3<u32>(9180u, 42697u, var_1), vec3<u32>(var_1, var_1, var_1)), 4294967295u), var_0.b, func_2(vec2<i32>(u_input.a, _wgslsmith_add_i32(var_0.c.x, var_0.c.x))).c);
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 776f, 801f, var_2.b), vec4<f32>(var_0.b, var_0.b, -2118f, -951f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2698f, var_0.b, var_2.b, 1545f))))))));
    return all(select(!(!select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, true), var_2.a)), vec2<bool>(var_0.a, false), !vec2<bool>(func_2(var_2.c.yy).a, any(vec2<bool>(var_0.a, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, 1i)), vec3<i32>(-1i, ~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-73861i, u_input.a, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a)))) | countOneBits(1i));
    let var_1 = vec4<bool>(true, any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), !(u_input.a != min(19839i, -2147483647i)) | true, all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_1()))));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(!vec2<bool>(true | var_1.x, false), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1915f) != _wgslsmith_f_op_f32(round(-333f)), -108f, -select(vec4<i32>(-2147483647i, u_input.a, u_input.a, -17492i), vec4<i32>(-1i, u_input.a, u_input.a, 61874i), vec4<bool>(var_1.x, var_1.x, true, var_1.x))), select(var_1.ywx, vec3<bool>(u_input.a == 2147483647i, 40914i > u_input.a, any(var_1.xw)), vec3<bool>(true, var_1.x, true))))));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(-38290i, i32(-1i) * -16520i), -select(u_input.a, u_input.a, var_1.x)), -_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, 1i), u_input.a)) & ~_wgslsmith_add_i32(u_input.a, 0i);
    var_0 = firstLeadingBit(-1i);
    var_0 = _wgslsmith_div_i32(u_input.a, u_input.a);
    var_2 = -_wgslsmith_mod_i32(u_input.a, countOneBits(u_input.a) | _wgslsmith_sub_i32(~(-4649i), u_input.a));
    var var_3 = Struct_1(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1284f), max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a & u_input.a, u_input.a & 70006i, u_input.a, _wgslsmith_sub_i32(-15440i, -2147483647i)), -vec4<i32>(-31327i, 2147483647i, 0i, 64150i) & -vec4<i32>(-41313i, 47961i, 2147483647i, u_input.a)), func_2(vec2<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, 2147483647i), u_input.a)).c));
    var var_4 = !(u_input.a >= _wgslsmith_div_i32(_wgslsmith_clamp_i32(func_2(vec2<i32>(0i, 11795i)).c.x, -var_3.c.x, 513i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 43766i), var_3.c.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(_wgslsmith_dot_vec2_i32(var_3.c.zz, var_3.c.wz), func_2(vec2<i32>(2147483647i, var_3.c.x)).c.x, u_input.a & 23744i)), vec4<u32>(abs(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), 1u)), 1u, 1u, 4294967295u), ~countOneBits(~1u), _wgslsmith_dot_vec2_i32(-func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_3.c.x), var_3.c.ww)).c.yx, var_3.c.yy), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~0u, 1u, ~4294967295u)));
}

