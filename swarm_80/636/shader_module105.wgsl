struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-4989i, -1i, 1i);

var<private> global1: Struct_2 = Struct_2(false);

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<vec4<i32>, 15>;

var<private> global4: array<bool, 21> = array<bool, 21>(false, true, true, true, false, true, true, false, false, true, true, false, false, true, false, false, false, false, false, true, false);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global2 = array<Struct_1, 10>();
    global4 = array<bool, 21>();
    let var_0 = _wgslsmith_div_i32(u_input.b.x, countOneBits(global0.x));
    global0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, arg_2.b.x, -33446i), -2147483647i), 500i, -27644i), vec3<i32>(0i, abs(11555i), 13579i));
    let var_1 = -(max(_wgslsmith_mult_vec2_i32(~global0.xy, vec2<i32>(33418i, 0i) ^ arg_2.b.zz), -(~vec2<i32>(arg_2.a, 40238i))) ^ vec2<i32>(countOneBits(abs(arg_2.b.x)), -_wgslsmith_div_i32(-34455i, u_input.b.x)));
    return var_0 >= (-(abs(arg_0.a) << (~u_input.a % 32u)) & 13854i);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 1u), ~(u_input.a & ~(u_input.d.x & u_input.d.x)));
    var var_1 = !select(select(vec3<bool>(true, true, global1.a), !vec3<bool>(false, global4[_wgslsmith_index_u32(850u, 21u)], true), func_3(global2[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -383f), Struct_1(-2147483647i, vec4<i32>(1i, u_input.c.x, 2147483647i, u_input.c.x), false), Struct_2(false))), !select(select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, global1.a, false), global4[_wgslsmith_index_u32(var_0, 21u)]), !vec3<bool>(false, global1.a, false), select(vec3<bool>(global1.a, false, false), vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 21u)], global1.a, global1.a), false)), false);
    let var_2 = ~select(44683u, ~(~(~4789u)), !(!func_3(Struct_1(1i, vec4<i32>(-42902i, u_input.c.x, -8492i, 2147483647i), var_1.x), -321f, global2[_wgslsmith_index_u32(0u, 10u)], Struct_2(false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(891f)) + -1033f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(264f * 1442f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) - _wgslsmith_f_op_f32(f32(-1f) * -905f))), _wgslsmith_div_f32(-294f, -127f)));
    global1 = Struct_2(true);
    return var_3.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = arg_1;
    global1 = arg_3;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -1000f, -516f) - vec3<f32>(var_0, arg_0.x, -1469f)) - arg_2.ywy)), arg_2.yww)));
    var var_2 = var_1.x;
    var var_3 = vec4<i32>(global0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global0.x), u_input.c.xw), 2147483647i, -1i) & u_input.b.x, select(abs(u_input.c.x), -u_input.c.x, arg_3.a), _wgslsmith_mod_i32(1i, abs(-2147483647i)) << ((u_input.d.x | 25410u) % 32u)) ^ global3[_wgslsmith_index_u32(u_input.a, 15u)];
    return vec4<i32>(abs(var_3.x) | 71531i, global0.x >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 42392u) >> (abs(vec2<u32>(u_input.a, u_input.d.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.d.xz, u_input.d.ww)) % 32u), _wgslsmith_mod_i32(abs(abs(_wgslsmith_dot_vec3_i32(u_input.c.wzx, vec3<i32>(-3644i, 2147483647i, var_3.x)))), var_3.x & _wgslsmith_add_i32(var_3.x, u_input.b.x)), -(~1i));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-18935i, arg_0.b.x, _wgslsmith_sub_i32(u_input.b.x, -1i), -1i), vec4<i32>(1i, -2147483647i, arg_0.b.x | global0.x, 38070i)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.wyx, u_input.d.zxw), 15u)], -arg_0.b), ~vec4<i32>(-63937i, 9604i, arg_0.a, global0.x) ^ arg_0.b)), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(-72865i, -88310i, arg_0.a, -78164i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1274i, u_input.b.x, 9506i, global0.x), vec4<i32>(arg_0.b.x, global0.x, -1i, arg_0.b.x), arg_0.b)) >> (u_input.d % vec4<u32>(32u)), global3[_wgslsmith_index_u32(1u, 15u)], abs(func_4(vec3<f32>(1523f, -1153f, -500f), _wgslsmith_f_op_f32(func_2(vec2<i32>(-2147483647i, 28240i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(316f, 825f, -296f, -1000f) + vec4<f32>(365f, 1438f, -1000f, -2268f)), Struct_2(false)))), false);
    var var_1 = any(vec3<bool>(true, false, true)) & select(all(vec3<bool>(!arg_0.c, any(vec2<bool>(var_0.c, arg_0.c)), true)), false, false);
    var var_2 = Struct_2(true);
    var_2 = Struct_2(true);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(-391f, -1252f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)));
    return select(vec3<bool>(var_0.c, global4[_wgslsmith_index_u32(~select(u_input.d.x, _wgslsmith_mod_u32(1u, u_input.a), true), 21u)], global4[_wgslsmith_index_u32(u_input.d.x << (4294967295u % 32u), 21u)]), vec3<bool>(any(!(!vec2<bool>(global1.a, true))), var_2.a, false), !(!vec3<bool>(false, any(vec4<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 21u)], true, var_0.c, false)), !var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 27538i;
    var_0 = -1i;
    var var_1 = Struct_1(abs(-(u_input.c.x ^ global0.x)), countOneBits(u_input.c), any(!select(func_1(global2[_wgslsmith_index_u32(u_input.a, 10u)]), select(vec3<bool>(false, true, global1.a), vec3<bool>(true, false, true), global4[_wgslsmith_index_u32(29632u, 21u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 21u)], false))));
    global3 = array<vec4<i32>, 15>();
    global2 = array<Struct_1, 10>();
    global3 = array<vec4<i32>, 15>();
    global1 = Struct_2(var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_u32(1u, u_input.d.x)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, 14248u, u_input.a)), vec3<u32>(14826u, _wgslsmith_mult_u32(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.d.x), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.a))), ~u_input.a)));
}

