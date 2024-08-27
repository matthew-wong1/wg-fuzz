struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: vec2<u32> = vec2<u32>(82u, 4294967295u);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    global0 = array<Struct_3, 28>();
    global1 = ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(global1.x, u_input.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 5934u), vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(~32197u, _wgslsmith_mod_u32(u_input.a, 1u)));
    return arg_3;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_4 {
    global1 = vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(min(firstTrailingBit(vec2<u32>(arg_1.d.a.b, u_input.a)), max(vec2<u32>(global1.x, 22664u), vec2<u32>(global1.x, 0u))), min(firstTrailingBit(vec2<u32>(13568u, 4294967295u)), vec2<u32>(27504u, 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.a.b, _wgslsmith_mult_u32(0u, arg_1.d.a.b), ~global1.x, global1.x << (u_input.a % 32u)), ~vec4<u32>(4140u, arg_1.d.a.b, 0u, arg_1.d.a.b))));
    global0 = array<Struct_3, 28>();
    global0 = array<Struct_3, 28>();
    let var_0 = Struct_1(vec2<bool>(false, true), _wgslsmith_add_u32(_wgslsmith_add_u32(global1.x, 2993u), max(4294967295u, _wgslsmith_sub_u32(~global1.x, min(arg_1.d.a.b, 22423u)))));
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(firstTrailingBit(-arg_2.c.x)), -arg_1.d.b.c.x, -27483i, ~(-arg_1.d.b.c.x | max(-14065i, 31643i))), -vec4<i32>(firstLeadingBit(arg_1.d.b.c.x), ~arg_1.d.b.c.x, _wgslsmith_dot_vec2_i32(arg_2.c.yy, arg_2.c.ww), _wgslsmith_dot_vec4_i32(arg_1.d.b.c, vec4<i32>(arg_2.c.x, -1i, 0i, 29465i))) >> (countOneBits(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(0u, 0u, 1u, 19698u)), max(vec4<u32>(4294967295u, arg_1.d.a.b, 4294967295u, 0u), vec4<u32>(var_0.b, 1u, 4294967295u, var_0.b)))) % vec4<u32>(32u)), select(-arg_2.c, arg_1.d.b.c, vec4<bool>(true, true, false, true)));
    return arg_1;
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = countOneBits(0u);
    var var_1 = func_3(select(!func_3(arg_0.d.b.d.yx, arg_0, Struct_2(-884f, true, vec4<i32>(arg_0.d.b.c.x, 0i, arg_0.d.b.c.x, -2147483647i), vec3<bool>(arg_0.b, false, false))).d.a.a, vec2<bool>(func_2(arg_0.d.b, arg_0.d.b.d.yx, vec4<f32>(629f, arg_0.d.b.a, 1225f, -1000f), Struct_2(arg_0.d.b.a, false, arg_0.d.b.c, vec3<bool>(false, false, true))).c.x != 2147483647i, arg_0.d.b.b), arg_0.d.b.d.x), Struct_4(arg_0.a, true, arg_0.a, func_3(func_2(func_3(arg_0.d.a.a, Struct_4(-328f, arg_0.d.b.d.x, -400f, Struct_3(Struct_1(arg_0.d.b.d.yx, arg_0.d.a.b), Struct_2(740f, arg_0.d.a.a.x, arg_0.d.b.c, vec3<bool>(arg_0.d.b.d.x, true, false)))), Struct_2(arg_0.c, false, arg_0.d.b.c, vec3<bool>(arg_0.b, arg_0.b, arg_0.b))).d.b, arg_0.d.b.d.xz, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.d.b.a, arg_0.a, arg_0.d.b.a, 239f))), func_2(arg_0.d.b, arg_0.d.a.a, vec4<f32>(-609f, arg_0.a, -386f, arg_0.c), Struct_2(arg_0.d.b.a, arg_0.b, vec4<i32>(arg_0.d.b.c.x, -46096i, -2147483647i, 2147483647i), arg_0.d.b.d))).d.zy, Struct_4(_wgslsmith_f_op_f32(ceil(-579f)), false, _wgslsmith_f_op_f32(-arg_0.c), arg_0.d), arg_0.d.b).d), arg_0.d.b).d;
    var var_2 = 312f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
    var var_3 = _wgslsmith_sub_u32(global1.x, ~global1.x);
    let var_4 = Struct_4(-1174f, 1042f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.b.a + 713f) * _wgslsmith_f_op_f32(step(113f, -822f))), _wgslsmith_f_op_f32(-arg_0.c)), var_1.b.a, func_3(vec2<bool>(!select(var_1.a.a.x, var_1.b.d.x, arg_0.b), func_3(select(vec2<bool>(false, arg_0.d.b.b), arg_0.d.a.a, vec2<bool>(false, arg_0.d.b.b)), arg_0, func_3(vec2<bool>(false, true), Struct_4(var_1.b.a, arg_0.b, arg_0.d.b.a, global0[_wgslsmith_index_u32(51137u, 28u)]), Struct_2(var_1.b.a, false, vec4<i32>(arg_0.d.b.c.x, var_1.b.c.x, -35828i, arg_0.d.b.c.x), vec3<bool>(arg_0.d.a.a.x, arg_0.d.b.b, false))).d.b).d.a.a.x), func_3(vec2<bool>(var_1.a.a.x, !arg_0.b), arg_0, Struct_2(arg_0.a, true || arg_0.b, var_1.b.c, !vec3<bool>(true, false, var_1.b.b))), func_2(arg_0.d.b, !vec2<bool>(arg_0.d.a.a.x, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(117f, var_1.b.a, arg_0.c, -776f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.d.b.a, -1846f, 1000f, var_1.b.a)))), arg_0.d.b)).d);
    return func_3(!select(vec2<bool>(var_1.a.a.x, var_1.b.b), !select(vec2<bool>(false, var_4.d.a.a.x), vec2<bool>(true, arg_0.b), vec2<bool>(var_1.b.b, var_1.a.a.x)), all(vec4<bool>(false, false, arg_0.d.a.a.x, arg_0.b))), func_3(func_2(Struct_2(_wgslsmith_f_op_f32(-arg_0.a), true, firstLeadingBit(var_4.d.b.c), func_2(var_1.b, vec2<bool>(true, false), vec4<f32>(377f, arg_0.c, arg_0.d.b.a, var_4.c), var_1.b).d), vec2<bool>(all(vec2<bool>(false, false)), arg_0.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, arg_0.c, arg_0.a, 153f)))), var_1.b).d.xy, Struct_4(var_4.d.b.a, any(vec4<bool>(var_4.d.b.b, arg_0.b, true, arg_0.b)), 1392f, Struct_3(Struct_1(vec2<bool>(arg_0.d.b.b, arg_0.d.a.a.x), 15089u), Struct_2(-1000f, true, vec4<i32>(arg_0.d.b.c.x, var_1.b.c.x, arg_0.d.b.c.x, var_4.d.b.c.x), vec3<bool>(arg_0.d.b.b, false, var_4.d.a.a.x)))), func_2(var_1.b, !vec2<bool>(var_4.d.b.d.x, var_4.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_1.b.a, var_1.b.a, 482f), vec4<f32>(1000f, -822f, arg_0.a, 613f))), _wgslsmith_div_vec4_f32(vec4<f32>(-544f, 547f, var_1.b.a, 638f), vec4<f32>(var_4.a, -1248f, var_4.c, var_1.b.a)), !var_1.b.b)), func_3(func_3(vec2<bool>(false, false), arg_0, arg_0.d.b).d.b.d.zy, Struct_4(-1033f, false, 348f, arg_0.d), var_4.d.b).d.b)), arg_0.d.b);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = func_4(func_3(!select(vec2<bool>(arg_0.a.x, false), !vec2<bool>(true, arg_0.a.x), true), Struct_4(_wgslsmith_f_op_f32(-104f - -1000f), arg_0.a.x | false, 1305f, global0[_wgslsmith_index_u32(~1u, 28u)]), func_2(Struct_2(294f, true, vec4<i32>(-1i, -1i, -32724i, -1i), vec3<bool>(arg_0.a.x, true, true)), select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a, !arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(-269f - -1000f), _wgslsmith_f_op_f32(815f - -1000f), 1000f, 1253f), Struct_2(_wgslsmith_f_op_f32(1057f - 1000f), select(arg_0.a.x, arg_0.a.x, arg_0.a.x), ~vec4<i32>(744i, -31624i, -8281i, 0i), !vec3<bool>(false, arg_0.a.x, true)))));
    global1 = abs(abs(~(vec2<u32>(87015u, 91508u) & vec2<u32>(arg_0.b, 4294967295u))));
    return select(~0u, 1710u, true) != _wgslsmith_dot_vec3_u32(vec3<u32>(46702u, 1u, _wgslsmith_mod_u32(u_input.a, 0u)) >> (vec3<u32>(func_4(var_0).d.a.b, 85006u, arg_0.b) % vec3<u32>(32u)), vec3<u32>(arg_0.b, 112160u, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(select(799f, 545f, func_1(Struct_1(vec2<bool>(true, false), global1.x)))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f - _wgslsmith_f_op_f32(390f + -726f)) * func_2(Struct_2(312f, false, vec4<i32>(28072i, 0i, -2147483647i, 1i), vec3<bool>(true, true, false)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1886f, 2000f, -1060f, -1523f)), Struct_2(-921f, false, vec4<i32>(2560i, -740i, 0i, -2147483647i), vec3<bool>(true, false, false))).a)), func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -444f), !all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(trunc(-570f)), func_3(vec2<bool>(true, true), Struct_4(-2307f, false, -1389f, Struct_3(Struct_1(vec2<bool>(true, false), global1.x), Struct_2(-112f, false, vec4<i32>(28006i, -45218i, 2147483647i, -39679i), vec3<bool>(true, false, true)))), func_3(vec2<bool>(false, false), Struct_4(-289f, false, 882f, Struct_3(Struct_1(vec2<bool>(false, true), 1u), Struct_2(-821f, false, vec4<i32>(-1i, -2147483647i, 0i, -2147483647i), vec3<bool>(false, true, true)))), Struct_2(-2953f, false, vec4<i32>(-2147483647i, 106522i, 1i, 2147483647i), vec3<bool>(true, false, true))).d.b).d)).d);
    var var_1 = all(var_0.d.b.d);
    let var_2 = reverseBits(_wgslsmith_clamp_vec2_i32(var_0.d.b.c.xy, ~var_0.d.b.c.zz, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d.b.c.x, 2147483647i), vec2<i32>(-21776i, var_0.d.b.c.x), vec2<i32>(-41650i, var_0.d.b.c.x) & var_0.d.b.c.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a << (0u % 32u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(16729u, 4294967295u, 76218u, var_0.d.a.b), vec4<u32>(0u, 1u, global1.x, var_0.d.a.b)))) & abs(vec2<u32>(abs(42192u), 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1045f, var_0.d.b.a)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d.b.a, -1533f))))), firstLeadingBit(vec2<u32>(33188u, 1u)), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(3961u, var_0.d.a.b) ^ vec2<u32>(1u, 92003u), ~vec2<u32>(71038u, global1.x)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(70040u, 58567u), ~vec2<u32>(79961u, u_input.a))));
}

