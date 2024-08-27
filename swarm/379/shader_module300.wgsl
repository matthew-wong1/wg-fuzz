struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec4<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> u32 {
    return ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_2.a, 0u, _wgslsmith_sub_u32(50244u, _wgslsmith_clamp_u32(29252u, 1u, arg_2.a))), 14374u);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, 288f)) + -836f))));
    var var_1 = select(select(vec2<bool>(false, false), select(vec2<bool>(false, any(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), true), vec2<bool>(all(vec2<bool>(false, false)), (u_input.b.x << (41707u % 32u)) != 44753i)), vec2<bool>(true, true), !(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)))));
    let var_2 = select(select(!vec4<bool>(var_1.x, all(vec2<bool>(var_1.x, false)), true, any(vec3<bool>(true, false, var_1.x))), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, u_input.b.x >= ~u_input.a, _wgslsmith_f_op_f32(ceil(1181f)) < _wgslsmith_f_op_f32(ceil(-177f)))), !vec4<bool>(!var_1.x, var_1.x, var_1.x, true), var_1.x);
    let var_3 = ~(~1u) >= (1u >> (_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_clamp_u32(1u, 1u, 8949u)), 4294967295u, 1u) % 32u));
    var_0 = global1.x;
    return select(select(select(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, false), var_3), !var_2.yzz, all(var_2.yw)), var_2.yzw, var_2.yzw), vec3<bool>(u_input.a < 0i, !any(var_2.zy), !(any(vec2<bool>(true, true)) | true)), select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, var_1.x, var_2.x), vec3<bool>(true, true, var_1.x), var_1.x), all(select(vec2<bool>(var_1.x, true), var_2.xz, true))), var_2.zxx, select(!var_2.yww, select(select(var_2.yzy, vec3<bool>(false, false, var_2.x), false), select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_2.x, true, var_1.x), var_1.x), all(vec3<bool>(true, var_3, true))), !var_2.xxy)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_0.x;
    var_0 = -13546i;
    let var_1 = u_input.a;
    global0 = -2147483647i;
    var var_2 = !vec4<bool>(any(func_3().xx), all(select(!vec4<bool>(false, true, arg_3.x, false), vec4<bool>(arg_3.x, false, true, false), select(vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, false, arg_3.x, false), arg_3.x))), !(arg_3.x || arg_3.x) != (-1388f > global1.x), false);
    return arg_2.x <= _wgslsmith_mult_u32(arg_2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2, arg_2), firstTrailingBit(vec4<u32>(1u, arg_2.x, 4294967295u, 4547u))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = 59336i;
    let var_1 = select(26214u, func_2(~(2147483647i & (u_input.a & arg_2.x)), 2147483647i, arg_1, -2147483647i), func_4(_wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(-3318i, 31919i, 0i, u_input.a)) & -_wgslsmith_mult_vec4_i32(arg_2, arg_2), arg_2.wwz, ~firstLeadingBit(~vec4<u32>(1u, arg_1.a, arg_1.a, arg_1.a)), !func_3()));
    global0 = ~1i;
    var var_2 = Struct_2(_wgslsmith_mult_vec3_i32(arg_2.yww, select(abs(arg_2.wzw) | vec3<i32>(0i, 23227i, u_input.b.x), _wgslsmith_sub_vec3_i32(arg_2.yzz, max(vec3<i32>(0i, -39650i, 2147483647i), arg_2.yzy)), any(!arg_0))), global1.yz);
    return Struct_2(vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(select(~arg_2.xwx, vec3<i32>(-15401i, -1i, -8344i), true), vec3<i32>(-10333i, -1i << (1u % 32u), arg_2.x)), u_input.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -167f), global1.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_3 {
    global0 = select(arg_0.a.x, u_input.b.x, true);
    var var_0 = select(vec3<bool>(!any(vec4<bool>(true, true, true, true)), false, select(arg_3.x > arg_3.x, 9613i >= arg_0.a.x, false)), select(select(vec3<bool>(true, true, any(vec2<bool>(false, false))), vec3<bool>(all(vec3<bool>(true, false, true)), true, true), func_3()), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true), func_3()), true), (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1191f)), arg_3.x)) > global1.x) && (-687f >= _wgslsmith_f_op_f32(select(1604f, 1307f, func_3().x))));
    var var_1 = vec4<i32>(-16798i, reverseBits(u_input.b.x), 2147483647i, u_input.a);
    var var_2 = Struct_3(vec2<u32>(countOneBits(1u), arg_2.a), -2567i, 0u, arg_3, !(var_1.x >= -2147483647i));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_3 + _wgslsmith_f_op_vec4_f32(arg_3 + arg_3))));
    return Struct_3(_wgslsmith_clamp_vec2_u32((~vec2<u32>(arg_1.a, 46157u) >> (abs(vec2<u32>(var_2.c, var_2.c)) % vec2<u32>(32u))) & vec2<u32>(~21095u, arg_2.a >> (arg_1.a % 32u)), firstTrailingBit(abs(~vec2<u32>(arg_2.a, arg_1.a))), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), var_2.a))), var_2.b, ~(~0u), _wgslsmith_f_op_vec4_f32(abs(arg_3)), false);
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_3.d)) + _wgslsmith_f_op_vec4_f32(abs(arg_3.d))))));
    var var_0 = Struct_1(arg_3.c);
    let var_1 = _wgslsmith_clamp_i32(-34848i, func_5(Struct_2(-vec3<i32>(u_input.a, -16620i, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.d.x, -2122f)), _wgslsmith_f_op_f32(-1979f - -605f))), Struct_1(~(arg_1.x >> (4294967295u % 32u))), Struct_1(43074u), _wgslsmith_f_op_vec4_f32(-arg_2.d)).b, _wgslsmith_add_i32(-1i, ~arg_3.b << (max(firstLeadingBit(17592u), _wgslsmith_mult_u32(26210u, arg_3.a.x)) % 32u)));
    let var_2 = Struct_1(arg_2.a.x);
    var var_3 = Struct_2(max(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-37219i, arg_2.b, u_input.b.x), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.b, 1i, var_1), vec3<i32>(arg_3.b, 2147483647i, u_input.b.x), vec3<i32>(u_input.a, -55175i, arg_3.b)), ~(-vec3<i32>(42598i, arg_2.b, arg_3.b))), firstTrailingBit(min(vec3<i32>(arg_3.b, var_1, 1i), vec3<i32>(arg_2.b, 0i, u_input.b.x))) & ~(~vec3<i32>(0i, -56403i, -30554i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.d.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-2155f, arg_3.d.x))))));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1000f)), _wgslsmith_f_op_f32(func_6(all(vec4<bool>(false, false, false, true)) && any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), firstLeadingBit(vec2<u32>(abs(1u), 72560u)), func_5(func_1(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(12632u), vec4<i32>(-47985i, 1i, 5782i, u_input.b.x)), Struct_1(1u), Struct_1(50249u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(447f, -585f, 742f, -253f) - vec4<f32>(global1.x, global1.x, -2044f, -1568f))))), func_5(Struct_2(-vec3<i32>(u_input.b.x, -1232i, 10108i), global1.xy), Struct_1(4294967295u), Struct_1(_wgslsmith_mod_u32(35212u, 1u)), vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), func_1(vec2<bool>(true, true), Struct_1(4263u), vec4<i32>(u_input.a, -33179i, u_input.a, u_input.b.x)).b.x, _wgslsmith_f_op_f32(global1.x + 1000f), global1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -279f), 734f);
    global0 = ~(u_input.b.x | u_input.a);
    var var_0 = true;
    global0 = ~abs(abs(1i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(704f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(min(-980f, global1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(-47107i, u_input.a, u_input.b.x, -2147483647i) | vec4<i32>(2147483647i, -9250i, u_input.b.x, u_input.b.x)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.b.x, -2702i)), vec4<i32>(-31505i, u_input.a, u_input.a, u_input.a) & vec4<i32>(-68713i, u_input.b.x, 2147483647i, -50593i), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), vec2<f32>(1423f, global1.x), 1u, ~vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(13932u, 27827u, 0u, 1u), vec4<u32>(0u, 20091u, 0u, 13862u))), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10311u, 4294967295u, 4294967295u), vec4<u32>(30569u, 35866u, 13681u, 6982u))), select(0u, _wgslsmith_clamp_u32(84808u, 37990u, 4294967295u), false)), 0u);
}

