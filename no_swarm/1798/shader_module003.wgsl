struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(2147483647i), Struct_1(93181i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(13193i), Struct_1(0i), Struct_1(0i), Struct_1(0i), Struct_1(-24386i), Struct_1(i32(-2147483648)), Struct_1(-24969i), Struct_1(-1i), Struct_1(-28133i), Struct_1(2147483647i), Struct_1(-19711i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = max(~select(firstTrailingBit(vec4<i32>(21058i, arg_1.x, 6339i, u_input.a) | vec4<i32>(-69527i, -5679i, -55558i, arg_3.a)), min(vec4<i32>(-1i, u_input.a, -15759i, -10286i), vec4<i32>(arg_3.a, -1i, -11169i, u_input.a)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), !vec4<bool>(arg_2.x, arg_0.x, arg_0.x, arg_2.x), false)), vec4<i32>(_wgslsmith_mult_i32(arg_1.x, -_wgslsmith_dot_vec2_i32(arg_1, arg_1)), arg_1.x, arg_3.a, 12489i));
    let var_1 = global0[_wgslsmith_index_u32(~countOneBits(54112u), 15u)];
    var var_2 = vec4<bool>(arg_2.x, arg_2.x, false, true);
    var var_3 = ~vec4<i32>(var_0.x, reverseBits(2147483647i), -4802i & _wgslsmith_add_i32(firstTrailingBit(-2147483647i), -40513i), _wgslsmith_div_i32(var_0.x, 2147483647i));
    var_0 = -vec4<i32>(max(_wgslsmith_sub_i32(~(-30479i), var_3.x | 8065i), _wgslsmith_dot_vec3_i32(var_3.zwz & vec3<i32>(50046i, -2147483647i, var_3.x), _wgslsmith_clamp_vec3_i32(var_0.xyx, var_3.xwx, vec3<i32>(var_0.x, 27085i, 2147483647i)))), i32(-1i) * -(~0i), _wgslsmith_div_i32(_wgslsmith_add_i32(~(-2147483647i), var_3.x), u_input.a | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, 1i, var_3.x), var_0.wzz)), arg_1.x);
    return !(!vec2<bool>(false, !arg_2.x));
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    global0 = array<Struct_1, 15>();
    var var_0 = Struct_1(_wgslsmith_mod_i32(u_input.a, -2147483647i));
    var var_1 = global0[_wgslsmith_index_u32(abs(arg_0.x), 15u)];
    var_1 = Struct_1(var_1.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-846f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(895f))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-192f - _wgslsmith_f_op_f32(-815f * 1035f))))) >= -462f;
    return select(!(!vec2<bool>(true, any(vec2<bool>(false, true)))), vec2<bool>(any(vec3<bool>(true, true, true)), true), func_3(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true), _wgslsmith_sub_vec2_i32(vec2<i32>(-var_0.a, var_0.a), _wgslsmith_div_vec2_i32(vec2<i32>(9908i, u_input.a), vec2<i32>(var_1.a, -34029i))), vec3<bool>(true, true, true), Struct_1(reverseBits(var_0.a))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<f32>(arg_3.x, arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1190f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_3.x)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), 1000f)), var_0.x), arg_3.x)), -1408f);
    global0 = array<Struct_1, 15>();
    let var_2 = _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_mod_i32(u_input.a, -2147483647i), -u_input.a, ~u_input.a)), vec3<i32>(firstTrailingBit(arg_2.a), _wgslsmith_div_i32(arg_2.a, 50749i), -2147483647i) | -(~vec3<i32>(-28741i, arg_2.a, -1i))) << (~(~vec3<u32>(4294967295u, arg_1.x, 1u)) % vec3<u32>(32u));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(129f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))), arg_3.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(ceil(-1462f))), _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1926f) + arg_3.x))));
    return global0[_wgslsmith_index_u32(9696u, 15u)];
}

fn func_1() -> i32 {
    let var_0 = func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, abs(4294967295u), 46625u), vec3<u32>(1u, countOneBits(1u), abs(4294967295u))), firstLeadingBit(_wgslsmith_mod_u32(47795u, 19308u) << (1u % 32u)), ~1u, 1u), vec3<u32>(21842u, 34511u, ~(~firstTrailingBit(16992u))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-52696i, u_input.a, 1i, 31520i) << (vec4<u32>(87864u, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, u_input.a, 19349i, u_input.a))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1554f), -1758f), vec2<f32>(_wgslsmith_f_op_f32(465f * -249f), -897f), select(func_2(vec3<u32>(1027u, 0u, 0u)), vec2<bool>(true, true), vec2<bool>(false, true)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -922f, 269f, -719f) + vec4<f32>(-433f, -1474f, -241f, 1376f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, -515f, var_1.x), vec4<f32>(var_1.x, var_1.x, -880f, var_1.x), true)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-482f)), var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1875f, -419f, -1000f, -1285f), vec4<f32>(857f, var_1.x, -202f, var_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-382f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-174f, 1000f)))))));
    var var_3 = Struct_1(min(0i, 1i));
    let var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 601f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_f_op_f32(round(1f)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, -359f)) - var_1.x)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, _wgslsmith_mult_i32(2147483647i, u_input.a), 13226i, u_input.a), select(vec4<i32>(~u_input.a, _wgslsmith_div_i32(u_input.a, 0i), 1i | u_input.a, -45056i), vec4<i32>(_wgslsmith_add_i32(u_input.a, 71756i), min(18127i, u_input.a), func_1(), _wgslsmith_add_i32(u_input.a, 0i)), vec4<bool>(true, true, true, true)) >> (vec4<u32>(max(0u, 1u), ~1u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 7181u)), vec2<u32>(0u, 4294967295u)), _wgslsmith_sub_u32(4294967295u, ~1u)) % vec4<u32>(32u)));
    var var_1 = func_4(~vec4<u32>(firstLeadingBit(max(40499u, 56412u)), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 0u), max(vec3<u32>(18745u, 37235u, 0u), vec3<u32>(120651u, 39136u, 29425u))), _wgslsmith_div_u32(countOneBits(53469u), _wgslsmith_add_u32(1u, 100110u))), ~(~firstLeadingBit(firstTrailingBit(vec3<u32>(67069u, 0u, 90916u)))), func_4(~(~vec4<u32>(4294967295u, 93567u, 75357u, 24153u)), vec3<u32>(firstTrailingBit(3343u), 1u, 1u) << (vec3<u32>(1u, ~10074u, 4294967295u) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(firstLeadingBit(14824u), 15u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1497f, 143f))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1513f), _wgslsmith_f_op_f32(245f * -816f)))))));
    global0 = array<Struct_1, 15>();
    let var_2 = global0[_wgslsmith_index_u32(min(~33251u, 1u), 15u)];
    var_0 = vec4<i32>(func_1(), ~func_1(), 1i, ~firstTrailingBit(var_1.a));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(~abs(~4294967295u), ~firstTrailingBit(~56083u), true), 22323u), 15u)];
    var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 774u)), _wgslsmith_add_vec2_u32(vec2<u32>(8120u, 20845u), vec2<u32>(15273u, 1u)))), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1057f + -1239f), -128f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(787f, -628f)), _wgslsmith_div_f32(-1000f, -1033f), -1016f))), select(~firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, ~1u, ~0u, 1u), vec4<bool>(true, true, true, true)), _wgslsmith_mod_i32(u_input.a, 0i));
}

