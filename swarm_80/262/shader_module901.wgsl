struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-652f, -1000f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, arg_3.c) - vec2<f32>(-468f, 1581f)), vec2<f32>(arg_2.c, arg_3.c)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.c, 844f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3.c, arg_2.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -628f))) + vec2<f32>(arg_3.c, arg_3.c)), !arg_3.a))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_div_f32(-1136f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1082f - arg_3.c))))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x));
    var var_1 = arg_2;
    var var_2 = ~arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(-188f, -318f))));
    return -677f;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(!arg_3.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-61479i, ~22628i, 2147483647i), -arg_3.b) << (_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 95551u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(u_input.a << (u_input.a % 32u), countOneBits(u_input.a), 0u)) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1008f, _wgslsmith_div_f32(arg_2, arg_2), !arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.c))))), arg_2));
    let var_1 = true;
    var var_2 = Struct_1(any(!(!select(vec2<bool>(true, true), vec2<bool>(true, arg_0), vec2<bool>(var_1, arg_0)))), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, ~(-32030i), 22087i), -(~countOneBits(var_0.b))), 939f);
    var var_3 = _wgslsmith_f_op_f32(arg_2 - var_2.c);
    let var_4 = ~u_input.a;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> vec3<f32> {
    let var_0 = all(!func_4(true, true, _wgslsmith_f_op_f32(abs(-509f)), Struct_1(all(vec3<bool>(false, arg_1, arg_1)), arg_2.ywy, _wgslsmith_f_op_f32(func_3(u_input.a, vec4<i32>(-2147483647i, arg_2.x, -28877i, arg_0), Struct_1(true, arg_2.zxy, -155f), Struct_1(arg_1, arg_2.xww, -243f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1323f)));
    let var_2 = -1i;
    var var_3 = Struct_1(true, -(~_wgslsmith_sub_vec3_i32(~vec3<i32>(56452i, arg_2.x, arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2, arg_2.x, -1i), vec3<i32>(arg_0, 0i, -2147483647i)))), 724f);
    let var_4 = u_input.a > u_input.a;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-480f, -737f, var_3.c), vec3<f32>(var_3.c, -1119f, 904f))))))) - vec3<f32>(var_3.c, var_3.c, var_3.c));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(true, abs(-vec3<i32>(arg_0.b.x, -17099i, _wgslsmith_dot_vec3_i32(arg_0.b, arg_0.b))), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2(i32(-1i) * -25016i, arg_0.a, vec4<i32>(1i, i32(-1i) * -12646i, 24203i, arg_0.b.x))).x, _wgslsmith_f_op_f32(f32(-1f) * -703f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(771f * arg_0.c)));
    var_1 = arg_1.xy;
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xz) * vec2<f32>(1059f, 1575f)), vec2<f32>(1546f, _wgslsmith_f_op_f32(select(var_0.c, var_0.c, false)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(147f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_div_f32(-882f, var_1.x))) < 650f, ~max(firstTrailingBit(var_0.b), var_0.b), 1f);
    return var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> vec2<bool> {
    var var_0 = ~(~(-(vec4<i32>(arg_0.x, 1i, arg_0.x, 0i) & (vec4<i32>(arg_0.x, arg_0.x, -2147483647i, 38780i) | vec4<i32>(2147483647i, -38388i, arg_0.x, arg_0.x)))));
    let var_1 = func_5(Struct_1(!all(vec4<bool>(false, false, false, false)), var_0.zyw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f - -2196f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(~(-82510i), true, vec4<i32>(arg_0.x, _wgslsmith_add_i32(arg_0.x, -2147483647i), _wgslsmith_mod_i32(arg_0.x, var_0.x), ~(-13986i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-553f, 1000f), 247f, _wgslsmith_f_op_f32(sign(1577f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1394f, -1000f, 411f) + vec3<f32>(390f, -453f, 258f))))), vec3<bool>(true, !select(false, false, true), true & select(true, true, true)))), vec4<u32>(arg_1, 0u, max(u_input.a, 23027u), u_input.a));
    var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~1i, var_0.x, ~var_0.x, -8580i), vec4<i32>(~var_1.b.x, _wgslsmith_mult_i32(arg_0.x, var_0.x), 2147483647i, _wgslsmith_add_i32(5900i, arg_0.x))) & _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, 5363i, 0i), vec4<i32>(0i, var_0.x, var_0.x, -36612i)), reverseBits(vec4<i32>(arg_0.x, 17530i, var_1.b.x, var_1.b.x))), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_0.x, arg_0.x, -2147483647i)), vec4<i32>(arg_0.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(~arg_0.x, var_0.x), -(~0i)), -var_0.x, var_1.b.x));
    var var_2 = func_5(func_5(Struct_1(true, countOneBits(abs(var_0.yyw)), 1865f), vec3<f32>(_wgslsmith_f_op_f32(abs(-563f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1841f - -1383f) + -967f), -1093f), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(32960u, 4294967295u, 14184u, u_input.a), vec4<u32>(u_input.a, arg_1, 16599u, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c, 498f, var_1.c), vec3<f32>(var_1.c, -351f, var_1.c), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(385f, var_1.c, var_1.c))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-566f, -1081f, var_1.c))))), select(vec4<u32>(~abs(0u), u_input.a, ~(~arg_1), ~(arg_1 << (u_input.a % 32u))), ~abs(vec4<u32>(16310u, u_input.a, 0u, 4294967295u)) & ~vec4<u32>(1u, 89838u, 77409u, 1u), var_1.a));
    let var_3 = vec4<bool>(true, all(vec3<bool>(true, any(vec2<bool>(false, var_2.a)), any(vec2<bool>(var_2.a, var_1.a)))) != true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(-var_2.c)) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(var_2.c - -919f))) > _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(~(-21036i), all(vec2<bool>(true, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, -6358i, 63711i), vec4<i32>(-2147483647i, var_0.x, var_1.b.x, 2147483647i)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))));
    return var_3.zz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = select(select(vec2<bool>(!var_0, true), vec2<bool>(false, !var_0), var_0), func_1(~vec2<i32>(1i, 1i), 0u), vec2<bool>(1122f >= _wgslsmith_f_op_f32(step(261f, -1304f)), false));
    var var_2 = !vec4<bool>(func_4(false & var_1.x, select(-20956i, -38819i, var_0) < 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1273f)) + -1472f), Struct_1(var_0, vec3<i32>(-1i, -2147483647i, 8823i) << (vec3<u32>(u_input.a, 53920u, u_input.a) % vec3<u32>(32u)), 1f)).x, var_0, true, !var_1.x);
    let var_3 = min(select(abs(vec3<u32>(~4294967295u, ~1u, ~u_input.a)), ~select(vec3<u32>(20231u, 0u, u_input.a), select(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(35222u, 0u, u_input.a), var_0), vec3<bool>(var_2.x, var_2.x, false)), !var_1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u ^ u_input.a, u_input.a), vec3<u32>(u_input.a, _wgslsmith_sub_u32(45265u, u_input.a), _wgslsmith_mult_u32(u_input.a, 1u)) ^ vec3<u32>(u_input.a, ~1u, ~1u)));
    var_2 = select(vec4<bool>(false, !var_2.x, true, var_1.x), select(vec4<bool>(var_1.x || false, false, false, true && var_2.x), select(!select(vec4<bool>(true, var_2.x, var_2.x, var_0), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(false, false, false, var_0)), select(select(vec4<bool>(true, var_2.x, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(var_2.x, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), var_0)), var_1.x), any(var_2.ywy)), false);
    let var_4 = 652f;
    var_2 = select(select(vec4<bool>(any(!vec2<bool>(var_0, var_2.x)), !func_4(var_1.x, false, var_4, Struct_1(var_0, vec3<i32>(25115i, -2147483647i, 0i), var_4)).x, true, !(!var_1.x)), !vec4<bool>(true, var_2.x, true, var_1.x), vec4<bool>(true, _wgslsmith_f_op_f32(-var_4) != _wgslsmith_f_op_f32(-var_4), 1917f <= var_4, !(!var_1.x))), select(!vec4<bool>(false, true, !var_0, true), select(!(!vec4<bool>(false, true, var_2.x, var_1.x)), !(!vec4<bool>(var_2.x, true, false, false)), select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, var_0, var_2.x, var_2.x), any(vec4<bool>(var_1.x, false, false, var_2.x)))), !vec4<bool>(var_0, var_2.x & var_2.x, false, !var_2.x)), !vec4<bool>(true, all(select(vec4<bool>(var_0, false, var_1.x, var_2.x), vec4<bool>(var_2.x, var_0, var_2.x, true), false)), any(!vec4<bool>(true, true, var_0, false)), _wgslsmith_f_op_f32(-var_4) < _wgslsmith_f_op_f32(1791f * 1522f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(1i, 1i) | _wgslsmith_clamp_vec2_i32(~vec2<i32>(-6765i, 1i), ~vec2<i32>(-1i, -44106i), vec2<i32>(1i, 1i))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.xx, var_3.zx), var_3.xz), var_3.xy, firstLeadingBit(~var_3.zx)), var_3);
}

