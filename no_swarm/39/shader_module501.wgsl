struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(1643f, -2020f), vec2<f32>(-394f, 101f), vec2<f32>(373f, -107f), vec2<f32>(-304f, 1647f), vec2<f32>(-437f, -999f), vec2<f32>(-305f, -466f), vec2<f32>(-496f, -1498f), vec2<f32>(-176f, 1616f), vec2<f32>(-1664f, 104f), vec2<f32>(780f, 1258f), vec2<f32>(-646f, 414f), vec2<f32>(1237f, 935f), vec2<f32>(-923f, 1162f), vec2<f32>(1000f, 487f), vec2<f32>(-1077f, -321f), vec2<f32>(378f, -656f), vec2<f32>(-2243f, 1211f), vec2<f32>(1000f, -611f), vec2<f32>(-968f, -161f), vec2<f32>(616f, 308f), vec2<f32>(295f, 272f), vec2<f32>(464f, -346f), vec2<f32>(-891f, -568f), vec2<f32>(2267f, 1203f), vec2<f32>(2123f, 365f), vec2<f32>(-1020f, 372f), vec2<f32>(-1000f, -1769f), vec2<f32>(-381f, 102f), vec2<f32>(1072f, -200f));

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<f32>, 19>;

var<private> global3: vec2<bool>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_2(global4.a, vec4<bool>(!((i32(-1i) * -8522i) != u_input.a), !global3.x, true, true));
    var var_1 = firstLeadingBit(_wgslsmith_add_i32(~(~_wgslsmith_add_i32(u_input.a, u_input.a)), min(firstLeadingBit(~2147483647i), abs(i32(-1i) * -2147483647i))));
    let var_2 = arg_0.x;
    global4 = Struct_2(~(~vec4<u32>(0u, global4.a.x, ~0u, ~global4.a.x)), select(select(vec4<bool>(u_input.c <= 36814u, arg_1.x, global3.x && false, !global3.x), select(!arg_1, !global4.b, var_0.b), global1.x), vec4<bool>(arg_1.x, !var_0.b.x, arg_0.x <= var_2, true || (-2147483647i >= u_input.d.x)), !(false | any(vec3<bool>(global3.x, var_0.b.x, global3.x)))));
    var var_3 = 25349i;
    return _wgslsmith_add_i32(u_input.d.x, u_input.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_3) -> vec2<bool> {
    global1 = select(!select(select(select(global4.b.ww, global4.b.yx, vec2<bool>(arg_2.c, false)), select(arg_2.b.xw, global4.b.wy, arg_2.b.xz), select(arg_2.b.zw, vec2<bool>(arg_2.b.x, arg_2.b.x), global3.x)), arg_2.b.yy, all(vec2<bool>(arg_2.b.x, arg_2.c))), !select(arg_2.b.wz, select(select(vec2<bool>(global1.x, false), vec2<bool>(false, true), global4.b.yz), vec2<bool>(true, false), global4.b.yx), select(arg_2.b.xy, vec2<bool>(global4.b.x, false), vec2<bool>(false, global3.x))), 1297f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -203f), -650f))));
    var var_0 = Struct_2(~vec4<u32>(~(~arg_0.x), 0u, 4294967295u, u_input.e.x), select(select(!(!global4.b), arg_2.b, false), global4.b, true));
    var var_1 = arg_2.a;
    global1 = var_0.b.yx;
    global2 = array<vec2<f32>, 19>();
    return !arg_2.b.yy;
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<f32>, 29>();
    let var_0 = countOneBits(-(1i >> (global4.a.x % 32u))) > _wgslsmith_mod_i32(u_input.d.x, u_input.d.x ^ 0i);
    global0 = array<vec2<f32>, 29>();
    var var_1 = all(global4.b);
    global3 = select(global4.b.wy, !global4.b.zw, func_4(~(~(~global4.a.wzy)), vec4<i32>(~(u_input.d.x << (46971u % 32u)), u_input.d.x, 1i, firstLeadingBit(u_input.d.x << (23788u % 32u))), Struct_3(Struct_1(func_3(global2[_wgslsmith_index_u32(u_input.c, 19u)], vec4<bool>(global3.x, false, global3.x, global4.b.x))), !(!global4.b), select(global3.x | false, false, false))));
    return Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(25633u, firstLeadingBit(global4.a.x)), 0u, ~_wgslsmith_mod_u32(1u, 1u), 37559u ^ (u_input.b << (48021u % 32u))), abs(global4.a | ~vec4<u32>(u_input.e.x, 4294967295u, global4.a.x, global4.a.x))), select(!(!vec4<bool>(true, global1.x, false, global4.b.x)), vec4<bool>(global3.x, false, true, reverseBits(2147483647i) == ~u_input.d.x), true));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    global2 = array<vec2<f32>, 19>();
    var var_0 = Struct_1(0i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * 108f), arg_2.x), -105f) + arg_2.x) < -528f;
    let var_2 = global4.b.x;
    global3 = !(!func_4(vec3<u32>(u_input.e.x ^ 25049u, arg_0.a.x, _wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(1u, u_input.e.x, arg_0.a.x, global4.a.x))), vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_0.a, var_0.a, 1776i), Struct_3(Struct_1(2147483647i), arg_0.b, 4294967295u < global4.a.x)));
    return Struct_2(arg_0.a, arg_0.b);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global3 = vec2<bool>(u_input.a <= -2147483647i, !all(!select(vec2<bool>(false, true), vec2<bool>(global3.x, global3.x), global3.x)));
    let var_0 = func_5(func_2(), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(abs(-943f)), _wgslsmith_f_op_f32(383f - 610f)))));
    let var_1 = reverseBits(global4.a.wxz) >> (~(~countOneBits(firstTrailingBit(vec3<u32>(global4.a.x, var_0.a.x, u_input.c)))) % vec3<u32>(32u));
    var var_2 = vec3<u32>(var_1.x, reverseBits(~4294967295u), max(var_0.a.x, ~1u));
    var var_3 = (max(select(max(vec4<i32>(u_input.a, 42521i, 38066i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), select(vec4<i32>(u_input.a, u_input.a, 27514i, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), false), !global3.x), ~vec4<i32>(-27001i, -1i, -5907i, u_input.a) >> (~global4.a % vec4<u32>(32u))) | ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 21821i, u_input.d.x, 1278i) | vec4<i32>(u_input.d.x, 1i, u_input.d.x, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1i, -1194i, -30129i), vec4<i32>(41449i, 0i, -16595i, u_input.d.x)))) | vec4<i32>(countOneBits(u_input.d.x) >> (8898u % 32u), -2147483647i & -(~u_input.d.x), u_input.d.x, -2147483647i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(vec4<u32>(~countOneBits(u_input.e.x >> (4294967295u % 32u)), u_input.e.x, global4.a.x, abs(~u_input.e.x)), global4.b);
    global4 = func_1(vec2<f32>(1f, 300f));
    var var_0 = Struct_3(Struct_1(~(i32(-1i) * -9907i)), !(!select(global4.b, global4.b, global1.x)), false);
    let var_1 = !func_5(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(77094u, 19u)], vec2<f32>(364f, -403f), global4.b.zy)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(110f, -414f))))), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))).b;
    let var_2 = vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, 3396i, var_0.a.a, ~var_0.a.a) & (vec4<i32>(2147483647i, u_input.a, 2147483647i, -1i) | (vec4<i32>(0i, 23560i, 1i, -24960i) >> (vec4<u32>(u_input.b, 1u, u_input.b, 81970u) % vec4<u32>(32u)))));
    global2 = array<vec2<f32>, 19>();
    var_0 = Struct_3(var_0.a, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, _wgslsmith_f_op_f32(582f + 1000f)))).b, !any(select(!global4.b.xz, global4.b.wz, false | global4.b.x)));
    let var_3 = _wgslsmith_mult_u32(~(~u_input.b), 19100u);
    var var_4 = 50196u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a, -40388i, vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(985f * -646f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1275f * -369f) - 1142f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(190f, _wgslsmith_f_op_f32(round(1164f)))), _wgslsmith_f_op_f32(-508f - _wgslsmith_f_op_f32(round(1f)))), _wgslsmith_add_vec4_u32(func_2().a, vec4<u32>(_wgslsmith_sub_u32(u_input.e.x, ~1645u), abs(_wgslsmith_dot_vec4_u32(global4.a, global4.a)), u_input.b, ~(~var_3))), 0u);
}

