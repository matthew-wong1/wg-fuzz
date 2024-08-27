struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(select(countOneBits(abs(-vec2<i32>(arg_1.a, arg_1.a))), ~(-(vec2<i32>(u_input.a, 2147483647i) >> (arg_0.xx % vec2<u32>(32u)))), !(select(-2147483647i, u_input.a, false) == -28135i)), select(~select(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(arg_1.c, u_input.a)), abs(vec2<i32>(u_input.a, -61503i)), arg_1.b.xx), select((vec2<i32>(1i, -32836i) & vec2<i32>(u_input.a, 18482i)) ^ vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_1.a ^ 0i, _wgslsmith_div_i32(arg_1.c, arg_1.c)), arg_1.b.x & all(vec4<bool>(true, false, arg_1.b.x, false))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8963u, arg_2.x), vec2<u32>(1985u, 35550u)), arg_2.x) <= 0u), _wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(i32(-1i) * -7268i), 1i), -firstLeadingBit(-vec2<i32>(arg_1.a, arg_1.c))));
    var var_1 = vec4<u32>(arg_2.x, arg_0.x, 17945u, arg_0.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(652f * 2339f)), arg_1.d.x, arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(867f, -699f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-2138f, arg_1.d.x)), _wgslsmith_f_op_f32(max(-104f, 2318f)), -355f, -787f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, arg_1.d.x, 601f, arg_1.d.x) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-953f, -412f, arg_1.d.x, -782f))))))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(1u, 9102u, 3789u, 4294967295u))), min(~vec4<u32>(4294967295u, 37416u, 2599u, 0u), vec4<u32>(4294967295u, 1u, 28420u, 0u))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, -48407i), _wgslsmith_div_i32(24637i, u_input.a)), vec4<bool>(true, all(vec4<bool>(false, true, false, true)), false, true), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-240f, -701f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(827f, 610f) * vec2<f32>(379f, 191f)))), ~vec2<u32>(1u, 1u))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(572f, 1741f, 484f, -509f), vec4<f32>(329f, -1000f, 2040f, 1157f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(558f, -947f, -631f, 179f))) - vec4<f32>(_wgslsmith_f_op_f32(round(223f)), -968f, _wgslsmith_f_op_f32(step(1036f, -1503f)), -1116f))));
    let var_1 = _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a & u_input.a, -6234i), vec2<i32>(u_input.a, u_input.a) >> (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), abs(min(vec2<i32>(u_input.a, -2147483647i), -vec2<i32>(u_input.a, -2147483647i))) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(34932i, 25163i), vec2<i32>(-41559i, 2147483647i))), select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(vec2<i32>(34290i, -2147483647i)), vec2<bool>(true, true)), select(select(vec2<i32>(-18188i, -21238i), vec2<i32>(u_input.a, 1i), true), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-32024i, u_input.a)), select(false, true, true))));
    let var_2 = Struct_1(firstTrailingBit(countOneBits(~u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 50052i, 14543i), vec4<i32>(0i, 2147483647i, u_input.a, -2147483647i)))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)), false), ~(-1i) ^ var_1.x, _wgslsmith_f_op_vec2_f32(-var_0.zy));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(round(-1000f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.d.x + var_2.d.x))), var_0.x, var_2.d.x, _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(1u, 1u, 1u, 1u), Struct_1(18160i, var_2.b, 0i, vec2<f32>(721f, -1263f)), abs(vec2<u32>(4294967295u, 99548u)))).x))));
    let var_3 = Struct_2(var_2.a);
    return var_2.b.x;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_4(true);
    let var_1 = Struct_2(firstLeadingBit(-((arg_2 << (41100u % 32u)) ^ -16783i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(347f + _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(0u, 4294967295u, 0u, 1u), arg_1, vec2<u32>(36714u, 243u))).x), arg_1.d.x)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f + arg_1.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-358f)), arg_1.d.x)));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -1i, select(select(~arg_1.a, 2147483647i, arg_0.a), _wgslsmith_sub_i32(~1i, select(var_1.a, 33116i, false)), !var_0.a)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 2147483647i), vec3<i32>(-3042i, 7022i, -2147483647i)) & _wgslsmith_mod_i32(u_input.a, -1i)), -2147483647i));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, _wgslsmith_f_op_vec4_f32(func_3(~(~vec4<u32>(2359u, 96720u, 0u, 7052u)), arg_1, ~vec2<u32>(3207u, 5893u))).x, 644f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), 323f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.d.x - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - arg_1.d.x))))));
    return Struct_3(reverseBits(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, var_1.a), vec3<i32>(28480i, -68111i, -43733i)), max(arg_2, select(-13127i, -1i, var_0.a)), -14393i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -49333i, arg_2), select(vec3<i32>(14188i, arg_1.c, arg_2), vec3<i32>(arg_1.a, var_1.a, u_input.a), vec3<bool>(var_0.a, var_0.a, false))))), Struct_1(arg_1.a, select(select(arg_1.b, arg_1.b, arg_1.b.x), arg_1.b, !select(arg_0.a, false, arg_1.b.x)), _wgslsmith_clamp_i32(u_input.a, min(_wgslsmith_mult_i32(-2147483647i, u_input.a), 2147483647i), 6599i), var_4.yy), _wgslsmith_add_i32(var_1.a << (1u % 32u), abs(firstLeadingBit(min(u_input.a, u_input.a)))), var_1);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_sub_i32(~10723i, u_input.a);
    var var_1 = Struct_2(var_0);
    let var_2 = func_4(arg_0, Struct_1(1i, !vec4<bool>(false, !arg_1.x, func_2(), false), -_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 5941i, -1i), vec3<i32>(var_0, var_1.a, 0i))), vec2<f32>(1f, 1f)), _wgslsmith_add_i32(~0i, reverseBits(6636i)));
    var var_3 = var_2.b.b.x;
    var_1 = func_4(Struct_4(arg_0.a), var_2.b, 24605i).d;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(false);
    var var_1 = Struct_4(-1i != max(i32(-1i) * -u_input.a, 1i));
    var_1 = Struct_4(var_1.a);
    var_1 = Struct_4(select(select(any(!vec2<bool>(var_1.a, true)), !var_1.a, all(vec2<bool>(true, var_1.a)) | any(vec2<bool>(false, var_0.a))), all(vec4<bool>(!var_1.a, var_0.a, func_1(var_0, vec3<bool>(false, var_0.a, false)), true)), true));
    var var_2 = var_0;
    var var_3 = Struct_1(u_input.a, !vec4<bool>(all(vec2<bool>(true, true)) | true, any(!vec3<bool>(true, true, var_1.a)), var_2.a, true), ~_wgslsmith_mod_i32(~_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-3032f, 1851f), vec2<f32>(-411f, -214f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1099f, -110f) * vec2<f32>(1098f, 286f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1325f), vec2<f32>(-1143f, -166f), vec2<bool>(var_0.a, var_1.a)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-655f, -1739f) + vec2<f32>(-478f, -818f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1320f) + vec2<f32>(-1021f, -766f))))), !select(!vec2<bool>(var_1.a, var_0.a), func_4(Struct_4(true), Struct_1(u_input.a, vec4<bool>(var_2.a, true, true, var_1.a), -21396i, vec2<f32>(654f, -1067f)), u_input.a).b.b.ww, false))));
    var_1 = Struct_4(all(var_3.b));
    var_1 = var_0;
    var_1 = Struct_4(-1460f >= var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.d), vec3<u32>(~26235u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(0u, 0u), vec2<u32>(11672u, 0u)), vec2<u32>(26450u, 1u), vec2<u32>(0u, 70930u)), ~select(vec2<u32>(4294967295u, 22893u), vec2<u32>(4294967295u, 0u), vec2<bool>(var_2.a, var_3.b.x))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(32506u, 1u, 4294967295u), countOneBits(vec3<u32>(1u, 1u, 4294967295u))), 4294967295u, 3844u)));
}

