struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-856f, -775f, 1062f, 139f);

var<private> global1: Struct_1;

var<private> global2: array<u32, 22> = array<u32, 22>(9243u, 60931u, 0u, 0u, 0u, 22551u, 4294967295u, 1u, 0u, 87762u, 0u, 3203u, 4294967295u, 15557u, 30514u, 16059u, 4294967295u, 60815u, 1u, 1u, 1u, 18131u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0, arg_0), vec2<i32>(abs(arg_0), -arg_0)), vec2<i32>(i32(-1i) * -2147483647i, -1i | arg_0) >> (vec2<u32>(countOneBits(global1.b), 4294967295u ^ global1.b) % vec2<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-335i, -14134i, -1i, -1720i)), reverseBits(vec4<i32>(0i, arg_0, arg_0, 2147483647i)))), ~(-2147483647i)));
    var var_1 = !(-1226f < global0.x);
    var_1 = false;
    var_0 = 22881i;
    global1 = Struct_1(global1.a, ~(~countOneBits(32141u & global2[_wgslsmith_index_u32(30405u, 22u)])));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(400f, global0.x, global0.x, -192f) - vec4<f32>(global0.x, global0.x, 1450f, 745f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, 765f, 688f, 1385f), vec4<f32>(global0.x, global0.x, -819f, 841f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1078f, -758f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -127f, global0.x, global0.x) + vec4<f32>(-602f, 1605f, 1264f, 2283f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-480f, 426f), -1828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x + -350f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(803f, global0.x, global0.x, 766f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 169f, global0.x, 252f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1024f, global0.x, 576f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1401f, global0.x, global0.x, -1238f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 22u)] ^ _wgslsmith_add_u32(4294967295u, global1.b);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec2_i32(~vec2<i32>(-25280i, 5564i), -reverseBits(vec2<i32>(1i, 2147483647i))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(359f, global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -1267f, 646f, 384f), vec4<f32>(global0.x, -1696f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, global0.x, global0.x, -542f)))))));
    var var_1 = ~0u;
    var var_2 = firstLeadingBit(vec2<u32>(firstTrailingBit(min(_wgslsmith_mult_u32(var_0, global1.b), 0u << (u_input.a % 32u))), var_0));
    global2 = array<u32, 22>();
    return Struct_1(true & (all(select(vec3<bool>(true, true, global1.a), vec3<bool>(global1.a, false, global1.a), global1.a)) | false), var_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = max(~(~(~vec3<u32>(83042u, 34358u, 1u)) >> (~(~vec3<u32>(0u, 27357u, arg_0.b)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(~1u, 0u, ~4294967295u), ~select(vec3<u32>(0u, arg_2.b.b, 41912u), vec3<u32>(0u, global2[_wgslsmith_index_u32(arg_2.c.b, 22u)], u_input.b), arg_2.d.www)) >> (_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global1.b, arg_2.c.b, u_input.a)), vec3<u32>(_wgslsmith_div_u32(30297u, global1.b), u_input.b, ~global1.b)) % vec3<u32>(32u)));
    let var_1 = Struct_2(1u, Struct_1(false, ~func_2().b), arg_2.b, vec4<bool>(any(vec2<bool>(arg_2.b.a, all(arg_2.d.zxw))), true, ~min(arg_0.b, 23264u) > ~reverseBits(4294967295u), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1200f))))));
    global2 = array<u32, 22>();
    let var_2 = false;
    global2 = array<u32, 22>();
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    let var_0 = arg_1.c;
    global0 = vec4<f32>(arg_0.e, -539f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-973f * -1431f) - -242f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(633f))), true | (true & arg_1.b))))), -437f);
    var var_1 = !((false != arg_0.d.x) & func_2().a);
    var var_2 = select(arg_1.a.a, false, false);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_div_f32(1727f, global0.x), 265f, _wgslsmith_f_op_f32(trunc(global0.x))));
    return Struct_2(max(43283u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~global1.b, 1u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(28580u, 33239u, u_input.a), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], arg_0.a, 4294967295u)), 2547u))), func_2(), arg_0.b, vec4<bool>(!global1.a, true, arg_1.b, true), 754f);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = 78325u;
    var var_1 = Struct_1(global1.a, ~arg_0.b & 1u);
    let var_2 = func_5(func_4(func_2(), ~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, -1i, 0i), vec4<i32>(-19909i, 16342i, -1i, 1i)), -vec4<i32>(-34983i, 20619i, 10839i, -2147483647i)), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, global1.b), ~vec2<u32>(arg_1, 1u)), func_2(), Struct_1(true, min(global1.b, 0u)), select(select(vec4<bool>(false, true, var_1.a, false), vec4<bool>(false, true, arg_0.a, var_1.a), vec4<bool>(false, var_1.a, true, global1.a)), !vec4<bool>(false, arg_0.a, arg_0.a, true), select(vec4<bool>(arg_0.a, true, false, true), vec4<bool>(arg_0.a, true, arg_0.a, var_1.a), vec4<bool>(arg_0.a, false, var_1.a, false))), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(step(-1418f, global0.x)))))), Struct_3(arg_0, var_1.a, -max(abs(vec3<i32>(2147483647i, 14834i, 0i)), vec3<i32>(2147483647i, -36808i, -12709i))));
    let var_3 = var_2.d;
    global0 = vec4<f32>(global0.x, -1695f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f) * var_2.e))) - _wgslsmith_f_op_vec4_f32(func_3(~34668i)).x), global0.x);
    return Struct_1(any(vec4<bool>(true, true, any(vec4<bool>(arg_0.a, arg_0.a, var_1.a, var_1.a)), true)) & var_2.c.a, 53143u & _wgslsmith_sub_u32(41594u, 1u >> (arg_1 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    global1 = func_1(Struct_1(global1.a, 4294967295u), ~(~countOneBits(_wgslsmith_mult_u32(1u, global1.b))));
    let var_1 = global1.b;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(round(1784f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_vec4_f32(func_3(countOneBits(-653i))).x)));
    let var_3 = Struct_3(func_4(func_5(func_4(Struct_1(false, 99728u), ~vec4<i32>(-27006i, 35862i, 1i, -4809i), func_5(Struct_2(1u, Struct_1(true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b, 22u)], 22u)]), Struct_1(true, 1u), vec4<bool>(var_0.x, false, var_0.x, true), var_2.x), Struct_3(Struct_1(true, u_input.a), false, vec3<i32>(-2147483647i, 53078i, -2147483647i)))), Struct_3(Struct_1(var_0.x, 4294967295u), any(vec3<bool>(true, var_0.x, global1.a)), vec3<i32>(-310i, 49224i, -2147483647i))).c, firstTrailingBit(-vec4<i32>(1i, 1i, 1i, 1i)), Struct_2(u_input.b, func_4(Struct_1(global1.a, u_input.a), vec4<i32>(1i, 1i, 1i, 1i), func_5(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 22u)], Struct_1(true, global1.b), Struct_1(false, 70638u), vec4<bool>(var_0.x, false, var_0.x, global1.a), 1354f), Struct_3(Struct_1(global1.a, 1u), false, vec3<i32>(31591i, 2147483647i, 0i)))).c, func_5(func_5(Struct_2(global2[_wgslsmith_index_u32(89751u, 22u)], Struct_1(var_0.x, 4294967295u), Struct_1(var_0.x, 33417u), vec4<bool>(global1.a, global1.a, false, global1.a), global0.x), Struct_3(Struct_1(global1.a, 41484u), false, vec3<i32>(-40254i, 2147483647i, 6422i))), Struct_3(Struct_1(var_0.x, u_input.b), var_0.x, vec3<i32>(2147483647i, 20730i, -32250i))).c, vec4<bool>(true, any(vec4<bool>(var_0.x, var_0.x, global1.a, false)), true, func_2().a), 486f)).b, all(vec4<bool>(var_0.x, global1.a, true, any(vec2<bool>(false, false)))), vec3<i32>(-36746i, max(_wgslsmith_mult_i32(-2147483647i, 1i), ~1i), _wgslsmith_dot_vec2_i32(~max(vec2<i32>(39462i, -1i), vec2<i32>(-1i, -50505i)), vec2<i32>(1i, 1i))));
    var var_4 = -(vec4<i32>(var_3.c.x, firstTrailingBit(var_3.c.x) & ~var_3.c.x, -_wgslsmith_sub_i32(64609i, var_3.c.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -4390i, var_3.c.x), vec3<i32>(var_3.c.x, var_3.c.x, 26803i)), _wgslsmith_sub_i32(-2147483647i, -1i))) & ~(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, var_3.c.x, var_3.c.x), vec4<i32>(1i, 29439i, var_3.c.x, -2147483647i))));
    let var_5 = 2147483647i;
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) + _wgslsmith_f_op_f32(f32(-1f) * -381f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f), global0.x), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-456f + 541f) * var_2.x))));
}

