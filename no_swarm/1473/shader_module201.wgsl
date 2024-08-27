struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 6>;

var<private> global2: array<Struct_2, 32>;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(1522f, 65001u, vec4<i32>(14931i, -41770i, i32(-2147483648), -1619i), false), Struct_2(361f, 0u, vec4<i32>(-4996i, -38150i, 1i, 1i), true), Struct_2(514f, 1u, vec4<i32>(1i, 1i, 17042i, 0i), true), Struct_2(-422f, 11690u, vec4<i32>(2147483647i, 25377i, 3619i, i32(-2147483648)), true), Struct_2(-1458f, 15554u, vec4<i32>(2147483647i, -11979i, -1i, 28180i), false), Struct_2(1141f, 4294967295u, vec4<i32>(-8258i, -14913i, 2147483647i, 0i), true), Struct_2(310f, 13581u, vec4<i32>(-29818i, 0i, 1i, 0i), false), Struct_2(-737f, 0u, vec4<i32>(-50429i, -16180i, -5701i, -40277i), true), Struct_2(-509f, 0u, vec4<i32>(0i, -7775i, 0i, 1i), false), Struct_2(-399f, 0u, vec4<i32>(0i, -1i, 1i, 30741i), true), Struct_2(-1619f, 52601u, vec4<i32>(-77372i, -19167i, 2147483647i, 24303i), false), Struct_2(-1625f, 1u, vec4<i32>(-12660i, i32(-2147483648), i32(-2147483648), 6652i), true), Struct_2(988f, 19013u, vec4<i32>(-31892i, 0i, 49809i, 44716i), true), Struct_2(-966f, 24094u, vec4<i32>(16989i, 1i, 8215i, 30645i), false), Struct_2(821f, 3762u, vec4<i32>(0i, 1i, 3196i, 29168i), true), Struct_2(1000f, 0u, vec4<i32>(-32551i, 2147483647i, 0i, -15525i), true), Struct_2(1743f, 97005u, vec4<i32>(-1i, 1i, -1i, 38932i), false), Struct_2(1022f, 54375u, vec4<i32>(i32(-2147483648), i32(-2147483648), -64489i, -3885i), true), Struct_2(788f, 1u, vec4<i32>(2147483647i, -37198i, 18509i, 2147483647i), false), Struct_2(-278f, 2867u, vec4<i32>(-1i, 1i, -1i, -42604i), true), Struct_2(-1078f, 4294967295u, vec4<i32>(0i, 1i, i32(-2147483648), 91i), false));

var<private> global4: u32 = 0u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<i32, 6>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(711f, 341f, arg_0.b))))), 220f, arg_0.c);
    global2 = array<Struct_2, 32>();
    let var_0 = u_input.e;
    global2 = array<Struct_2, 32>();
    return false;
}

fn func_2() -> vec3<f32> {
    var var_0 = !vec2<bool>(select(true, true & all(global0.c), false), all(vec3<bool>(func_3(Struct_1(global0.a, global0.a.x, global0.c)), !global0.c.x, global0.c.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -505f))))), _wgslsmith_mult_u32(min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 36327u, 1u, u_input.c)), ~vec4<u32>(u_input.d, u_input.c, u_input.a.x, 56679u)), select(u_input.d, 4294967295u, var_0.x) | max(u_input.c, 0u)), u_input.d | _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, 4294967295u), 13671u)), ~(-_wgslsmith_mult_vec4_i32(select(u_input.e, vec4<i32>(-1i, 57674i, 23860i, 1i), false), u_input.e)), any(!global0.c.zxz));
    let var_2 = (-20732i != _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x ^ 23605u, 6u)], -2147483647i, _wgslsmith_mult_i32(6419i, u_input.e.x), var_1.c.x), _wgslsmith_sub_vec4_i32(u_input.e | vec4<i32>(global1[_wgslsmith_index_u32(var_1.b, 6u)], global1[_wgslsmith_index_u32(79804u, 6u)], 1i, global1[_wgslsmith_index_u32(var_1.b, 6u)]), select(var_1.c, var_1.c, false)))) & (var_0.x & true);
    global2 = array<Struct_2, 32>();
    var var_3 = global0.a;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -323f), -779f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(min(567f, 492f)), false)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-799f)), _wgslsmith_div_f32(var_3.x, 1625f), 557f) * _wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-647f, -566f, var_3.x)))), vec3<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(round(global0.a.x))), var_3.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), global0.a)), _wgslsmith_f_op_f32(abs(-268f)), global0.c);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    global4 = _wgslsmith_mult_u32(~u_input.a.x, 1u) << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.yyy, u_input.a.zyw), countOneBits(u_input.a.xxx)), ~u_input.a.yzx, u_input.a.wwz), vec3<u32>(1u, ~(u_input.c >> (51802u % 32u)), 41075u)) % 32u);
    global3 = array<Struct_2, 21>();
    var var_0 = u_input.d;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-677f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * global0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x))), 1751f, 915f), global0.a.x, vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(321f))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.b)), _wgslsmith_f_op_f32(arg_1 + -1902f))), arg_0.c.x, (global0.c.x || any(global0.c)) | true, true));
    var_0 = countOneBits(abs(countOneBits(0u)));
    return 11563u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(sign(1912f))), global0.c);
    let var_0 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.c, abs(57946u ^ u_input.c))) | func_4(func_1(Struct_2(-501f, u_input.c, ~vec4<i32>(24386i, -8658i, 37928i, 58483i), all(global0.c.www)), vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], -2147483647i), u_input.e), -26062i << (u_input.a.x % 32u)), !select(vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(false, false, global0.c.x, global0.c.x), global0.c), vec3<u32>(u_input.c, ~u_input.d, 1u)), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_sub_vec4_i32(~(vec4<i32>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], -1i, -40903i) << (vec4<u32>(0u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c << (u_input.a.x % 32u), 6u)], 1i, global1[_wgslsmith_index_u32(61795u, 6u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]))), global1[_wgslsmith_index_u32(113094u, 6u)]), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b, var_0.a)) * _wgslsmith_f_op_f32(-980f - -713f)) * var_0.a))), var_0.a, global0.a.x, firstLeadingBit(~abs(var_0.b)));
}

