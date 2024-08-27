struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<u32> = vec2<u32>(32586u, 0u);

var<private> global2: array<u32, 11>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    global3 = Struct_1(vec4<bool>(all(vec2<bool>(arg_1.x != global2[_wgslsmith_index_u32(38466u, 11u)], all(vec4<bool>(false, true, true, true)))), !any(select(vec4<bool>(true, false, true, false), global3.a, vec4<bool>(arg_2.b, false, arg_0.a.x, arg_0.a.x))), true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c - 378f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)));
    var var_0 = arg_1.yyx;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1.x, global1.x), abs(global2[_wgslsmith_index_u32(arg_1.x, 11u)])), ~global2[_wgslsmith_index_u32(4294967295u, 11u)] ^ _wgslsmith_mod_u32(2480u, global1.x), all(vec2<bool>(arg_0.a.x, false))), 7707u, 36995u), 4294967295u);
    var var_2 = global0.yz;
    global2 = array<u32, 11>();
    return u_input.b;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    let var_0 = u_input.d.x << ((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(0u, 1u))) & 0u) % 32u);
    global2 = array<u32, 11>();
    var var_1 = vec2<i32>(func_3(Struct_1(arg_2.a, 465f, global3.c), vec4<u32>(arg_1, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 4294967295u), u_input.c), arg_1, 61514u), Struct_2(vec4<bool>(!global3.a.x, arg_2.b <= global3.b, -575f <= arg_2.c, !global3.a.x), 573f <= _wgslsmith_f_op_f32(-global0.x), Struct_1(!vec4<bool>(arg_2.a.x, global3.a.x, arg_2.a.x, true), _wgslsmith_f_op_f32(abs(global3.b)), _wgslsmith_f_op_f32(370f * global0.x)))), _wgslsmith_mult_i32(~(-_wgslsmith_div_i32(var_0, -1i)), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(36199i, var_0, 59859i)), min(u_input.d.xxw, u_input.d.wwx))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.c, -1753f, -302f, global3.b)))))));
    let var_2 = 760f;
    return false;
}

fn func_1() -> vec3<f32> {
    global3 = Struct_1(!select(vec4<bool>(func_2(48254u, global2[_wgslsmith_index_u32(46244u, 11u)], Struct_1(global3.a, global3.c, global0.x), u_input.d.xy), 0i != u_input.b, 562f > global0.x, all(vec3<bool>(global3.a.x, global3.a.x, global3.a.x))), global3.a, global3.a.x | global3.a.x), _wgslsmith_f_op_f32(round(global3.c)), global0.x);
    var var_0 = reverseBits(4294967295u | _wgslsmith_sub_u32(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 11u)]), ~global1.x)) & global2[_wgslsmith_index_u32(~(~0u), 11u)];
    let var_1 = Struct_2(select(select(vec4<bool>(select(false, true, global3.a.x), any(global3.a), global3.a.x, false), global3.a, global3.a), select(select(global3.a, select(global3.a, global3.a, global3.a), false), select(!vec4<bool>(false, global3.a.x, true, true), vec4<bool>(false, true, global3.a.x, global3.a.x), select(global3.a, vec4<bool>(true, true, true, global3.a.x), true)), global3.a.x), global3.a.x & (global0.x < -582f)), !(_wgslsmith_div_u32(13967u, global1.x) < u_input.a) && true, Struct_1(vec4<bool>(true, true, any(vec2<bool>(false, global3.a.x)), true), _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, -1252f), _wgslsmith_f_op_f32(global3.c - global3.c), 890f <= global0.x))), global0.x));
    var var_2 = Struct_1(vec4<bool>(true, firstTrailingBit(u_input.c) > abs(global1.x), var_1.a.x, !global3.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1f)), var_1.c.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1989f + _wgslsmith_f_op_f32(abs(-1428f))) - -503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c - global0.x))))));
    global2 = array<u32, 11>();
    return global0.zzw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global3.c, -370f, -1058f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())));
    var var_2 = false;
    let var_3 = Struct_2(!select(!global3.a, vec4<bool>(global3.a.x, any(global3.a.zyw), true || global3.a.x, global3.a.x), global3.a.x), true, Struct_1(vec4<bool>(true, global3.a.x, all(select(global3.a.xwx, global3.a.yyx, global3.a.wyw)), true), -557f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(floor(1000f)))))));
    let var_4 = (~1i << (_wgslsmith_div_u32(~countOneBits(global2[_wgslsmith_index_u32(u_input.a, 11u)]), u_input.a) % 32u)) << (54846u % 32u);
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~1u, ~1u), -u_input.d.ww, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) * _wgslsmith_f_op_f32(523f + global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_f32(f32(-1f) * -1275f), global0.x)), countOneBits(45019i));
}

