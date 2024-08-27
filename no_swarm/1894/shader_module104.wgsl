struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(1115f, 1238f, -1352f, -319f, -622f, -816f, -205f, 420f, -1000f, -992f);

var<private> global1: Struct_1 = Struct_1(4294967295u, vec4<i32>(-13284i, -15195i, 0i, 0i), vec2<f32>(-727f, 1246f), vec4<f32>(-2218f, 126f, 481f, 969f), vec4<u32>(123624u, 4294967295u, 49787u, 1u));

var<private> global2: vec4<i32> = vec4<i32>(1i, 1i, 19548i, 0i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = 1548f;
    let var_1 = Struct_2((global0[_wgslsmith_index_u32(firstLeadingBit(select(1488u, 4294967295u, true)), 10u)] != var_0) | true);
    let var_2 = Struct_1(global1.e.x, vec4<i32>(firstLeadingBit(~0i), ~global2.x ^ (i32(-1i) * -27730i), ~(-25915i), global2.x), vec2<f32>(-962f, 578f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d - _wgslsmith_f_op_vec4_f32(abs(global1.d)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 + global1.d.x), _wgslsmith_f_op_f32(-292f * 438f), -475f, _wgslsmith_f_op_f32(f32(-1f) * -762f)))), global1.e);
    let var_3 = Struct_2(all(!vec4<bool>(!var_1.a, 2147483647i < global2.x, var_1.a, var_1.a)));
    var var_4 = var_2;
    return any(vec2<bool>(true, true)) || true;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = !vec3<bool>(all(select(vec4<bool>(true, arg_0.a, true, true), vec4<bool>(arg_2.x, true, false, arg_0.a), vec4<bool>(arg_0.a, true, true, true))) & arg_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(156157u, 10u)]), 1347f)) >= _wgslsmith_f_op_f32(round(1056f)), true);
    var var_1 = global1.d.x;
    let var_2 = reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(67623i, _wgslsmith_dot_vec3_i32(global1.b.xxz, global1.b.yyw), -2147483647i, global2.x), vec4<i32>(firstLeadingBit(25381i), -1i, global2.x, min(global1.b.x, 1i >> (arg_3.e.x % 32u)))));
    var var_3 = -1000f;
    var var_4 = select(!select(!vec4<bool>(true, arg_2.x, var_0.x, arg_0.a), vec4<bool>(true, all(vec4<bool>(arg_0.a, true, var_0.x, false)), false && arg_2.x, all(vec4<bool>(true, false, arg_2.x, true))), vec4<bool>(arg_0.a || var_0.x, !var_0.x, false, var_0.x)), !vec4<bool>(var_0.x, any(select(arg_2, var_0.yy, false)), true, var_0.x && false), vec4<bool>(arg_0.a, false, any(vec3<bool>(func_2(global1.e.yz), true, true)), false));
    return ~vec3<u32>(u_input.d, u_input.b, 1u) & ~firstLeadingBit(vec3<u32>(29070u, u_input.b, global1.e.x));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<bool> {
    global1 = Struct_1(47877u | ~global1.e.x, ~(vec4<i32>(_wgslsmith_mult_i32(-1i, 30077i), min(1779i, -1i), -20914i, 0i) & (_wgslsmith_mod_vec4_i32(vec4<i32>(-24927i, global1.b.x, arg_0, -2147483647i), vec4<i32>(-2147483647i, -31920i, 0i, global2.x)) & vec4<i32>(-20952i, 30390i, 0i, 71793i))), vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), 1686f), global1.d, min(~vec4<u32>(1u, global1.a, global1.e.x, ~global1.a), vec4<u32>(_wgslsmith_dot_vec3_u32(~global1.e.zyw, _wgslsmith_mult_vec3_u32(vec3<u32>(8013u, 66661u, 42476u), vec3<u32>(u_input.a.x, u_input.b, u_input.c.x))), ~abs(0u), global1.a, u_input.d)));
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(71037u, 10u)]), _wgslsmith_f_op_f32(floor(global1.d.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, global1.d.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2245f, global0[_wgslsmith_index_u32(9343u, 10u)]) - vec2<f32>(global1.c.x, global0[_wgslsmith_index_u32(global1.a, 10u)])))), _wgslsmith_div_vec2_f32(vec2<f32>(-1139f, _wgslsmith_f_op_f32(-1330f + global0[_wgslsmith_index_u32(global1.a, 10u)])), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.c), global1.d.xx, true))))));
    let var_1 = -(-2147483647i | _wgslsmith_div_i32(global2.x, abs(2147483647i)));
    var var_2 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.e.x, reverseBits(u_input.b & 4294967295u)), 0u), global1.b, _wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(34883u ^ u_input.d, 10u)], global0[_wgslsmith_index_u32(min(38094u, global1.a), 10u)]) - vec2<f32>(-1593f, -868f))), vec4<f32>(1408f, 310f, _wgslsmith_f_op_f32(-555f * _wgslsmith_div_f32(var_0.x, 689f)), global1.d.x), reverseBits(vec4<u32>(global1.e.x, ~u_input.d, ~_wgslsmith_clamp_u32(28722u, 20005u, u_input.c.x), ~(global1.e.x << (4294967295u % 32u)))));
    let var_3 = Struct_2(any(!vec3<bool>(var_2.a > 1u, false, true)));
    return !vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 10u)])))) < global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 1u), 10u)], var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~(~1u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~global1.e.wzx, func_1(Struct_2(false), global1.b.xx, vec2<bool>(true, true), Struct_1(global1.a, global1.b, global1.d.zz, global1.d, global1.e))), ~firstTrailingBit(global1.e.ywz)), 9641u), 0u, u_input.b);
    var var_1 = _wgslsmith_div_f32(-571f, -161f);
    let var_2 = !(!(!select(vec2<bool>(true, false), func_3(global1.b.x, global2.x), vec2<bool>(true, false))));
    global2 = abs(-_wgslsmith_mult_vec4_i32(global1.b, _wgslsmith_div_vec4_i32(firstLeadingBit(global1.b), global1.b)));
    let var_3 = vec4<bool>(!func_2(var_0.zw), (global1.b.x > _wgslsmith_clamp_i32(select(14446i, global2.x, var_2.x), countOneBits(-5939i), global2.x)) && false, func_3(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, global1.b.x), global2.ww), ~global1.b.x), 0i).x, var_2.x);
    global1 = Struct_1(1u, abs(vec4<i32>(-global2.x, reverseBits(~2106i), 11265i, 0i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.x, -488f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global1.a, 4294967295u), select(u_input.c.x, global1.e.x, var_2.x)), 10u)], global0[_wgslsmith_index_u32(26350u & _wgslsmith_add_u32(var_0.x, u_input.b), 10u)]), _wgslsmith_f_op_vec4_f32(-global1.d), select(var_2.x, var_2.x, any(var_3)))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(global1.a, max(1u, ~1u)), ~1u), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, 2147483647i, global1.b.x, global1.b.x) << (global1.e % vec4<u32>(32u))), countOneBits(min(global1.b, global1.b)), abs(-global1.b)), vec4<i32>(-1i) * -global1.b, vec4<i32>(_wgslsmith_clamp_i32(global2.x >> (u_input.b % 32u), 1i, global2.x << (0u % 32u)), firstTrailingBit(global1.b.x & global2.x), global2.x, ~1i)), max(u_input.c.yz, func_1(Struct_2(!var_3.x), -(global1.b.yx & vec2<i32>(global1.b.x, 0i)), vec2<bool>(true, true), Struct_1(u_input.a.x, vec4<i32>(global1.b.x, -2147483647i, global2.x, global2.x), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1.e.x, 10u)], global1.d.x), global1.c), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], 905f, global0[_wgslsmith_index_u32(1u, 10u)], -1576f), var_0)).zy), 4322i, firstTrailingBit(~(abs(global1.b.xw) ^ (global2.wy & vec2<i32>(-1i, -8490i)))));
}

