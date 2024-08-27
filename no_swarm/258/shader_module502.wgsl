struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(394f, vec4<f32>(618f, 1850f, -1599f, -603f), vec4<bool>(false, false, false, true));

var<private> global1: Struct_3 = Struct_3(Struct_1(-1105f, vec3<i32>(1i, 0i, 2147483647i), vec2<f32>(-929f, -1649f), vec4<u32>(37960u, 0u, 53289u, 49378u), vec3<bool>(true, true, false)), vec4<u32>(0u, 1u, 103840u, 4294967295u), Struct_2(523f, vec4<f32>(-431f, 956f, 518f, -1259f), vec4<bool>(true, false, false, false)), 2147483647i);

var<private> global2: array<vec2<u32>, 7>;

var<private> global3: array<bool, 29>;

var<private> global4: i32 = -76357i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = ~58291u;
    let var_1 = -((u_input.c | (vec4<i32>(-2147483647i, 10394i, -1i, 2147483647i) & select(vec4<i32>(-2147483647i, 2147483647i, -29535i, u_input.a.x), vec4<i32>(global1.a.b.x, u_input.c.x, u_input.c.x, -5361i), arg_2.e.x))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 13182i, global1.d, -14334i) << (max(arg_2.d, vec4<u32>(12661u, 32037u, global1.a.d.x, 106584u)) % vec4<u32>(32u)), countOneBits(abs(vec4<i32>(-26146i, u_input.c.x, global1.a.b.x, 18698i)))));
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> Struct_3 {
    var var_0 = global1.a;
    let var_1 = global1.a;
    global3 = array<bool, 29>();
    var var_2 = true;
    var_0 = Struct_1(global0.b.x, reverseBits(u_input.c.zwz), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -926f), var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f - _wgslsmith_f_op_f32(1000f - var_1.c.x)) * _wgslsmith_f_op_f32(-global1.c.b.x))), select(~reverseBits(~var_0.d), global1.a.d, vec4<bool>(global3[_wgslsmith_index_u32(20109u, 29u)], false, global1.a.e.x, true)), !select(var_0.e, select(vec3<bool>(arg_0.x, false, false), select(arg_0.zwz, vec3<bool>(true, false, false), global0.c.yyx), !global0.c.yzz), var_1.e));
    return Struct_3(global1.a, vec4<u32>(var_1.d.x, 104490u, global1.b.x ^ abs(4294967295u), var_0.d.x), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(min(-1337f, -2602f))), var_0.c.x, !(!var_0.e.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f * -900f) - arg_1), var_1.c.x, var_0.a, _wgslsmith_f_op_f32(abs(-1000f))), arg_0), -var_1.b.x);
}

fn func_1() -> Struct_2 {
    global1 = func_3(select(!(!select(global1.c.c, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global3[_wgslsmith_index_u32(28861u, 29u)]), true)), vec4<bool>(global0.c.x, func_2(_wgslsmith_f_op_f32(sign(global0.b.x)), global1.c, global1.a), true, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(2391u, 36802u), 29u)] & !global1.c.c.x), global1.a.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1339f * _wgslsmith_div_f32(global0.a, global1.a.a)))));
    let var_0 = global1.b.xy;
    let var_1 = func_3(!global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(829f * -368f) - -1561f));
    let var_2 = var_1.c;
    var var_3 = func_3(func_3(vec4<bool>(false, true | var_1.a.e.x, var_1.c.c.x, min(global1.b.x, var_1.b.x) > max(u_input.b, 5052u)), _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-global1.a.c.x))).c.c, 1079f).a;
    return func_3(select(vec4<bool>(true, global0.c.x, !var_2.c.x, all(vec4<bool>(global3[_wgslsmith_index_u32(37668u, 29u)], false, var_2.c.x, true))), vec4<bool>(select(var_3.e.x, var_2.c.x, true), var_2.c.x, true, var_2.c.x), select(vec4<bool>(true, true, true, true), select(!var_1.c.c, !vec4<bool>(global1.a.e.x, true, false, var_3.e.x), true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * 469f) - _wgslsmith_f_op_f32(599f + -786f))))).c;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global4 = -_wgslsmith_add_i32(arg_0, ~countOneBits(_wgslsmith_div_i32(global1.a.b.x, u_input.c.x)));
    global4 = _wgslsmith_mult_i32(countOneBits(_wgslsmith_mult_i32(global1.d, arg_1.a.b.x)), _wgslsmith_div_i32(-max(firstLeadingBit(arg_1.d), 1i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), ~(-27665i)) & (u_input.a.x >> (~4294967295u % 32u))));
    let var_0 = arg_2;
    var var_1 = var_0;
    let var_2 = vec4<bool>(global0.c.x, var_0.c.x, arg_2.c.x == !var_1.c.x, global1.a.e.x);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_3.b.x, -168f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.c.a - global0.a))))) + global0.b.x), arg_1.c.b, !vec4<bool>(false, true, select(var_2.x || true, any(arg_2.c.yw), func_3(arg_2.c, -263f).a.e.x), !func_1().c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a, firstLeadingBit(_wgslsmith_mod_vec4_u32(global1.a.d, vec4<u32>(_wgslsmith_add_u32(global1.a.d.x, 4960u), min(global1.b.x, 1u), countOneBits(74821u), ~1u))), func_4(reverseBits(~3553i), Struct_3(global1.a, firstLeadingBit(~vec4<u32>(4294967295u, 32741u, 1u, 63295u)), global1.c, -global1.d), func_1(), global1.c), abs(-23357i) >> (u_input.b % 32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.a, 1727f), _wgslsmith_f_op_f32(select(1000f, 984f, global1.a.e.x)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -458f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global1.c.a, global0.b.x, -1045f) - vec4<f32>(-1347f, -2949f, 808f, 977f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 279f, global1.a.c.x, global1.c.b.x)))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(trunc(241f)), abs(u_input.c.zzy), func_3(global0.c, global0.b.x).c.b.xx, vec4<u32>(_wgslsmith_add_u32(u_input.d.x & 0u, global1.a.d.x), _wgslsmith_mult_u32(4294967295u, 0u), ~(global1.a.d.x & global1.b.x), _wgslsmith_mod_u32(max(73608u, 61044u), select(u_input.d.x, 56u, false))), vec3<bool>(all(vec2<bool>(global0.c.x, global3[_wgslsmith_index_u32(0u, 29u)])), true, func_1().c.x)), _wgslsmith_div_vec4_u32(select(global1.b, ~(~vec4<u32>(1u, 0u, u_input.b, global1.a.d.x)), global0.c.x), ~vec4<u32>(u_input.d.x, func_3(global0.c, -1003f).a.d.x, abs(u_input.d.x), u_input.b)), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-888f)), _wgslsmith_f_op_f32(-676f - global0.b.x)), var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, u_input.b, 1u, global1.b.x), vec4<u32>(11955u, 56250u, 0u, 24716u)) >= 59610u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_f_op_vec4_f32(global0.b - global0.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2108f, global0.a, var_0.x, var_0.x))), vec4<bool>(false, any(!vec2<bool>(global3[_wgslsmith_index_u32(global1.a.d.x, 29u)], global0.c.x)), true == func_2(var_0.x, Struct_2(global0.b.x, var_0, vec4<bool>(global1.a.e.x, global0.c.x, global3[_wgslsmith_index_u32(48174u, 29u)], true)), Struct_1(470f, vec3<i32>(u_input.a.x, u_input.c.x, u_input.a.x), vec2<f32>(var_0.x, global1.c.b.x), global1.b, vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 29u)], true))), false)), firstLeadingBit(global1.d));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), 177f) * _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.x * var_1.a.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.b.x, -1007f, -2357f, -1983f) * var_0) - _wgslsmith_f_op_vec4_f32(floor(global1.c.b)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-595f - global1.c.b.x), _wgslsmith_f_op_f32(var_0.x + global0.a), -670f) * global0.b)), func_3(global0.c, _wgslsmith_f_op_f32(-func_1().a)).c.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(func_3(vec4<bool>(false, true, var_1.c.c.x, global3[_wgslsmith_index_u32(global1.a.d.x, 29u)]), 1000f).a.b, var_1.a.b)), vec3<i32>(_wgslsmith_dot_vec2_i32(-var_1.a.b.yy, _wgslsmith_add_vec2_i32(vec2<i32>(1i, 2147483647i), global1.a.b.zx)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, var_1.a.b.x, -33250i) ^ vec4<i32>(-1i, 50368i, var_1.a.b.x, -16949i), abs(vec4<i32>(var_1.a.b.x, 51231i, 38769i, -2147483647i))), _wgslsmith_sub_i32(countOneBits(var_1.a.b.x), global1.a.b.x))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(select(var_1.a.b.yz, vec2<i32>(-2147483647i, u_input.a.x), false)), abs(max(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(var_1.d, global1.d)))), u_input.a.x));
}

