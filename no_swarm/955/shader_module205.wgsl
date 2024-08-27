struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<f32>, 29>;

var<private> global2: vec3<f32>;

var<private> global3: vec3<f32> = vec3<f32>(1309f, -1000f, 864f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_sub_i32(~(~(~_wgslsmith_mod_i32(arg_0.b, 23267i))), u_input.a.x);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global2.x * global3.x), _wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(trunc(401f))))))), vec3<f32>(207f, _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) * _wgslsmith_div_f32(global2.x, 286f))));
    let var_2 = Struct_3(_wgslsmith_dot_vec4_i32(u_input.a, -min(u_input.a, u_input.d)), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global2.x, global3.x)))), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))))), ((-global0.x >> ((arg_0.a << (13119u % 32u)) % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.a.wx)) & u_input.a.x, true);
    var_0 = u_input.d.x;
    let var_3 = ~0u;
    return var_1.x;
}

fn func_2() -> vec2<bool> {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(global2.x, 926f, true)), _wgslsmith_f_op_f32(func_3(Struct_1(15081u, global0.x, vec4<u32>(11937u, 34421u, u_input.b, u_input.b), vec2<u32>(0u, 88061u)), u_input.b)), 871f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(483f, global3.x, global3.x), vec3<f32>(-1535f, global3.x, -1169f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 1523f, global3.x) - vec3<f32>(global3.x, global2.x, global3.x)))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2051f, global2.x, 1345f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(1359f - global3.x)))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_mult_u32(~0u, abs(u_input.b)), -global0.x & firstLeadingBit(-2147483647i), ~firstTrailingBit(vec4<u32>(13442u, u_input.b, u_input.b, 1u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(17624u, u_input.b), vec2<u32>(u_input.b, u_input.b))), u_input.b)), global3.x);
    var var_1 = Struct_5(u_input.c, Struct_4(Struct_1(u_input.b, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a.x, 60176i), vec2<i32>(0i, global0.x), false), u_input.a.zz), countOneBits(abs(vec4<u32>(1u, 24765u, u_input.b, 0u))), abs(countOneBits(vec2<u32>(u_input.b, u_input.b)))), vec3<i32>(-1i) * -(vec3<i32>(u_input.d.x, global0.x, global0.x) | u_input.d.ywx), Struct_3(u_input.d.x, Struct_1(_wgslsmith_mult_u32(0u, u_input.b), _wgslsmith_clamp_i32(-43312i, 7675i, 24601i), vec4<u32>(37647u, u_input.b, u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(11197u, u_input.b))), -336f, select(global0.x, u_input.d.x, true), _wgslsmith_div_f32(-147f, global2.x) >= global2.x)), Struct_1(u_input.b, ~global0.x, vec4<u32>(33823u, _wgslsmith_mod_u32(38377u, 1u) & ~u_input.b, ~(~1u), u_input.b), ~(~vec2<u32>(u_input.b, 4294967295u))), true);
    let var_2 = u_input.b;
    var var_3 = vec3<i32>(2147483647i >> (~_wgslsmith_div_u32(0u, var_2) % 32u), ~firstTrailingBit(19072i), -var_1.c.b) & u_input.c.yxz;
    return select(!(!vec2<bool>(all(vec2<bool>(var_1.b.c.e, var_1.b.c.e)), true)), !select(vec2<bool>(any(vec4<bool>(false, var_1.b.c.e, var_1.d, true)), true), !vec2<bool>(var_1.b.c.e, true), var_1.b.c.e), !select(!select(vec2<bool>(var_1.b.c.e, var_1.b.c.e), vec2<bool>(var_1.b.c.e, true), var_1.b.c.e), select(!vec2<bool>(var_1.b.c.e, var_1.b.c.e), vec2<bool>(var_1.d, false), select(vec2<bool>(var_1.b.c.e, false), vec2<bool>(false, var_1.b.c.e), vec2<bool>(var_1.b.c.e, true))), select(vec2<bool>(var_1.b.c.e, var_1.b.c.e), select(vec2<bool>(false, var_1.d), vec2<bool>(false, false), vec2<bool>(false, var_1.d)), !vec2<bool>(true, var_1.b.c.e))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = !arg_2.x;
    var var_1 = ~(~(~vec4<u32>(1u, ~1u, 4294967295u & arg_1, ~4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)));
    let var_3 = func_2();
    let var_4 = Struct_2(vec4<f32>(758f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(236f)) + -212f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f + var_2) - _wgslsmith_f_op_f32(var_2 * 659f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f * global3.x)))), Struct_1(_wgslsmith_sub_u32(firstTrailingBit(95862u << (arg_1 % 32u)), reverseBits(var_1.x) << ((arg_1 ^ 0u) % 32u)), -global0.x, vec4<u32>(var_1.x, u_input.b, 1u, firstLeadingBit(1u)), ~reverseBits(_wgslsmith_mult_vec2_u32(var_1.wx, var_1.yw))), min(u_input.c, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -24931i, u_input.d.x, 20167i), -vec4<i32>(-1i, u_input.d.x, -1i, global0.x))) >> (vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 21285u, u_input.b, var_1.x), vec4<u32>(var_1.x, 0u, arg_1, arg_1)), arg_1, var_1.x, 32524u) % vec4<u32>(32u)), _wgslsmith_add_vec3_i32(u_input.d.zzw, vec3<i32>(2147483647i, -2147483647i, ~global0.x)) | _wgslsmith_add_vec3_i32(-(~vec3<i32>(global0.x, -2147483647i, -41310i)), vec3<i32>(-83024i, 8399i, -64679i) | vec3<i32>(-44158i, u_input.d.x, -1i)));
    return vec2<i32>(max(2147483647i, _wgslsmith_dot_vec3_i32(var_4.d, max(vec3<i32>(-1i, global0.x, 2147483647i), vec3<i32>(u_input.a.x, -2147483647i, global0.x)))), _wgslsmith_add_i32(~_wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, -33202i), -1i >> (var_1.x % 32u)), countOneBits(var_4.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(-(~global0.x), firstLeadingBit(23226i));
    var var_0 = -u_input.a.zzx;
    global0 = min(func_1(vec2<f32>(-1817f, 1000f), ~abs(_wgslsmith_sub_u32(27105u, 0u)), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, true), vec4<bool>(true, true, true, true), (u_input.b >= 4294967295u) & (u_input.b <= u_input.b))), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.yy, u_input.c.zz), _wgslsmith_dot_vec4_i32(vec4<i32>(5561i, 0i, global0.x, u_input.d.x), vec4<i32>(global0.x, 8920i, 4725i, -2147483647i)))), vec2<i32>(0i << (u_input.b % 32u), abs(var_0.x)) | (-u_input.d.zz | -u_input.d.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_div_i32(23462i, (global0.x | u_input.d.x) ^ 1i), _wgslsmith_dot_vec2_i32(u_input.c.xw, reverseBits(vec2<i32>(u_input.c.x, -1i))) | u_input.c.x), var_0.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-638f, global2.x, _wgslsmith_f_op_f32(trunc(global3.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, 430f, 1314f))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(563f, 533f, -502f))))), -13997i);
}

