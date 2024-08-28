struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_2;

var<private> global2: vec2<u32> = vec2<u32>(1u, 36505u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = 1i;
    global1 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1494f, -1335f, 1602f, -570f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2156f, 172f, 984f, -468f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, 330f, -889f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1394f, -386f, 230f, 1257f))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, false, true), true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1808f, -1819f, 747f, 684f), vec4<f32>(1000f, 168f, -1251f, 443f), false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(821f, -1000f, 232f, 568f)))) * vec4<f32>(_wgslsmith_f_op_f32(min(-336f, 101f)), -2219f, _wgslsmith_f_op_f32(round(1333f)), _wgslsmith_f_op_f32(f32(-1f) * -418f)))));
    var var_2 = ~vec2<u32>(~firstTrailingBit(reverseBits(20954u)), _wgslsmith_mult_u32(u_input.b.x, ~0u));
    global2 = firstLeadingBit(vec2<u32>(15007u, _wgslsmith_mod_u32(min(_wgslsmith_sub_u32(arg_1.x, global2.x), 1u), ~u_input.b.x)));
    return vec4<u32>(~(1u << (_wgslsmith_div_u32(_wgslsmith_div_u32(55234u, 75874u), arg_1.x) % 32u)), 38691u, ~(~12781u) << (global2.x % 32u), ~_wgslsmith_mult_u32(~1460u, ~_wgslsmith_mult_u32(arg_1.x, 69028u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_3 {
    global0 = func_3(Struct_2(-(~u_input.d.x)), vec2<u32>(u_input.c.x, 0u));
    let var_0 = arg_0.yz ^ (vec2<i32>(-1i) * -u_input.a.zx);
    var var_1 = u_input.a.yx;
    let var_2 = ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -min(vec4<i32>(global1.a, 17376i, -24382i, u_input.d.x), vec4<i32>(var_0.x, 2147483647i, 13065i, -48026i)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -29689i, var_0.x, arg_0.x), vec4<i32>(arg_0.x, -2147483647i, var_1.x, u_input.d.x)), reverseBits(vec4<i32>(var_1.x, -2147483647i, global1.a, 1i)) << (abs(u_input.c) % vec4<u32>(32u))));
    return Struct_3(Struct_1(vec3<bool>(false, arg_2, _wgslsmith_mod_i32(-1i, arg_0.x) <= ~var_0.x), ~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x & arg_0.x, var_0.x), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), -1521f)), ~(~(~global0.zx))), ~vec4<u32>(countOneBits(global0.x & 0u), 1u, 1u, ~global2.x ^ global0.x), Struct_2(1i), Struct_2(arg_0.x), false);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    let var_0 = abs(u_input.a);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-655f, -908f) + -196f)));
    global0 = ~firstTrailingBit(vec4<u32>(~arg_0.b.x, u_input.c.x, ~(~4549u), global2.x));
    global2 = vec2<u32>(0u, min(~4294967295u << (1u % 32u), arg_0.a.e.x >> (_wgslsmith_dot_vec4_u32(~u_input.b, abs(u_input.c)) % 32u)));
    global2 = vec2<u32>(_wgslsmith_dot_vec3_u32(select(countOneBits(vec3<u32>(42719u, 50750u, 57972u)), global0.wwz, !arg_0.a.a), ~vec3<u32>(global0.x, 78637u, global2.x)), 40239u) | vec2<u32>(global0.x, 1u);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = arg_0.e.x;
    let var_1 = arg_0.a;
    var var_2 = firstTrailingBit(4294967295u);
    var var_3 = func_4(func_2(u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 2521f))))), false), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-39208i, 1i, _wgslsmith_clamp_i32(u_input.d.x, 1i, -8396i)) & u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, -22223i), u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-34191i, 1i, -1015i), u_input.a), global1.a), -vec4<i32>(-30592i, arg_0.c, global1.a, arg_0.c) & vec4<i32>(1i, u_input.d.x, -2147483647i, -2147483647i)), firstTrailingBit(i32(-1i) * -global1.a)));
    global0 = firstTrailingBit((arg_0.b & _wgslsmith_sub_vec4_u32(firstTrailingBit(var_3.b), arg_2)) | ~arg_0.b);
    return vec2<bool>(all(vec3<bool>(any(func_4(Struct_3(Struct_1(arg_0.a, var_3.a.b, var_3.d.a, -262f, u_input.c.yx), arg_2, var_3.c, var_3.c, var_3.e), u_input.d.x).a.a.zy), 63861u > abs(var_3.a.b.x), true)), !select(any(!vec4<bool>(false, arg_0.a.x, true, var_1.x)), var_3.a.a.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, !all(func_1(Struct_1(vec3<bool>(true, false, false), u_input.b, u_input.a.x, 272f, u_input.b.zw), 1000f, vec4<u32>(global0.x, global2.x, 4294967295u, global2.x))), true & (_wgslsmith_f_op_f32(step(1000f, -205f)) < _wgslsmith_f_op_f32(-375f + 130f)), all(vec3<bool>(true, true, true)));
    global0 = ~max(u_input.c ^ ~(~u_input.c), min(~(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 35045u) ^ vec4<u32>(17801u, 131338u, 18125u, u_input.b.x)), u_input.b));
    var var_1 = 4294967295u | global0.x;
    let var_2 = func_4(func_4(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 66057i, 0i), ~u_input.a), vec2<f32>(-592f, _wgslsmith_f_op_f32(1320f * -818f)), true), global1.a), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(global1.a, 11483i, -global1.a), _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(-35426i, 22020i)))).a.b.x;
    global1 = func_4(func_2(abs(~select(u_input.d, vec3<i32>(global1.a, 8366i, u_input.a.x), var_0.zwx)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-395f - -1913f), _wgslsmith_f_op_f32(step(106f, -1000f))))), true && (u_input.c.x <= global2.x)), ~1i).d;
    global0 = vec4<u32>(u_input.c.x, 4294967295u, var_2, 42505u);
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2202f, _wgslsmith_f_op_f32(sign(-738f)), _wgslsmith_div_f32(830f, 1090f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -599f, 884f), vec3<f32>(811f, 535f, -568f), true))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-918f, -719f, -613f), vec3<f32>(-265f, 1113f, -706f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, -148f, -756f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(112f, -1211f, 1259f) - vec3<f32>(-605f, -1046f, -572f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_2(~vec3<i32>(global1.a, -2114i, u_input.a.x), var_3.xz, var_0.x).a.d, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-615f, var_3.x)))))), 1i);
}

