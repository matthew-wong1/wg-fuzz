struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<u32>) -> i32 {
    global2 = Struct_2(!select(global2.a != true, !(!global2.a), global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(283f - 1249f))), 1496f))));
    var var_0 = Struct_2(true, _wgslsmith_f_op_f32(round(global2.b)));
    var var_1 = Struct_3(31378u);
    var var_2 = true;
    var var_3 = Struct_3(63165u);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_1, -arg_1, -29679i), countOneBits(vec3<i32>(u_input.a.x, -5382i, -596i))), arg_1, 2147483647i, 4068i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, arg_1), 0i, arg_0, arg_1), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 1i), vec2<i32>(arg_0, arg_0)), arg_0, i32(-1i) * -1i)));
}

fn func_2() -> i32 {
    var var_0 = min(reverseBits(vec3<i32>(-(~u_input.d), u_input.d, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 10110i, u_input.a.x, u_input.c), vec4<i32>(-2147483647i, -12615i, u_input.d, u_input.a.x)))), _wgslsmith_clamp_vec3_i32((-vec3<i32>(1i, u_input.a.x, -10885i) << (vec3<u32>(0u, 0u, u_input.b) % vec3<u32>(32u))) & vec3<i32>(u_input.d & 38861i, func_3(u_input.d, u_input.d, vec2<u32>(11151u, u_input.b)), select(u_input.c, u_input.c, global2.a)), vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -2147483647i), firstTrailingBit(8502i)) | ~(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(u_input.d, -40565i, 13757i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -15405i, u_input.a.x) & vec3<i32>(u_input.a.x, 0i, u_input.a.x), (vec3<i32>(u_input.a.x, u_input.c, u_input.a.x) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))) ^ vec3<i32>(0i, -25509i, u_input.d))));
    let var_1 = 1u;
    var_0 = vec3<i32>(2147483647i | var_0.x, max(-u_input.a.x, u_input.a.x), u_input.c);
    var var_2 = Struct_2(any(!vec2<bool>(true, false && global2.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global2.b, global2.b)), global2.b))))));
    let var_3 = _wgslsmith_div_f32(-2643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(627f)), _wgslsmith_f_op_f32(sign(3341f)))) * -1000f)) < -380f;
    return u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = -_wgslsmith_mult_i32(-_wgslsmith_mult_i32(func_2(), _wgslsmith_mult_i32(arg_2.b.x, -2147483647i)), arg_3);
    global2 = Struct_2(global2.a, global2.b);
    var var_1 = Struct_3(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, 4917u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 2489u), vec2<u32>(u_input.b, 56461u), vec2<u32>(u_input.b, 7985u)))));
    var var_2 = Struct_3(u_input.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, 578f, arg_1.a.x), vec3<f32>(global2.b, -1177f, -1000f), vec3<bool>(global2.a, arg_0, false))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(847f, -314f, arg_1.a.x), vec3<f32>(arg_1.a.x, -499f, -431f))))) - vec3<f32>(arg_2.a.x, -1000f, -650f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -314f, arg_1.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(1379f - -624f), _wgslsmith_div_f32(arg_1.a.x, global2.b), -588f)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(959f, global2.b)))), 1f, _wgslsmith_f_op_f32(-global2.b)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(countOneBits(-1i) == u_input.d, !(!(func_1(false, Struct_1(vec2<f32>(global2.b, 710f), vec3<i32>(-45707i, -1i, u_input.c)), Struct_1(vec2<f32>(global2.b, global2.b), vec3<i32>(u_input.a.x, u_input.d, u_input.d)), 1i) || false)));
    global0 = countOneBits(1323u);
    global1 = 0u;
    var var_1 = select(vec3<bool>(var_0.x, true, global2.a), !select(!vec3<bool>(global2.a, true, false), !(!vec3<bool>(global2.a, true, false)), select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), global2.a), vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(true, false, false))), !vec3<bool>(var_0.x, all(select(vec4<bool>(false, global2.a, var_0.x, global2.a), vec4<bool>(global2.a, true, true, global2.a), vec4<bool>(var_0.x, var_0.x, global2.a, global2.a))), !(u_input.a.x >= 42126i)));
    var var_2 = _wgslsmith_clamp_vec3_i32(min(abs(vec3<i32>(3114i, -2261i, u_input.d)), ~select(vec3<i32>(u_input.d, u_input.d, -2110i), vec3<i32>(u_input.a.x, u_input.c, 2147483647i), vec3<bool>(var_0.x, var_0.x, var_1.x))), vec3<i32>(func_2(), ~1i, ~1i), vec3<i32>(u_input.d >> (u_input.b % 32u), -u_input.d, min(-1i, 2147483647i)) | -firstTrailingBit(vec3<i32>(-1i, u_input.c, u_input.c))) << (vec3<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), abs(vec4<u32>(13030u, u_input.b, u_input.b, 0u))), select(abs(vec4<u32>(u_input.b, 45016u, u_input.b, 4847u)), reverseBits(vec4<u32>(u_input.b, 29514u, u_input.b, 1u)), !vec4<bool>(false, var_1.x, true, true))), ~u_input.b) % vec3<u32>(32u));
    var_2 = (_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 0i, u_input.a.x) >> (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, 0i, u_input.c)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.c), vec3<i32>(-8070i, 72265i, var_2.x)), -vec3<i32>(-1i, var_2.x, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-11774i, u_input.c, u_input.a.x), vec3<i32>(var_2.x, var_2.x, var_2.x) >> (vec3<u32>(2595u, u_input.b, 1u) % vec3<u32>(32u)))) ^ -_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, 0i, 1i), -vec3<i32>(-44355i, u_input.d, var_2.x))) >> (firstTrailingBit(vec3<u32>(~(~1u), 6055u, ~max(15836u, 296u))) % vec3<u32>(32u));
    global1 = 25019u;
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.b, -1277f) + vec3<f32>(global2.b, global2.b, 1137f)))))));
    global2 = Struct_2(!var_1.x, _wgslsmith_f_op_f32(ceil(1040f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_2.x, u_input.d, -2147483647i), -521f, _wgslsmith_clamp_vec2_i32(u_input.a | u_input.a, _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a.x, 938i), u_input.a), u_input.a) >> (~vec2<u32>(19949u, ~2575u) % vec2<u32>(32u)));
}

