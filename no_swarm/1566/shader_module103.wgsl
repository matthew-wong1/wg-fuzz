struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 24708u), abs(~vec2<u32>(29810u, 1u)))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(75407u, 4294967295u)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(13728u, 1u), vec2<u32>(40137u, 72431u), vec2<u32>(1u, 1u))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1099f, 178f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1462f), _wgslsmith_f_op_f32(sign(1354f)))))), _wgslsmith_div_f32(-566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(567f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1118f, -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -768f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(394f * 254f)))), vec3<f32>(-786f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1029f, -761f)))), _wgslsmith_f_op_f32(f32(-1f) * -1477f))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(471f, var_1.x, var_1.x)) * vec3<f32>(var_1.x, var_1.x, var_1.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 948f, 1981f)) + vec3<f32>(847f, -795f, 1305f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -726f, 481f)))))));
    var var_2 = vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-129f, 2093f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-105f, var_1.x) * 1f))), _wgslsmith_f_op_f32(round(var_1.x))));
    return !(all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))) | true);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_3();
    var var_1 = arg_3;
    var_0 = all(select(vec4<bool>(true, func_3(), arg_3.a, (arg_1 < arg_1) && false), vec4<bool>(true | all(vec4<bool>(false, var_1.a, false, false)), func_3(), false, true), vec4<bool>(all(select(vec2<bool>(var_1.a, arg_3.a), vec2<bool>(false, var_1.a), vec2<bool>(arg_3.a, false))), true, false, false)));
    var var_2 = Struct_2(arg_0.x, vec3<i32>(firstTrailingBit(u_input.b.x), -_wgslsmith_dot_vec2_i32(u_input.b.xz, abs(u_input.a.xx)), 32965i), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -6331i), vec2<i32>(-2147483647i, u_input.a.x))) == max(_wgslsmith_dot_vec3_i32(u_input.b.zxy, vec3<i32>(u_input.b.x, u_input.a.x, -1i)), u_input.b.x)));
    var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(max(48188u, arg_0.x), arg_0.x), vec2<u32>(~0u, ~18341u)), _wgslsmith_mult_vec3_i32(-vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), -u_input.b.x, u_input.a.x | -2147483647i), var_2.b), Struct_1(var_1.a || any(!vec4<bool>(arg_3.a, true, true, var_1.a))));
    return var_2.c;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(84266u, 30642u, 4294967295u), max(vec3<u32>(0u, 47325u, 0u), vec3<u32>(5674u, 0u, 0u))) >> (~(~5536u) % 32u), vec3<i32>(u_input.b.x, _wgslsmith_div_i32(countOneBits(u_input.b.x), 18435i), firstTrailingBit(-2147483647i) ^ -u_input.b.x), Struct_1(arg_1.a && arg_0)));
    let var_1 = var_0.a.c.a;
    var var_2 = Struct_3(Struct_2(reverseBits(var_0.a.a ^ var_0.a.a) ^ (5707u ^ var_0.a.a), _wgslsmith_add_vec3_i32(u_input.b.xwy, ~var_0.a.b), arg_1));
    var var_3 = func_2(vec4<u32>(var_0.a.a, 1656u, max(51117u, _wgslsmith_mod_u32(firstTrailingBit(var_0.a.a), 0u)), 45148u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1152f, -2082f, false))))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-355f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -209f))))), Struct_1(true));
    var var_4 = countOneBits(~(~(~4294967295u)));
    return Struct_2(var_0.a.a, _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -u_input.a, ~vec3<i32>(var_2.a.b.x, 94575i, select(1i, 62373i, arg_1.a))), arg_1);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_4) -> i32 {
    var var_0 = Struct_4(Struct_2(~(~(~arg_2.a.a)), arg_2.a.b, Struct_1(!(arg_2.a.c.a && true))));
    var_0 = arg_2;
    let var_1 = Struct_4(func_4(!arg_2.a.c.a, func_2(vec4<u32>(57136u, ~17138u, _wgslsmith_clamp_u32(0u, 19737u, 1u), 27131u), 1787f, vec2<f32>(_wgslsmith_f_op_f32(step(710f, 683f)), _wgslsmith_f_op_f32(max(595f, 1721f))), Struct_1(arg_0 < var_0.a.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-600f - -670f), -447f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -868f) - _wgslsmith_f_op_f32(ceil(1000f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(947f - 344f), _wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(sign(1330f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-491f, -1039f, _wgslsmith_f_op_f32(1230f * -1136f))))))));
    var var_3 = Struct_4(Struct_2(_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_2.a.a), vec2<u32>(0u, 3369u))), abs(abs(vec2<u32>(arg_2.a.a, arg_2.a.a)))), vec3<i32>(1i, ~(-var_0.a.b.x), 0i), var_0.a.c));
    return var_1.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1u);
    let var_1 = ~13167u;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, countOneBits(~2147483647i), _wgslsmith_add_i32(func_1(var_1, false, Struct_4(Struct_2(4294967295u, vec3<i32>(-2147483647i, 1i, u_input.a.x), Struct_1(false)))), countOneBits(-1i))), -(u_input.b | vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, 81357i))) ^ countOneBits(24352i);
    var var_3 = func_4(any(vec2<bool>(true, true)), Struct_1(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))))));
    let var_4 = all(!vec2<bool>(!var_3.c.a, true));
    let var_5 = func_4(false, var_3.c);
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(936f)) - -400f);
    var var_7 = func_4(func_3() & var_4, var_3.c).c;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(select(~vec2<u32>(4294967295u, var_3.a), vec2<u32>(var_1, var_3.a), false | var_7.a)));
}

