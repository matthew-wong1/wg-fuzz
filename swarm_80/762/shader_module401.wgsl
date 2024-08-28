struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<i32>(0i, i32(-2147483648), -1714i, i32(-2147483648)), 24883u, -29009i, 4294967295u, vec4<i32>(17426i, 24884i, -1i, 0i)), Struct_1(vec4<i32>(-6848i, i32(-2147483648), -86939i, 1i), 7815u, 1i, 0u, vec4<i32>(2147483647i, -1i, 1i, 30890i)), Struct_1(vec4<i32>(i32(-2147483648), -69894i, -1i, 2147483647i), 69906u, -1i, 12686u, vec4<i32>(1i, 2629i, 9734i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), 17951i, 1i, -23588i), 1851u, 2147483647i, 59907u, vec4<i32>(22792i, -3070i, 2147483647i, -23993i)), Struct_1(vec4<i32>(17894i, -31783i, -6410i, i32(-2147483648)), 17150u, 0i, 0u, vec4<i32>(-1i, -87161i, -62236i, 0i)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, 18139i), 1u, 1i, 0u, vec4<i32>(-1i, 37748i, -11272i, -1i)), Struct_1(vec4<i32>(-1i, -65754i, 1i, 2147483647i), 24324u, 2147483647i, 22922u, vec4<i32>(8059i, 0i, -1i, -23195i)), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, -1i), 1u, -17346i, 4294967295u, vec4<i32>(i32(-2147483648), -13520i, -1i, 2147483647i)), Struct_1(vec4<i32>(-29274i, i32(-2147483648), -19165i, 0i), 92849u, 6127i, 0u, vec4<i32>(0i, 9760i, -1i, 89087i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, -75626i, 2147483647i), 0u, 2147483647i, 4294967295u, vec4<i32>(-19109i, 2147483647i, i32(-2147483648), -11752i)), Struct_1(vec4<i32>(-5374i, 82108i, 1i, 25984i), 1u, 15213i, 4294967295u, vec4<i32>(32888i, -1i, -1i, 2147483647i)), Struct_1(vec4<i32>(-24895i, 1511i, 0i, 0i), 31207u, 2147483647i, 1u, vec4<i32>(1i, -1i, 1i, -10968i)), Struct_1(vec4<i32>(60623i, 1i, -11808i, -1i), 4294967295u, 2147483647i, 58367u, vec4<i32>(1i, 75583i, -29599i, -1i)), Struct_1(vec4<i32>(13331i, 50626i, 14881i, i32(-2147483648)), 4294967295u, i32(-2147483648), 0u, vec4<i32>(-19194i, 60502i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(-48532i, -17847i, -2285i, -33172i), 2844u, 0i, 1u, vec4<i32>(1264i, -46941i, -29122i, -53457i)), Struct_1(vec4<i32>(-1i, 2147483647i, -1i, -1i), 0u, -1i, 4294967295u, vec4<i32>(40467i, 1i, i32(-2147483648), 2147483647i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = false;
    let var_1 = vec4<bool>(true, arg_2, true, true);
    return _wgslsmith_div_u32(28780u >> (u_input.e.x % 32u), arg_0.b);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -24056i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d), vec4<i32>(-11038i, -45298i, -22212i, u_input.d))) & ~abs(vec4<i32>(u_input.d, u_input.d, -37615i, u_input.d))), firstLeadingBit(func_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, arg_2.x, 0u) & _wgslsmith_add_u32(23150u, arg_0), 16u)], u_input.c, arg_1.x)), _wgslsmith_sub_i32(-579i, u_input.c.x), 11496u, vec4<i32>(firstLeadingBit(i32(-1i) * -51106i), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c.x, -2147483647i), max(40998i, 70888i) & (u_input.c.x ^ -15947i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.c.x, u_input.d, -1i), ~vec4<i32>(u_input.c.x, u_input.d, 59799i, u_input.c.x)), u_input.c.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(346f, -418f, -909f)))))));
    let var_3 = global0[_wgslsmith_index_u32(arg_0, 16u)];
    var_1 = global0[_wgslsmith_index_u32(var_3.b, 16u)];
    return var_1.a.x;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(vec4<i32>(~(-43177i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, -19994i), arg_2.yz ^ vec2<i32>(-1i, u_input.d)), u_input.c), _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, func_2(u_input.a.x, vec2<bool>(arg_1, arg_1), u_input.a), arg_2.x & 1i), arg_2.x), 0i), ~42584u, -2147483647i, 1u, _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-5782i, arg_2.x, u_input.c.x, arg_0), abs(vec4<i32>(-15120i, u_input.d, arg_0, u_input.d))) >> (u_input.e % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(abs(select(vec4<i32>(arg_2.x, arg_0, -2820i, 37867i), vec4<i32>(arg_2.x, 0i, -12182i, -27219i), arg_1)), abs(-vec4<i32>(30982i, -20496i, arg_0, u_input.c.x)))));
    var var_1 = max(~19748u & ~u_input.b, u_input.b) << (var_0.b % 32u);
    var var_2 = -(vec2<i32>(_wgslsmith_sub_i32(arg_2.x, var_0.c), ~var_0.e.x) | vec2<i32>(-17239i, arg_0)) | var_0.a.xx;
    let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(var_0.d), 16u)];
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> u32 {
    let var_0 = firstTrailingBit(abs(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 64736u), countOneBits(4294967295u)) ^ u_input.e.xw));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(183f))), _wgslsmith_f_op_f32(f32(-1f) * -1866f), -615f, _wgslsmith_f_op_f32(abs(arg_1.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(284f * arg_1.x), _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x + 384f), _wgslsmith_f_op_f32(step(-1000f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -1045f, _wgslsmith_f_op_f32(max(-1769f, arg_1.x)), -112f))), vec4<bool>(false & !arg_0, true, _wgslsmith_add_i32(u_input.d, -2147483647i) <= _wgslsmith_sub_i32(1i, -1i), any(!vec3<bool>(arg_0, arg_0, true))))));
    var var_2 = -175f;
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1811f, var_1.x, 984f, _wgslsmith_f_op_f32(354f - _wgslsmith_div_f32(434f, 708f))));
    var var_3 = reverseBits(~vec2<i32>(-(~u_input.d), ~(-u_input.d)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    let var_0 = global0[_wgslsmith_index_u32(max(13076u, func_4(func_1(1i, false, vec3<i32>(u_input.c.x, abs(u_input.c.x), 2147483647i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-995f, 268f, 1260f) - vec3<f32>(464f, -351f, 618f)), vec3<f32>(-430f, 871f, -237f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1629f, -1398f, 305f))))))), 16u)];
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 16u)];
    var var_2 = 1691f;
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1231f)));
    var var_3 = min(_wgslsmith_dot_vec4_u32(u_input.e, (~u_input.e & _wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(var_1.d, 31512u, u_input.a.x, 70285u), u_input.e)) & min(vec4<u32>(58998u, var_0.b, u_input.b, 81624u), vec4<u32>(var_0.b, 19397u, 50115u, 2479u) ^ u_input.e)), var_1.d);
    var_2 = 331f;
    let x = u_input.a;
    s_output = StorageBuffer(13033u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(117f, -878f, 646f, -266f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-916f, 1237f, -632f, 1000f))), true))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-240f, -1607f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_f_op_f32(ceil(1392f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1938f, 1522f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -851f, 1408f)), vec4<f32>(1000f, -1119f, -747f, -1497f)) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2179f), 255f, _wgslsmith_f_op_f32(435f + 1160f))))));
}

