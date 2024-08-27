struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_mod_i32(arg_1.a, arg_1.b.x), 1i, min(-2147483647i, -1i), -2147483647i));
    let var_1 = arg_1;
    var_0 = arg_1.a;
    var_0 = ~(_wgslsmith_add_i32(~arg_1.a, u_input.a.x) >> (0u % 32u));
    var var_2 = u_input.d;
    return 68217u;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_1(u_input.c.x, u_input.a);
    var var_1 = Struct_2(var_0, var_0);
    var var_2 = 1i;
    let var_3 = var_0.b.yww;
    var_1 = Struct_2(var_0, var_0);
    return Struct_3(Struct_2(Struct_1(1i, ~min(var_0.b, u_input.a)), var_1.b), any(select(vec2<bool>(arg_2, true), select(select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2)), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), arg_2), true), select(all(vec3<bool>(false, arg_2, arg_2)), !arg_2, true))), func_3(Struct_2(Struct_1(var_1.b.b.x, u_input.a), Struct_1(var_3.x, var_1.b.b)), Struct_1(firstLeadingBit(_wgslsmith_div_i32(var_3.x, 2147483647i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(36878i, global0.x, 1i, 7966i), var_1.a.b)), 53528u & (arg_3.x ^ ~1u)), global0.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec4_u32(min(~((vec4<u32>(0u, arg_3.c, 13310u, 1u) & vec4<u32>(arg_3.c, u_input.b.x, 4294967295u, 646u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_3.c, 0u, u_input.d.x), vec4<u32>(14469u, 8514u, u_input.d.x, arg_0.c)) % vec4<u32>(32u))), select(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<u32>(arg_3.c, arg_3.c, arg_3.c, arg_0.c)), ~(vec4<u32>(u_input.b.x, 16445u, 48388u, arg_3.c) & vec4<u32>(22824u, 24206u, 29132u, 51067u)), !vec4<bool>(false, arg_3.b, arg_3.b, arg_0.b))), ~vec4<u32>(~(~arg_0.c), 39392u, 78960u, 4294967295u));
    global0 = arg_0.a.a.b.xww;
    let var_1 = Struct_3(arg_0.a, !(541f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1034f - arg_2.x) - arg_2.x)), ~0u, ~(i32(-1i) * -41160i));
    var var_2 = var_1;
    let var_3 = arg_0.b;
    return !vec2<bool>(var_3, !var_3);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    var var_0 = vec4<bool>(any(!func_4(func_2(global0.x, vec4<f32>(1000f, 261f, arg_1.x, -1471f), true, vec2<u32>(u_input.b.x, u_input.b.x)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<f32>(-924f, arg_1.x), func_2(2147483647i, arg_1, true, vec2<u32>(1u, 56750u)))), true, !(!(!(arg_1.x < -1792f))), any(vec4<bool>(func_2(abs(arg_0), arg_1, arg_1.x != -2323f, u_input.d.xz).b, true, !all(vec3<bool>(true, true, true)), true | all(vec2<bool>(true, true)))));
    global0 = abs(u_input.c);
    let var_1 = func_2(~_wgslsmith_mult_i32(func_2(global0.x, vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -288f), !var_0.x, ~u_input.b).d, arg_0), arg_1, var_0.x, ~(~vec2<u32>(func_2(arg_0, vec4<f32>(1631f, -644f, 337f, -1098f), var_0.x, u_input.d.xz).c, 37032u))).a.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(arg_1.yz, vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-243f)))))))));
    global0 = select(u_input.a.xxx & ~firstLeadingBit(u_input.a.zxw), vec3<i32>(4523i, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_1.a, -93463i, 1i), ~var_1.b), u_input.c.x), !(!vec3<bool>(true, var_0.x, all(var_0.yw))));
    return -1461f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2606f;
    global0 = u_input.c;
    global0 = _wgslsmith_add_vec3_i32(-u_input.a.wwy, vec3<i32>(~(-33250i), global0.x, 2147483647i) & select(-firstTrailingBit(u_input.a.zwx), vec3<i32>(1i, -38098i, -40687i), vec3<bool>(false, any(vec2<bool>(false, true)), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(func_1(~u_input.a.x, vec4<f32>(var_0, 220f, 492f, var_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1011f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-872f, var_0, var_0), vec3<f32>(var_0, var_0, var_0), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -915f, 723f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1000f, -1000f) + vec3<f32>(121f, -1037f, 1172f)), vec3<f32>(var_0, 273f, var_0), vec3<bool>(false, false, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(403f)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0))))));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), _wgslsmith_sub_u32(u_input.b.x, max(u_input.d.x, u_input.d.x)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(select(min(~u_input.b | vec2<u32>(u_input.d.x, 27501u), _wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.d.x, 34662u), u_input.d.zz, true), vec2<u32>(u_input.b.x, u_input.d.x))), ~vec2<u32>(1u, ~16876u), vec2<bool>(true, !(1u == u_input.b.x))), var_2.x, 1830f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1162f, -207f, -1607f) - vec4<f32>(var_1.x, var_1.x, var_0, 1451f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0, var_0, -338f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_1.x, var_0), vec4<f32>(196f, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, true, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0, var_0, -1147f))) * vec4<f32>(_wgslsmith_f_op_f32(-1672f * 743f), 241f, _wgslsmith_f_op_f32(var_0 - var_1.x), var_0))), u_input.d >> (vec3<u32>(_wgslsmith_clamp_u32(~var_2.x, var_2.x, countOneBits(3969u)), u_input.b.x, u_input.b.x) % vec3<u32>(32u)));
}

