struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: array<u32, 14> = array<u32, 14>(0u, 0u, 39602u, 0u, 0u, 32381u, 4294967295u, 0u, 35457u, 24072u, 0u, 1836u, 4294967295u, 47647u);

var<private> global3: u32 = 0u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_5) -> f32 {
    var var_0 = abs(~firstTrailingBit(vec3<u32>(0u, arg_1.d.a.b.x, arg_1.d.a.b.x)));
    let var_1 = abs((_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 20908u, u_input.a, 3409u), vec4<u32>(14967u, var_0.x, var_0.x, global2[_wgslsmith_index_u32(0u, 14u)]), global1.x), select(vec4<u32>(82999u, 41831u, 4294967295u, var_0.x), vec4<u32>(arg_1.d.a.b.x, arg_1.d.a.b.x, 1u, 63626u), vec4<bool>(true, global1.x, global1.x, arg_1.c.x))) << ((~vec4<u32>(5564u, 4294967295u, arg_1.d.a.b.x, 4294967295u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.d.a.b.x, 30265u, 0u, 1u), vec4<u32>(var_0.x, 1u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 14u)], 36375u, arg_1.d.a.b.x))) % vec4<u32>(32u))) >> (select(vec4<u32>(abs(arg_1.d.a.b.x), max(arg_1.d.a.b.x, 45997u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 45901u, 0u), vec3<u32>(4294967295u, var_0.x, var_0.x)), reverseBits(arg_1.d.a.b.x)), select(vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(var_0.x, 14u)], 74181u, global2[_wgslsmith_index_u32(33927u, 14u)]), vec4<u32>(55162u, 782u, var_0.x, var_0.x), select(vec4<bool>(false, arg_1.c.x, arg_0, false), vec4<bool>(true, true, arg_1.e, arg_0), vec4<bool>(true, global1.x, arg_0, false))), any(vec3<bool>(true, false, true))) % vec4<u32>(32u)));
    var var_2 = -firstLeadingBit(firstLeadingBit(min(-arg_1.d.a.a, ~vec2<i32>(arg_1.d.a.a.x, arg_1.d.a.a.x))));
    var_2 = reverseBits(~(arg_1.d.a.a & vec2<i32>(arg_1.d.a.a.x, arg_1.d.a.a.x)));
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.b.x * arg_1.b.x));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1668f, _wgslsmith_f_op_f32(-582f + -545f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(-2584f))))), _wgslsmith_f_op_f32(func_3(!(!global1.x), Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, -1014f, -847f, 823f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(120f, 1000f, 1392f, 514f))), !global1.zww, Struct_3(Struct_2(vec2<i32>(-8884i, -51543i), vec2<u32>(u_input.a, arg_0), false), vec4<f32>(1129f, -692f, -2357f, 306f)), true))), _wgslsmith_f_op_f32(1057f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, 604f))))));
    global2 = array<u32, 14>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<f32>(-1301f, -224f, -1521f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, var_0.x, -1030f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0))))), _wgslsmith_f_op_vec4_f32(-var_0), !vec3<bool>(true, all(vec2<bool>(true, true)), all(vec3<bool>(global1.x, false, true))), Struct_3(Struct_2(reverseBits(vec2<i32>(1i, 1i)), ~(vec2<u32>(arg_0, 54085u) ^ vec2<u32>(u_input.a, 98101u)), false), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(878f, _wgslsmith_f_op_f32(-230f + var_0.x), 1f, _wgslsmith_f_op_f32(trunc(var_0.x)))))), true);
    return var_1.d.b;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_5) -> Struct_2 {
    var var_0 = 18997i;
    var var_1 = abs((-2147483647i ^ _wgslsmith_div_i32(-arg_3.d.a.a.x, ~0i)) << (1u % 32u));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -176f), 155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f * arg_3.b.x)), 1000f)), _wgslsmith_f_op_vec4_f32(func_2(~(~1u))), arg_3.c, arg_3.d, false);
    var var_3 = select(select(vec2<bool>(global1.x & true, !any(arg_2)), var_2.c.xz, arg_3.c.yy), vec2<bool>(true, false && (all(vec4<bool>(false, global1.x, false, global1.x)) & all(vec4<bool>(arg_2.x, true, true, arg_2.x)))), vec2<bool>(true, true));
    let var_4 = Struct_4(select(vec3<bool>(!any(vec4<bool>(false, true, arg_2.x, var_3.x)), select(true | global1.x, select(false, var_3.x, global1.x), all(vec3<bool>(true, false, true))), var_3.x), var_2.c, var_2.c), Struct_1((_wgslsmith_clamp_u32(0u, 94242u, var_2.d.a.b.x) >> (~0u % 32u)) != ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 67055u, 16661u), vec3<u32>(1u, 0u, 0u)), arg_1.ywy, vec3<bool>(var_2.c.x, var_2.d.a.c | false, true), any(!arg_2.zwx) & all(arg_2.xwz)), var_2.d.a.a.x, vec2<bool>(true, true), Struct_1(((57927u << (0u % 32u)) > (var_2.d.a.b.x ^ 96815u)) | (_wgslsmith_f_op_f32(-1134f * -653f) >= _wgslsmith_f_op_f32(var_2.b.x * 1700f)), _wgslsmith_f_op_vec3_f32(-arg_1.yyx), vec3<bool>(any(!arg_3.c), !(!global1.x), true), select(all(!arg_2.xz), any(vec4<bool>(true, true, var_2.c.x, true)), select(true, arg_2.x, var_3.x) && arg_2.x)));
    return arg_3.d.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    global3 = reverseBits(34962u);
    let var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = Struct_1(var_1.a.c, arg_0.b.yyw, !(!global1.wwy), !arg_1.e.a);
    var var_3 = var_0.a.b;
    return func_1(~global2[_wgslsmith_index_u32(~47898u, 14u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(-var_0.b))), select(select(!vec4<bool>(var_0.a.c, var_2.a, global1.x, false), vec4<bool>(true, global1.x, any(vec2<bool>(arg_1.a.x, false)), all(var_2.c.xz)), !vec4<bool>(true, true, var_0.a.c, false)), vec4<bool>(global1.x, any(global1.zwx), all(select(vec4<bool>(false, arg_0.a.c, false, global1.x), vec4<bool>(true, arg_1.d.x, true, var_1.a.c), vec4<bool>(false, true, arg_1.d.x, arg_0.a.c))), var_0.a.c), arg_1.e.c.x), Struct_5(vec4<f32>(1f, -793f, -1055f, var_1.b.x), vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.b.x)), arg_0.b.x, -328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-248f)) - 576f)), !vec3<bool>(arg_1.a.x, any(vec3<bool>(false, var_0.a.c, false)), true), arg_0, arg_0.a.c));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    var var_0 = firstLeadingBit(abs(-_wgslsmith_add_vec4_i32(max(vec4<i32>(arg_0.a.a.x, 12789i, 85107i, -2147483647i), vec4<i32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x)), -vec4<i32>(0i, arg_0.a.a.x, arg_0.a.a.x, -1i))));
    var_0 = firstLeadingBit(vec4<i32>(((arg_0.a.a.x << (u_input.a % 32u)) & (arg_0.a.a.x & var_0.x)) ^ abs(~(-30920i)), 1i, max(_wgslsmith_mod_i32(1i, reverseBits(50974i)), _wgslsmith_sub_i32(abs(8959i), _wgslsmith_add_i32(2147483647i, -7024i))), ~var_0.x));
    global2 = array<u32, 14>();
    let var_1 = select(arg_0.a.b, arg_0.a.b, global1.x);
    var var_2 = Struct_4(global1.zzw, Struct_1(any(!vec3<bool>(true, global1.x, global1.x)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-287f, arg_0.b.x), arg_0.b.x, arg_0.a.c & true)), _wgslsmith_f_op_f32(arg_0.b.x + -854f), _wgslsmith_f_op_f32(-arg_0.b.x)), vec3<bool>(!(arg_0.b.x > arg_0.b.x), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * 1024f)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~arg_0.a.a, arg_0.a.a << (vec2<u32>(10139u, 0u) % vec2<u32>(32u))) | max(abs(vec2<i32>(arg_0.a.a.x, var_0.x)), _wgslsmith_div_vec2_i32(var_0.wy, var_0.zx)), -vec2<i32>(~var_0.x, -3526i)), !vec2<bool>(!any(vec4<bool>(arg_0.a.c, true, arg_0.a.c, true)), !global1.x != (arg_0.a.c && false)), Struct_1(max(arg_0.a.a.x, -arg_0.a.a.x) <= arg_0.a.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(201f + arg_0.b.x), _wgslsmith_f_op_f32(288f * -807f), -458f)), select(!vec3<bool>(false, arg_0.a.c, false), global1.yxw, 1i > _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.a.a.x, var_0.x, 5227i), vec4<i32>(23060i, -32328i, -44836i, var_0.x))), false && arg_0.a.c));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_5(Struct_3(func_4(Struct_3(func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)], vec4<f32>(-852f, 598f, 354f, 1356f), vec4<bool>(global1.x, global1.x, global1.x, global1.x), Struct_5(vec4<f32>(-112f, 1860f, -2000f, 688f), vec4<f32>(-103f, 1336f, -1321f, 800f), vec3<bool>(global1.x, true, global1.x), Struct_3(Struct_2(vec2<i32>(-1i, 12406i), vec2<u32>(40012u, u_input.a), global1.x), vec4<f32>(1249f, -275f, 854f, -579f)), global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-543f, 2188f, 934f, -581f))), Struct_4(vec3<bool>(global1.x, global1.x, true), Struct_1(global1.x, vec3<f32>(-1092f, -1000f, 1113f), vec3<bool>(false, global1.x, true), true), 2147483647i, global1.wx, Struct_1(global1.x, vec3<f32>(-437f, -1229f, -1000f), vec3<bool>(global1.x, true, true), global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    let var_2 = Struct_4(!select(!select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, var_1.c), false), global1.zyz, true), Struct_1(all(!select(vec2<bool>(var_1.c, global1.x), global1.zx, vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1270f, 168f, -1206f) - vec3<f32>(-1446f, 1553f, -719f)), vec3<f32>(291f, 574f, 2376f)))), !select(!vec3<bool>(true, global1.x, var_1.c), vec3<bool>(false, false, false), vec3<bool>(true, false, global1.x)), all(global1.zx)), ~(-var_1.a.x), select(vec2<bool>(true, var_1.c | global1.x), select(select(select(vec2<bool>(true, true), global1.wy, vec2<bool>(var_1.c, var_1.c)), global1.xx, true), vec2<bool>(true, !var_1.c), vec2<bool>(var_1.c, !global1.x)), any(!select(vec3<bool>(false, var_1.c, false), global1.wwz, true))), Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(930f, 1848f, 1468f)))), global1.zzw, global1.x));
    global2 = array<u32, 14>();
    global2 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_f_op_f32(var_2.b.b.x * var_2.b.b.x), vec3<i32>(_wgslsmith_mod_i32(38691i, var_2.c), var_2.c, 48820i), 1u, vec2<u32>(~4294967295u, reverseBits(var_1.b.x)));
}

