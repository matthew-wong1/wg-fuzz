struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<bool, 11>;

var<private> global2: Struct_1 = Struct_1(0u, false, false, 29297u);

var<private> global3: array<i32, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    global2 = Struct_1(~(~45240u), true, true, ~(~_wgslsmith_mod_u32(arg_1.a.d | 4294967295u, ~global2.d)));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.zy + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 2036f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1660f, 890f)))))), Struct_2(arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 * -296f))), arg_0, _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-378f * -1167f))), Struct_1(0u, any(!(!vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(1u, 11u)]))), global1[_wgslsmith_index_u32(~(~(2768u ^ global0[_wgslsmith_index_u32(4294967295u, 18u)])), 11u)], 29834u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2547f, arg_3.x), vec2<f32>(803f, -906f))))))));
    global3 = array<i32, 21>();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))))));
    return _wgslsmith_mult_u32(arg_1.a.d, _wgslsmith_dot_vec3_u32(u_input.b, ~(~reverseBits(u_input.d.yzy))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(arg_0.yw, _wgslsmith_f_op_vec2_f32(arg_0.yw + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), -367f, !global1[_wgslsmith_index_u32(global2.a, 11u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * _wgslsmith_f_op_f32(trunc(arg_0.x)))))));
    var var_1 = Struct_3(var_0, Struct_2(Struct_1(~countOneBits(4294967295u), !any(vec3<bool>(global2.b, false, global1[_wgslsmith_index_u32(43836u, 11u)])), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(21185u, 1u), 11u)], 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(376f, 1f, _wgslsmith_f_op_f32(-var_0.x), 1323f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(var_0.x, 127f, arg_0.x, -437f)))))), Struct_1(global0[_wgslsmith_index_u32(global2.a, 18u)] & u_input.d.x, !global1[_wgslsmith_index_u32(reverseBits(~31366u), 11u)], true, 32779u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1250f, _wgslsmith_div_f32(622f, arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - var_0) - _wgslsmith_f_op_vec2_f32(-var_0))))));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.b.b.zw), Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.yw) & (47953u ^ global2.a), _wgslsmith_clamp_u32(u_input.d.x, 1u, var_1.b.a.a) == global0[_wgslsmith_index_u32(~0u, 18u)], global1[_wgslsmith_index_u32(max(u_input.a, var_1.c.d), 11u)], ~func_3(var_1.a.x, Struct_2(var_1.c, vec4<f32>(382f, var_1.d.x, arg_0.x, var_0.x)), var_1.d.x, vec3<f32>(var_1.b.b.x, -533f, -1501f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(125f - arg_0.x), 737f, _wgslsmith_f_op_f32(arg_0.x * 940f), 334f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u >> (u_input.a % 32u)), 11u)]))), Struct_1(_wgslsmith_div_u32(global2.d | _wgslsmith_div_u32(68794u, 14861u), _wgslsmith_mod_u32(var_1.b.a.d, 36375u) & var_1.c.a), any(vec2<bool>(!global2.b, !global1[_wgslsmith_index_u32(71038u, 11u)])), any(!vec4<bool>(global1[_wgslsmith_index_u32(28243u, 11u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78317u, 18u)], 11u)], global1[_wgslsmith_index_u32(var_1.c.d, 11u)], global1[_wgslsmith_index_u32(global2.d, 11u)])), 1u), arg_0.wx);
    let var_2 = _wgslsmith_f_op_f32(select(var_0.x, 2709f, false));
    let var_3 = -1000f;
    return Struct_1(1u, true, var_1.b.a.b, ~global0[_wgslsmith_index_u32(0u, 18u)]);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1485f, 228f, 1439f, -1174f))))))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)), Struct_2(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, 265f, arg_1.x, -970f))))), var_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(arg_1 - arg_1)))), arg_1, select(vec2<bool>(true, true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(68741u, 11u)], false), vec2<bool>(global2.c, var_0.b), false), vec2<bool>(true, var_0.c), select(vec2<bool>(global2.c, arg_0.b), vec2<bool>(true, global2.c), true)), vec2<bool>(arg_1.x < 757f, true)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = select(vec3<u32>(4294967295u, ~(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(36245u, global2.d)) >> (arg_0.x % 32u)), ~arg_0.x), vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~u_input.d), vec4<u32>(~global2.d, 1u, ~0u, arg_0.x)), max(36533u, abs(16893u)), 1u), false);
    var var_1 = func_4(func_2(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(623f, 510f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(363f)))), _wgslsmith_f_op_f32(-1885f - -1393f))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1270f - 2171f))))), ~select(~(-837i), _wgslsmith_clamp_i32(1i, -63871i >> (global2.d % 32u), arg_2), any(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_div_f32(372f, 998f);
    var var_3 = ~u_input.b.xy;
    var_1 = func_4(var_1.b.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.b.b.yy), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.b.b.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1528f, 1000f)))))))), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(1207u >> (~(~1u) % 32u), 21u)], abs(arg_2)));
    return Struct_1(_wgslsmith_clamp_u32(arg_0.x, 1u, ~1u & arg_0.x), any(!(!select(vec3<bool>(var_1.b.a.b, var_1.c.c, global2.c), vec3<bool>(var_1.c.c, true, true), vec3<bool>(global2.c, var_1.c.b, global1[_wgslsmith_index_u32(var_1.b.a.a, 11u)])))), true, ~_wgslsmith_sub_u32(~(~4294967295u), 30625u ^ var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(~vec2<u32>(~1u, 4294967295u) & u_input.d.wz, -(global3[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global2.d, 18u)] ^ global2.a, 6122u), 21u)] ^ select(-34766i, ~93261i, true)), ~50824i);
    let var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, -604f, _wgslsmith_f_op_f32(2444f * -547f), 1580f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -102f)))))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, global3[_wgslsmith_index_u32(63373u, 21u)]), select(vec2<i32>(32342i, 0i), vec2<i32>(-2147483647i, -72538i), vec2<bool>(global2.b, false))), _wgslsmith_add_vec2_i32(vec2<i32>(48330i, global3[_wgslsmith_index_u32(0u, 21u)]), vec2<i32>(u_input.c, u_input.c)) & _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(global3[_wgslsmith_index_u32(5093u, 21u)], global3[_wgslsmith_index_u32(30972u, 21u)])), vec2<i32>(-1i) * -vec2<i32>(1i, global3[_wgslsmith_index_u32(14908u, 21u)])), vec2<i32>(countOneBits(~11468i), ~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global2.d), 21u)]))).c;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1187f, -674f), vec3<f32>(-1139f, 1000f, 489f), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(356f, -2276f, 679f) + vec3<f32>(119f, -1208f, -177f))), vec3<f32>(833f, _wgslsmith_f_op_f32(1463f - -769f), -259f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1615f, 528f, 791f), vec3<f32>(448f, -698f, 655f)))))))));
    var var_2 = var_1.xy;
    var var_3 = -1000f;
    global2 = Struct_1(10979u << (~var_0.a % 32u), select(u_input.c, ~(-23766i) | _wgslsmith_mod_i32(-17879i, u_input.c), all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.a, 11u)], false, global1[_wgslsmith_index_u32(global2.a, 11u)]), vec4<bool>(global1[_wgslsmith_index_u32(global2.a, 11u)], var_0.b, false, global2.b), vec4<bool>(var_0.c, true, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(49400u, 11u)])))) >= _wgslsmith_add_i32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.d, 18u)], 21u)] | u_input.c, reverseBits(_wgslsmith_mod_i32(u_input.c, global3[_wgslsmith_index_u32(global2.a, 21u)]))), !var_0.b != false, abs(global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(614f, 672f, 1031f, var_2.x), vec4<f32>(var_1.x, -328f, var_2.x, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, -488f), vec4<f32>(var_2.x, var_2.x, var_1.x, var_1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -793f, -175f, var_2.x), vec4<f32>(var_2.x, var_2.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_2.x, 232f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_2.x, -681f, var_2.x))))), vec4<i32>(u_input.c, max(_wgslsmith_sub_i32(countOneBits(u_input.c), _wgslsmith_add_i32(8647i, -2147483647i)), global3[_wgslsmith_index_u32(21596u, 21u)]), reverseBits(-1i), u_input.c));
}

