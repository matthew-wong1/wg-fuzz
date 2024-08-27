struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = !(!select(arg_1.d.d, !arg_1.d.d, true != !arg_1.a.x));
    let var_1 = Struct_2(var_0.xyy, 51007i, _wgslsmith_div_vec3_f32(arg_1.c, _wgslsmith_div_vec3_f32(arg_1.c, arg_1.c)), Struct_1(~(vec2<u32>(arg_1.d.b.x, 0u) << (arg_1.d.a % vec2<u32>(32u))), vec3<u32>(abs(_wgslsmith_add_u32(u_input.d, 1u)), 4294967295u, u_input.d), select(false, (arg_1.d.c != false) && true, false), arg_1.d.d, 607f));
    var var_2 = arg_1.b;
    var_0 = arg_1.d.d;
    let var_3 = _wgslsmith_f_op_f32(var_1.c.x - arg_1.c.x);
    return _wgslsmith_f_op_f32(sign(var_3));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(vec3<bool>(abs(arg_0.x) == _wgslsmith_div_i32(17805i, arg_0.x >> (u_input.b % 32u)), true, ~(~u_input.d) < 4294967295u), _wgslsmith_mult_i32(reverseBits(-(~(-8855i))), arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(-2267f + 942f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -168f), Struct_2(!vec3<bool>(arg_1, true, false), -u_input.a.x, vec3<f32>(-1976f, 1000f, -1458f), Struct_1(vec2<u32>(76549u, u_input.c), vec3<u32>(u_input.b, u_input.d, u_input.b), true, vec4<bool>(true, true, arg_1, false), 1000f)))), -1589f), Struct_1(vec2<u32>(1u, _wgslsmith_div_u32(countOneBits(u_input.e), u_input.c)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1572u, 0u, u_input.e), ~vec3<u32>(u_input.b, 4294967295u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 30440u, u_input.b), vec3<u32>(u_input.b, 28173u, u_input.e))), true | (firstLeadingBit(arg_0.x) == (2147483647i << (u_input.d % 32u))), select(!select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), arg_1), vec4<bool>(false, all(vec2<bool>(arg_1, true)), any(vec3<bool>(false, false, arg_1)), any(vec3<bool>(arg_1, arg_1, arg_1))), vec4<bool>(false, true, !arg_1, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1499f * -2359f)))));
    let var_1 = false;
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = 0u;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = func_4(func_2(_wgslsmith_mod_vec4_i32(countOneBits(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, -2147483647i, u_input.a.x, var_0), vec4<i32>(var_0, -70621i, -1i, 33000i)) ^ firstLeadingBit(vec4<i32>(-40805i, var_0, u_input.a.x, 1i))), any(vec2<bool>(true, true)) && true), Struct_2(!vec3<bool>(true, true, all(vec3<bool>(false, true, false))), ~u_input.a.x << (~1u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.e) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), min(vec2<u32>(1u, 1u), vec2<u32>(32454u, u_input.d)), vec2<u32>(u_input.e, 4294967295u) ^ vec2<u32>(u_input.d, u_input.e)), ~vec3<u32>(15223u, 1u, 18191u) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.c), vec3<u32>(u_input.e, u_input.e, u_input.c)), true, vec4<bool>(true, true, true, true), _wgslsmith_div_f32(-489f, 1331f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))), countOneBits(-max(vec2<i32>(19810i, var_0), ~u_input.a)));
    var var_2 = func_4(Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, var_1.d.b.x), func_2(firstLeadingBit(vec4<i32>(26878i, 16468i, 2147483647i, -2147483647i)), !var_1.d.d.x).b.xy), vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(0u, 54831u), 1u), (true || (-2402f > arg_1.x)) | true, vec4<bool>(var_1.d.d.x, func_2(~vec4<i32>(var_1.b, u_input.a.x, var_1.b, -1i), false).d.x, var_1.d.c && true, var_1.d.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, Struct_2(var_1.d.d.wyz, 1815i, vec3<f32>(arg_0, -434f, 2010f), Struct_1(var_1.d.b.zx, var_1.d.b, var_1.a.x, var_1.d.d, 990f)))))))), Struct_2(!var_1.a, var_1.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1137f, arg_1.x), 847f, _wgslsmith_f_op_f32(floor(arg_1.x))), var_1.c), Struct_1(var_1.d.b.xy, ~(~var_1.d.b), var_1.d.c && all(var_1.d.d.xz), vec4<bool>(!var_1.d.c, var_1.d.c, true, !var_1.d.c), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * func_4(Struct_1(var_1.d.b.xz, ~vec3<u32>(0u, 4294967295u, 53053u), 15735i < var_0, !vec4<bool>(true, var_1.d.d.x, var_1.a.x, var_1.d.c), arg_0), func_4(var_1.d, func_4(var_1.d, Struct_2(var_1.a, 2147483647i, var_1.c, var_1.d), arg_1.x, vec2<i32>(-11184i, -1i)), -1000f, vec2<i32>(2147483647i, var_0)), 1389f, ~_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(36706i, var_0))).c.x), u_input.a).d.b;
    var_2 = var_1.d.b;
    var var_3 = var_1.d;
    return Struct_1(var_3.a, ~vec3<u32>(125737u, func_4(Struct_1(var_3.b.yz, vec3<u32>(11280u, var_3.a.x, 1696u), var_1.d.d.x, var_3.d, var_1.c.x), func_4(var_1.d, var_1, -405f, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1280f), abs(u_input.a)).d.a.x, u_input.c), !var_3.d.x, !func_2(vec4<i32>(var_0, var_1.b << (var_3.a.x % 32u), u_input.a.x << (1u % 32u), -6482i), true).d, _wgslsmith_f_op_f32(round(var_3.e)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    var var_0 = reverseBits(arg_1.b) ^ arg_1.b;
    var var_1 = u_input.a;
    var var_2 = ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, ~(-10866i) >> (var_0.x % 32u), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_1.x, -1i, var_1.x), _wgslsmith_div_i32(u_input.a.x, var_1.x))), u_input.a.x);
    let var_3 = ~(-max(45313i, ~_wgslsmith_add_i32(var_1.x, -2147483647i)));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -398f);
    return -860f;
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = arg_2.d.a;
    var_0 = ~min(firstTrailingBit(vec2<u32>(31889u, var_0.x)), ~arg_2.d.b.zy) << (func_4(arg_3.d, arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-147f, arg_1, 874f, arg_1)), arg_3.d, true, vec3<f32>(arg_1, -549f, -1342f))))), u_input.a).d.b.xx % vec2<u32>(32u));
    let var_1 = -1024f;
    let var_2 = Struct_2(arg_0.xyz, -7978i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1119f - 713f), _wgslsmith_f_op_f32(sign(-1520f)), arg_1) - arg_2.c))), Struct_1(~max(arg_2.d.a, arg_3.d.a) & ~func_4(Struct_1(vec2<u32>(128830u, 49225u), vec3<u32>(arg_2.d.b.x, 0u, 27925u), arg_0.x, arg_3.d.d, -770f), arg_3, arg_2.c.x, u_input.a).d.a, select(max(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 1u), arg_3.d.b), vec3<u32>(15257u, arg_2.d.a.x, 30719u)), ~(~vec3<u32>(23104u, var_0.x, 77072u)), true), arg_0.x, !(!arg_2.d.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f + arg_2.d.e) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1170f, 544f)))));
    var_0 = firstLeadingBit(vec2<u32>(~countOneBits(var_2.d.a.x), 28351u) ^ vec2<u32>(86756u, ~reverseBits(arg_2.d.a.x)));
    return StorageBuffer(_wgslsmith_sub_vec3_i32(firstLeadingBit(-vec3<i32>(-22566i, var_2.b, arg_3.b)), ~(~(vec3<i32>(arg_2.b, 1161i, -11477i) ^ vec3<i32>(-2147483647i, arg_2.b, var_2.b)))), arg_2.b, ~1u, (~(-vec4<i32>(arg_3.b, arg_3.b, -15924i, -3416i)) & (~vec4<i32>(var_2.b, 60043i, var_2.b, -37440i) ^ vec4<i32>(u_input.a.x, 0i, arg_2.b, 1i))) ^ min(~vec4<i32>(arg_2.b, 0i, var_2.b, var_2.b), vec4<i32>(var_2.b, u_input.a.x, abs(u_input.a.x), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -438f) * _wgslsmith_f_op_f32(select(-613f, -139f, true)))) != 587f, true, true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1420f)))));
    var_0 = true;
    let x = u_input.a;
    s_output = func_6(select(vec4<bool>(false, true | all(vec2<bool>(true, true)), !all(vec3<bool>(true, true, true)), false), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-380f)), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2318f, 1265f, 2438f, 2996f), vec4<f32>(1789f, -1000f, 1134f, 1342f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1249f, -384f, -421f, -196f) - vec4<f32>(329f, 836f, -1051f, -949f))), func_1(-796f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, -1936f))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1109f, 294f, 250f))))))), Struct_2(!func_4(Struct_1(vec2<u32>(4294967295u, u_input.e), vec3<u32>(4294967295u, 1u, 1u), false, vec4<bool>(true, true, false, true), 388f), Struct_2(vec3<bool>(false, true, true), u_input.a.x, vec3<f32>(587f, -843f, -672f), Struct_1(vec2<u32>(u_input.e, 40232u), vec3<u32>(72439u, 4294967295u, 19125u), false, vec4<bool>(false, true, false, true), 127f)), -1361f, vec2<i32>(u_input.a.x, -1i)).d.d.xyw, 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_5(vec4<f32>(209f, -1525f, -518f, -2243f), Struct_1(vec2<u32>(u_input.d, 216u), vec3<u32>(56815u, u_input.d, u_input.d), true, vec4<bool>(true, true, false, false), -742f), false, vec3<f32>(-1058f, -1432f, 2744f))), -1398f, _wgslsmith_div_f32(1000f, -430f))), func_2(firstTrailingBit(firstLeadingBit(vec4<i32>(-24999i, u_input.a.x, u_input.a.x, u_input.a.x))), !func_1(-384f, vec2<f32>(677f, -152f)).d.x)), func_4(func_2(abs(-vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), true), Struct_2(func_1(_wgslsmith_f_op_f32(664f + -993f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1643f, -1000f))).d.www, -(~2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(677f, 1000f, -1000f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1232f, -1312f, 1578f)))), func_1(_wgslsmith_f_op_f32(-445f + -1000f), vec2<f32>(-1135f, -518f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -781f)))), ~_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x) | vec2<i32>(1i, 37106i))));
}

