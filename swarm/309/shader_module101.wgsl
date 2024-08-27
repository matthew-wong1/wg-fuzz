struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<Struct_3, 21>;

var<private> global1: Struct_5;

var<private> global2: Struct_5;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(46328i), Struct_1(-14090i), Struct_1(-38632i), Struct_1(1i), Struct_1(10216i), Struct_1(i32(-2147483648)), Struct_1(-71468i), Struct_1(1i), Struct_1(0i), Struct_1(23310i), Struct_1(22172i), Struct_1(53703i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(42119i), Struct_1(2147483647i), Struct_1(1i), Struct_1(1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = arg_2;
    var var_1 = Struct_2(~global1.c.a.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f)), arg_3.c.x, _wgslsmith_f_op_f32(1193f - -809f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f * arg_3.b))))), ~(u_input.a << (arg_0.wz % vec2<u32>(32u))) | min(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -21903i, global1.c.a.a), vec3<i32>(global1.c.a.a, 0i, global2.c.a.a))), abs(u_input.a)));
    var var_2 = ~min(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(41644u, 52471u), _wgslsmith_add_vec2_u32(vec2<u32>(global1.a, 20057u), vec2<u32>(global2.a, 4294967295u))), global2.a, abs(~global2.a)), _wgslsmith_mult_vec3_u32(countOneBits(min(arg_0.zzy, arg_0.xyz)), arg_0.wyz));
    global0 = array<Struct_3, 21>();
    let var_3 = Struct_2(0i, var_1.b, u_input.a);
    return abs(arg_0.xxz);
}

fn func_2(arg_0: Struct_5, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    global3 = array<Struct_1, 18>();
    global2 = Struct_5(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b - 545f))), _wgslsmith_f_op_f32(-arg_3.x)))), arg_0.c);
    var var_0 = (_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.a, 41556u, 4294967295u) ^ func_3(vec4<u32>(global2.a, 1u, global2.a, global2.a), arg_0.c.b, true, global2.c), vec3<u32>(4294967295u, 1u, ~1u)) << (~vec3<u32>(4294967295u, global2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.a, 9678u, global2.a), vec4<u32>(global1.a, 37768u, 16535u, 51417u))) % vec3<u32>(32u))) << (~vec3<u32>(global1.a >> (~0u % 32u), global1.a, 1u ^ ~global2.a) % vec3<u32>(32u));
    let var_1 = vec4<u32>(~global2.a, var_0.x, abs(var_0.x >> (arg_0.a % 32u)), 42760u);
    var_0 = max(var_1.xwz, select(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, arg_0.a), vec3<u32>(4294967295u, global1.a, var_0.x)), countOneBits(_wgslsmith_div_vec3_u32(var_1.xwz, var_1.wzy)), !select(vec3<bool>(false, arg_0.c.d, arg_0.c.d), vec3<bool>(arg_0.c.d, arg_1, false), true))) | abs(vec3<u32>(abs(~0u), 1u, 23802u));
    return Struct_2(1i ^ firstTrailingBit(0i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-538f, _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(max(-168f, 175f))), arg_0.c.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(338f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_3)))), u_input.a);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = ~(~(u_input.a.x & u_input.a.x));
    let var_1 = vec3<bool>(true, false && (((27342u | global1.a) | _wgslsmith_sub_u32(15550u, 1u)) != 0u), false);
    var var_2 = select(select(!vec4<bool>(true & var_1.x, u_input.a.x <= -11719i, true, true), !vec4<bool>(any(vec3<bool>(true, false, false)), !var_1.x, true, true), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, var_1.x, true, false)), select(vec4<bool>(false, false, arg_0, global2.c.d), vec4<bool>(true, arg_0, global1.c.d, global2.c.d), vec4<bool>(false, arg_0, var_1.x, true)), !vec4<bool>(true, false, var_1.x, true)), vec4<bool>(all(vec2<bool>(var_1.x, true)), true, true, true), select(all(vec4<bool>(global2.c.d, var_1.x, global1.c.d, global1.c.d)), 4294967295u == global1.a, select(true, false, true)))), select(select(!(!vec4<bool>(false, false, global1.c.d, global2.c.d)), vec4<bool>(arg_2.x > arg_2.x, true == global1.c.d, true, true), global2.c.d), !select(select(vec4<bool>(global2.c.d, arg_0, true, false), vec4<bool>(var_1.x, global1.c.d, true, true), vec4<bool>(true, false, arg_0, false)), !vec4<bool>(arg_0, false, global2.c.d, global2.c.d), !vec4<bool>(false, true, var_1.x, true)), !vec4<bool>(var_1.x, true, arg_1.b.x >= -147f, global1.c.d)), var_1.x);
    let var_3 = ~(abs(select(global1.c.a.a, 1i, !global2.c.d)) ^ ~abs(-1i));
    let var_4 = global1.c.c;
    return Struct_1(_wgslsmith_add_i32(10974i, var_3));
}

fn func_5(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = Struct_5(116806u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.c.b), _wgslsmith_f_op_f32(-845f - 729f)))), _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(1448f + func_2(Struct_5(13628u, global1.b, global2.c), global2.c.d, false, vec4<f32>(global2.c.c.x, global2.c.c.x, global1.c.c.x, 181f)).b.x))), Struct_4(arg_0, -1258f, global2.c.c, global1.c.d && all(vec4<bool>(global1.c.d, global1.c.d, global1.c.d, true))));
    global0 = array<Struct_3, 21>();
    var_0 = Struct_5(abs(countOneBits(min(global1.a, 0u) ^ 46240u)), _wgslsmith_div_f32(-1513f, _wgslsmith_f_op_f32(round(global1.b))), Struct_4(global1.c.a, 691f, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b * -444f), _wgslsmith_f_op_f32(-var_0.c.c.x))), _wgslsmith_f_op_f32(round(var_0.c.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-778f - 907f) - _wgslsmith_div_f32(global2.c.b, 156f))), true));
    var var_1 = ~abs(firstLeadingBit(max(vec3<i32>(u_input.a.x, arg_0.a, u_input.a.x), vec3<i32>(arg_0.a, 2147483647i, arg_0.a)) & ~vec3<i32>(u_input.a.x, 32805i, -42651i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(364f, var_0.b, var_0.c.c.x, 944f) - vec4<f32>(-891f, global2.b, 1908f, 1869f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-892f, var_0.c.b, global1.b, -886f), vec4<f32>(-531f, global2.c.c.x, var_0.b, -1090f))) * vec4<f32>(global1.c.c.x, global2.b, global1.c.c.x, global2.b)))));
    return countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(16588u, 12374u), vec2<u32>(258u, 1482u)), vec2<u32>(global1.a, global2.a)), global2.a), vec2<u32>(~global1.a, ~var_0.a)));
}

fn func_1() -> Struct_5 {
    var var_0 = !global1.c.d;
    var var_1 = ~func_5(func_4(true, func_2(Struct_5(16749u, global1.b, global2.c), !global2.c.d, true, vec4<f32>(170f, global2.c.b, -658f, global2.b)), ~(~vec4<u32>(6449u, 45167u, global1.a, global2.a))));
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(~countOneBits(_wgslsmith_add_u32(global1.a, 1u)), ~var_1.x, global1.a), 10774u | global1.a);
    var var_3 = -13454i;
    var var_4 = global0[_wgslsmith_index_u32(32682u, 21u)];
    return Struct_5(24752u, -377f, global2.c);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = func_4(any(select(vec2<bool>(true, !global1.c.d), !select(vec2<bool>(false, arg_0.c.d), vec2<bool>(false, arg_1.d.x), vec2<bool>(arg_0.c.d, true)), any(!vec2<bool>(arg_1.d.x, global1.c.d)))), arg_1.c, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.a, global2.a, 17301u, global2.a), vec4<u32>(8778u, global1.a, 4294967295u, 11826u)) << (~vec4<u32>(21270u, arg_0.a, arg_0.a, 4294967295u) % vec4<u32>(32u)), ~(~vec4<u32>(0u, 4294967295u, 51030u, arg_0.a))), vec4<u32>(func_3(~vec4<u32>(40492u, 45983u, global1.a, global1.a), _wgslsmith_f_op_f32(-global2.b), global2.c.a.a == u_input.a.x, Struct_4(global1.c.a, -1070f, vec3<f32>(arg_1.c.b.x, -961f, -1338f), global1.c.d)).x, 67811u, (global2.a ^ 4294967295u) >> (~global2.a % 32u), 1u)));
    var var_1 = abs(vec3<u32>(~(~(~4294967295u)), 4294967295u, _wgslsmith_clamp_u32(7775u, arg_0.a, 81385u)));
    var_1 = ~vec3<u32>(0u, global2.a, abs(~29198u));
    var_1 = ~abs(vec3<u32>(_wgslsmith_add_u32(global1.a, 163214u), ~_wgslsmith_add_u32(0u, 41512u), global2.a));
    global3 = array<Struct_1, 18>();
    return _wgslsmith_f_op_vec4_f32(arg_1.c.b - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), -1828f, func_1().b, global1.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(func_1(), Struct_3(global2.c.a, func_4(all(vec3<bool>(global2.c.d, global1.c.d, true)), func_2(Struct_5(6182u, global1.b, global1.c), global2.c.d, true, vec4<f32>(global1.b, -672f, global1.c.b, global1.c.c.x)), min(vec4<u32>(global1.a, 2927u, global2.a, 1u), vec4<u32>(global1.a, 1u, 4294967295u, global2.a))), func_2(Struct_5(global1.a, -2517f, global1.c), global1.c.d, global2.c.d, vec4<f32>(global2.b, global2.b, -319f, global2.c.b)), !vec4<bool>(global2.c.d, global1.c.d, global2.c.d, global2.c.d)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, -899f, global1.c.b, -791f)) - vec4<f32>(1753f, 645f, global1.b, global2.c.b))))));
    let var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(449f)), _wgslsmith_f_op_f32(floor(global2.c.b))))), -909f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.c.x, _wgslsmith_f_op_f32(sign(177f))) - _wgslsmith_f_op_f32(select(func_1().c.c.x, -868f, true))), _wgslsmith_f_op_f32(sign(-729f))));
}

