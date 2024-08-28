struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13010u;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = u_input.c.x;
    let var_0 = Struct_1(vec3<i32>(-global1.b, 0i, 18182i), u_input.b.x);
    let var_1 = vec4<bool>(true, !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)))), select(all(vec2<bool>(true, true)) | all(vec2<bool>(true, true)), any(vec3<bool>(all(vec2<bool>(true, true)), true, any(vec2<bool>(false, false)))), var_0.b <= max(countOneBits(-1i), 0i)), select(-2147483647i, 16313i, false) == 0i);
    let var_2 = u_input.d;
    global0 = ~u_input.c.x;
    return ~u_input.b.x;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = Struct_1(vec3<i32>(~(-61171i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global1.a.zx ^ global1.a.zx, vec2<i32>(arg_0.a.x, u_input.d)), _wgslsmith_mod_vec2_i32(-u_input.b, u_input.b | vec2<i32>(0i, global1.b))), -2147483647i), -28272i);
    global0 = ~(~(~45756u | u_input.c.x)) ^ min(u_input.c.x, u_input.c.x << (u_input.c.x % 32u));
    var var_0 = min(global1.a.x, arg_0.b);
    let var_1 = Struct_4(Struct_3(u_input.c, Struct_2(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(35134i, u_input.d, 72417i, -1i), vec4<i32>(10778i, arg_0.a.x, global1.b, -91862i), false), select(vec4<i32>(u_input.b.x, arg_0.a.x, 25135i, arg_0.a.x), vec4<i32>(-1i, -14542i, 2147483647i, global1.b), vec4<bool>(false, false, false, false)), vec4<i32>(2147483647i, global1.b, u_input.b.x, 35101i)), Struct_1(arg_0.a ^ arg_0.a, _wgslsmith_mult_i32(-11994i, 13239i)), arg_0), Struct_1(_wgslsmith_mult_vec3_i32(min(vec3<i32>(0i, u_input.d, arg_0.a.x), vec3<i32>(26579i, u_input.d, arg_0.a.x)), global1.a), _wgslsmith_mod_i32(global1.a.x, 1i)), func_3() << (u_input.c.x % 32u), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1585f, -135f, 767f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1809f, 653f, 535f, 214f) - vec4<f32>(-341f, 115f, -586f, 1401f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(216f, 700f, 2038f, 258f), vec4<f32>(-584f, 866f, 479f, 449f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1130f, -1015f, 723f, -933f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1222f, -2003f, -615f, -691f))))));
    let var_2 = ~(~4294967295u);
    return func_3();
}

fn func_1() -> vec4<bool> {
    var var_0 = reverseBits(0i);
    var_0 = -select(global1.b, -global1.b, select(false, select(true, true, true), false) | true);
    let var_1 = Struct_5(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), true), vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), false, true, false)), Struct_3(~vec4<u32>(u_input.c.x >> (9612u % 32u), 0u, u_input.c.x, select(47851u, 61372u, false)), Struct_2(_wgslsmith_sub_vec4_i32(-vec4<i32>(-57737i, global1.b, u_input.b.x, 9622i), abs(vec4<i32>(-1i, u_input.b.x, -1i, 21285i))), Struct_1(_wgslsmith_div_vec3_i32(global1.a, u_input.a), 1i), Struct_1(global1.a, 2147483647i)), Struct_1(vec3<i32>(func_2(Struct_1(global1.a, -57705i)), 1i, abs(global1.a.x)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global1.b, global1.a.x), vec3<i32>(global1.a.x, u_input.b.x, u_input.b.x))), ~u_input.d, false), select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(floor(-354f)) >= _wgslsmith_f_op_f32(floor(790f))), !(!all(vec2<bool>(true, false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(513f)) + _wgslsmith_f_op_f32(f32(-1f) * -1682f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(491f, -292f)), -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(376f + -1000f))), true)), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1259f, -1145f, false)), -156f, all(vec2<bool>(false, true))))))));
    var_0 = abs(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(var_1.b.b.a, vec4<i32>(u_input.a.x, u_input.d, -2147483647i, -48860i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -73003i), vec2<i32>(27248i, 23242i))) | 2147483647i);
    let var_2 = u_input.b.x;
    return !select(vec4<bool>(var_1.a.x, var_1.b.e, var_1.a.x, var_1.a.x), vec4<bool>(var_1.b.e, !var_1.a.x, var_1.b.e, true), false);
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    global0 = arg_0.b.a.x;
    var var_0 = reverseBits(arg_0.b.c.a.x) & 17697i;
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.b.b.a, abs(vec4<i32>(arg_0.b.b.c.b, global1.a.x, global1.a.x, 44731i) | arg_0.b.b.a), vec4<i32>(u_input.b.x & global1.b, _wgslsmith_clamp_i32(0i, arg_0.b.c.b, arg_0.b.d), u_input.a.x, -2147483647i)), -arg_0.b.b.a ^ arg_0.b.b.a, vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, -3635i, -9178i, arg_0.b.b.c.b))));
    var_0 = countOneBits(_wgslsmith_div_i32(0i >> (~arg_0.b.a.x % 32u), _wgslsmith_dot_vec3_i32(-global1.a, _wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, 39111i, global1.a.x), u_input.a >> (vec3<u32>(arg_0.b.a.x, 81567u, 10376u) % vec3<u32>(32u))))));
    let var_2 = ~arg_0.b.a.x;
    return arg_0.b.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_5(select(func_1(), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), true), Struct_3(~_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 39032u, u_input.c.x, 114434u)), Struct_2(~vec4<i32>(u_input.a.x, global1.a.x, global1.b, 6599i), Struct_1(u_input.a, global1.b), Struct_1(vec3<i32>(u_input.a.x, global1.b, 10988i), global1.a.x)), Struct_1(vec3<i32>(1i, global1.a.x, u_input.b.x) << (vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), 0i), -19258i, false), select(func_1(), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, select(false, false, true), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, -480f, 1000f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, 786f, 754f, 1395f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1081f, 624f, -805f, 798f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(502f, -2017f, -1234f, 1642f) * vec4<f32>(-473f, -429f, -791f, 1104f))), false))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(967f, 1084f, -140f), vec3<f32>(-473f, 1637f, 847f), true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(964f, -742f, 206f) * vec3<f32>(831f, -197f, -174f)))))));
    var var_1 = !select(vec3<bool>(true, _wgslsmith_sub_i32(global1.a.x, 41108i) == ~global1.b, _wgslsmith_clamp_i32(global1.a.x, u_input.a.x, global1.a.x) < func_3()), vec3<bool>(!(1u >= u_input.c.x), false, true), true);
    global0 = u_input.c.x;
    let var_2 = global1.a;
    let var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~global1.b, ~global1.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.x, -1457f, var_0.x) - vec4<f32>(2128f, 805f, var_0.x, -289f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1349f, -861f, -547f, var_0.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1550f, -142f, 1407f, var_0.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, -147f, var_3))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(477f, -453f, -1354f, 406f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1328f, var_0.x, var_0.x, 871f))))), var_1.x)));
}

