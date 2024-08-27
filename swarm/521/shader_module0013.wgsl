struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-1654f, 2189f, 586f), vec3<f32>(-271f, 1472f, -1000f), vec3<f32>(-747f, 1402f, -462f), vec3<f32>(1262f, -1000f, 1648f), vec3<f32>(377f, 1572f, 527f), vec3<f32>(-757f, -1350f, 1000f), vec3<f32>(-1000f, 215f, -271f), vec3<f32>(1059f, -1360f, 1492f), vec3<f32>(-583f, 694f, -1000f), vec3<f32>(-319f, 591f, 641f), vec3<f32>(-398f, 260f, -1204f), vec3<f32>(-1000f, -528f, 1143f), vec3<f32>(1604f, -2089f, -549f), vec3<f32>(335f, 205f, 1338f), vec3<f32>(652f, 336f, 378f), vec3<f32>(-3763f, 1758f, -431f), vec3<f32>(882f, 139f, -1984f), vec3<f32>(-696f, -621f, -846f), vec3<f32>(-882f, -533f, 723f), vec3<f32>(443f, 735f, -694f), vec3<f32>(-1157f, -956f, -330f), vec3<f32>(-304f, 1000f, -239f), vec3<f32>(864f, 101f, 524f), vec3<f32>(-1066f, 1283f, 480f), vec3<f32>(581f, 374f, -1000f), vec3<f32>(531f, 164f, 1938f), vec3<f32>(1000f, 332f, 126f), vec3<f32>(-1054f, 2146f, -1464f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = Struct_4(arg_0.x, Struct_3(vec2<u32>(~abs(arg_1.a.x), 1u), 90085i, arg_1.c), Struct_2(u_input.c, global1.b, ~u_input.b.x, global1.d, Struct_1(arg_1.a.x ^ ~15662u)), global1.e);
    var var_1 = select(!select(select(!arg_0, select(arg_0, arg_0, arg_0), arg_0), arg_0, vec2<bool>(true, true)), select(vec2<bool>(any(vec3<bool>(arg_0.x, true, false)), select(any(vec4<bool>(arg_0.x, arg_0.x, true, true)), true, true)), select(arg_0, !select(vec2<bool>(true, var_0.a), arg_0, arg_0), select(true, any(vec3<bool>(var_0.a, arg_0.x, var_0.a)), true)), arg_0.x), true);
    global1 = var_0.c;
    let var_2 = global1.b;
    let var_3 = var_0.c;
    return _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~var_2.a, 28u)]);
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 111f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(select(vec2<bool>(false, false), vec2<bool>(true, false), false), Struct_3(vec2<u32>(10679u, u_input.a), 0i, vec2<f32>(global0.x, -1000f)))) - global3[_wgslsmith_index_u32(25084u, 28u)]))));
    var var_1 = _wgslsmith_f_op_f32(-526f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(703f, -197f))))));
    global2 = u_input.a;
    let var_2 = var_0.xz;
    var var_3 = !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, true, true)), arg_0.x >= -1i, !all(vec3<bool>(true, false, true))), select(true || any(vec3<bool>(true, false, false)), false, true));
    return Struct_3(~select(vec2<u32>(~1u, global1.d.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), global1.a.wx), select(var_3.ww, vec2<bool>(var_3.x, false), vec2<bool>(true, var_3.x))), 8197i, vec2<f32>(-1100f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1000f))))));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_1(24678u);
    global2 = 4294967295u;
    global3 = array<vec3<f32>, 28>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -879f)), -1915f, global0.x, global0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 639f, -491f, arg_2.b.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1646f, -655f, -541f, global0.x) * vec4<f32>(-579f, 247f, arg_2.d.c.x, 705f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_3, arg_3, -504f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c.x)), _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(min(-1548f, -1886f))), _wgslsmith_f_op_f32(sign(func_2(vec4<i32>(u_input.b.x, -1i, arg_2.b.b, arg_1.x)).c.x)), 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1202f, -1000f, arg_3, global0.x)))))));
    return select(!vec3<bool>(true, !all(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, true, true)) && true), !vec3<bool>(false, true, (global1.c <= arg_1.x) || any(vec4<bool>(false, false, false, false))), true);
}

fn func_1(arg_0: i32) -> Struct_5 {
    global3 = array<vec3<f32>, 28>();
    var var_0 = all(func_4(-1471f, vec3<i32>(~arg_0, abs(56371i), -1i), Struct_5(vec3<u32>(28376u, 33695u, 83852u), Struct_3(vec2<u32>(41303u, 1u), 2147483647i, vec2<f32>(global0.x, global0.x)), -3720i, func_2(vec4<i32>(u_input.b.x, global1.c, 0i, u_input.b.x))), -543f)) | any(select(vec3<bool>(select(true, true, false), true, true), vec3<bool>(false, false, true), !(global0.x < global0.x)));
    let var_1 = Struct_2(vec4<u32>(1u, global1.e.a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(104428u, 4294967295u, 4294967295u, 74637u)), u_input.c), global1.d.a), global1.e, countOneBits(-2147483647i), Struct_1(797u), global1.b);
    let var_2 = global0.x;
    var var_3 = ~vec2<i32>(arg_0, arg_0);
    return Struct_5(~select(global1.a.yxx | vec3<u32>(19207u, global1.d.a, 0u), vec3<u32>(global1.e.a, _wgslsmith_mult_u32(11275u, var_1.e.a), _wgslsmith_add_u32(var_1.a.x, u_input.a)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), func_2(~(~(~vec4<i32>(2147483647i, 1i, -1i, arg_0)))), i32(-1i) * -2147483647i, Struct_3(vec2<u32>(_wgslsmith_clamp_u32(~u_input.c.x, u_input.a, var_1.e.a), (u_input.c.x ^ u_input.c.x) >> (9208u % 32u)), -2699i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1015f, -444f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1i);
    var var_1 = Struct_5(_wgslsmith_sub_vec3_u32(max(~vec3<u32>(global1.e.a, 30145u, 4532u), (vec3<u32>(u_input.a, var_0.b.a.x, global1.d.a) | u_input.c.zyw) << (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u))), global1.a.xxz), var_0.b, reverseBits(-11646i), Struct_3(var_0.b.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(global1.c, var_0.b.b, u_input.b.x, u_input.b.x)), u_input.b), _wgslsmith_div_vec2_f32(vec2<f32>(871f, 185f), var_0.b.c)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(755f, var_0.d.c.x, -2016f, -1362f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1246f, -1591f, global0.x, 1606f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-328f, var_0.b.c.x, var_0.b.c.x, global0.x)))))));
    global3 = array<vec3<f32>, 28>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.c.x + 265f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1265f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.c.x + global0.x), -800f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1695f - _wgslsmith_f_op_f32(var_0.b.c.x - var_0.d.c.x))) - _wgslsmith_f_op_f32(floor(var_0.b.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-65913i, ~1u, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b.c, var_2.xx), var_2.xz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, -1592f)))));
}

