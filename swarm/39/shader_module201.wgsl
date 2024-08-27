struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 4294967295u;

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = !select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    let var_1 = Struct_2(countOneBits(~vec3<u32>(~1u, ~1u, 4294967295u)), Struct_1(select(u_input.a, ~(i32(-1i) * -1i), true || var_0.x), ~min(_wgslsmith_sub_u32(4294967295u, 0u), ~40068u), min(max(vec3<i32>(-59860i, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, 19377u, 66039u) % vec3<u32>(32u)), min(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(-1i, 25825i, 2147483647i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -42908i, u_input.a), vec4<i32>(-2147483647i, u_input.a, 6981i, 6927i)), select(-14308i, u_input.a, true), 17889i)), ~22807u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1202f, 1000f, -1507f) * vec3<f32>(1000f, 402f, -2378f)) - vec3<f32>(838f, -1000f, 879f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1285f, 454f, 986f)))));
    var_0 = !vec4<bool>(var_0.x, all(var_0.yyx), !var_0.x, true);
    var var_2 = !vec3<bool>(!all(select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), true, true);
    let var_3 = u_input.a;
    return any(vec2<bool>(!(!all(vec2<bool>(var_2.x, var_2.x))), any(!vec4<bool>(false, var_2.x, true, false))));
}

fn func_2() -> Struct_1 {
    global2 = select(!func_3(), any(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), true)), true);
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-953f))));
    global2 = !any(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), (all(vec3<bool>(true, false, true)) && true) || (_wgslsmith_mult_i32(u_input.a, u_input.a) == 0i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1240f)), var_0), _wgslsmith_f_op_f32(abs(-128f)), _wgslsmith_f_op_f32(-174f + _wgslsmith_f_op_f32(-1258f * -357f))))));
    return Struct_1(u_input.a, ~select(_wgslsmith_add_u32(9789u, 84221u), 37498u, any(vec3<bool>(false, false, false))) | 1u, vec3<i32>(_wgslsmith_add_i32(u_input.a, 1i), 2600i, ~(~(-1866i))), 39732u << (~firstTrailingBit(~97383u) % 32u), vec3<f32>(-791f, 1019f, var_2.x));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    global0 = 28047u;
    global0 = 0u;
    var var_0 = -arg_0;
    let var_1 = func_2();
    let var_2 = !func_3();
    return Struct_1(18823i, ~(~1u), var_1.c, ~max(54048u, (var_1.d | 0u) << (countOneBits(var_1.d) % 32u)), vec3<f32>(var_1.e.x, 830f, arg_1.x));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> Struct_1 {
    global2 = arg_1;
    let var_0 = -min(vec3<i32>(arg_0.b.a, -1i, -_wgslsmith_mult_i32(arg_0.b.a, -13608i)), _wgslsmith_mult_vec3_i32(~arg_0.b.c, abs(reverseBits(vec3<i32>(-28813i, u_input.a, -1i)))));
    var var_1 = vec4<u32>(59979u, arg_0.b.d, arg_2, 1102u);
    global2 = !all(!select(!vec4<bool>(false, true, true, arg_1), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, true), arg_1), vec4<bool>(false, true, false, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.e.x, 1164f, 1218f, arg_0.b.e.x)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(460f)), -1064f, -152f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(718f, arg_0.b.e.x, arg_0.b.e.x, arg_0.b.e.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.e.x, -1000f, arg_0.b.e.x, -1000f), vec4<f32>(arg_0.b.e.x, 1000f, 1057f, arg_0.b.e.x), arg_1))))))));
    return func_2();
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1.c.x;
    global1 = 4294967295u;
    let var_1 = Struct_1(~reverseBits(i32(-1i) * -14599i), abs(4294967295u), arg_1.c, 29455u, vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 336f)))), arg_1.e.x));
    var var_2 = abs(~reverseBits(~_wgslsmith_div_u32(arg_1.b, 0u)));
    global2 = !any(vec2<bool>(true, true));
    return Struct_2(vec3<u32>(~55431u, countOneBits(~arg_1.b), ~_wgslsmith_add_u32(~49189u, var_1.d | 24419u)), func_4(Struct_2((vec3<u32>(1u, var_1.b, 1u) << (vec3<u32>(var_1.b, 126471u, 17555u) % vec3<u32>(32u))) | vec3<u32>(arg_1.d, 0u, 0u), func_2()), !any(vec3<bool>(false, true, true)), ~var_1.b));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec3_i32(arg_1.b.c, ~(~func_2().c));
    let var_1 = abs(vec2<u32>(_wgslsmith_div_u32(arg_1.b.d, ~1u), 0u)) ^ reverseBits(arg_1.a.yy);
    var var_2 = func_2().a;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u, 1u, 1u, 1u);
    var var_1 = -196f;
    var var_2 = func_6(-61705i | u_input.a, func_5(2232f, func_4(Struct_2(~var_0.www, func_1(u_input.a, vec4<f32>(1045f, -1000f, 388f, -301f))), select(false, any(vec3<bool>(true, true, true)), true), ~(~1u))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(144f, -1000f, 1000f), func_4(Struct_2(var_0.ywz, Struct_1(u_input.a, var_0.x, vec3<i32>(-65610i, u_input.a, u_input.a), 4294967295u, vec3<f32>(178f, -646f, -1096f))), true, 4570u).e)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.e.x, var_2.b.e.x, -1369f, var_2.b.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-471f, var_2.b.e.x, -827f, var_2.b.e.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1181f, -529f, -101f, var_2.b.e.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.e.x, 859f, -314f, -770f)))))));
    var var_4 = func_5(_wgslsmith_f_op_f32(-func_1(1i << (countOneBits(4520u) % 32u), vec4<f32>(-2038f, func_6(0i, Struct_2(var_2.a, var_2.b), vec2<bool>(true, false), var_3.zyz).b.e.x, _wgslsmith_f_op_f32(-419f + 354f), var_2.b.e.x)).e.x), var_2.b).a.x;
    var_2 = Struct_2(~reverseBits(~vec3<u32>(0u, var_2.a.x, var_0.x)), func_5(-228f, var_2.b).b);
    let var_5 = true;
    var var_6 = true;
    let var_7 = ~vec3<i32>(~(~u_input.a), -u_input.a, var_2.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, var_2.a.xy | _wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_2.a.x, var_2.b.b)), ~var_2.a.xy | min(var_0.wz, var_2.a.zz)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~var_2.b.a, func_4(Struct_2(var_2.a, Struct_1(0i, 1u, var_7, 64601u, var_2.b.e)), var_5, 30117u).c.x, _wgslsmith_mod_i32(u_input.a, var_7.x)), ~(-24391i) >> (var_0.x % 32u), _wgslsmith_mult_i32(~80437i, max(var_7.x, 2147483647i))), -_wgslsmith_mod_i32(u_input.a >> (1u % 32u), 0i)), _wgslsmith_add_u32(~(~0u), ~(~2171u)));
}

