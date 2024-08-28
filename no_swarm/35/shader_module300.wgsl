struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1131f, -294f))), -2851f)));
    var var_1 = arg_0;
    var_1 = ~(~arg_0);
    var_1 = ~arg_0;
    var var_2 = 1i;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-794f, -1000f, var_0.a.x) + var_0.a) * _wgslsmith_f_op_vec3_f32(-var_0.a)), vec3<f32>(-1000f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(exp2(var_0.a.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1254f * 1000f), -228f, var_0.a.x) + var_0.a)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = select(select(!vec2<bool>(arg_1 <= 2147483647i, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), reverseBits(firstLeadingBit(arg_1)) >= arg_1), vec2<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false)) && true, true), vec2<bool>(~arg_1 <= (-arg_1 >> (u_input.a % 32u)), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(488f, 2070f))), _wgslsmith_f_op_f32(trunc(-955f)), -341f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1744f, -1509f)), arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(abs(~vec2<u32>(arg_0.x, u_input.a) ^ _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, 50258u), arg_0.ww)))));
    var var_3 = var_1.a.x <= var_1.a.x;
    var var_4 = -56241i;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = all(select(vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))), !all(vec4<bool>(false, true, true, false)), true), vec3<bool>(false, true, true), any(vec4<bool>(true, true, true, true))));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-188f, var_1.a.x, arg_1.a.x, arg_0.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1634f, -1509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f)), 1447f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - var_1.a.x), 497f, func_2(vec4<u32>(u_input.a, 35990u, u_input.a, u_input.a), 2147483647i, vec2<f32>(arg_1.a.x, 199f)).a.x, _wgslsmith_f_op_f32(ceil(var_1.a.x))))));
    var_0 = false;
    let var_3 = ~select(~(~countOneBits(vec4<u32>(u_input.a, 8236u, u_input.a, u_input.a))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u) & vec4<u32>(u_input.a, 85317u, 58894u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(56241u, u_input.a, 31936u, 40262u), vec4<u32>(0u, 0u, u_input.a, 0u))), (all(vec3<bool>(true, true, false)) & true) | (max(26400u, u_input.a) > countOneBits(15914u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(62284u, var_3.x))).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), -719f) - _wgslsmith_f_op_vec3_f32(-var_2.xyy)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = !(!vec2<bool>(true && arg_2.x, !arg_2.x));
    var_0 = !(!(!(!select(arg_2.yz, vec2<bool>(false, var_0.x), arg_2.xx))));
    var var_1 = true;
    var var_2 = vec3<i32>(_wgslsmith_add_i32(select(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -12757i, arg_1), vec3<i32>(arg_1, 44847i, arg_1)), min(vec3<i32>(53849i, 0i, arg_1), vec3<i32>(arg_1, 1i, arg_1))), countOneBits(-1i >> (1u % 32u)), true), (-51338i | max(arg_1, 21302i)) | abs(arg_1)), min(-2147483647i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, 0i, -4224i), vec4<i32>(-1i, -45624i, 2147483647i, arg_1))), arg_1);
    let var_3 = arg_0;
    return var_3;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f))));
    var var_3 = arg_1;
    let var_4 = min(vec3<u32>(countOneBits(~(~0u)), u_input.a >> (~select(u_input.a, arg_0, false) % 32u), ~abs(4294967295u)), firstLeadingBit(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 37308u, 36613u), vec3<u32>(1u, u_input.a, 43169u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_0, u_input.a), vec3<u32>(14868u, arg_0, u_input.a)))));
    return func_5(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2.a, var_1.a, vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2, -881f, -761f), var_3.a)))))), 30800i, !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(false, any(vec4<bool>(true, true, false, true)), true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = func_6(~u_input.a, func_5(func_4(func_2(vec4<u32>(15374u, u_input.a, 0u, 7229u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 0i, -2147483647i), vec4<i32>(-7794i, -35130i, 0i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(911f, -1170f) - vec2<f32>(-313f, 2113f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, 1443f, 919f)))), -1i, vec3<bool>(true, true, true)), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(479f, -135f, 702f) * vec3<f32>(528f, -289f, 734f)))), func_4(Struct_1(vec3<f32>(544f, 1351f, -475f)), func_2(vec4<u32>(arg_0.x, 1u, 6600u, 4294967295u), -34250i << (u_input.a % 32u), vec2<f32>(1194f, -987f)))));
    var_0 = func_5(func_6(35161u, func_5(func_6(_wgslsmith_clamp_u32(u_input.a, 7130u, arg_0.x), Struct_1(vec3<f32>(-603f, var_0.a.x, -1212f)), Struct_1(var_0.a)), firstTrailingBit(-32735i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), Struct_1(var_0.a)), 1i, !vec3<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), any(vec2<bool>(true, true))));
    let var_1 = func_2(_wgslsmith_mult_vec4_u32(~(~arg_0), arg_0), countOneBits(reverseBits(1i)), vec2<f32>(var_0.a.x, 315f));
    var_0 = func_4(func_4(func_2(vec4<u32>(_wgslsmith_div_u32(66844u, u_input.a), _wgslsmith_sub_u32(18929u, 1u), 1u, ~u_input.a), _wgslsmith_add_i32(1i, -1i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1732f, var_0.a.x), vec2<f32>(var_1.a.x, 617f))))), var_1), Struct_1(vec3<f32>(-657f, _wgslsmith_f_op_f32(abs(1369f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))))));
    var_0 = Struct_1(var_0.a);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(8917u, u_input.a, 1u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(10813u, u_input.a, 27778u, u_input.a))), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(13843u, u_input.a, u_input.a, 0u)) ^ vec4<u32>(u_input.a, 53541u, 68349u, u_input.a))));
    var var_1 = var_0.a.yz;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1916f * var_0.a.x))) * -1248f)), var_0.a.x, -738f);
    let var_3 = !(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(all(vec4<bool>(true, false, true, true)), false, false, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), any(vec3<bool>(false, false, false)))));
    var_1 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x * -1393f)), 595f, var_2.x)), Struct_1(var_2.zzy)).a.zz;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a >> (4294967295u % 32u), _wgslsmith_clamp_i32(reverseBits(-2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-44087i, 9687i)), -select(i32(-1i) * -40580i, -39646i, any(vec3<bool>(true, var_4, true)))));
}

