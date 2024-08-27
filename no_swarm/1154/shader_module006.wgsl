struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(25259i, 1i, u_input.a.x), select(vec3<i32>(u_input.a.x, -15885i, 0i), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<bool>(false, arg_0.a, false)), max(vec3<i32>(-58629i, u_input.a.x, 83058i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)))), reverseBits(~(vec3<i32>(u_input.a.x, u_input.a.x, 0i) << (vec3<u32>(4294967295u, 39702u, 4294967295u) % vec3<u32>(32u))))) | 0i;
    let var_1 = !arg_1.a.x;
    var var_2 = arg_1;
    var_2 = Struct_1(arg_1.a);
    var var_3 = u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_2.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.xy);
    var_1 = arg_2.b;
    var var_2 = arg_2.b.x > var_1.x;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(694f * _wgslsmith_f_op_f32(func_3(Struct_2(arg_2.a, vec2<f32>(arg_2.b.x, arg_0.x)), Struct_1(vec2<bool>(var_0, false))))) - _wgslsmith_f_op_f32(exp2(arg_1)))), arg_1);
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = ((-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ abs(_wgslsmith_add_vec3_i32(vec3<i32>(47853i, 2147483647i, -2147483647i), vec3<i32>(2706i, 40106i, u_input.a.x)))) >> (firstLeadingBit(~vec3<u32>(1u, 1u, 4294967295u)) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, ~abs(55989u), 4231u)) % vec3<u32>(32u));
    var var_1 = Struct_2(all(vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true)), !func_2(vec4<f32>(-621f, -525f, -280f, 190f), 1607f, Struct_2(true, vec2<f32>(-1217f, -1238f)), var_0.yz))), vec2<f32>(-1131f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 698f), 856f)));
    let var_2 = select(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(min(abs(vec2<u32>(30597u, 30925u)), ~vec2<u32>(55790u, 0u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(45587u, 0u))))), ~_wgslsmith_div_u32(~(~1u), select(firstLeadingBit(1u), 1u, false)), any(select(vec4<bool>(all(vec4<bool>(var_1.a, var_1.a, var_1.a, false)), var_1.a == var_1.a, true, !var_1.a), vec4<bool>(var_1.a || false, func_2(vec4<f32>(var_1.b.x, 1318f, -608f, var_1.b.x), -610f, Struct_2(var_1.a, var_1.b), vec2<i32>(var_0.x, -2147483647i)), true, true), select(!vec4<bool>(false, var_1.a, var_1.a, var_1.a), !vec4<bool>(true, true, false, var_1.a), var_1.a && var_1.a))));
    var_1 = Struct_2(!(!var_1.a | (false & !var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) + _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x))) + _wgslsmith_f_op_f32(trunc(-1040f)))));
    let var_3 = Struct_1(!vec2<bool>(!all(vec4<bool>(var_1.a, false, true, var_1.a)), all(vec3<bool>(var_1.a, var_1.a, var_1.a))));
    return Struct_1(!vec2<bool>(true, var_1.a));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = func_1();
    let var_1 = min(~(~vec2<u32>(1u, firstLeadingBit(64782u))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(57388u, 43884u) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10812u, 98163u, 29553u), vec4<u32>(0u, 25688u, 1u, 44989u)), 1u), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(69594u, 0u, 1u)), _wgslsmith_clamp_u32(1u, ~599u, 1u))));
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(1i, countOneBits(1i), _wgslsmith_add_i32(2147483647i, select(20842i, u_input.a.x, var_0.a.x))) ^ countOneBits((vec3<i32>(1i, -24049i, 449i) << (vec3<u32>(var_1.x, 4294967295u, 4294967295u) % vec3<u32>(32u))) | countOneBits(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))), countOneBits(abs(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    var_2 = _wgslsmith_mult_u32(4294967295u ^ ~(~var_1.x >> (var_1.x % 32u)), countOneBits(84621u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f - -400f))), 1f)) + _wgslsmith_f_op_f32(171f * -737f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1()))))));
    let var_1 = Struct_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-319f, 382f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(190f, 179f)))))));
    let var_2 = vec3<bool>(var_1.a | var_1.a, false, func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 821f, var_1.b.x, var_1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(f32(-1f) * -461f), var_1.b.x, _wgslsmith_f_op_f32(trunc(152f))), select(select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, false, var_1.a, true), var_1.a), vec4<bool>(var_1.a, var_1.a, true, true), all(vec2<bool>(true, var_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(175f, _wgslsmith_f_op_f32(var_1.b.x - 1405f))), Struct_2(false && any(vec4<bool>(var_1.a, true, false, true)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x)), u_input.a));
    var var_3 = Struct_1(!(!func_1().a));
    var var_4 = ~(~(~(~4294967295u)));
    let var_5 = Struct_2(!select(var_3.a.x == var_1.a, !var_1.a, var_1.a | !var_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-971f, -1241f) * vec2<f32>(var_1.b.x, 827f)), vec2<f32>(911f, var_1.b.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(983f, 208f)))), var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-571f, var_1.b.x, var_5.b.x, _wgslsmith_f_op_f32(func_3(Struct_2(false & var_2.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_5.b.x, var_1.b.x), vec2<f32>(var_5.b.x, -1000f), var_3.a))), Struct_1(!vec2<bool>(var_3.a.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-200f, -1243f))), _wgslsmith_f_op_f32(-var_1.b.x));
}

