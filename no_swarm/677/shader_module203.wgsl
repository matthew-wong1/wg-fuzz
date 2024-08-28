struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_3,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(1122u);

var<private> global1: i32;

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false));

var<private> global3: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(35869u, 16956u), vec2<u32>(0u, 0u), vec2<u32>(9151u, 87348u), vec2<u32>(35448u, 1u), vec2<u32>(19756u, 4294967295u), vec2<u32>(4725u, 4294967295u), vec2<u32>(4294967295u, 3907u), vec2<u32>(4294967295u, 34137u), vec2<u32>(24848u, 0u), vec2<u32>(1u, 5910u), vec2<u32>(0u, 90453u), vec2<u32>(4294967295u, 1u), vec2<u32>(20969u, 55761u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_5, arg_3: Struct_3) -> Struct_1 {
    return arg_1.c;
}

fn func_3() -> vec3<i32> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1986f));
    let var_2 = Struct_4((_wgslsmith_div_vec4_u32(u_input.e << (u_input.e % vec4<u32>(32u)), vec4<u32>(global0.a, 1u, 49645u, 0u)) << (~vec4<u32>(1u, u_input.a, global0.a, global0.a) % vec4<u32>(32u))) << (u_input.e % vec4<u32>(32u)), select(abs(u_input.b | (i32(-1i) * -12319i)), abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-2147483647i, u_input.b)))), func_1(select(true, true, true) | true, Struct_2(-vec3<i32>(u_input.b, -39241i, u_input.b), reverseBits(u_input.b), func_1(false, Struct_2(vec3<i32>(0i, 19073i, -1899i), u_input.b, Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(var_1, -533f, -1000f, var_1), false, vec4<i32>(u_input.b, -1i, u_input.b, 0i)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<i32>(2147483647i, u_input.b, 58033i)), Struct_5(1u), Struct_3(vec4<u32>(14025u, u_input.a, global0.a, global0.a))), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (u_input.e % vec4<u32>(32u)), vec3<i32>(-2147483647i, 2147483647i, u_input.b) ^ vec3<i32>(u_input.b, -9913i, -1i)), Struct_5(~u_input.a), Struct_3(~vec4<u32>(31380u, global0.a, global0.a, 43202u))).c), Struct_3(u_input.e), Struct_2(vec3<i32>(~1i, u_input.b, abs(1i)), -17661i, func_1(max(u_input.b, 2147483647i) >= max(u_input.b, 53565i), Struct_2(vec3<i32>(34852i, u_input.b, 25925i), -u_input.b, func_1(true, Struct_2(vec3<i32>(-34965i, u_input.b, -2147483647i), 9712i, Struct_1(global2[_wgslsmith_index_u32(global0.a, 11u)], vec4<f32>(-1000f, var_1, -936f, var_1), false, vec4<i32>(u_input.b, u_input.b, u_input.b, -48080i)), vec4<i32>(2147483647i, -62607i, u_input.b, 7773i), vec3<i32>(u_input.b, u_input.b, u_input.b)), Struct_5(7323u), Struct_3(vec4<u32>(global0.a, 57580u, 0u, u_input.a))), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b) ^ vec4<i32>(u_input.b, 25846i, -1i, -5136i), vec3<i32>(1i, 31748i, u_input.b)), Struct_5(global0.a << (1u % 32u)), Struct_3(vec4<u32>(0u, 58479u, 1u, 1u))), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-8781i, u_input.b, -30568i, 1i), vec4<i32>(-1i, 2147483647i, 0i, u_input.b)), ~u_input.b, i32(-1i) * -u_input.b, max(u_input.b, u_input.b | 1i)), _wgslsmith_div_vec3_i32((vec3<i32>(u_input.b, u_input.b, u_input.b) & vec3<i32>(3611i, 2147483647i, -2526i)) & (vec3<i32>(2147483647i, u_input.b, -18449i) << (vec3<u32>(55798u, u_input.d, u_input.c.x) % vec3<u32>(32u))), vec3<i32>(20371i, 1i, u_input.b))), firstLeadingBit(-u_input.b | -u_input.b));
    let var_3 = _wgslsmith_dot_vec2_i32(~reverseBits(~vec2<i32>(0i, 3601i)), ~(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, var_2.b), var_2.d.c.d.wz)));
    let var_4 = global2[_wgslsmith_index_u32(45426u, 11u)];
    return var_2.d.d.yww;
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0.d.c.a.wxw;
    let var_1 = arg_0.d.d.x;
    let var_2 = Struct_5(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_sub_u32(1u, abs(arg_0.c.a.x >> (1u % 32u)))));
    let var_3 = -1i;
    var var_4 = reverseBits(select(arg_2.d.zwz, func_3(), all(select(vec3<bool>(false, false, arg_2.c), vec3<bool>(arg_2.a.x, var_0.x, true), false)) && any(arg_0.d.c.a.wz)));
    return _wgslsmith_f_op_f32(trunc(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(456f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) - _wgslsmith_f_op_f32(f32(-1f) * -2103f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -964f), _wgslsmith_f_op_f32(min(884f, -2017f))))), _wgslsmith_f_op_f32(ceil(-393f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1435f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(242f, 2217f)) * var_0.x))), -1000f, _wgslsmith_f_op_f32(step(633f, _wgslsmith_f_op_f32(func_2(Struct_4(u_input.e, 14954i, Struct_3(u_input.e), Struct_2(vec3<i32>(u_input.b, -39994i, 29502i), u_input.b, Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(1165f, var_0.x, var_0.x, var_0.x), false, vec4<i32>(u_input.b, 1i, u_input.b, -1i)), vec4<i32>(40529i, -20374i, u_input.b, -23461i), vec3<i32>(15801i, u_input.b, u_input.b)), 997i), -1336f, func_1(true, Struct_2(vec3<i32>(u_input.b, -11120i, u_input.b), -5189i, Struct_1(global2[_wgslsmith_index_u32(global0.a, 11u)], vec4<f32>(-1687f, -1242f, 1824f, 376f), true, vec4<i32>(u_input.b, -40984i, u_input.b, u_input.b)), vec4<i32>(2147483647i, -2147483647i, 23596i, 1i), vec3<i32>(2147483647i, u_input.b, u_input.b)), Struct_5(1u), Struct_3(u_input.e)))))), var_0.x));
    let var_2 = Struct_4(vec4<u32>(~(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.e.x), u_input.e.zxx) % 32u)), _wgslsmith_mult_u32(11393u, global0.a), global0.a, abs(1u) ^ global0.a), _wgslsmith_div_i32(u_input.b, -22498i), Struct_3(u_input.e), Struct_2(-select(func_1(false, Struct_2(vec3<i32>(41005i, -2147483647i, u_input.b), -2147483647i, Struct_1(global2[_wgslsmith_index_u32(u_input.e.x, 11u)], vec4<f32>(1856f, -641f, var_1.x, 1451f), false, vec4<i32>(-3803i, 25678i, 2147483647i, -15551i)), vec4<i32>(-2147483647i, 46649i, u_input.b, 2147483647i), vec3<i32>(u_input.b, u_input.b, 0i)), Struct_5(global0.a), Struct_3(u_input.e)).d.yxw, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-22735i, 2147483647i, 0i)), any(global2[_wgslsmith_index_u32(u_input.c.x, 11u)])), -16492i, Struct_1(!global2[_wgslsmith_index_u32(6760u, 11u)], vec4<f32>(_wgslsmith_f_op_f32(floor(-170f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(var_0.x)), -478f), u_input.d >= global0.a, ~abs(vec4<i32>(-52965i, u_input.b, 53223i, u_input.b))), -vec4<i32>(-u_input.b, u_input.b, 91365i, 54322i | u_input.b), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i) & vec3<i32>(u_input.b, 2147483647i, -12204i), -vec3<i32>(20161i, 43432i, u_input.b))), firstLeadingBit(~select(1i, u_input.b, true)));
    var var_3 = any(vec4<bool>(!(true | var_2.d.c.a.x), false, var_2.d.c.a.x, var_2.d.c.c));
    global2 = array<vec4<bool>, 11>();
    global3 = array<vec2<u32>, 13>();
    var var_4 = var_2.d.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(var_2.d.e, vec3<i32>(firstTrailingBit(2147483647i), -abs(2147483647i), -19468i), vec3<i32>(~2147483647i, min(u_input.b, u_input.b), u_input.b) & _wgslsmith_mod_vec3_i32(var_2.d.a, select(vec3<i32>(-1i, var_2.d.b, u_input.b), var_2.d.a, var_2.d.c.a.yyx))), 0u);
}

