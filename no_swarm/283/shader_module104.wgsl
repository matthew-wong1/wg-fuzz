struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(23256i, i32(-2147483648), -34401i, 1i, -1i, 7187i, 0i, -24959i, i32(-2147483648), -1i, -4798i, 0i, i32(-2147483648), 1i, 1i);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global1 = arg_0;
    global0 = array<i32, 15>();
    var var_0 = Struct_2(!vec4<bool>(all(vec3<bool>(true, true, true)), (u_input.d.x < 63854u) && true, true, false));
    var var_1 = vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~select(vec3<u32>(1u, u_input.d.x, 22147u), u_input.d, var_0.a.xwz), ~(u_input.d << (vec3<u32>(4294967295u, 11467u, u_input.d.x) % vec3<u32>(32u)))), select(vec3<u32>(_wgslsmith_clamp_u32(33363u, 0u, u_input.d.x), u_input.d.x, _wgslsmith_clamp_u32(0u, 3157u, u_input.d.x)), u_input.d, any(!vec2<bool>(var_0.a.x, var_0.a.x)))), 15u)], firstTrailingBit(~min(27795i, -global0[_wgslsmith_index_u32(0u, 15u)])));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a)) * -1000f);
    return (vec3<u32>(_wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_mult_u32(4294967295u, u_input.d.x), u_input.d.x), ~u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, ~u_input.d.x)) ^ vec3<u32>(_wgslsmith_sub_u32(~u_input.d.x, 4294967295u), _wgslsmith_mod_u32(u_input.d.x, 1u), _wgslsmith_div_u32(reverseBits(4294967295u), u_input.d.x))) & (~(~abs(u_input.d)) & vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 74460u, u_input.d.x, u_input.d.x)), 10150u), _wgslsmith_div_u32(select(u_input.d.x, u_input.d.x, var_0.a.x), _wgslsmith_mod_u32(u_input.d.x, u_input.d.x)), _wgslsmith_mod_u32(28108u, u_input.d.x << (u_input.d.x % 32u))));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(31494u, ~u_input.d.x), 15u)], firstTrailingBit(u_input.a.x), -9683i);
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.a)))));
    let var_1 = Struct_2(!vec4<bool>(all(arg_0), false, !arg_0.x || any(vec3<bool>(false, arg_0.x, false)), u_input.d.x <= (u_input.d.x & u_input.d.x)));
    global0 = array<i32, 15>();
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1.a)), _wgslsmith_f_op_f32(global1.a + global1.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, -186f))))), global1.a, ~func_3(Struct_1(583f)) & max(reverseBits(~u_input.d), countOneBits(u_input.d)), Struct_2(var_1.a), var_1);
    return ~reverseBits(var_2.c.x);
}

fn func_1() -> Struct_3 {
    var var_0 = 17963u;
    global0 = array<i32, 15>();
    var_0 = ~_wgslsmith_mult_u32(abs(func_2(vec2<bool>(true, false))), ~u_input.d.x) << (_wgslsmith_div_u32(select(~u_input.d.x, 1u, -u_input.c.x != (i32(-1i) * -2147483647i)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(28619u, 23246u), _wgslsmith_dot_vec4_u32(vec4<u32>(10107u, 0u, u_input.d.x, 1u), vec4<u32>(u_input.d.x, u_input.d.x, 8285u, u_input.d.x))) ^ ~abs(u_input.d.x)) % 32u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a, 1f))));
    global1 = var_1;
    return Struct_3(var_1, var_1.a, u_input.d, Struct_2(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, global1.a < var_1.a, true), !select(true, false, false))), Struct_2(!vec4<bool>(true, true, false, all(vec4<bool>(true, false, true, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_2 {
    let var_0 = vec2<i32>(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), ~u_input.a.yx)), 2147483647i | _wgslsmith_dot_vec3_i32(u_input.c.yxw, vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), u_input.c.x, global0[_wgslsmith_index_u32(~arg_0.c.x, 15u)])));
    global1 = arg_0.a;
    var var_1 = arg_1.a;
    global1 = arg_0.a;
    let var_2 = func_1().d.a.yxw;
    return Struct_2(select(arg_0.e.a, !vec4<bool>(arg_3, arg_3, arg_2 || false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(-1000f * -2101f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.a, -2342f)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_0.a.a, arg_0.b, global1.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-570f, -276f, arg_1.x, -388f) - vec4<f32>(871f, -101f, 575f, 623f))) + vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(min(-301f, -1187f)), _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(sign(global1.a)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1349f)), _wgslsmith_f_op_f32(round(-401f)), global1.a, _wgslsmith_f_op_f32(arg_1.x * 601f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a.a, arg_1.x, arg_0.b, arg_0.b))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-554f + arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -227f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(187f, -703f, -410f, arg_1.x))))), vec4<f32>(642f, global1.a, -243f, 218f)));
    var var_1 = 29247u;
    let var_2 = _wgslsmith_div_vec3_u32(arg_2.c, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~(arg_2.c.x >> (4294967295u % 32u)), _wgslsmith_mod_u32(~arg_0.c.x, 48092u)), ~(~(~vec3<u32>(u_input.d.x, arg_0.c.x, 0u)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(global1.a, arg_0.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1056f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * -589f), arg_0.e.a.x)))), _wgslsmith_div_f32(-1216f, _wgslsmith_f_op_f32(round(192f))));
    let var_3 = countOneBits(~countOneBits(~4294967295u));
    return arg_2.e;
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(arg_0.a);
    var_0 = Struct_2(func_4(Struct_3(func_1().a, _wgslsmith_f_op_f32(global1.a * -1997f), u_input.d, func_1().d, Struct_2(func_5(Struct_3(Struct_1(global1.a), global1.a, u_input.d, arg_0, arg_0), vec3<f32>(-284f, global1.a, 1000f), Struct_3(Struct_1(-710f), -1482f, u_input.d, Struct_2(vec4<bool>(arg_0.a.x, false, arg_0.a.x, false)), Struct_2(var_0.a))).a)), func_1().a, !(false & arg_0.a.x) | true, any(vec2<bool>(true, true)) & (func_5(Struct_3(Struct_1(global1.a), -1000f, u_input.d, arg_0, Struct_2(vec4<bool>(var_0.a.x, arg_0.a.x, false, arg_0.a.x))), vec3<f32>(771f, 1000f, 584f), Struct_3(Struct_1(global1.a), global1.a, u_input.d, arg_0, Struct_2(vec4<bool>(false, true, var_0.a.x, false)))).a.x & arg_0.a.x)).a);
    var_0 = func_4(Struct_3(Struct_1(func_1().a.a), -120f, reverseBits(vec3<u32>(u_input.d.x, func_3(Struct_1(global1.a)).x, func_1().c.x)), arg_0, func_1().e), Struct_1(616f), !var_0.a.x | var_0.a.x, var_0.a.x);
    global0 = array<i32, 15>();
    let var_1 = func_1().a;
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    global1 = func_6(func_5(Struct_3(Struct_1(_wgslsmith_f_op_f32(global1.a - -150f)), _wgslsmith_f_op_f32(ceil(-135f)), u_input.d, func_4(func_1(), func_1().a, true, false), Struct_2(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-2228f)), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(-108f, 143f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a) - vec3<f32>(global1.a, global1.a, -921f)))), func_1()), ~114326u, vec3<i32>(global0[_wgslsmith_index_u32(~u_input.d.x, 15u)], 2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-36033i, u_input.a.x), vec2<i32>(-20957i, u_input.a.x))) | _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, global0[_wgslsmith_index_u32(0u, 15u)]), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(24478i, 0i, -2530i, -20481i), vec4<i32>(12842i, global0[_wgslsmith_index_u32(38629u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]))), vec3<i32>(2147483647i, firstTrailingBit(global0[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, -1i), vec3<i32>(-57333i, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])))));
    var var_0 = any(vec4<bool>(true, true, !select(true, func_4(Struct_3(Struct_1(627f), -1019f, u_input.d, Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, true, false, false))), Struct_1(global1.a), true, false).a.x, true), u_input.c.x > firstLeadingBit(2147483647i)));
    var var_1 = Struct_3(func_6(func_5(Struct_3(Struct_1(global1.a), func_6(Struct_2(vec4<bool>(false, true, true, false)), 0u, vec3<i32>(global0[_wgslsmith_index_u32(52566u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.d.x, 15u)])).a, u_input.d, func_4(Struct_3(Struct_1(global1.a), 486f, vec3<u32>(u_input.d.x, u_input.d.x, 9384u), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, true, true, true))), Struct_1(-1130f), true, true), func_1().d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, global1.a, 323f)), func_1()), 1u, vec3<i32>(7989i, global0[_wgslsmith_index_u32(firstTrailingBit(0u), 15u)], 59633i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2147f))), min(~(~u_input.d), _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(28422u, 16515u, u_input.d.x)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 115176u), u_input.d)) >> (reverseBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(10600u, 27280u, 0u), u_input.d, vec3<u32>(1u, 16615u, u_input.d.x))) % vec3<u32>(32u)), func_5(Struct_3(Struct_1(global1.a), _wgslsmith_f_op_f32(ceil(global1.a)), vec3<u32>(u_input.d.x ^ 15792u, 35091u, select(0u, u_input.d.x, true)), Struct_2(vec4<bool>(false, true, false, false)), func_1().e), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, -381f) * _wgslsmith_f_op_f32(-global1.a)), global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a, -556f)) + _wgslsmith_f_op_f32(-global1.a))), Struct_3(Struct_1(_wgslsmith_f_op_f32(global1.a - -1345f)), -1000f, ~countOneBits(u_input.d), Struct_2(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true)), Struct_2(vec4<bool>(true, true, true, true)))), Struct_2(vec4<bool>(true, true, true, true)));
    var var_2 = !all(var_1.e.a.yxz);
    var var_3 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, var_1.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, 716f)))))), var_1.c.x, 4294967295u, vec3<i32>(reverseBits(u_input.b), 6899i, u_input.a.x & u_input.c.x));
}

