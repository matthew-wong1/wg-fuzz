struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 31>;

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    global3 = u_input.a;
    global3 = ((~_wgslsmith_sub_i32(10834i, u_input.b.x) >> (~9534u % 32u)) & (u_input.a << (abs(~u_input.c) % 32u))) << (min(~firstLeadingBit(17431u >> (global4.a.x % 32u)), ~u_input.e.x) % 32u);
    global2 = array<Struct_1, 31>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.c.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(612f, global4.c.x))))) + _wgslsmith_f_op_f32(-global4.c.x)), global4.c.x, _wgslsmith_f_op_f32(sign(-390f)));
    var var_1 = var_0.xxy;
    return vec3<bool>(any(select(vec4<bool>(true, global4.b.x, true, global4.b.x), vec4<bool>(global4.d.x, true, global1.x, false), select(vec4<bool>(true, false, global1.x, global4.d.x), vec4<bool>(global1.x, global1.x, true, global1.x), global1.x))) || all(!vec4<bool>(global1.x, global1.x, global1.x, global4.d.x)), global1.x, global1.x);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(Struct_2(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, u_input.d, 112355u, 46456u)), ~vec4<u32>(4294967295u, 46050u, 1u, global4.a.x)), select(!(!global1.xz), global4.d.zy, vec2<bool>(all(vec3<bool>(global1.x, true, global4.d.x)), all(global4.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, -839f, -1987f))), func_3()));
    var var_1 = var_0.a;
    let var_2 = Struct_3(Struct_2(var_0.a.a, global4.d.zy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.c + vec3<f32>(-232f, var_1.c.x, var_1.c.x))) + global4.c), select(var_0.a.d, select(var_0.a.d, var_0.a.d, all(vec3<bool>(true, false, false))), select(global4.d, select(vec3<bool>(global1.x, false, true), global4.d, vec3<bool>(true, var_1.d.x, var_0.a.d.x)), var_1.d))));
    var_1 = var_0.a;
    var var_3 = Struct_3(Struct_2(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.x, 4294967295u, global4.a.x, 73916u), vec4<u32>(var_2.a.a.x, var_0.a.a.x, 19825u, 0u)) ^ ~4294967295u, global4.a.x, 1u), var_1.d.yy, vec3<f32>(786f, var_0.a.c.x, var_1.c.x), vec3<bool>(true, var_0.a.d.x, true)));
    return select(!select(select(vec4<bool>(false, var_3.a.b.x, true, var_1.d.x), vec4<bool>(true, true, true, var_0.a.b.x), vec4<bool>(true, var_1.d.x, global1.x, false)), vec4<bool>(any(vec4<bool>(true, true, false, false)), !global1.x, var_0.a.d.x, var_3.a.b.x), vec4<bool>(all(var_3.a.d), false, var_3.a.d.x, !var_1.d.x)), !(!vec4<bool>(global4.c.x >= var_1.c.x, false, !global4.b.x, true)), !(!select(!vec4<bool>(var_3.a.d.x, var_2.a.b.x, global4.d.x, global4.d.x), vec4<bool>(false, false, var_3.a.b.x, var_2.a.d.x), !vec4<bool>(var_2.a.b.x, true, global4.d.x, false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(u_input.e, global4.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.c.x), 1687f, global4.c.x)), vec3<bool>(false, arg_1.e.x, func_2().x));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(634f)))), global4.c.x)));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -540f), -156f, _wgslsmith_div_f32(-2987f, -1204f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(851f, global4.c.x, 241f, 875f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global4.c.x, var_0.x, 2154f), vec4<f32>(var_0.x, 1256f, var_0.x, -328f)))))), Struct_1(global4.c, vec2<u32>(0u, ~reverseBits(38198u)), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, 2974i), u_input.b.x << (arg_0.x % 32u), ~1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.c.x, global4.c.x)), _wgslsmith_f_op_f32(ceil(-452f)))), func_2()));
    var var_2 = var_1.d.x;
    let var_3 = select(vec3<bool>(!any(global1.yz), true, func_2().x), !vec3<bool>(false, var_0.x >= _wgslsmith_f_op_f32(f32(-1f) * -325f), !global4.d.x), vec3<bool>(global4.b.x, var_1.b.x, global1.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - var_1.c.x), -1000f, global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, -905f)) * -256f))));
    return !global1.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    var var_0 = !func_1(firstLeadingBit(global4.a >> (abs(vec4<u32>(arg_1.b.x, 3811u, 45271u, 0u)) % vec4<u32>(32u))));
    var var_1 = Struct_3(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1591f, global4.c.x, global4.c.x, arg_1.a.x), vec4<f32>(1000f, -1072f, -1145f, -1000f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.x, global4.c.x, 1231f, arg_1.a.x) - vec4<f32>(-1539f, -673f, global4.c.x, global4.c.x)))), !global4.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1414f, arg_1.a.x, -108f)) - _wgslsmith_f_op_vec3_f32(global4.c + arg_1.a)), countOneBits(~arg_1.b), countOneBits(~arg_1.c), 870f, !vec4<bool>(global4.d.x, true, false, true))));
    var var_2 = ~(~(~31587u));
    global0 = -1i;
    var var_3 = Struct_3(var_1.a);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global4.c, vec3<f32>(var_3.a.c.x, var_1.a.c.x, var_3.a.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(global4.c.x - -725f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, -468f)), _wgslsmith_f_op_f32(f32(-1f) * -174f)), var_3.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<u32>(~(global4.a.x & 4294967295u), 73392u));
    let x = u_input.a;
    s_output = func_5(vec2<bool>(any(!(!vec4<bool>(true, false, global1.x, true))), func_1(~reverseBits(vec4<u32>(4294967295u, u_input.d, 1u, 4294967295u)))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global4.c))))), countOneBits(~vec2<u32>(global4.a.x, global4.a.x)), max(-_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x >> (global4.a.x % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -1448f), vec4<bool>(false, global4.d.x, all(!vec4<bool>(true, global1.x, false, true)), global1.x)), 68828u);
}

