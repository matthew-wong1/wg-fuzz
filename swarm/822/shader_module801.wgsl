struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = -908f;
    return u_input.a;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.a;
    let var_1 = i32(-1i) * -func_3();
    let var_2 = i32(-1i) * -func_3();
    var var_3 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(func_3(), -var_2, -16418i, firstLeadingBit(-28512i)), select(vec4<i32>(var_2, 2147483647i, var_2, -2147483647i), ~vec4<i32>(-25198i, -1i, u_input.a, var_2), vec4<bool>(false, arg_2.a.x, arg_0.b, true)))), Struct_1(abs(min(vec4<i32>(28178i, var_1, var_1, 0i), min(vec4<i32>(-2147483647i, u_input.a, -2147483647i, -1i), vec4<i32>(42816i, arg_0.a.x, -8612i, 2147483647i))))));
    var_3 = Struct_2(Struct_1(var_3.a.a << (_wgslsmith_div_vec4_u32(select(arg_1, vec4<u32>(arg_1.x, 1u, arg_1.x, arg_1.x), vec4<bool>(var_0.x, false, true, false)), firstLeadingBit(vec4<u32>(43007u, arg_1.x, 0u, arg_1.x))) % vec4<u32>(32u))), Struct_1(vec4<i32>(_wgslsmith_sub_i32(arg_0.a.x, arg_0.a.x), var_2, var_2, max(28273i, 11689i)) | max(_wgslsmith_add_vec4_i32(vec4<i32>(19794i, u_input.a, var_1, u_input.a), var_3.b.a), vec4<i32>(u_input.a, arg_0.a.x, 1i, var_3.b.a.x))));
    return arg_2.b.x;
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1007f, -1134f, -1000f, 155f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(213f)), _wgslsmith_div_f32(439f, -1328f), _wgslsmith_f_op_f32(1206f * 1285f), _wgslsmith_f_op_f32(1291f + 1117f))))));
    var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(func_4(Struct_4(vec3<i32>(5631i, func_3(), _wgslsmith_sub_i32(1i, 2147483647i)), any(vec2<bool>(true, false)) && (false || arg_0.b)), firstTrailingBit(vec4<u32>(~0u, 1u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8946u, 1u)))), Struct_3(select(!vec3<bool>(true, false, arg_0.b), select(vec3<bool>(arg_0.b, true, false), vec3<bool>(false, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), !vec3<bool>(false, false, arg_0.b)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1174f, -529f)), vec2<f32>(-683f, var_0.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) * -764f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(104f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + -725f)))))));
    let var_1 = firstTrailingBit(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18335u, 0u, 4294967295u), ~vec4<u32>(28263u, 4294967295u, 1u, 22200u)), ~1u, countOneBits(~(~0u)), ~57734u));
    let var_2 = Struct_3(!vec3<bool>(!arg_0.b || arg_0.b, arg_0.b | true, !arg_0.b || true), var_0.zz);
    var_0 = vec4<f32>(971f, 824f, var_0.x, var_2.b.x);
    return _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(159f))) - -479f), var_0.x)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec3<u32>) -> vec3<f32> {
    var var_0 = arg_1.x;
    var var_1 = all(vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x));
    let var_2 = vec3<bool>(true || arg_2.a.x, any(select(select(!arg_2.a, arg_2.a, any(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x))), !arg_2.a, vec3<bool>(true, true, true))), arg_2.a.x);
    let var_3 = arg_2;
    var var_4 = Struct_4(-_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(_wgslsmith_add_i32(u_input.a, -1469i), u_input.a, u_input.a)), !select(true, all(var_3.a) | true, false));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x * 1005f), _wgslsmith_f_op_f32(select(1000f, -712f, arg_2.a.x || var_3.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(func_2(Struct_4(var_4.a, !(var_3.a.x & arg_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = 20562i;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(1000f, 952f, -1419f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(1u, vec3<u32>(var_0, var_0, var_0), Struct_3(vec3<bool>(true, true, false), vec2<f32>(-1046f, -490f)), vec3<u32>(0u, 1u, 1u))))))));
    var var_3 = all(select(!vec2<bool>(true, all(vec3<bool>(false, true, false))), vec2<bool>(select(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true))), true), false));
    var_3 = u_input.a > select(_wgslsmith_clamp_i32(-22719i, select(i32(-1i) * -29637i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 21633i), vec3<i32>(u_input.a, 12751i, u_input.a)), true), firstTrailingBit(0i)), _wgslsmith_sub_i32(~firstTrailingBit(u_input.a), ~(~u_input.a)), false);
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_vec3_f32(func_1(4294967295u, vec3<u32>(4294967295u, 1u, 7025u), Struct_3(vec3<bool>(false, true, false), var_2.zy), vec3<u32>(var_0, 1u, var_0))).x, _wgslsmith_f_op_f32(floor(var_2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(705f, 314f, var_2.x))))) - vec3<f32>(_wgslsmith_div_f32(var_2.x, 578f), 1293f, _wgslsmith_f_op_f32(abs(var_2.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(min(-1682f, 479f)), _wgslsmith_f_op_vec3_f32(func_1(var_0, vec3<u32>(75784u, var_0, var_0), Struct_3(vec3<bool>(true, false, false), var_2.yy), vec3<u32>(var_0, var_0, var_0))).x)))), all(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))))));
    let var_4 = Struct_4(~(-countOneBits(vec3<i32>(u_input.a, u_input.a, 55222i)) >> (~(~vec3<u32>(var_0, var_0, 0u)) % vec3<u32>(32u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.yx, vec2<f32>(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)), var_2.x))) - _wgslsmith_f_op_vec3_f32(func_1(~_wgslsmith_mult_u32(0u, var_0), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 46097u, 55957u), vec3<u32>(0u, var_0, var_0)), vec3<u32>(var_0, var_0, 48137u)), Struct_3(!vec3<bool>(var_4.b, false, var_4.b), var_2.zy), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, var_0, 19889u)))).xy), ~_wgslsmith_add_vec4_u32(select(max(vec4<u32>(var_0, 1u, 1u, var_0), vec4<u32>(var_0, var_0, 1u, 19521u)), select(vec4<u32>(var_0, 4294967295u, 18939u, 4294967295u), vec4<u32>(var_0, var_0, 102747u, 44123u), vec4<bool>(var_4.b, var_4.b, false, var_4.b)), vec4<bool>(var_4.b, var_4.b, true, var_4.b)), abs(abs(vec4<u32>(var_0, var_0, var_0, var_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1180f * var_2.x)), _wgslsmith_f_op_f32(-var_2.x), any(vec4<bool>(true, true, false, true)))))), vec3<u32>(var_0, ~1u, var_0), select(abs(abs(vec2<u32>(3435u, 4294967295u))), _wgslsmith_mult_vec2_u32(min(abs(vec2<u32>(var_0, var_0)), ~vec2<u32>(4756u, var_0)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 77463u), vec3<u32>(var_0, var_0, var_0)), _wgslsmith_mod_u32(var_0, var_0))), var_4.b));
}

