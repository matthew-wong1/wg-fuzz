struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true));
    var var_0 = Struct_4(true, any(vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, ~15024u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1372u, 94059u, 24529u, 131554u), vec4<u32>(0u, 81846u, 1u, 4294967295u)), 1u >> (0u % 32u), 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = var_0.b;
    var_1 = false;
    var var_2 = Struct_5(Struct_2(firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 45942u, var_0.c.x), var_0.c.yzx))), Struct_1(vec3<i32>(u_input.a, u_input.a | -1i, u_input.a), true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1102f, 216f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(695f, 384f, 2436f, -518f) * vec4<f32>(-276f, -1000f, 212f, -122f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1156f, 1000f, -1000f, 2204f), vec4<f32>(-215f, 1446f, 2513f, 997f)))), ~u_input.a), Struct_1(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.a, 28279i, 1i)), firstLeadingBit(vec3<i32>(-35513i, u_input.a, u_input.a))), true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1165f, -1000f), vec2<f32>(-863f, 405f))), vec4<f32>(1f, 1027f, -132f, -1000f), 1i), Struct_1(vec3<i32>(4413i, _wgslsmith_div_i32(u_input.a, u_input.a), 24203i >> (0u % 32u)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(650f, -723f), vec2<f32>(-120f, -341f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-918f, -1312f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, -592f, -1576f, 1262f) + vec4<f32>(-683f, 1826f, -525f, 335f)), _wgslsmith_add_i32(u_input.a, u_input.a) >> (30833u % 32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))))) * 1587f);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(~abs(vec3<u32>(1u, 11632u, 1u))), ~abs(vec3<u32>(1u, countOneBits(1041u), 32797u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -388f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-260f)))));
    let var_2 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 111778u, 0u)), ~35462u, 1u), _wgslsmith_div_vec3_u32(~vec3<u32>(12182u, 9994u, 37385u), vec3<u32>(1u, 1u, 1u))));
    var var_3 = Struct_4(all(vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), true)), !(~(0i >> (1u % 32u)) != -arg_1), countOneBits(select(abs(~vec4<u32>(var_2.x, 0u, 62261u, 46970u)), firstTrailingBit(vec4<u32>(var_2.x, 43741u, var_2.x, var_2.x)), true)));
    var_3 = Struct_4(false, var_3.b, ~vec4<u32>(~var_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_2.yz, vec2<u32>(var_2.x, var_3.c.x)), ~vec2<u32>(12833u, 0u)), var_3.c.x, ~1u));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2291f + 133f) * _wgslsmith_f_op_f32(round(-642f)))) - 1f)));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1943f))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~vec4<i32>(-39643i, 22569i, arg_0, -3113i), -arg_0)) + 894f));
    var var_2 = true;
    var var_3 = ~(~(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 43263i, u_input.a), vec3<i32>(52377i, 0i, u_input.a))) << (countOneBits(abs(vec3<u32>(0u, 45577u, 41100u))) % vec3<u32>(32u)));
    var_2 = _wgslsmith_f_op_f32(func_2(-countOneBits(~vec4<i32>(u_input.a, u_input.a, 2147483647i, -1i)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(var_3.x, -22473i)), countOneBits(-48513i)))) <= 1301f;
    return reverseBits(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_5 {
    let var_0 = !(!select(select(!vec3<bool>(true, arg_0, false), vec3<bool>(true, true, true), !vec3<bool>(arg_1.b, true, arg_0)), vec3<bool>(true, all(vec2<bool>(false, arg_1.a)), true), vec3<bool>(arg_2.x < arg_2.x, !arg_0, any(vec3<bool>(arg_0, arg_0, false)))));
    global0 = !(!var_0.x);
    var var_1 = _wgslsmith_sub_u32(firstTrailingBit(arg_1.c.x), select(_wgslsmith_mult_u32(~17921u, 1u), ~4269u, true));
    var_1 = ~arg_1.c.x;
    let var_2 = Struct_2(4294967295u, Struct_1(min(abs(abs(vec3<i32>(-956i, u_input.a, 1i))), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1616i, 28151i), vec3<i32>(u_input.a, 0i, -2147483647i)))), true, _wgslsmith_f_op_vec2_f32(-arg_2.yx), _wgslsmith_f_op_vec4_f32(trunc(arg_2)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, i32(-1i) * -1297i, u_input.a), u_input.a)), Struct_1(vec3<i32>(-2147483647i >> (~arg_1.c.x % 32u), firstTrailingBit(_wgslsmith_add_i32(-2147483647i, u_input.a)), -firstLeadingBit(3304i)), arg_2.x < _wgslsmith_f_op_f32(f32(-1f) * -1269f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1299f * arg_2.x) * _wgslsmith_f_op_f32(-arg_2.x)), 144f), vec4<f32>(_wgslsmith_f_op_f32(func_3()), -659f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1540f - -791f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -1419f)))), _wgslsmith_sub_i32(u_input.a & -2147483647i, u_input.a) ^ (-15296i | _wgslsmith_add_i32(u_input.a, u_input.a))), Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, 82969i) | vec3<i32>(u_input.a, -34445i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, -9742i)), vec3<i32>(39996i, 4357i, -2147483647i))), var_0.x, _wgslsmith_div_vec2_f32(arg_2.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.yy, arg_2.wz)))), _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, -1000f, 1258f, -525f)))), _wgslsmith_clamp_i32(1i, u_input.a, u_input.a)));
    return Struct_5(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true, Struct_4(all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)), true, func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), max(vec2<i32>(56030i, 28673i), vec2<i32>(27422i, 51481i))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1005f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1240f)) * _wgslsmith_f_op_f32(-471f - 2603f)), 239f))));
    global0 = all(select(vec4<bool>(all(vec4<bool>(true, var_0.a.d.b, var_0.a.c.b, var_0.a.b.b)), true, true, var_0.a.d.b), select(select(vec4<bool>(var_0.a.b.b, false, false, true), vec4<bool>(false, true, var_0.a.d.b, true), vec4<bool>(var_0.a.b.b, var_0.a.c.b, var_0.a.b.b, false)), !vec4<bool>(var_0.a.c.b, var_0.a.b.b, true, false), vec4<bool>(true, var_0.a.b.b, var_0.a.b.b, var_0.a.c.b)), func_4(u_input.a == var_0.a.c.e, Struct_4(var_0.a.b.b, true, vec4<u32>(38951u, var_0.a.a, var_0.a.a, var_0.a.a)), vec4<f32>(-292f, 273f, var_0.a.c.d.x, var_0.a.b.d.x)).a.b.b)) | any(!(!select(vec2<bool>(true, false), vec2<bool>(var_0.a.c.b, true), vec2<bool>(true, var_0.a.d.b))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(ceil(var_0.a.d.c.x)) == -201f, var_0.a.c.b, abs(abs(vec4<u32>(var_0.a.a, var_0.a.a, var_0.a.a, 1u)) ^ min(vec4<u32>(var_0.a.a, 1u, var_0.a.a, 0u) ^ vec4<u32>(var_0.a.a, var_0.a.a, var_0.a.a, var_0.a.a), ~vec4<u32>(var_0.a.a, 16772u, var_0.a.a, var_0.a.a))));
    global0 = !any(vec2<bool>(var_1.b, var_0.a.c.e > -61170i));
    var var_2 = func_4(all(select(!vec2<bool>(true, var_1.a), vec2<bool>(true, false), true)) || any(select(select(vec3<bool>(true, true, var_1.b), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(var_1.a, var_0.a.b.b, true), vec3<bool>(var_0.a.d.b, false, var_0.a.b.b), vec3<bool>(true, true, var_0.a.c.b)), true)), Struct_4(true, all(vec2<bool>(var_1.a, any(vec3<bool>(var_1.b, false, true)))), _wgslsmith_sub_vec4_u32(var_1.c, reverseBits(var_1.c))), vec4<f32>(var_0.a.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1190f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.c.c.x - _wgslsmith_f_op_f32(-304f + var_0.a.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_4(var_1.b, Struct_4(var_1.b, true, var_1.c), var_0.a.d.d).a.d.c.x)) * _wgslsmith_f_op_f32(-2591f + var_0.a.b.d.x)))).a;
    var var_3 = !var_0.a.d.b;
    let var_4 = Struct_4(var_0.a.d.b, any(!select(vec4<bool>(false, var_2.d.b, var_0.a.c.b, var_1.b), vec4<bool>(var_0.a.d.b, var_2.c.b, var_2.b.b, true), vec4<bool>(false, true, var_1.a, var_0.a.d.b))) != !any(select(vec2<bool>(true, var_2.c.b), vec2<bool>(var_2.c.b, false), vec2<bool>(var_2.b.b, false))), ~vec4<u32>(~var_2.a, _wgslsmith_div_u32(16416u, var_0.a.a), 11806u, ~0u) | abs(~func_1(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-vec4<i32>(0i, -1i, var_0.a.c.a.x, 2209i) & vec4<i32>(45323i, var_0.a.d.a.x, 1i, 0i), var_2.d.e)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * -1235f)), func_1(2147483647i).x, func_4(any(!(!vec3<bool>(var_0.a.c.b, true, var_1.b))), var_4, vec4<f32>(var_2.b.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_2.b.d.x, -121f)))), var_2.d.d.x, var_0.a.b.d.x)).a.d.a, ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.d.a.x, -1i, ~1i, var_0.a.d.a.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.a.c.e, var_0.a.c.e, -27854i, var_2.c.a.x), min(vec4<i32>(var_0.a.d.e, 2147483647i, 59196i, var_0.a.c.a.x), vec4<i32>(2147483647i, -40230i, 2147483647i, var_2.b.e)))));
}

