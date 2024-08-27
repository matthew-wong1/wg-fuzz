struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(19055u, 18272u, 0u, 76656u), vec4<u32>(42622u, 31258u, 0u, 0u), vec4<u32>(1u, 1u, 0u, 77296u), vec4<u32>(44558u, 4294967295u, 45933u, 1u), vec4<u32>(4294967295u, 6521u, 4294967295u, 0u), vec4<u32>(13806u, 21364u, 12133u, 3273u), vec4<u32>(10861u, 8297u, 44657u, 50155u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(1u, 8035u, 14153u, 10725u), vec4<u32>(109358u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 98169u, 86662u, 32213u), vec4<u32>(49329u, 0u, 46775u, 13909u), vec4<u32>(4294967295u, 45752u, 4294967295u, 4294967295u), vec4<u32>(5620u, 6228u, 0u, 25512u), vec4<u32>(28295u, 36456u, 0u, 4294967295u), vec4<u32>(1u, 55279u, 0u, 32521u), vec4<u32>(44571u, 4294967295u, 4294967295u, 0u), vec4<u32>(3753u, 1u, 8503u, 4294967295u), vec4<u32>(4294967295u, 26873u, 4294967295u, 1u), vec4<u32>(1u, 1u, 22546u, 4294967295u), vec4<u32>(33262u, 37182u, 3006u, 83351u), vec4<u32>(1u, 0u, 10721u, 43693u), vec4<u32>(731u, 0u, 4294967295u, 0u), vec4<u32>(10257u, 35274u, 0u, 45696u), vec4<u32>(1u, 12349u, 8323u, 33901u), vec4<u32>(8250u, 1u, 0u, 46428u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(1u, 1u, 48122u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 22682u, 72558u, 93922u));

var<private> global3: vec3<f32> = vec3<f32>(1261f, -1598f, -1125f);

var<private> global4: array<bool, 32> = array<bool, 32>(true, false, false, false, true, false, true, true, false, true, true, true, true, true, false, false, true, true, false, true, true, true, false, false, true, true, true, false, true, false, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(global3.x), countOneBits(u_input.a) >> (u_input.e.x % 32u), u_input.e.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(356f * 351f), _wgslsmith_f_op_f32(global3.x + -1324f))) - -176f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-472f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global3.x))));
    global4 = array<bool, 32>();
    global0 = array<Struct_2, 24>();
    let var_1 = var_0.b;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(147f, var_0.d.a, var_0.d.a, global3.x))))))));
    return ~min(var_0.c, 91260u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(reverseBits(~global1.x), arg_3.b);
    global0 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_add_u32(29481u, _wgslsmith_sub_u32(0u, ~func_3()) ^ _wgslsmith_add_u32(arg_3.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.c, 1u, arg_3.c), ~u_input.c.xyw)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1000f + arg_0.x)), max(arg_3.b, arg_3.b & abs(arg_3.b)), countOneBits(abs(firstTrailingBit(_wgslsmith_add_u32(37517u, arg_3.c)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -464f)))), arg_3.e);
    global1 = ~abs(select(~(-vec2<i32>(global1.x, -34274i)), u_input.d.ww, !global4[_wgslsmith_index_u32(100443u >> (1u % 32u), 32u)]));
    return Struct_1(-472f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = -658f;
    let var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_0, -259f, 615f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-890f, -971f, 1000f, arg_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-658f, arg_0.a, 622f, -405f))))))));
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(245f, 2120f, _wgslsmith_f_op_f32(-801f * 695f), -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - _wgslsmith_f_op_vec4_f32(-var_1.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 32u)], global4[_wgslsmith_index_u32(u_input.c.x, 32u)], false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(global4[_wgslsmith_index_u32(18975u, 32u)], global4[_wgslsmith_index_u32(36793u, 32u)], false, true))))) - vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)) * _wgslsmith_f_op_f32(ceil(-712f))), var_1.a.x, _wgslsmith_f_op_f32(floor(-2298f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.ywz - vec3<f32>(arg_0.a, global3.x, var_0)) * var_1.a.yyy), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, var_0, var_1.a.x)))))), var_1.a.wyy)), vec2<bool>(arg_0.a != var_0, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.e.x, u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.e.xxw, u_input.c.zww)) & countOneBits(~37307u), 32u)]), Struct_2(Struct_1(-1000f), u_input.a, 2226u >> ((_wgslsmith_add_u32(0u, u_input.e.x) & ~0u) % 32u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), 1000f)), Struct_1(_wgslsmith_f_op_f32(trunc(global3.x)))));
    let var_4 = ~(~_wgslsmith_mod_i32(~(i32(-1i) * -1i), abs(_wgslsmith_add_i32(14923i, -2147483647i))));
    return Struct_1(_wgslsmith_f_op_f32(-global3.x));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = func_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.e.a)), _wgslsmith_f_op_f32(1419f * _wgslsmith_f_op_f32(-arg_0)), arg_1.a.a, -622f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -797f, global3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, -622f))), vec3<f32>(-241f, _wgslsmith_div_f32(global3.x, arg_0), -1552f))), vec2<bool>(false, global4[_wgslsmith_index_u32(arg_1.c | 1812u, 32u)] || global4[_wgslsmith_index_u32(u_input.c.x, 32u)]), arg_1), ~vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.b, -37159i, u_input.d.x), _wgslsmith_add_vec3_i32(u_input.d.wxw, vec3<i32>(global1.x, -2147483647i, u_input.a))), u_input.a));
    global1 = -(u_input.d.xx ^ (u_input.d.xx & vec2<i32>(1i, i32(-1i) * -1i)));
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(arg_1.c, abs(~arg_1.c)) << (arg_1.c % 32u), ~(~(arg_1.c ^ 39521u)), ~34452u);
    global4 = array<bool, 32>();
    let var_2 = ~(-27912i & u_input.a);
    return _wgslsmith_div_u32(~98508u, ~0u);
}

fn func_5(arg_0: u32) -> f32 {
    global4 = array<bool, 32>();
    let var_0 = global0[_wgslsmith_index_u32(func_1(-703f, global0[_wgslsmith_index_u32(0u, 24u)]), 24u)];
    global2 = array<vec4<u32>, 30>();
    global4 = array<bool, 32>();
    var var_1 = var_0.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -1501f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global0 = array<Struct_2, 24>();
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) + _wgslsmith_f_op_f32(max(global3.x, 143f)))) - 1924f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1213f))))) + _wgslsmith_f_op_f32(func_5(func_1(global3.x, global0[_wgslsmith_index_u32(var_0, 24u)]) << (var_0 % 32u)))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x - -2300f)))), global3.x)), 1651f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1650f, global3.x)))) * global3.x));
    let var_1 = Struct_3(vec4<f32>(429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-global3.x)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yyz, vec3<i32>(-1i, 2147483647i, 1i), _wgslsmith_add_i32(u_input.d.x, -53845i), var_1.a.x, -1126f);
}

