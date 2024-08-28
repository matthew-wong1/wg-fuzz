struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<bool>) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = _wgslsmith_sub_u32(~(_wgslsmith_mult_u32(arg_1.c, 7305u) & 26733u), reverseBits(arg_1.c ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_0, 8372u, 9972u), ~vec4<u32>(63248u, arg_1.c, arg_1.c, 1u))));
    var var_2 = Struct_2(Struct_1(~firstTrailingBit(0i)), vec4<i32>(_wgslsmith_mod_i32(-20649i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(arg_0.x, arg_1.b.x)))), arg_0.x, 1i, arg_0.x), ~var_1);
    let var_3 = !(!(!vec2<bool>(arg_2.x, !arg_2.x)));
    let var_4 = Struct_3(98763u, Struct_1(arg_1.b.x), Struct_1(61890i), max(arg_0.x, u_input.a.x));
    return var_2.b.x | -5954i;
}

fn func_2() -> Struct_1 {
    var var_0 = firstTrailingBit(countOneBits(-u_input.a.x));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(84976i, 2147483647i, u_input.a.x) & vec3<i32>(u_input.a.x, 33747i, u_input.a.x)), reverseBits(vec3<i32>(-1389i, u_input.b, u_input.b))), ~_wgslsmith_div_i32(u_input.a.x | 29919i, 1i), -11341i, func_3(vec2<i32>(u_input.b, 2147483647i) ^ -vec2<i32>(20245i, 1i), Struct_2(Struct_1(u_input.a.x), ~vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), 58026u), vec3<bool>(true, u_input.a.x == u_input.a.x, true))), max(~(vec4<i32>(-56671i, -27684i, 0i, u_input.a.x) << (vec4<u32>(44113u, 3607u, 4294967295u, 27553u) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(59391u, 97768u, 49962u), vec3<u32>(60412u, 0u, 0u)), ~4294967295u, 61184u, ~27086u) % vec4<u32>(32u)), ~vec4<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.b), 51630i, min(-77584i, 1i), 0i | u_input.b)));
    let var_2 = Struct_1(_wgslsmith_mod_i32(-3744i, _wgslsmith_div_i32(max(u_input.a.x, -8710i), u_input.a.x)));
    var var_3 = Struct_3(~firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(6761u, 1u), vec2<u32>(32700u, 27883u))), var_2, var_2, var_1.x);
    return Struct_1(i32(-1i) * -19226i);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2.zzy), arg_2.ywz)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(704f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 783f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_2.x), -1000f)))));
    return func_2();
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(arg_1.c, arg_1.a, arg_1.a, 26757i);
    var var_1 = var_0.a;
    var_1 = ~4294967295u;
    let var_2 = 986f;
    let var_3 = Struct_3(1u, Struct_1(_wgslsmith_dot_vec3_i32(~arg_1.b.yxz, max(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.a, var_0.c.a, u_input.b), vec3<i32>(57804i, 2147483647i, -3336i)), _wgslsmith_div_vec3_i32(arg_1.b.yzz, vec3<i32>(var_0.c.a, u_input.a.x, -403i))))), Struct_1(u_input.b << (arg_1.c % 32u)), _wgslsmith_div_i32(-u_input.b, u_input.b));
    return vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(11196u, arg_1.c), var_0.a), abs(104001u), firstLeadingBit(~(~0u)), countOneBits(49124u) & var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(u_input.a.x >> (51019u % 32u)));
    let var_1 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 6070u, 4294967295u), select(vec3<u32>(0u, 4294967295u, 16765u), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(false, true, false))), ~(~vec3<u32>(4294967295u, 4294967295u, 0u)));
    var var_2 = func_4(vec4<bool>(-593f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(floor(-279f))), !all(vec3<bool>(false, true, false)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), var_0.a < 26874i), Struct_2(func_1(_wgslsmith_f_op_f32(floor(-313f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(768f, 793f) * vec2<f32>(1031f, 1211f))), vec4<f32>(1204f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-648f * 2017f), _wgslsmith_div_f32(-463f, -341f))), max(abs(-vec4<i32>(u_input.a.x, -2147483647i, -1i, 127i)), _wgslsmith_div_vec4_i32(-vec4<i32>(-11310i, var_0.a, 28854i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a, u_input.b, -7568i, 1i), vec4<i32>(9712i, var_0.a, u_input.b, u_input.b)))), abs(countOneBits(max(51693u, var_1)))));
    var var_3 = _wgslsmith_f_op_f32(1615f * 1750f);
    var_2 = ~max(min(vec4<u32>(var_2.x, 4228u, 4294967295u, var_2.x) | vec4<u32>(4294967295u, var_2.x, var_2.x, 0u), reverseBits(~vec4<u32>(var_2.x, var_1, var_1, var_1))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.ww, var_2.yw), 68811u, ~23461u, 1468u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(24257u, var_1, 0u, 48730u), vec4<u32>(var_1, var_1, var_2.x, var_2.x), vec4<u32>(4294967295u, var_2.x, var_2.x, var_1)), vec4<u32>(52765u, var_1, 45031u, var_1) >> (vec4<u32>(var_2.x, 0u, 8760u, var_2.x) % vec4<u32>(32u)))));
    var var_4 = Struct_2(func_1(_wgslsmith_f_op_f32(sign(-1104f)), vec2<f32>(-435f, -533f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, -360f, -351f, 251f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-140f, 427f, 838f, -1414f)))))), (_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 17212i, var_0.a, u_input.b), reverseBits(vec4<i32>(28007i, u_input.a.x, u_input.a.x, 1i))) | vec4<i32>(var_0.a, var_0.a, 0i, -23950i)) ^ reverseBits(max(-vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, -1i), vec4<i32>(-5572i, 0i, var_0.a, -6210i) | vec4<i32>(u_input.b, var_0.a, u_input.b, var_0.a))), var_2.x);
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1403f - 1030f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -min(53730i, var_0.a)));
}

