struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_3;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> bool {
    return !global0.x;
}

fn func_3() -> vec2<bool> {
    global1 = Struct_3(abs(~(-(~vec3<i32>(global1.a.x, 15940i, 45387i)))), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -16528i, 0i), u_input.b), vec3<i32>(-32677i, u_input.b.x, u_input.b.x)), vec3<i32>(global1.a.x, 80465i << (u_input.c.x % 32u), abs(-2147483647i)))), !global1.c, func_2());
    global0 = !vec2<bool>(global1.d, all(select(vec3<bool>(global1.d, global0.x, global0.x), !vec3<bool>(global1.c, global0.x, global1.c), !vec3<bool>(global1.c, global0.x, false))));
    var var_0 = Struct_1(u_input.b.x, any(select(vec4<bool>(true, true, 0i < u_input.b.x, true), vec4<bool>(true, true, global1.d, !global0.x), global0.x)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(-1132f))));
    let var_1 = Struct_1(1i, all(vec3<bool>(true, false, all(vec3<bool>(var_0.b, global1.c, false)))) | !global1.c, _wgslsmith_f_op_f32(ceil(2926f)));
    var var_2 = u_input.b.zz;
    return !vec2<bool>(any(select(select(vec3<bool>(false, var_1.b, var_0.b), vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, var_0.b)), !vec3<bool>(true, var_1.b, var_0.b), global0.x)), !global1.c);
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = ~(-(~(vec4<i32>(-1i) * -vec4<i32>(global1.a.x, u_input.a.x, -1i, global1.a.x))));
    global0 = select(!(!select(vec2<bool>(global1.d, global1.c), !vec2<bool>(global1.d, true), global1.d & global0.x)), vec2<bool>(false, func_2()), global1.c);
    global0 = func_3();
    let var_1 = min(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.b.x, 81983i), var_0), 1i) | _wgslsmith_add_vec2_i32(vec2<i32>(7339i, var_0.x), -u_input.b.xx), vec2<i32>(~(~global1.b.x), u_input.b.x)) & var_0.ww;
    global1 = Struct_3(vec3<i32>(global1.b.x, max(3311i, var_1.x), 1i), _wgslsmith_mult_vec2_i32(-(~vec2<i32>(-12627i, u_input.b.x)), ~var_0.xz) ^ (firstTrailingBit(~vec2<i32>(var_0.x, var_0.x)) ^ ~u_input.a.zz), !global1.c, false);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(vec2<u32>(~10056u, ~(u_input.c.x << (14858u % 32u)))), global1.d, false);
    var var_1 = 38817u;
    global0 = func_3();
    let var_2 = Struct_3(~firstTrailingBit(select(vec3<i32>(520i, -26077i, global1.a.x), vec3<i32>(-2147483647i, -1i, 1i), !vec3<bool>(var_0, global1.c, true))), _wgslsmith_add_vec2_i32(vec2<i32>(0i, global1.a.x), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global1.b.x), global1.a.xy, vec2<i32>(16427i, u_input.b.x)) ^ vec2<i32>(abs(u_input.a.x), -3645i)), true, all(!vec3<bool>(true, !global0.x, true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1981f * 1285f), _wgslsmith_f_op_f32(trunc(-1000f))))) + _wgslsmith_f_op_f32(sign(-1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-697f, -629f, 137f, var_3) + vec4<f32>(1538f, 633f, var_3, 284f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -506f, var_3, -103f) + vec4<f32>(-963f, var_3, -226f, 1801f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1282f, var_3, 994f, 1104f))))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1630f, var_3, -1644f, var_3), vec4<f32>(176f, -948f, 1445f, var_3))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(794f, -1305f, 1630f, 111f) - vec4<f32>(var_3, var_3, var_3, 1000f))))))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_add_i32(0i, 34318i), ~u_input.b.x, -28818i, _wgslsmith_sub_i32(global1.b.x, global1.b.x))), _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), u_input.a)), -1621f, ~u_input.c);
}

