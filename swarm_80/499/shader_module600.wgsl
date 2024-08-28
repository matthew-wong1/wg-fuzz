struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<bool>(true, false, false), false, vec2<bool>(true, true), vec4<u32>(25110u, 50415u, 4294967295u, 4294967295u), 0i), vec2<f32>(-813f, -521f));

var<private> global1: array<f32, 30> = array<f32, 30>(-336f, -1136f, -1694f, -746f, 1825f, 1000f, 167f, 841f, 684f, 296f, 123f, 277f, -659f, -130f, 702f, 718f, -1338f, 1501f, 542f, 116f, 1090f, -1106f, 1226f, 1632f, -1049f, -1273f, 1016f, 1694f, -2206f, -1095f);

var<private> global2: f32;

var<private> global3: bool = true;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> f32 {
    global1 = array<f32, 30>();
    var var_0 = arg_0;
    var var_1 = Struct_1(!select(var_0.a, select(global0.a.a, vec3<bool>(false, global0.a.c.x, arg_0.c.x), any(vec4<bool>(arg_2, arg_1.a.b, true, global0.a.c.x))), !select(vec3<bool>(false, arg_0.c.x, false), vec3<bool>(arg_0.b, arg_0.b, false), true)), !(!select(true, arg_2, true)) | false, !(!vec2<bool>(true, var_0.c.x & arg_2)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(arg_1.a.d), var_0.d >> (vec4<u32>(u_input.b.x, 68159u, 6769u, 4294967295u) % vec4<u32>(32u)), ~global0.a.d), arg_0.d) ^ vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(80913u, global0.a.d.x)), arg_0.d.x << (u_input.b.x % 32u), 4294967295u, ~global0.a.d.x), u_input.a.x);
    var var_2 = !vec4<bool>(var_0.a.x, true, !(arg_2 == true), arg_1.a.c.x);
    global2 = _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-169f + global0.b.x) - -1000f))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.x, 888f), -1748f))));
    return -505f;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(false);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 30u)]))), global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 1000f, -759f)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, false, global0.a.c.x), var_0.a, vec2<bool>(false, false), vec4<u32>(global0.a.d.x, u_input.b.x, u_input.b.x, 0u), -62358i), Struct_3(Struct_1(vec3<bool>(global0.a.a.x, var_0.a, global0.a.a.x), var_0.a, global0.a.a.xx, vec4<u32>(global0.a.d.x, 4755u, 4294967295u, global0.a.d.x), 85252i), global0.b), var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global0.b.x)))))), global1[_wgslsmith_index_u32(u_input.b.x, 30u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(806f * _wgslsmith_f_op_f32(440f + 549f)), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global0.a.d.x), 30u)])), var_2.x))) - vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(countOneBits(0u)), ~global0.a.d.x), 30u)], global1[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_f32(abs(var_2.x)), var_1.x));
    var var_4 = ~(~global0.a.d.wz);
    return Struct_3(Struct_1(vec3<bool>(global0.a.b, var_0.a, !var_0.a), var_0.a, !global0.a.a.xx, ~global0.a.d, global0.a.e), var_2);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: bool) -> Struct_4 {
    var var_0 = func_2();
    global1 = array<f32, 30>();
    let var_1 = abs(vec4<u32>(36381u, 4294967295u, (arg_1.a.d.x << (arg_1.a.d.x % 32u)) | func_2().a.d.x, ~4294967295u)) & global0.a.d;
    var_0 = arg_1;
    let var_2 = arg_2;
    return Struct_4(arg_2.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec3<i32>) -> vec4<bool> {
    global1 = array<f32, 30>();
    global0 = arg_2;
    global1 = array<f32, 30>();
    var var_0 = func_4(~21407u, func_2(), !vec3<bool>(false, func_2().a.b, arg_2.a.b), arg_2.a.a.x);
    global1 = array<f32, 30>();
    return select(select(vec4<bool>(global0.a.b, true, !var_0.a | any(vec4<bool>(true, arg_2.a.b, false, arg_2.a.a.x)), true), select(select(!vec4<bool>(var_0.a, true, false, false), !vec4<bool>(true, var_0.a, var_0.a, arg_2.a.c.x), !vec4<bool>(global0.a.b, true, false, true)), !(!vec4<bool>(true, false, true, var_0.a)), ~u_input.a.x >= arg_2.a.e), select(!all(vec2<bool>(global0.a.c.x, var_0.a)), global0.a.b, true)), !vec4<bool>(false, all(vec2<bool>(var_0.a, arg_2.a.a.x)), true, true), vec4<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(55253u, 30u)] > global0.b.x, true)), all(vec4<bool>(!arg_2.a.c.x, true, 0u <= u_input.b.x, true)), any(!func_2().a.a), global0.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(select(select(func_1(_wgslsmith_mod_vec3_u32(global0.a.d.xzx, vec3<u32>(47273u, u_input.b.x, 60126u)), ~vec2<u32>(47523u, 1u), Struct_3(global0.a, vec2<f32>(-777f, 738f)), u_input.a.xww), vec4<bool>(true, true, all(vec4<bool>(false, global0.a.c.x, true, global0.a.c.x)), global0.a.a.x || true), all(!vec3<bool>(false, global0.a.a.x, global0.a.a.x))), func_1(vec3<u32>(u_input.b.x, 0u, global0.a.d.x) & vec3<u32>(u_input.b.x, 3715u, 15232u), vec2<u32>(~29994u, 34876u & global0.a.d.x), func_2(), vec3<i32>(~(-1i), 5958i, u_input.a.x)), !(global0.a.a.x | !global0.a.a.x)));
    let var_0 = !select(!(!(!vec4<bool>(global0.a.b, global0.a.c.x, global0.a.b, global0.a.a.x))), !select(vec4<bool>(true, false, global0.a.a.x, true), vec4<bool>(false, true, true, true), global0.a.a.x), vec4<bool>(global0.a.c.x, countOneBits(u_input.b.x) <= 31731u, !all(vec3<bool>(global0.a.c.x, true, global0.a.c.x)), !global0.a.b));
    var var_1 = Struct_3(Struct_1(vec3<bool>(!all(var_0.zx), global0.a.d.x > 0u, global0.a.c.x), var_0.x || (func_2().a.d.x > (55218u >> (0u % 32u))), !(!func_2().a.a.yy), abs(~abs(vec4<u32>(48579u, 28913u, global0.a.d.x, u_input.b.x))), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(~u_input.a.x, -u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, global1[_wgslsmith_index_u32(global0.a.d.x, 30u)]), global0.b, true)))))));
    var var_2 = Struct_4(false);
    let var_3 = Struct_2(~vec3<u32>(var_1.a.d.x, global0.a.d.x, _wgslsmith_add_u32(~u_input.b.x, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, global1[_wgslsmith_index_u32(global0.a.d.x, 30u)], global1[_wgslsmith_index_u32(40176u, 30u)], 333f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -273f, 358f, -2091f) * vec4<f32>(-1611f, var_1.b.x, var_1.b.x, 781f))) * vec4<f32>(1078f, _wgslsmith_f_op_f32(f32(-1f) * -310f), global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -908f)))), -445f, var_1.a, Struct_1(select(var_1.a.a, vec3<bool>(true, true, false), true), !(any(var_0) && var_0.x), !(!var_0.yz), vec4<u32>(~u_input.b.x, _wgslsmith_sub_u32(min(u_input.b.x, 4294967295u), 12577u), _wgslsmith_mult_u32(var_1.a.d.x, reverseBits(1u)), 1u << (var_1.a.d.x % 32u)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(~u_input.a.x, -81068i), 16197i)));
    global0 = Struct_3(var_3.d, vec2<f32>(var_1.b.x, global0.b.x));
    let var_4 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(24289u);
}

