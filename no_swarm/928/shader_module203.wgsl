struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: Struct_4;

var<private> global2: f32;

var<private> global3: Struct_2;

var<private> global4: array<Struct_3, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = arg_3.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.x))))) - 161f);
    let var_2 = Struct_2(Struct_1(~max(abs(global3.a.a), ~global3.e.a), global3.c.b, abs(abs(arg_2.a.zx))), ~_wgslsmith_clamp_i32(min(-20736i, global0[_wgslsmith_index_u32(67162u, 20u)]), 40667i, ~2147483647i & abs(global3.e.b.x)), arg_2, 2147483647i, arg_2);
    let var_3 = select(vec4<bool>(global1.b.x, arg_1, true, false), vec4<bool>(arg_1, global1.b.x, false && (~var_2.a.b.x != (u_input.c << (52809u % 32u))), any(select(!vec3<bool>(arg_1, true, global1.b.x), select(vec3<bool>(global1.b.x, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), false), vec3<bool>(global1.b.x, arg_1, false)))), !vec4<bool>(any(vec4<bool>(true, arg_1, true, arg_1)), true, global1.b.x, all(!vec4<bool>(arg_1, global1.b.x, false, true))));
    global0 = array<i32, 20>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f * 1243f));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<f32>(-190f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.c, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-209f, global1.c.x), global1.c))), global1.c), !any(vec3<bool>(true, global1.b.x, global1.b.x)), global3.c, u_input.a.zw)), global1.c.x);
    var var_1 = 58682u;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2012f, global1.c.x, -1139f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1765f, var_0.x, 313f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, var_0.x, -915f)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-512f * -818f), _wgslsmith_f_op_f32(exp2(global1.c.x))))));
    global2 = 437f;
    return Struct_2(Struct_1(global3.e.a, min(vec4<i32>(_wgslsmith_mult_i32(global3.c.b.x, 0i), ~u_input.c, global0[_wgslsmith_index_u32(~126450u, 20u)], global0[_wgslsmith_index_u32(~0u, 20u)]), vec4<i32>(global0[_wgslsmith_index_u32(~global1.a, 20u)], -40223i, global3.c.b.x, 1i)), vec2<u32>(firstTrailingBit(1u), 1u ^ global1.a)), _wgslsmith_add_i32(-global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(~(global1.a >> (97695u % 32u)), 20u)]), Struct_1(vec4<u32>(max(firstTrailingBit(u_input.a.x), global3.a.c.x), 4330u, ~(~4294967295u), 1u), ~firstTrailingBit(vec4<i32>(global3.d, -1i, global0[_wgslsmith_index_u32(0u, 20u)], global3.a.b.x)), ~vec2<u32>(~u_input.a.x, ~global3.e.c.x)), u_input.b.x, global3.c);
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(712f)));
    let var_0 = -17649i;
    global0 = array<i32, 20>();
    var var_1 = abs(global3.e.b.yz);
    global1 = Struct_4(4294967295u, global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-200f, -779f) + vec2<f32>(1497f, global1.c.x))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(round(-1329f)))))));
    return Struct_4(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global3.a.c.x, 4294967295u, 53914u)), ~vec3<u32>(12294u, 41396u, 4294967295u)), arg_0.e.a.x) | firstTrailingBit(u_input.a.x), !vec2<bool>(all(!vec4<bool>(global1.b.x, false, false, global1.b.x)), u_input.b.x == var_0), vec2<f32>(_wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_div_f32(-120f, global1.c.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.c.x)), _wgslsmith_f_op_f32(round(global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.c, global1.b.x, arg_0.e, vec2<u32>(u_input.a.x, u_input.a.x)))))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global1 = func_4(func_2());
    global1 = Struct_4(global3.a.a.x, vec2<bool>(global1.b.x, global1.b.x), vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, -1863f) * global1.c) - vec2<f32>(global1.c.x, global1.c.x)), select(false || global1.b.x, true, global1.b.x), Struct_1(u_input.a, global3.c.b, ~vec2<u32>(41186u, 0u)), abs(vec2<u32>(50410u, 84324u) & global3.a.a.xy))), _wgslsmith_f_op_f32(step(-609f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -846f)))))));
    let var_0 = global3.e.a.wy;
    global1 = func_4(Struct_2(func_2().e, 72120i, func_2().e, -((i32(-1i) * -1i) << (countOneBits(global1.a) % 32u)), Struct_1(vec4<u32>(10206u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u), 1u, global3.e.c.x | 79861u), abs(abs(global3.c.b)), ~global3.a.c)));
    let var_1 = _wgslsmith_mult_i32((_wgslsmith_add_i32(arg_0.x ^ arg_0.x, global3.b) ^ _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global3.e.b.x, 2147483647i), _wgslsmith_div_i32(-65141i, global0[_wgslsmith_index_u32(var_0.x, 20u)]), 2147483647i)) << (38253u % 32u), 1i);
    return func_2().c;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    let var_0 = 43549i;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c.x, 204f, -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(369f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 706f, -1893f, global1.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, 928f, 2244f, 827f) + vec4<f32>(global1.c.x, -2396f, global1.c.x, global1.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(604f, 2128f, global1.c.x, global1.c.x), vec4<f32>(global1.c.x, global1.c.x, 583f, -1000f), vec4<bool>(false, false, global1.b.x, true))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(606f, global1.c.x, global1.c.x, 559f), vec4<f32>(-1423f, -2094f, global1.c.x, 1000f))))), vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(select(global1.c.x, global1.c.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -786f))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-477f + var_1.x) - _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(1180f * _wgslsmith_f_op_f32(-110f - -1527f)))) * 192f);
    var var_2 = 1i;
    var var_3 = reverseBits(vec4<i32>(i32(-1i) * -(i32(-1i) * -2147483647i), ~(-17829i), _wgslsmith_sub_i32(~(~u_input.b.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(-21189i, arg_1), _wgslsmith_dot_vec3_i32(arg_0.e.b.yyw, u_input.b))), global3.e.b.x));
    return global4[_wgslsmith_index_u32(~(1u & global3.c.a.x), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1.b;
    var var_1 = func_5(Struct_2(global3.e, firstTrailingBit(42375i), global3.c, -(~1i), func_1(~vec2<i32>(global0[_wgslsmith_index_u32(global1.a, 20u)], 25500i))), u_input.b.x);
    let var_2 = func_4(func_2()).b;
    var var_3 = func_4(func_2());
    let var_4 = func_4(var_1.d).b.x | all(!vec4<bool>(true | global1.b.x, true, false, var_2.x));
    let var_5 = Struct_2(func_5(var_1.d, abs(global3.c.b.x << (82073u % 32u))).d.c, 0i, global3.c, ~1i, var_1.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.d.e.a ^ vec4<u32>(firstTrailingBit(18404u), ~52535u, 0u << (global3.c.a.x % 32u), func_2().e.a.x)), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, max(u_input.a.x, u_input.a.x)), select(_wgslsmith_dot_vec4_u32(var_1.b.c.a, vec4<u32>(u_input.a.x, 32086u, 1u, 34828u)), countOneBits(var_3.a), !var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * 715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-247f))), 2407f)));
}

