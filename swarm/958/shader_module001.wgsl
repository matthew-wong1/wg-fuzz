struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(-15925i, vec4<bool>(true, false, true, false), -840f, Struct_1(vec2<bool>(false, false)), i32(-2147483648)), Struct_3(i32(-2147483648), vec4<bool>(false, true, false, true), 1101f, Struct_1(vec2<bool>(false, false)), 16091i), Struct_3(-7132i, vec4<bool>(true, false, false, false), 523f, Struct_1(vec2<bool>(true, false)), -1i), Struct_3(0i, vec4<bool>(true, true, true, true), -708f, Struct_1(vec2<bool>(false, false)), -98772i), Struct_3(0i, vec4<bool>(true, true, true, true), 2444f, Struct_1(vec2<bool>(true, true)), -32833i), Struct_3(0i, vec4<bool>(false, false, true, false), -377f, Struct_1(vec2<bool>(false, true)), 42126i), Struct_3(i32(-2147483648), vec4<bool>(true, true, true, true), 703f, Struct_1(vec2<bool>(true, true)), 22397i), Struct_3(2147483647i, vec4<bool>(false, false, true, false), -1224f, Struct_1(vec2<bool>(false, false)), -1i), Struct_3(-1i, vec4<bool>(false, true, true, true), -271f, Struct_1(vec2<bool>(true, false)), 1i), Struct_3(34389i, vec4<bool>(true, false, true, true), 423f, Struct_1(vec2<bool>(false, true)), 0i), Struct_3(-34169i, vec4<bool>(false, true, true, true), 1000f, Struct_1(vec2<bool>(true, true)), -8669i), Struct_3(20385i, vec4<bool>(true, true, true, false), 405f, Struct_1(vec2<bool>(true, false)), 1i), Struct_3(-3532i, vec4<bool>(true, true, false, true), 1353f, Struct_1(vec2<bool>(false, false)), -1i), Struct_3(1i, vec4<bool>(false, true, true, true), 805f, Struct_1(vec2<bool>(true, false)), -60514i), Struct_3(-1i, vec4<bool>(false, true, true, false), 680f, Struct_1(vec2<bool>(true, false)), 0i), Struct_3(-1i, vec4<bool>(false, true, true, false), 990f, Struct_1(vec2<bool>(false, true)), -20472i), Struct_3(45435i, vec4<bool>(true, true, true, false), 1000f, Struct_1(vec2<bool>(false, true)), 45087i), Struct_3(-1i, vec4<bool>(true, false, false, true), 2122f, Struct_1(vec2<bool>(true, true)), i32(-2147483648)), Struct_3(16360i, vec4<bool>(true, true, true, true), 374f, Struct_1(vec2<bool>(true, false)), -13535i));

var<private> global2: array<bool, 24> = array<bool, 24>(true, false, true, false, true, false, false, false, false, true, false, false, false, true, false, true, true, true, false, true, false, true, false, true);

var<private> global3: bool = false;

var<private> global4: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: i32) -> bool {
    global1 = array<Struct_3, 19>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c))))));
    global2 = array<bool, 24>();
    var var_1 = Struct_2(min(vec4<u32>(abs(4294967295u), u_input.a.x, _wgslsmith_mod_u32(46249u, 51526u), u_input.a.x) << (~(~vec4<u32>(12832u, 82649u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, countOneBits(_wgslsmith_add_u32(1u, u_input.a.x)), ~u_input.a.x, u_input.a.x)), vec4<f32>(1000f, -941f, global0.c, 834f), Struct_1(arg_1.zz));
    global4 = arg_1.x;
    return true;
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> bool {
    var var_0 = global0.b.x;
    let var_1 = arg_0.a.zx;
    global1 = array<Struct_3, 19>();
    var var_2 = global1[_wgslsmith_index_u32(~1u, 19u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -1959f, 1950f, 1f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, global0.c, var_1.x, var_1.x), vec4<f32>(arg_0.a.x, 1095f, -1038f, -879f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, var_1.x, var_1.x, 308f))))))));
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = u_input.c;
    global3 = func_1(-242f, select(!vec3<bool>(any(vec2<bool>(arg_0.c.a.x, arg_2.x)), arg_1.x <= var_0.x, true), vec3<bool>(all(!vec4<bool>(global0.b.x, true, true, arg_3.d.a.x)), false, arg_3.d.a.x), vec3<bool>(global0.b.x & func_3(Struct_4(arg_0.b.zzy, global0.c), arg_2.x), true, arg_3.d.a.x)), arg_3.e);
    var_0 = vec3<u32>(abs(max(arg_0.a.x, ~arg_1.x | abs(arg_0.a.x))), ~_wgslsmith_dot_vec3_u32(reverseBits(arg_0.a.wwx), select(vec3<u32>(1u, 1u, 4294967295u), arg_1.wzy, !vec3<bool>(true, false, arg_0.c.a.x))), ~93606u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.yy - arg_0.b.yz));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.a.x, 12789u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 2393u), vec4<u32>(4294967295u, 0u, 39319u, u_input.a.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1016u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(11227u, 40915u, 1u, 0u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x)), 4294967295u, 16548u, min(4294967295u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(123f, -785f, 700f, 573f))))) - vec4<f32>(-175f, -423f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(global0.c - 752f), func_1(global0.c, global0.b.ywz, 0i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), -368f))), global0.d);
    var var_1 = false;
    global0 = func_2(var_0, var_0.a, select(select(global0.b.wz, var_0.c.a, _wgslsmith_f_op_f32(-1218f + 735f) <= _wgslsmith_div_f32(var_0.b.x, global0.c)), !var_0.c.a, !global2[_wgslsmith_index_u32(var_0.a.x, 24u)]), Struct_3(min(abs(23274i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, 1i), global0.e)), vec4<bool>(any(select(global0.b.xwz, vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 24u)], true, true), vec3<bool>(true, true, false))), true, false, min(var_0.a.x, 0u) >= var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, 1007f)))), Struct_1(select(var_0.c.a, var_0.c.a, vec2<bool>(false, global0.b.x))), ~firstTrailingBit(-12714i)));
    global3 = true;
    var_1 = all(global0.b.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u)) ^ var_0.a.x, ~8771u & ~(firstTrailingBit(76705u) | _wgslsmith_div_u32(var_0.a.x, var_0.a.x)), countOneBits(i32(-1i) * -(i32(-1i) * -1i)), vec4<u32>(7064u, (u_input.a.x & (u_input.a.x | 15683u)) & 64306u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(var_0.a.x, 1u), max(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.a.x))), firstTrailingBit(vec2<u32>(59646u, u_input.a.x))), abs(~(~5974u))));
}

