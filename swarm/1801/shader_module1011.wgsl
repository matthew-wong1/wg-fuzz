struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(15563i, 37451i, -36790i, 8135i, 17781i, 23736i, -12783i, -1i, 33382i, 4092i, 78227i, 1i, 0i, 2147483647i, -1i, 2147483647i, 1i, 0i, 0i, 1i, 2147483647i, -9191i, 0i, -27315i, -4518i, -40064i, -12258i);

var<private> global1: array<f32, 31>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    let var_0 = arg_0;
    var var_1 = arg_1;
    global0 = array<i32, 27>();
    var var_2 = countOneBits(arg_0);
    let var_3 = _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, 41392u), 13495u), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~4294967295u), 31u)]))));
    return _wgslsmith_f_op_f32(-var_3);
}

fn func_4(arg_0: f32) -> vec2<u32> {
    var var_0 = Struct_4(Struct_1(~(~abs(vec2<u32>(26157u, 23819u))), abs(~(~97058u))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(~1u, ~4294967295u)), 27u)] << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 19694u)), ~vec2<u32>(36897u, 12298u)), ~(~0u)) % 32u), vec4<u32>(firstTrailingBit(countOneBits(20274u)), ~(~37115u), 4294967295u, _wgslsmith_clamp_u32(~(~38433u), ~0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 68862u), 0u))));
    let var_1 = max(~abs(select(vec3<u32>(var_0.a.a.x, var_0.a.b, 0u), _wgslsmith_add_vec3_u32(var_0.c.xwx, var_0.c.yyz), vec3<bool>(true, true, true))), firstTrailingBit(countOneBits(vec3<u32>(~var_0.c.x, ~13152u, var_0.c.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)] + global1[_wgslsmith_index_u32(var_1.x, 31u)]), -485f, -911f)))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(866f, arg_0), _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1004f, 310f, true)))), global1[_wgslsmith_index_u32(0u, 31u)], 2104f));
    let var_3 = 4294967295u;
    var var_4 = var_0.a.a.x;
    return var_1.zx;
}

fn func_2() -> Struct_3 {
    global0 = array<i32, 27>();
    let var_0 = Struct_2(-489f, 1f, Struct_1(func_4(_wgslsmith_f_op_f32(func_3(-34154i, u_input.b.zzw & vec3<i32>(2147483647i, 16807i, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<bool>(true, true), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(364u, 31u)]))))), 1u));
    global1 = array<f32, 31>();
    global0 = array<i32, 27>();
    let var_1 = Struct_4(var_0.c, firstLeadingBit(-1216i), vec4<u32>(abs(var_0.c.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(~18684u, var_0.c.a.x), vec2<u32>(12114u ^ var_0.c.b, var_0.c.a.x)), _wgslsmith_sub_u32(var_0.c.a.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.c.a.x, 0u, var_0.c.b), 4294967295u)), 0u));
    return Struct_3(var_1.b, ~(~firstLeadingBit(u_input.e)), var_0, Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))), -1511f, Struct_1(~(~var_0.c.a), 4294967295u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = u_input.e.zww;
    var var_1 = Struct_3(-var_0.x, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.e), ~u_input.b), vec4<i32>(37419i, countOneBits(2147483647i), -8124i, min(u_input.d, -2147483647i))), arg_0.b << (((vec4<u32>(arg_0.c.c.a.x, 45928u, 4294967295u, arg_0.d.c.b) ^ vec4<u32>(arg_0.c.c.b, 47832u, arg_0.c.c.b, 4294967295u)) ^ firstLeadingBit(vec4<u32>(arg_0.c.c.a.x, 0u, 1u, 0u))) % vec4<u32>(32u))), func_2().d, arg_0.d);
    var_0 = countOneBits(min(vec3<i32>(_wgslsmith_clamp_i32(reverseBits(var_1.a), 0i, 18370i), var_0.x, firstTrailingBit(var_0.x)), vec3<i32>(2147483647i, var_1.b.x, global0[_wgslsmith_index_u32(4294967295u | var_1.c.c.b, 27u)])));
    let var_2 = vec2<u32>(var_1.d.c.b, _wgslsmith_add_u32(~var_1.c.c.b, ~(~11692u | arg_0.d.c.b)));
    var var_3 = _wgslsmith_mod_i32(firstTrailingBit(u_input.b.x & 1i), -35645i);
    return Struct_3(min(-34832i, arg_0.a | -1i), ~select(vec4<i32>(~0i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(7204u, 27u)], global0[_wgslsmith_index_u32(60233u, 27u)]), -global0[_wgslsmith_index_u32(70613u, 27u)], -1i), func_2().b ^ (vec4<i32>(-7575i, -56268i, -23132i, u_input.d) & vec4<i32>(arg_0.b.x, u_input.c.x, u_input.b.x, 8274i)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), func_2().c, Struct_2(global1[_wgslsmith_index_u32(arg_0.d.c.b, 31u)], global1[_wgslsmith_index_u32(abs(select(4294967295u, firstLeadingBit(var_2.x), true)), 31u)], Struct_1(_wgslsmith_mod_vec2_u32(~var_1.c.c.a, ~vec2<u32>(arg_0.c.c.b, var_1.d.c.b)), arg_0.c.c.b)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<u32>) -> vec4<f32> {
    var var_0 = ~37221u;
    var var_1 = arg_0;
    var var_2 = func_5(func_2(), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - -970f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_3.x, 31u)]))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(293f, global1[_wgslsmith_index_u32(0u, 31u)]))))))));
    let var_3 = true;
    return vec4<f32>(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -578f))) + global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(1u, ~arg_3.x), ~(~arg_3.x), var_1.a >= _wgslsmith_div_f32(var_2.d.b, 2117f)), 31u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~(~var_1.c.b), 31u)])) - var_1.b), arg_1);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(arg_1.xw), arg_0.c.zx);
    let var_1 = ~u_input.e.xzw;
    var var_2 = func_2();
    let var_3 = var_2.d.c;
    var var_4 = _wgslsmith_sub_vec4_i32(~(-(select(var_2.b, var_2.b, vec4<bool>(false, false, false, false)) >> (~vec4<u32>(4294967295u, var_2.c.c.a.x, 4294967295u, var_3.b) % vec4<u32>(32u)))), var_2.b);
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -445f), 356f, Struct_1(func_4(_wgslsmith_f_op_f32(f32(-1f) * -794f)), ~(0u << ((arg_3.a.b | arg_1.x) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    global1 = array<f32, 31>();
    let var_1 = all(select(vec2<bool>(true, false), vec2<bool>(true, true), true));
    global1 = array<f32, 31>();
    global0 = array<i32, 27>();
    let var_2 = func_6(Struct_4(Struct_1(vec2<u32>(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(36328u, 1u, 1u, 875u))), 2147483647i, countOneBits(abs(~vec4<u32>(1u, 1u, 27233u, 4294967295u)))), vec4<u32>(1u, 0u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~4294967295u, ~48395u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 31988u), vec2<u32>(1u, 36609u)), 20207u), 40010u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-447f, 1741f, 536f, -1075f))), vec4<f32>(-2610f, -161f, -667f, -424f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(3191u, 4294967295u), 31u)], global1[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(28153u, 31u)]))) + _wgslsmith_f_op_vec4_f32(func_1(Struct_2(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], Struct_1(vec2<u32>(6457u, 4294967295u), 10538u)), 1000f, ~u_input.b.yzx, ~vec2<u32>(4294967295u, 0u))))), Struct_4(func_2().c.c, _wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(24230u, 27u)]) | (-global0[_wgslsmith_index_u32(30205u, 27u)] & select(var_0, u_input.b.x, var_1)), vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = array<f32, 31>();
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_2.c.a, ~vec2<u32>(var_2.c.a.x, ~var_2.c.b)), _wgslsmith_dot_vec3_u32(countOneBits(firstLeadingBit(vec3<u32>(6016u, var_2.c.b, 27809u)) ^ (vec3<u32>(var_2.c.a.x, var_2.c.b, 18592u) >> (vec3<u32>(var_2.c.a.x, 49505u, 44564u) % vec3<u32>(32u)))), vec3<u32>(4294967295u, 4294967295u, func_6(Struct_4(Struct_1(var_2.c.a, 13740u), -2234i, vec4<u32>(var_2.c.a.x, var_2.c.a.x, 49305u, 4294967295u)), select(vec4<u32>(var_2.c.b, 1u, 1u, var_2.c.a.x), vec4<u32>(1u, 7978u, var_2.c.b, 19107u), var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 263f, 766f, var_2.a)), Struct_4(Struct_1(vec2<u32>(var_2.c.b, 63262u), var_2.c.b), u_input.b.x, vec4<u32>(var_2.c.b, var_2.c.b, 0u, 4294967295u))).c.a.x)));
    let var_4 = vec2<bool>(!var_1, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e & _wgslsmith_clamp_vec4_i32(max(~vec4<i32>(-2147483647i, var_0, var_0, -43976i), -vec4<i32>(-2147483647i, 1i, -9118i, 0i)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.c.zy), var_0, global0[_wgslsmith_index_u32(~var_2.c.b, 27u)], -53211i), ~(~vec4<i32>(-58660i, 72424i, 0i, 55009i))));
}

