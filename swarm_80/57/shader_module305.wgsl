struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    global0 = arg_0;
    let var_0 = arg_1;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<i32> {
    global0 = arg_0;
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, global0.a.x, global0.a.x) + vec3<f32>(arg_1.x, arg_0.a.x, 1361f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0.a.x, -124f), global0.a, false)))), arg_0.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-643f, -108f, -2062f))))), global0.a))), -210f);
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1029f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(852f - 1000f)) - vec3<f32>(arg_3.a.x, -923f, _wgslsmith_f_op_f32(908f * arg_0.a.x))), func_2(Struct_1(arg_0.a, -vec4<i32>(19108i, arg_0.b.x, var_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1395f, -1000f, 386f), arg_3.a))), arg_3.a.x).b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(func_2(arg_0, arg_1, global0.a.x).a.x, arg_2.x, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(abs(arg_0.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -838f, -353f)) + global0.a))), -594f);
    let var_2 = func_2(arg_3, global0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)))))));
    global1 = array<vec4<bool>, 9>();
    return (_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_0.b.x, arg_0.b.x, arg_3.b.x, -31927i), arg_3.b), firstLeadingBit(~var_0.b)) >> ((firstTrailingBit(abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, 42406u))) | _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(5889u, 69218u, 4294967295u, 1u), vec4<u32>(u_input.a, 4294967295u, 13373u, 26599u)), vec4<u32>(u_input.a, 1u, 4294967295u, 13842u) | vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u))) % vec4<u32>(32u))) ^ arg_3.b;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_add_u32(~countOneBits(~32358u), ~countOneBits(abs(arg_1))) & 1u;
    var_0 = (firstLeadingBit(u_input.a) ^ arg_1) << (select(arg_1, 4294967295u, any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false), true))) % 32u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1110f))))) + _wgslsmith_f_op_f32(arg_0 + arg_2.a.x));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(select(firstLeadingBit(vec2<u32>(52364u, 0u)), vec2<u32>(arg_1, arg_1), true)), min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(arg_1, arg_1)) ^ min(vec2<u32>(u_input.a, 50719u), vec2<u32>(u_input.a, 1u)), (vec2<u32>(arg_1, 69731u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) ^ vec2<u32>(0u, 24881u))), select(1u, _wgslsmith_mod_u32(1u, 25767u), !all(vec3<bool>(false, false, false))));
    let var_3 = ~var_2;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1 - arg_3.a.x), _wgslsmith_div_f32(1698f, 1423f), _wgslsmith_f_op_f32(f32(-1f) * -239f)) + _wgslsmith_f_op_vec3_f32(select(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, arg_3.a.x, global0.a.x) - vec3<f32>(arg_2.a.x, -1784f, arg_3.a.x)), vec3<bool>(true, true, true))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(global0.a.x, 1u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(1084f, arg_0, global0.a.x))), func_3(func_2(Struct_1(global0.a, global0.b), vec3<f32>(-1185f, -456f, global0.a.x), global0.a.x), vec3<f32>(-1301f, global0.a.x, global0.a.x), vec3<f32>(2010f, arg_0, -1582f), Struct_1(vec3<f32>(111f, 1801f, global0.a.x), global0.b))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1168f, 1000f, global0.a.x) * _wgslsmith_div_vec3_f32(global0.a, vec3<f32>(651f, 1027f, 966f))), reverseBits(global0.b) & firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -23667i))))), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-797f, global0.a.x, arg_0))))), -(global0.b & global0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 121f, global0.a.x) - vec3<f32>(-429f, -2318f, arg_0)))) + _wgslsmith_f_op_vec3_f32(trunc(global0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(-162f * 263f)) - global0.a), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(628f, arg_0, 599f))), select(~vec4<i32>(0i, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(1i, global0.b.x, 1885i, 15119i), false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, -1011f, -2936f, -1436f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, 476f, -1541f, 476f)) * vec4<f32>(296f, arg_0, global0.a.x, arg_0)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), -100f, _wgslsmith_f_op_f32(f32(-1f) * -146f), global0.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, global0.a.x), _wgslsmith_f_op_f32(select(1675f, _wgslsmith_f_op_f32(round(global0.a.x)), true)), 1246f, _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, arg_0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2399f, 1000f, var_0.a.x, -304f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(424f, var_0.a.x, -712f, -1006f) + vec4<f32>(arg_0, -3587f, global0.a.x, -290f))))));
    global1 = array<vec4<bool>, 9>();
    let var_2 = func_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1262f, var_1.x) - vec3<f32>(-869f, global0.a.x, global0.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(step(1000f, 114f)), 1707f, var_1.x)), vec4<i32>(~global0.b.x, var_0.b.x, global0.b.x, func_2(Struct_1(var_1.yxw, vec4<i32>(var_0.b.x, 2147483647i, global0.b.x, global0.b.x)), vec3<f32>(global0.a.x, arg_0, 831f), 571f).b.x) ^ vec4<i32>(2147483647i, 2147483647i, u_input.b.x, -2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.xzy - var_0.a) - vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_div_f32(-1276f, _wgslsmith_f_op_f32(arg_0 * -1058f)))), _wgslsmith_f_op_f32(987f * var_0.a.x)).a.x;
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_1.wxz + vec3<f32>(-191f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(var_1.x, 1000f))), global0.b << (select(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), min(vec4<u32>(13650u, 86593u, u_input.a, 1u), vec4<u32>(4294967295u, 147855u, 1u, u_input.a)), false) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1759f)), -827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_1.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.a), var_0.a))), var_0.a.x);
    return Struct_1(var_3.a, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -473f))));
    global0 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-509f, global0.a.x, var_0.a.x))), func_3(var_0, _wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, var_0.a.x, 1452f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.a, var_0.a), _wgslsmith_f_op_vec3_f32(-global0.a), vec3<bool>(true, false, true))), func_2(Struct_1(global0.a, vec4<i32>(10455i, global0.b.x, 0i, 2147483647i)), global0.a, _wgslsmith_f_op_f32(f32(-1f) * -715f)))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1702f * 544f))));
    global1 = array<vec4<bool>, 9>();
    let var_1 = var_0;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(868f - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(353f * global0.a.x)), var_1.a.x, true)), _wgslsmith_f_op_f32(744f - var_1.a.x)), select(global0.b, -((vec4<i32>(u_input.b.x, -1135i, 0i, -42449i) << (vec4<u32>(u_input.a, u_input.a, 42743u, 0u) % vec4<u32>(32u))) & var_0.b), global1[_wgslsmith_index_u32(countOneBits(u_input.a >> (89773u % 32u)) | u_input.a, 9u)]));
    global1 = array<vec4<bool>, 9>();
    global0 = func_1(-160f);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = array<vec4<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(abs(var_0.a.x)))), vec3<f32>(1f, global0.a.x, -468f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.x * 2347f), var_0.a.x))), -722f)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, reverseBits(u_input.a), ~min(u_input.a, 1u)), 0u), select(vec2<u32>(~0u, ~abs(4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, min(25249u, 91911u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), true));
}

