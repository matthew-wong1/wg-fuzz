struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(7804u, 1533u, 4294967295u, 1u), vec4<u32>(1u, 31999u, 19354u, 1u), vec4<u32>(1u, 1u, 3576u, 13200u), vec4<u32>(17414u, 46590u, 13188u, 75219u), vec4<u32>(1u, 1u, 1u, 54723u), vec4<u32>(4294967295u, 37461u, 48595u, 1u), vec4<u32>(31578u, 0u, 0u, 3831u), vec4<u32>(10828u, 6076u, 4294967295u, 7278u), vec4<u32>(83671u, 39115u, 4294967295u, 36625u), vec4<u32>(0u, 68008u, 22537u, 12436u), vec4<u32>(4294967295u, 28840u, 5970u, 11827u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 77375u, 4294967295u, 4294967295u), vec4<u32>(6845u, 13642u, 37147u, 9445u), vec4<u32>(22255u, 4294967295u, 4294967295u, 14732u), vec4<u32>(1u, 0u, 16988u, 4294967295u), vec4<u32>(11424u, 1u, 78739u, 4294967295u), vec4<u32>(124u, 87130u, 49588u, 22665u), vec4<u32>(0u, 44365u, 76234u, 63323u), vec4<u32>(27308u, 1u, 58337u, 52204u), vec4<u32>(4294967295u, 0u, 12794u, 6488u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(1u, 45207u, 1u, 1u), vec4<u32>(9299u, 27783u, 8058u, 46425u), vec4<u32>(49175u, 44596u, 4294967295u, 4294967295u), vec4<u32>(0u, 4277u, 49067u, 1u), vec4<u32>(15103u, 4294967295u, 27187u, 22254u));

var<private> global3: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(79099u, 1u), vec2<u32>(59626u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(34028u, 47116u), vec2<u32>(39442u, 31177u));

var<private> global4: vec4<f32> = vec4<f32>(-1000f, -494f, -266f, 398f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> vec2<bool> {
    global0 = vec2<bool>(false, true || global0.x);
    global0 = select(vec2<bool>(((u_input.e.x > -2147483647i) | global1.x) && all(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, false, global0.x), vec3<bool>(global1.x, false, global1.x))), !global1.x), !select(!(!vec2<bool>(global0.x, global0.x)), vec2<bool>(!global1.x, global1.x), global1.x), true);
    global4 = vec4<f32>(699f, arg_2.x, 1178f, arg_2.x);
    return !(!vec2<bool>(any(!vec2<bool>(true, global0.x)), (global1.x & global0.x) & global0.x));
}

fn func_2() -> u32 {
    var var_0 = select(!vec2<bool>(_wgslsmith_mult_i32(u_input.e.x, u_input.e.x) <= u_input.e.x, true), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), global0.x))), func_3(_wgslsmith_f_op_f32(1f + global4.x), 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 2552f))));
    global0 = !select(!select(vec2<bool>(global1.x, global0.x), !vec2<bool>(false, global0.x), false), func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(max(global4.x, 838f)))), ~u_input.b, global4.wz), all(vec3<bool>(func_3(global4.x, 2897u, global4.yw).x, true, true)));
    var var_1 = min(u_input.e, vec3<i32>(_wgslsmith_sub_i32(u_input.e.x, ~_wgslsmith_dot_vec2_i32(u_input.e.yy, vec2<i32>(-46435i, 17292i))), 2147483647i, _wgslsmith_div_i32(-3483i, u_input.e.x & u_input.e.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.x), 754f, !any(vec4<bool>(true, var_0.x, false, false)) | all(!vec3<bool>(var_0.x, false, var_0.x)))) * global4.x);
    let var_3 = vec2<f32>(global4.x, -1000f);
    return 0u;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_i32(u_input.e.zz | _wgslsmith_mult_vec2_i32(-(~vec2<i32>(-52829i, u_input.e.x)), ~u_input.e.zy), abs(_wgslsmith_div_vec2_i32(u_input.e.zx, -(~u_input.e.xx))));
    global3 = array<vec2<u32>, 5>();
    global2 = array<vec4<u32>, 27>();
    return Struct_1(arg_1.a);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(!vec3<bool>(true, global1.x, true));
    var var_1 = u_input.d & u_input.d;
    var var_2 = true;
    let var_3 = func_4(-460f, Struct_1(var_0.a), ~vec4<u32>(15617u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, u_input.d.x), vec2<u32>(var_1.x, 39236u)), func_2(), any(vec2<bool>(global1.x, true))), firstLeadingBit(25048u), ~0u));
    global0 = var_3.a.xx;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1033f;
    let var_1 = vec3<u32>(u_input.c >> (_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.b), u_input.d), u_input.d.x) % 32u), reverseBits(func_1()), 39695u);
    let var_2 = !(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, global1.x, true), global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, false, global0.x), !vec3<bool>(false, global1.x, global0.x)), false));
    global4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1561f - _wgslsmith_f_op_f32(round(global4.x))), _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(select(-392f, var_0, global0.x)))) + _wgslsmith_div_f32(656f, var_0)), _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(572f, -973f, -972f, -393f), vec4<f32>(global4.x, global4.x, var_0, -1403f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(598f, -163f, -611f, 1284f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1056f, var_0, global4.x, -588f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_0, -152f)), -1000f, var_0, _wgslsmith_f_op_f32(round(-666f))))));
    var var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f)), Struct_1(var_2), vec4<u32>(~(~0u) >> (1u % 32u), ~(~u_input.c), u_input.d.x, select(235u >> (_wgslsmith_sub_u32(var_1.x, var_1.x) % 32u), 15442u, true)));
    let var_4 = vec2<u32>(var_1.x, _wgslsmith_div_u32(u_input.a, ~firstTrailingBit(u_input.c)) & 50993u);
    var_3 = Struct_1(vec3<bool>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, 1322f))), _wgslsmith_clamp_u32(var_1.x, ~21275u, _wgslsmith_mult_u32(u_input.d.x, 0u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global4.xx, vec2<f32>(var_0, -1614f))))).x, _wgslsmith_mult_i32(abs(-1i), u_input.e.x) >= (firstLeadingBit(22860i) | _wgslsmith_dot_vec3_i32(u_input.e, u_input.e)), true));
    var var_5 = Struct_1(select(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1639f)), _wgslsmith_f_op_f32(global4.x - 154f)), func_4(_wgslsmith_f_op_f32(var_0 + 1135f), func_4(var_0, Struct_1(vec3<bool>(false, global1.x, true)), vec4<u32>(1u, 1u, var_4.x, var_4.x)), vec4<u32>(var_4.x, u_input.b, var_4.x, var_4.x) >> (vec4<u32>(var_4.x, 1u, 32467u, 0u) % vec4<u32>(32u))), vec4<u32>(3586u, 0u, ~35082u, min(var_1.x, var_4.x))).a, vec3<bool>((2147483647i > u_input.e.x) || global1.x, var_2.x, !(!var_2.x)), ~u_input.d.x != (u_input.b ^ var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i >> (var_4.x % 32u), ~(u_input.e.x ^ u_input.e.x)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, ~7715u, max(var_1.x, 86229u), u_input.d.x)), firstTrailingBit(global2[_wgslsmith_index_u32(178969u, 27u)])), var_4, -firstLeadingBit(min(-vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 0i), max(vec4<i32>(-23049i, -1i, -1i, u_input.e.x), vec4<i32>(-2270i, u_input.e.x, -2147483647i, u_input.e.x)))));
}

