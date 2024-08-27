struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(31323i, -37633i, 22549i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = vec3<i32>(~(-_wgslsmith_sub_i32(-40691i, arg_0 >> (46024u % 32u))), -56313i, arg_0);
    global0 = u_input.a;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-152f, 1426f, 1129f)) + vec3<f32>(-1292f, -756f, -1350f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 963f, -595f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1478f, 156f, -679f))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1982f, 825f, 462f)) * vec3<f32>(391f, -121f, 1710f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-510f)), _wgslsmith_f_op_f32(f32(-1f) * -1838f), _wgslsmith_f_op_f32(-385f + -1153f))))));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -777f), 671f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)) + _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -183f)))), 1410f), -233f);
    var var_2 = (38298u < _wgslsmith_dot_vec2_u32(~(~vec2<u32>(32121u, 1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(65700u, 17838u), vec2<u32>(4294967295u, 18602u)), 0u))) & any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true)) | all(vec4<bool>(true, true, true, true))));
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> vec3<i32> {
    global0 = abs(vec3<i32>(reverseBits(26020i), global0.x, u_input.b));
    var var_0 = -u_input.a.x;
    let var_1 = arg_1;
    var var_2 = abs(~(max(vec3<u32>(arg_3, arg_3, 1u), vec3<u32>(0u, 61118u, arg_3) << (vec3<u32>(arg_3, arg_3, arg_3) % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(0u, 0u, 1u)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_add_i32(abs(func_3(u_input.a.x)), u_input.a.x);
    return ~vec3<i32>(global0.x, _wgslsmith_mult_i32(global0.x, u_input.b), firstTrailingBit(firstTrailingBit(u_input.a.x)) & select(1i, ~(-26268i), true));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = global0.x;
    global0 = _wgslsmith_mult_vec3_i32(-select(u_input.a, func_2(1812f, Struct_2(arg_2.a, arg_3), -254f, 7726u), arg_0.b.x && true) >> (vec3<u32>(17890u, ~0u, select(45093u, ~1u, true)) % vec3<u32>(32u)), u_input.a);
    global0 = _wgslsmith_sub_vec3_i32(-firstLeadingBit(select(~vec3<i32>(-16689i, arg_1.x, u_input.b), -u_input.a, !arg_0.a.x)), (vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.b, global0.x)) | vec3<i32>(global0.x, ~u_input.b, _wgslsmith_sub_i32(abs(arg_1.x), -u_input.a.x)));
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(func_2(_wgslsmith_f_op_f32(-arg_3), arg_2, arg_3, 24675u).x, 16453i) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, 0u), 1u), 1u) % 32u), 1i, _wgslsmith_mult_i32(i32(-1i) * -arg_1.x, global0.x), _wgslsmith_dot_vec4_i32(~select(min(vec4<i32>(u_input.a.x, -1i, arg_1.x, 0i), vec4<i32>(-1i, 48200i, -44063i, 3679i)), ~vec4<i32>(arg_1.x, 2147483647i, global0.x, global0.x), arg_0.a), _wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, global0.x, u_input.a.x, arg_1.x), ~(-vec4<i32>(u_input.a.x, -2147483647i, u_input.b, arg_1.x)), -vec4<i32>(1i, 28551i, global0.x, u_input.a.x) << (vec4<u32>(4294967295u, 4294967295u, 39876u, 4684u) % vec4<u32>(32u)))));
    let var_2 = arg_0.a.zzy;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (vec3<i32>(firstTrailingBit(4926i) << (1222u % 32u), -func_1(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, true)), u_input.a, Struct_2(vec3<f32>(-1000f, 1042f, -742f), 1000f), -453f), -30887i) | u_input.a) << (countOneBits(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u));
    global0 = u_input.a;
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1113f * 456f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -101f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1018f, -971f, 1604f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(856f, -1558f, -1131f) - vec3<f32>(1000f, 562f, -1227f))))))), -440f);
    let var_1 = Struct_2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - -218f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(380f * var_0.a.x) + _wgslsmith_f_op_f32(select(1663f, var_0.b, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.a.x))))))));
    var var_2 = Struct_1(select(vec4<bool>(any(vec3<bool>(false, false, false)), all(vec4<bool>(false, true, true, true)), true, false), vec4<bool>(true, true, true, true), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), !(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(false, false, false))));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) - _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(floor(316f))))), abs(14040u), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, global0.x), _wgslsmith_mod_i32(-10936i, abs(u_input.b))));
}

