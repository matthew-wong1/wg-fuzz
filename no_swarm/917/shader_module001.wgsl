struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: i32 = 0i;

var<private> global2: vec2<i32> = vec2<i32>(21658i, 11922i);

var<private> global3: Struct_3 = Struct_3(vec4<u32>(4294967295u, 64530u, 58947u, 0u), vec4<i32>(1i, -9966i, -1i, -1i), vec4<bool>(true, true, false, true));

var<private> global4: Struct_1 = Struct_1(1838f, 1642f, vec4<bool>(true, true, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = abs(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 23397u), vec2<u32>(48177u, u_input.b)) << (~vec2<u32>(8197u, u_input.b) % vec2<u32>(32u)), vec2<u32>(16969u, reverseBits(13261u) | _wgslsmith_mult_u32(u_input.b, 4294967295u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(global4.a)), global4.a);
    return countOneBits(global3.a);
}

fn func_2() -> vec4<u32> {
    global2 = ~(~u_input.a.yz);
    global0 = array<Struct_1, 26>();
    var var_0 = vec2<i32>(-1i) * -(~(-select(global3.b.zz, vec2<i32>(global3.b.x, global3.b.x), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-557f))))), _wgslsmith_f_op_f32(-748f * -736f), 3235f));
    var var_2 = ~(~0u) | ~u_input.b;
    return ~func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * global4.b))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.a)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f * global4.b) + _wgslsmith_div_f32(-965f, global4.a))), global3.c));
    let var_1 = var_0.a;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1470f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1180f, global4.b), global4.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.a))), !vec4<bool>(all(var_0.a.c), any(vec4<bool>(var_0.a.c.x, global4.c.x, true, true)), false, !arg_2.x)));
    var var_3 = u_input.a.xz;
    var_0 = Struct_2(Struct_1(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.b))), !vec4<bool>(any(vec3<bool>(true, arg_2.x, global3.c.x)), false, true, false)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b))), var_2.a.a, global4.c));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec3<bool>) -> bool {
    let var_0 = u_input.b;
    return !global3.c.x;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    global1 = -20254i;
    let var_0 = func_5(func_4(abs(_wgslsmith_mod_vec4_u32(func_2(), select(global3.a, global3.a, global3.c))), ~global3.a.yw ^ global3.a.xy, !vec3<bool>(global4.c.x, global3.c.x, true), _wgslsmith_clamp_u32(~global3.a.x, 1u, global3.a.x) >= 21354u), min(9298i, global3.b.x), func_4(abs(abs(vec4<u32>(global3.a.x, 0u, 11157u, u_input.b))) | _wgslsmith_div_vec4_u32(vec4<u32>(0u, 93672u, u_input.b, arg_0) & global3.a, ~global3.a), reverseBits(global3.a.zz), global3.c.zxz, all(global4.c.zy)), global4.c.zww);
    let var_1 = _wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(global4.b * arg_1)) < _wgslsmith_f_op_f32(trunc(-777f));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, -200f, -610f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -904f, arg_1)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 905f, 1140f) * vec3<f32>(-504f, arg_1, global4.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, global4.a, global4.b)), select(global3.c.xzw, global4.c.xyz, global4.c.xxx)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, 395f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global4.b, global4.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-734f, arg_1, -288f), vec3<f32>(global4.a, -2333f, global4.b))), var_0)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, arg_1, global4.b)))))));
    var var_3 = var_1;
    return Struct_3(vec4<u32>(~(~arg_0) | (global3.a.x | 1u), 0u, global3.a.x, abs(~19021u)), global3.b, vec4<bool>(func_5(func_4(vec4<u32>(84157u, 33610u, arg_0, global3.a.x), abs(vec2<u32>(global3.a.x, u_input.b)), global3.c.xxz, false), select(~1i, 0i, true), Struct_2(global0[_wgslsmith_index_u32(1u, 26u)]), global4.c.ywz), all(vec2<bool>(var_0, all(vec4<bool>(true, var_0, var_1, false)))), var_1, var_1));
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = func_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.a.x, 1u, arg_1, 0u), func_1(arg_0.a.x, global4.a).a, arg_0.c), global3.a), 31894u), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a.x, u_input.b, u_input.b, 0u), global3.a), vec2<u32>(global3.a.x, 1u), !vec3<bool>(global3.c.x, false, global3.c.x), !global3.c.x).a.a - -1327f)));
    let var_1 = vec3<f32>(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), global4.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, var_1.x, 1338f, -280f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-780f + -1265f), _wgslsmith_div_f32(var_1.x, -277f)))), global3.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.b, 1309f, var_1.x, 689f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(900f, -561f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(467f, var_1.x, -1627f, global4.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1347f, -856f, var_1.x, -1620f)), select(arg_0.c, var_0.c, vec4<bool>(true, global3.c.x, false, true)))))));
    let var_3 = _wgslsmith_f_op_f32(-var_1.x);
    global3 = var_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-508f, _wgslsmith_f_op_f32(-524f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * 1000f)))), _wgslsmith_f_op_f32(exp2(var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(global4.b)), _wgslsmith_f_op_f32(func_6(func_1(~u_input.b ^ ~u_input.b, -131f), 15013u)), !(!(!vec4<bool>(global3.c.x, false, true, false))));
    let var_1 = -28922i;
    global4 = Struct_1(_wgslsmith_f_op_f32(step(global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) * _wgslsmith_div_f32(-361f, var_0.b))))), -1437f, func_4(vec4<u32>(u_input.b >> (global3.a.x % 32u), ~(~0u), _wgslsmith_mult_u32(u_input.b ^ 3424u, 0u), global3.a.x), global3.a.xz, global4.c.yzw, true).a.c);
    global2 = u_input.a.zx;
    var_0 = Struct_1(847f, -1807f, !global4.c);
    var var_2 = global3.b;
    var var_3 = Struct_2(func_4(~(~global3.a) << ((~vec4<u32>(global3.a.x, 0u, u_input.b, global3.a.x) & ~global3.a) % vec4<u32>(32u)), global3.a.zw, func_1(_wgslsmith_mult_u32(57293u, 1u), _wgslsmith_f_op_f32(func_6(func_1(u_input.b, -1000f), 26611u))).c.xxx, global4.c.x).a);
    global4 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -699f, vec4<bool>(func_4(global3.a | global3.a, global3.a.xy, vec3<bool>(true, global4.c.x && global3.c.x, !var_3.a.c.x), true).a.c.x, any(vec4<bool>(-1141f > var_0.a, true, var_0.c.x & false, global4.c.x & var_0.c.x)), true, global3.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-2286f, var_3.a.a)))) - _wgslsmith_f_op_f32(-var_0.b)), var_3.a.a));
}

