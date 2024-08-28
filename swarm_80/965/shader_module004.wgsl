struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-1947f, 875f), vec2<f32>(953f, -1195f), vec2<f32>(-1256f, -582f), vec2<f32>(-116f, -164f), vec2<f32>(-1015f, -249f), vec2<f32>(325f, 2463f), vec2<f32>(-268f, 412f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_2(vec4<bool>(true, true, any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true))));
    let var_1 = reverseBits(u_input.a << (u_input.b % 32u));
    global0 = array<vec2<f32>, 7>();
    global0 = array<vec2<f32>, 7>();
    var var_2 = true;
    return var_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = array<vec2<f32>, 7>();
    global0 = array<vec2<f32>, 7>();
    global0 = array<vec2<f32>, 7>();
    global0 = array<vec2<f32>, 7>();
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(1i, u_input.a >> (arg_0.a % 32u))), abs(reverseBits(vec2<i32>(1i, -11546i) << (vec2<u32>(0u, arg_0.a) % vec2<u32>(32u))))));
    return !vec4<bool>(func_3(_wgslsmith_add_u32(u_input.b, ~6710u)), false, true, func_3(_wgslsmith_add_u32(22463u, arg_0.a)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_2.b.yxw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.yxx)) + arg_3.b.xyx)));
    global0 = array<vec2<f32>, 7>();
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(~(48037u << (1u % 32u)), arg_2.a >> (~11845u % 32u))), 4294967295u);
    global0 = array<vec2<f32>, 7>();
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = ~vec2<i32>(abs(~(55113i >> (u_input.b % 32u))), -17464i | arg_1);
    var var_1 = arg_0.a.x;
    let var_2 = select(vec2<u32>(~1u, u_input.b), ~vec2<u32>(0u, 0u), vec2<bool>(false, true));
    let var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-391f - 1000f), _wgslsmith_f_op_f32(1164f - 503f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1488f * _wgslsmith_f_op_f32(abs(1118f)))))));
    var_1 = false;
    return Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(-var_3.a.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, var_3.a.x, -1608f) - vec4<f32>(-506f, var_3.a.x, var_3.a.x, var_3.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1009f, 501f, -589f, -1240f), vec4<f32>(var_3.a.x, 1180f, var_3.a.x, -979f)))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<f32>, 7>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1646f) * _wgslsmith_f_op_f32(select(568f, -1192f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(438f, -2438f))), 1245f)));
    let var_1 = ~(countOneBits(vec3<i32>(-u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 10980i)))) & _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(u_input.a, -44590i, 0i), -vec3<i32>(u_input.a, -15768i, u_input.a)), abs(vec3<i32>(2147483647i, 0i, u_input.a))));
    let var_2 = 4294967295u;
    var var_3 = u_input.a;
    return func_5(func_4(_wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_2, var_2, 1309u), vec3<u32>(var_2, 1u, u_input.b))), ~vec3<u32>(var_2, var_2, var_2), ~min(vec3<u32>(4294967295u, 4294967295u, 35543u), vec3<u32>(36461u, u_input.b, var_2))), Struct_2(func_2(Struct_1(var_2, vec4<f32>(1411f, 1972f, var_0.a.x, 1113f)), vec3<bool>(true, true, true), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -554f))), Struct_1(44267u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -104f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, var_0.a.x, -852f, -159f)))), Struct_1(var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -434f) * _wgslsmith_div_vec4_f32(vec4<f32>(-1010f, var_0.a.x, 820f, -1088f), vec4<f32>(-682f, var_0.a.x, -567f, -187f))))), firstLeadingBit(~(-40607i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_vec4_i32(~(-vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_div_i32(24653i, u_input.a), 1i, abs(0i))), select(~(-vec4<i32>(u_input.a, -2147483647i, u_input.a, -19971i)), -(vec4<i32>(u_input.a, 17423i, u_input.a, -2147483647i) >> (vec4<u32>(var_0.a, 1u, u_input.b, var_0.a) % vec4<u32>(32u))) & vec4<i32>(2147483647i, 1i, firstTrailingBit(1i), -1i), true));
    var_1 = vec4<i32>(-2147483647i, u_input.a, ~(-2147483647i), var_1.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.xzy)), var_0.b.yyx));
    let var_3 = ~(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.a, 76741u, var_0.a), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, var_0.a, var_0.a), ~vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(var_0.a, 0u, var_0.a) ^ vec3<u32>(1u, 52069u, u_input.b))) | max(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, var_0.a, var_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.a, 1u), vec3<u32>(0u, u_input.b, var_0.a))), abs(abs(vec3<u32>(u_input.b, u_input.b, 1u)))));
    var var_4 = func_4(firstTrailingBit(var_3), func_4(var_3 & ~var_3, Struct_2(vec4<bool>(true, true, true, true)), func_1(), func_1()), var_0, func_1());
    let var_5 = var_0.b.x;
    var_1 = vec4<i32>(u_input.a, 2147483647i, i32(-1i) * -2147483647i, select(0i, u_input.a, false));
    let var_6 = Struct_2(!vec4<bool>(var_4.a.x, all(vec4<bool>(false, true, false, var_4.a.x)), any(var_4.a.wzw), any(!var_4.a.yw)));
    let x = u_input.a;
    s_output = StorageBuffer(22867u, _wgslsmith_sub_u32(var_0.a, ~0u), select(max(min(vec4<u32>(var_0.a, 1u, 4294967295u, 25896u) >> (vec4<u32>(1u, 4294967295u, 4294967295u, 15995u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.b, 39394u, u_input.b, 22175u))), vec4<u32>(4294967295u, var_3.x, var_3.x, 13994u) & ~vec4<u32>(30935u, 88424u, 4294967295u, var_3.x)), vec4<u32>(abs(firstLeadingBit(0u)), 0u, ~u_input.b, _wgslsmith_div_u32(~var_0.a, _wgslsmith_add_u32(35687u, var_3.x))), !var_4.a));
}

