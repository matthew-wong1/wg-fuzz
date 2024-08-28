struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
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

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(1944f, vec3<f32>(-683f, -963f, 2371f), vec4<u32>(37027u, 4294967295u, 8799u, 4131u));

var<private> global2: array<Struct_2, 14>;

var<private> global3: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(3195i, i32(-2147483648), -14937i, 3630i), vec4<i32>(1i, 0i, 0i, -33295i), vec4<i32>(-49291i, 0i, -1i, 32403i), vec4<i32>(2147483647i, 19955i, -21359i, i32(-2147483648)), vec4<i32>(-1i, -33768i, 12567i, 1i), vec4<i32>(-11840i, i32(-2147483648), 3386i, 132802i), vec4<i32>(0i, -35283i, -25648i, i32(-2147483648)), vec4<i32>(43318i, 707i, -3790i, 58713i), vec4<i32>(-56364i, i32(-2147483648), 1i, 1i), vec4<i32>(-27153i, -1i, 27401i, 1i), vec4<i32>(i32(-2147483648), 12434i, -34843i, -7893i), vec4<i32>(-28322i, -7518i, 40731i, 38164i), vec4<i32>(0i, i32(-2147483648), 0i, 1i), vec4<i32>(1i, 19190i, -23697i, 22875i));

var<private> global4: array<bool, 23> = array<bool, 23>(true, false, false, false, false, false, true, true, true, true, false, false, false, true, false, true, true, true, false, true, false, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    global4 = array<bool, 23>();
    var var_0 = Struct_1(_wgslsmith_div_f32(global1.b.x, global1.a), global1.b, ~(~(~(global1.c | vec4<u32>(0u, global1.c.x, u_input.c, 1u)))));
    let var_1 = any(vec4<bool>(!(true || global4[_wgslsmith_index_u32(u_input.e.x, 23u)]), 4927u > _wgslsmith_clamp_u32(reverseBits(7653u), var_0.c.x, ~1u), any(!vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(48624u, 23u)])), global4[_wgslsmith_index_u32(~u_input.c << ((39660u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, global1.c.x, 4294967295u), vec4<u32>(89864u, 4294967295u, 40010u, 4357u))) % 32u), 23u)]));
    var var_2 = vec4<i32>(~global0.x, -u_input.b.x, 32728i ^ global0.x, ~(~_wgslsmith_clamp_i32(24998i, global0.x, -29418i)));
    let var_3 = vec2<u32>((abs(~global1.c.x) << (reverseBits(global1.c.x) % 32u)) << (~(1u & global1.c.x) % 32u), ~u_input.c);
    return select(vec3<bool>(false, any(select(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.e.x, 23u)], global4[_wgslsmith_index_u32(var_3.x, 23u)], true, var_1), vec4<bool>(true, true, global4[_wgslsmith_index_u32(49864u, 23u)], global4[_wgslsmith_index_u32(0u, 23u)]), var_1), vec4<bool>(false, false, var_1, false), vec4<bool>(var_1, global4[_wgslsmith_index_u32(1u, 23u)], false, global4[_wgslsmith_index_u32(global1.c.x, 23u)]))), global4[_wgslsmith_index_u32(min(~(global1.c.x | 4294967295u), global1.c.x), 23u)]), vec3<bool>(true, !var_1, true), !vec3<bool>(_wgslsmith_f_op_f32(global1.a + global1.a) < 773f, !var_1, all(select(vec4<bool>(var_1, var_1, global4[_wgslsmith_index_u32(var_3.x, 23u)], var_1), vec4<bool>(global4[_wgslsmith_index_u32(var_3.x, 23u)], global4[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(var_3.x, 23u)], var_1), global4[_wgslsmith_index_u32(global1.c.x, 23u)]))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    let var_0 = vec2<i32>(global0.x, global0.x);
    var var_1 = !select(select(!select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(50152u, 23u)], global4[_wgslsmith_index_u32(global1.c.x, 23u)]), vec3<bool>(global4[_wgslsmith_index_u32(global1.c.x, 23u)], global4[_wgslsmith_index_u32(13498u, 23u)], global4[_wgslsmith_index_u32(u_input.e.x, 23u)]), vec3<bool>(global4[_wgslsmith_index_u32(1u, 23u)], false, true)), vec3<bool>(true, true, !global4[_wgslsmith_index_u32(8201u, 23u)]), !vec3<bool>(global4[_wgslsmith_index_u32(arg_1, 23u)], global4[_wgslsmith_index_u32(9701u, 23u)], global4[_wgslsmith_index_u32(u_input.c, 23u)])), vec3<bool>(global4[_wgslsmith_index_u32(1u, 23u)], false, global4[_wgslsmith_index_u32(arg_1, 23u)]), func_3());
    var_1 = !vec3<bool>(global4[_wgslsmith_index_u32(86597u, 23u)], (-541f == global1.a) || var_1.x, all(vec3<bool>(true, 51591i >= var_0.x, !var_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1780f, arg_0.x, 580f, arg_0.x) * vec4<f32>(global1.b.x, 110f, global1.a, global1.a))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), global1.b.x, _wgslsmith_f_op_f32(805f * _wgslsmith_f_op_f32(arg_0.x + global1.a)), global1.a))));
    global3 = array<vec4<i32>, 14>();
    return global2[_wgslsmith_index_u32(~(~global1.c.x), 14u)];
}

fn func_1() -> vec3<bool> {
    let var_0 = u_input.b;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, 608f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, -222f) * _wgslsmith_f_op_f32(-global1.a))))), u_input.e.x);
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(30810i, -(var_0.x >> (4294967295u % 32u)), abs(~(var_0.x << (var_1.c.c.x % 32u))), firstTrailingBit(var_0.x)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(4088i, var_0.x, var_0.x, 2147483647i), u_input.d, vec4<i32>(1i, -1i, -1i, -34961i)), -u_input.d, (var_0.x << (155118u % 32u)) < ~u_input.d.x) >> (global1.c % vec4<u32>(32u)));
    let var_3 = ~global0.x;
    var var_4 = var_1.c;
    return select(vec3<bool>(true, global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(~var_4.c.x, max(0u, 4294967295u))), 23u)], true), !(!(!(!vec3<bool>(global4[_wgslsmith_index_u32(17242u, 23u)], false, global4[_wgslsmith_index_u32(global1.c.x, 23u)])))), all(vec4<bool>(4294967295u <= var_4.c.x, true || (-1i <= var_0.x), _wgslsmith_f_op_f32(var_4.a * -2122f) >= _wgslsmith_f_op_f32(var_1.b.b.x + -180f), any(vec4<bool>(global4[_wgslsmith_index_u32(global1.c.x, 23u)], false, global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(var_1.c.c.x, 23u)])) && false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(u_input.d.wyz, countOneBits(u_input.b));
    var var_0 = select(vec2<bool>(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~0u, 7540u), 23u)], true & (global4[_wgslsmith_index_u32(106539u, 23u)] & all(vec2<bool>(global4[_wgslsmith_index_u32(1u, 23u)], false)))), vec2<bool>(global4[_wgslsmith_index_u32(max(global1.c.x, 26537u), 23u)] | (~global1.c.x < abs(global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1761f, 1020f))) == -987f), true);
    global2 = array<Struct_2, 14>();
    global4 = array<bool, 23>();
    var var_1 = select(!select(func_1(), !select(vec3<bool>(global4[_wgslsmith_index_u32(48297u, 23u)], false, var_0.x), vec3<bool>(false, var_0.x, false), var_0.x), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 23u)], 19358i > global0.x, global0.x >= 0i)), vec3<bool>(global4[_wgslsmith_index_u32(global1.c.x, 23u)], false, !global4[_wgslsmith_index_u32(114492u, 23u)]), select(!vec3<bool>(global1.b.x <= -144f, false, !var_0.x), func_1(), global4[_wgslsmith_index_u32(1u, 23u)]));
    let var_2 = func_2(vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a)) + global1.b.x), global1.b.x)), global1.b.x), ~(~4294967295u));
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a, -490f, 678f) - vec3<f32>(var_2.d, global1.b.x, 280f))) - _wgslsmith_f_op_vec3_f32(var_2.b.b + _wgslsmith_f_op_vec3_f32(func_2(global1.b, 0u).c.b + _wgslsmith_f_op_vec3_f32(sign(var_2.b.b))))), vec4<u32>(1u, var_2.c.c.x, ~51312u ^ u_input.c, 17085u));
    var_1 = select(!vec3<bool>(-216f < global1.b.x, any(!vec4<bool>(false, var_0.x, var_0.x, global4[_wgslsmith_index_u32(0u, 23u)])), all(var_1.yz)), vec3<bool>(false, !(u_input.e.x > 13870u) & !any(vec4<bool>(false, false, global4[_wgslsmith_index_u32(u_input.c, 23u)], true)), false), func_1());
    var var_3 = Struct_2(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -399f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.d)))))), var_2.b, Struct_1(_wgslsmith_f_op_f32(-var_2.c.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-646f, -342f, global1.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, -264f, 1035f))), global1.b)), var_2.c.c), _wgslsmith_div_f32(-1612f, -1775f), ~(var_2.c.c.x << (u_input.e.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(434f);
}

