struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -35970i, -947i);

var<private> global2: bool;

var<private> global3: array<vec3<u32>, 24>;

var<private> global4: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(1009f, -1797f, -753f), vec3<f32>(1122f, 1151f, -525f), vec3<f32>(1000f, 830f, 684f), vec3<f32>(-381f, 1317f, -128f), vec3<f32>(244f, 968f, -2286f), vec3<f32>(-918f, 393f, 1419f), vec3<f32>(-487f, -974f, 1385f), vec3<f32>(-294f, -1652f, -734f), vec3<f32>(375f, 1764f, -560f), vec3<f32>(-338f, -522f, 395f), vec3<f32>(-1000f, 971f, 1191f), vec3<f32>(1241f, 464f, -908f), vec3<f32>(-1355f, 874f, 441f), vec3<f32>(1365f, -240f, 1224f), vec3<f32>(1517f, -1386f, -1000f), vec3<f32>(403f, 118f, -1651f), vec3<f32>(784f, -168f, 397f), vec3<f32>(-1007f, -297f, -1179f), vec3<f32>(-2132f, 560f, 1621f), vec3<f32>(185f, 1000f, -169f), vec3<f32>(1069f, 958f, 167f), vec3<f32>(567f, -270f, -1274f), vec3<f32>(-947f, 485f, 167f), vec3<f32>(852f, -772f, 161f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_3(Struct_2(u_input.c.zyz, -2147483647i), vec3<i32>(u_input.c.x, arg_1.a, 4373i));
    var var_2 = _wgslsmith_clamp_vec3_u32(abs(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, u_input.e.x), u_input.e.yy, arg_1.b), u_input.e.xy), 24u)]), global3[_wgslsmith_index_u32(max(reverseBits(_wgslsmith_add_u32(u_input.a, 79806u)) | ~var_0.c, 1u), 24u)], ~vec3<u32>(select(~11578u, firstTrailingBit(u_input.e.x), false), ~(~1u), ~56698u));
    return !vec3<bool>(select(true, _wgslsmith_mod_u32(3395u, var_2.x) < ~45998u, false), all(vec4<bool>(any(vec3<bool>(arg_1.b, true, var_0.b)), arg_1.b | true, true, false)), all(vec3<bool>(any(vec3<bool>(false, arg_1.b, false)), all(vec3<bool>(true, true, var_0.b)), all(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b)))));
}

fn func_2() -> i32 {
    var var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, false))), !select(func_3(_wgslsmith_div_f32(573f, 217f), Struct_1(-16720i, true, 3960u, -755f, vec2<f32>(-262f, 852f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(962f, -345f))), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), true), vec3<bool>(true, true, all(vec2<bool>(false, false)))), vec3<bool>((true | any(vec4<bool>(true, false, false, true))) & !any(vec4<bool>(false, false, true, false)), any(func_3(_wgslsmith_f_op_f32(364f * -887f), Struct_1(1i, true, u_input.e.x, 550f, vec2<f32>(950f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1201f, -393f))).xz), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(651f, -1114f)) * _wgslsmith_f_op_f32(floor(880f))), Struct_1(_wgslsmith_div_i32(2147483647i, global1.x), u_input.d.x <= -1i, 83766u & u_input.e.x, _wgslsmith_f_op_f32(sign(1108f)), vec2<f32>(1048f, -349f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-409f, -1919f) + vec2<f32>(-2518f, 774f))))).x));
    var var_1 = u_input.a;
    var var_2 = true;
    global4 = array<vec3<f32>, 24>();
    let var_3 = -53798i;
    return -2896i;
}

fn func_1() -> u32 {
    global3 = array<vec3<u32>, 24>();
    let var_0 = vec4<u32>(u_input.e.x >> (u_input.a % 32u), ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(14664u, 24u)], vec3<u32>(4294967295u, u_input.e.x, 30642u)), ~u_input.e.x)), countOneBits(709u), u_input.a);
    var var_1 = true;
    let var_2 = Struct_1(global1.x | _wgslsmith_clamp_i32(0i, func_2(), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.e.x) >> ((var_0.ww | vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(376u, ~4294967295u), ~_wgslsmith_mod_vec2_u32(var_0.zz, vec2<u32>(1u, var_0.x)), var_0.yy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f - -977f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1950f + -660f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 117f)))))));
    var var_3 = var_2;
    return var_0.x;
}

fn func_4(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-217f, 909f, 1000f), _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(38785u, 24u)]))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -167f, 909f) * vec3<f32>(1316f, -121f, -837f))))) - global4[_wgslsmith_index_u32(1u, 24u)]));
    let var_1 = Struct_1(((-20188i << (u_input.a % 32u)) | 50195i) & _wgslsmith_add_i32(92158i, global1.x), true, select(35395u & u_input.a, arg_0, any(vec2<bool>(true, true))), 1437f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1271f, _wgslsmith_f_op_f32(193f * var_0.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x))), true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, -480f, var_0.x, var_0.x) + vec4<f32>(var_0.x, 956f, 1068f, var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-871f, var_0.x, var_1.d, var_1.d)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, var_0.x, -553f, var_1.d)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, -648f, var_1.d))))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(387f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1416f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 113f)), _wgslsmith_f_op_f32(floor(-1209f))))), false));
    var var_3 = vec2<bool>(any(select(!select(vec3<bool>(false, var_1.b, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(var_1.b, true, false), vec3<bool>(var_1.b, true, true), false), vec3<bool>(true, select(var_1.b, var_1.b, var_1.b), false))), true);
    global1 = ~vec3<i32>(countOneBits(reverseBits(min(u_input.c.x, -10270i))), min(-2147483647i, _wgslsmith_mod_i32(func_2(), 1i)), 2147483647i);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(_wgslsmith_div_i32(u_input.b ^ -2147483647i, 11314i << (1u % 32u)) << (56593u % 32u)));
    var var_1 = !select(vec3<bool>(true, all(vec3<bool>(true, true, true)), false), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), any(vec2<bool>(true, true)), func_4(func_1())), vec3<bool>(!func_3(-1129f, Struct_1(44382i, true, u_input.e.x, 2035f, vec2<f32>(490f, -1551f)), vec2<f32>(319f, 1287f)).x, false == (var_0 != global1.x), select(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d >> (u_input.e.xyz % vec3<u32>(32u))), var_0 & u_input.b), 1i), u_input.e.x, 0u, vec3<i32>(max(40588i, u_input.b | -u_input.c.x), ~u_input.d.x, u_input.c.x), ~max(vec3<i32>(32107i, 22643i, var_0), reverseBits(u_input.d)));
}

