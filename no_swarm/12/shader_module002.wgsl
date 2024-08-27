struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(859f, -1000f, 799f, 1000f, 670f, 256f, -1869f, -755f, -1963f, 837f, 266f, 526f, -796f, -1342f, -523f, -999f, 243f, 577f, -799f, -1000f, 2418f, 392f, 1000f, 551f, 345f, 101f, -1197f, -2400f, 1024f, -293f, 425f);

var<private> global1: array<u32, 19>;

var<private> global2: i32;

var<private> global3: array<Struct_2, 23>;

var<private> global4: array<vec3<u32>, 4>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = 1175f;
    var var_1 = false;
    global4 = array<vec3<u32>, 4>();
    return vec2<u32>(u_input.d.x, 51142u);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> u32 {
    global4 = array<vec3<u32>, 4>();
    var var_0 = u_input.c.zxw;
    let var_1 = u_input.d;
    let var_2 = vec2<f32>(1306f, _wgslsmith_div_f32(793f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(602f * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.b), 31u)])))));
    var var_3 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98503u, 19u)], 23u)];
    return ~func_1(!arg_2, Struct_2(Struct_1(vec2<u32>(1155u, 9064u), u_input.d, select(arg_0, vec4<bool>(var_3.a.c.x, false, var_3.a.c.x, arg_0.x), arg_2), _wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(24937u, 19115u))))).x;
}

fn func_3(arg_0: f32) -> vec4<bool> {
    global4 = array<vec3<u32>, 4>();
    var var_0 = Struct_1(abs(vec2<u32>(select(func_2(vec4<bool>(true, true, true, true), false, false), 13453u | u_input.b, true), 4294967295u)), u_input.d, select(vec4<bool>(true, false, false, !any(vec2<bool>(true, false))), vec4<bool>(select(true, false, true), _wgslsmith_clamp_u32(40586u, 0u, u_input.d.x) == ~u_input.d.x, false, true), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))) & any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), u_input.d);
    let var_1 = _wgslsmith_mult_vec2_u32(u_input.d, ~u_input.d);
    let var_2 = Struct_1(u_input.d >> (select(u_input.d, countOneBits(var_0.a), var_0.c.wx) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_sub_u32(var_1.x, u_input.b)), _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(var_0.b.x, 19u)], 28990u)), min(0u, 101782u)), select(vec4<bool>(select(true, var_0.c.x, true), var_0.a.x >= func_2(var_0.c, false, true), true, all(var_0.c.xy) && !var_0.c.x), !(!var_0.c), select(!var_0.c, var_0.c, all(var_0.c.xwy))), u_input.d);
    global4 = array<vec3<u32>, 4>();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    var var_0 = Struct_2(Struct_1(func_1(false, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b ^ global1[_wgslsmith_index_u32(5470u, 19u)], 206u), 23u)]), vec2<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(33529u, 19u)], 4294967295u) >> (func_2(vec4<bool>(false, true, false, false), true, true) % 32u), global1[_wgslsmith_index_u32(~(~u_input.d.x), 19u)]), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_3(1349f), true), vec4<bool>(all(vec2<bool>(true, true)), true, false, false)), ~vec2<u32>(0u, select(42149u, 7570u, true))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(92517u, 19u)], 31u)])))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, 42554u), 31u)], 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], 1385f, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(3358u, 31u)], global0[_wgslsmith_index_u32(u_input.d.x, 31u)], -1074f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15794u, 19u)], 31u)]) - vec4<f32>(165f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42898u, 19u)], 19u)], 31u)], -194f, -2420f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(54100u, 31u)], 438f, 335f, -424f) - vec4<f32>(-1311f, global0[_wgslsmith_index_u32(u_input.d.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(80662u, 31u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-660f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49371u, 19u)], 31u)], -1551f, -466f)), vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], 31u)], global0[_wgslsmith_index_u32(u_input.d.x, 31u)], -1941f, global0[_wgslsmith_index_u32(u_input.b, 31u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.a.x, 19u)], 31u)], 2061f, global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(var_0.a.a.x, 31u)])))))));
    var var_2 = var_0.a;
    var var_3 = u_input.c.x;
    var var_4 = var_0.a;
    var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(var_1.x * -1040f), !var_2.c.x)) + 719f) * -257f), ~0u, u_input.a.x, vec4<i32>(reverseBits(countOneBits(_wgslsmith_div_i32(u_input.a.x, u_input.c.x))), select(u_input.c.x, _wgslsmith_mod_i32(select(u_input.a.x, -43448i, var_4.c.x), u_input.c.x), var_2.c.x), ~u_input.a.x, _wgslsmith_clamp_i32(0i, u_input.c.x, _wgslsmith_add_i32(2147483647i, u_input.a.x)) << (12095u % 32u)), _wgslsmith_add_vec3_u32(~firstTrailingBit(~vec3<u32>(var_2.d.x, global1[_wgslsmith_index_u32(var_2.a.x, 19u)], 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(~4294967295u, 0u, max(var_2.b.x, 18909u)), vec3<u32>(firstTrailingBit(var_0.a.a.x), global1[_wgslsmith_index_u32(func_2(var_2.c, var_0.a.c.x, false), 19u)], 1109u))));
}

