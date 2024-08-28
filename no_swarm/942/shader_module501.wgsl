struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(30658u, 4294967295u, 4294967295u, 14025u, 0u, 0u, 1u, 12622u, 0u, 0u, 0u, 17588u, 26494u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(164f, Struct_1(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false)), select(vec2<bool>(true, all(vec4<bool>(false, true, false, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), all(vec3<bool>(true, true, true))), vec2<u32>(abs(4294967295u) << (global0[_wgslsmith_index_u32(~73603u, 13u)] % 32u), ~4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1210f), -1491f, _wgslsmith_f_op_f32(1849f - -900f), 613f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1358f, -1000f, 585f), vec4<f32>(319f, 1000f, -318f, 590f)))), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 13u)], 13u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31785u, 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), 13u)], global0[_wgslsmith_index_u32(~27252u, 13u)], ~global0[_wgslsmith_index_u32(25657u, 13u)])), _wgslsmith_f_op_f32(-1f), Struct_1(true, vec2<bool>(1647u < select(global0[_wgslsmith_index_u32(57815u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6305u, 13u)], 13u)], true), true), ~abs(vec2<u32>(0u, 67600u)), vec4<f32>(1f, 1f, 1f, 1f), min(~vec4<u32>(40103u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12015u, 13u)], 13u)], 13u)], 13u)]) ^ ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 1u, 15624u, global0[_wgslsmith_index_u32(1u, 13u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], 0u, 41698u))));
    let var_1 = vec4<bool>(var_0.b.b.x, true, true, !(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, -2147483647i, u_input.c), vec4<i32>(41805i, u_input.a.x, -13830i, -14754i))) > abs(_wgslsmith_div_i32(u_input.b, 0i))));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-29344i, 2147483647i, -19086i, -15130i)), vec4<i32>(-12177i, u_input.c, 26571i, u_input.b) << (~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.d.c.x, 13u)], 13u)], 13u)], 1u, global0[_wgslsmith_index_u32(var_0.d.c.x, 13u)], 1u) % vec4<u32>(32u))), ~(-19760i), u_input.b), -(~(vec3<i32>(u_input.c, u_input.a.x, 17939i) | vec3<i32>(u_input.a.x, u_input.a.x, 31341i))) ^ vec3<i32>(_wgslsmith_div_i32(u_input.a.x, 0i) | reverseBits(u_input.a.x), 0i, i32(-1i) * -49611i));
    return !var_1.wx;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = vec4<bool>(select(all(select(func_3(), arg_0.b.b, any(vec3<bool>(false, true, true)))), !any(select(arg_0.c.b, vec2<bool>(true, arg_0.b.a), vec2<bool>(false, false))), any(select(vec4<bool>(true, arg_0.c.b.x, true, true), vec4<bool>(arg_0.c.b.x, false, false, true), arg_0.c.a)) && func_3().x), true, true, true);
    let var_1 = Struct_2(arg_1.x, Struct_1(var_0.x, arg_0.c.b, vec2<u32>(countOneBits(15390u), global0[_wgslsmith_index_u32(~52622u, 13u)]), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(981f)) * _wgslsmith_f_op_f32(arg_1.x * -1431f)), _wgslsmith_f_op_f32(arg_1.x - arg_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-639f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x)))), vec4<u32>(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_sub_u32(arg_0.c.c.x, arg_0.c.e.x)), _wgslsmith_clamp_u32(~23478u, global0[_wgslsmith_index_u32(abs(114828u), 13u)], arg_0.c.e.x), 22807u, 3218u)), _wgslsmith_f_op_f32(781f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(521f - arg_0.b.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_f_op_f32(abs(arg_0.a.x))))), arg_0.c);
    let var_2 = Struct_3(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), Struct_1(var_0.x, vec2<bool>(~1u < (arg_0.c.e.x ^ 4294967295u), u_input.c > u_input.c), vec2<u32>(abs(~arg_0.b.c.x), abs(~arg_0.b.e.x)), vec4<f32>(_wgslsmith_f_op_f32(step(var_1.d.d.x, _wgslsmith_f_op_f32(208f * -714f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-326f, -439f, false)))), 708f, 824f), firstLeadingBit(~(~var_1.b.e))), Struct_1(var_1.b.a, var_1.b.b, ~vec2<u32>(var_1.d.e.x, 1u), _wgslsmith_f_op_vec4_f32(-var_1.b.d), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.b.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b.c.x, 13u)], 13u)], 5417u), ~vec4<u32>(arg_0.c.e.x, 1u, 4294967295u, 54451u)))));
    let var_3 = var_1.b;
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, -358f), _wgslsmith_f_op_vec2_f32(-arg_0.b.d.yx)) * _wgslsmith_f_op_vec2_f32(sign(var_1.b.d.yx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(749f, var_2.b.d.x) + vec2<f32>(950f, -202f)) * arg_0.b.d.yy)), var_1.b, Struct_1(any(!var_2.b.b), arg_0.c.b, ~(~vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 4294967295u) << (~var_3.c % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(var_1.b.d, vec4<f32>(var_3.d.x, arg_0.c.d.x, arg_0.b.d.x, -1000f))))))), var_1.d.e));
    return vec2<bool>(var_2.c.b.x, true);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(arg_1.x + arg_1.x), -956f)))), vec3<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)))), 348f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * -927f), _wgslsmith_f_op_f32(arg_1.x * arg_1.x))))));
    var var_1 = arg_0;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.x), Struct_1(!(arg_1.x <= 1179f), select(select(select(vec2<bool>(true, arg_0), vec2<bool>(true, false), true), !vec2<bool>(true, arg_0), !vec2<bool>(true, arg_0)), select(vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0), arg_0), select(func_2(Struct_3(vec2<f32>(var_0.x, arg_1.x), Struct_1(arg_0, vec2<bool>(arg_0, arg_0), vec2<u32>(20837u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24524u, 13u)], 13u)]), vec4<f32>(997f, var_0.x, arg_1.x, var_0.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], 1805u)), Struct_1(arg_0, vec2<bool>(arg_0, true), vec2<u32>(1u, 86872u), vec4<f32>(arg_1.x, -1347f, 1728f, -461f), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 63666u, 12370u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11928u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)]))), vec2<f32>(-1506f, var_0.x)), vec2<bool>(true, true), vec2<bool>(false, arg_0))), max(vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(95344u, 13u)], true)), firstTrailingBit(vec2<u32>(20749u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)]) ^ vec2<u32>(514u, 91286u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1456f, arg_1.x, var_0.x, -1708f)))))), vec4<u32>(~(~global0[_wgslsmith_index_u32(109359u, 13u)]), 4294967295u, ~(~45363u), 18684u)), -1000f, Struct_1(any(!(!vec4<bool>(false, false, arg_0, arg_0))), vec2<bool>(!(!arg_0), true), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(16812u, 15326u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15493u, 13u)], 13u)], global0[_wgslsmith_index_u32(51766u, 13u)])), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33606u, 13u)], 13u)])) ^ _wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 70046u) & vec2<u32>(global0[_wgslsmith_index_u32(98698u, 13u)], 0u), select(vec2<u32>(3677u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30899u, 13u)], 13u)]), vec2<u32>(0u, 0u), arg_0)), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-var_0.x), arg_1.x, _wgslsmith_f_op_f32(-var_0.x)), ~(~select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2136u, 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30822u, 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35229u, 13u)], 13u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(35278u, 13u)], 4363u, global0[_wgslsmith_index_u32(1u, 13u)]), arg_0))));
    let var_3 = 85717u;
    let var_4 = all(!(!(!(!vec2<bool>(arg_0, var_2.d.a)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(sign(-725f))))) - _wgslsmith_div_f32(-752f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1860f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -954f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2161f + _wgslsmith_f_op_f32(687f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1344f, -131f) - vec2<f32>(505f, 891f)), _wgslsmith_div_i32(62174i, -25213i))))));
    var var_1 = !(!func_3().x);
    var var_2 = ~global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54046u, 13u)], 13u)], 13u)], 13u)]), 13u)]), 13u)];
    let var_3 = Struct_1(!select(!all(vec2<bool>(false, true)), !all(vec3<bool>(false, false, false)), -1799f >= var_0.x), vec2<bool>(true, func_3().x), min(~(~vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)]) | vec2<u32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 1u) << (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(47116u, 13u)]) % vec2<u32>(32u))), vec2<u32>(reverseBits(0u), global0[_wgslsmith_index_u32(105859u, 13u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(var_0.x, -471f)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -894f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-838f, -414f, var_0.x, var_0.x))))), ~min(min(abs(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(10161u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)])), vec4<u32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 0u, 99706u)), select(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 29302u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(40285u, 0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8663u, 13u)], 13u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30782u, 13u)], 13u)], 86840u, 50762u, 0u)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))));
    var var_4 = _wgslsmith_f_op_f32(abs(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~var_3.c.x, 13u)], 13u)], 13u)] << (_wgslsmith_dot_vec3_u32(select(var_3.e.www, var_3.e.zxy, false), vec3<u32>(10933u, var_3.e.x, 4294967295u)) % 32u)) >> (1u % 32u), _wgslsmith_clamp_u32(~abs(23827u), var_3.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(26354u, 13u)], 15369u) << (var_3.e.zw % vec2<u32>(32u)), vec2<u32>(var_3.c.x, global0[_wgslsmith_index_u32(1u, 13u)]) >> (vec2<u32>(4294967295u, var_3.c.x) % vec2<u32>(32u)))) ^ ~15889u, reverseBits(~var_3.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.d)))) * var_3.d));
}

