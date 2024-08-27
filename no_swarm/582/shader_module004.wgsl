struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-84190i, vec4<bool>(true, true, true, false), vec2<i32>(0i, -30839i), vec3<u32>(1u, 1u, 66423u), vec4<i32>(40177i, 12325i, -24997i, 1i));

var<private> global1: array<i32, 30> = array<i32, 30>(-1i, -1i, 1239i, -1578i, -42427i, 2147483647i, 1i, 50711i, 2147483647i, 1i, 28798i, 2376i, i32(-2147483648), 2147483647i, 19718i, -42535i, -31672i, 19464i, 30201i, -1i, -1i, 2147483647i, -50480i, -32493i, -19426i, 60910i, i32(-2147483648), -11358i, -25213i, -46500i);

var<private> global2: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1265f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-641f, _wgslsmith_f_op_f32(-189f * -1000f))), _wgslsmith_f_op_f32(min(405f, _wgslsmith_f_op_f32(max(-341f, 1042f))))))));
    var var_1 = _wgslsmith_mult_u32(4294967295u, ~(global0.d.x << (~(global0.d.x ^ 16800u) % 32u)));
    var_1 = abs(~global0.d.x);
    return select(global0.b, select(vec4<bool>(62039u != _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, global0.d.x, 75698u, global0.d.x), vec4<u32>(52657u, 0u, global0.d.x, global0.d.x)), global0.b.x, true, !(global0.b.x || global0.b.x)), global0.b, any(global0.b.zy)), !vec4<bool>(true, all(global0.b.yzy), true, true));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -vec2<i32>(~_wgslsmith_sub_i32(u_input.b.x, 1i), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(arg_0.a.x, 30u)], _wgslsmith_add_i32(u_input.a.x, 1i))) ^ _wgslsmith_mod_vec2_i32(-vec2<i32>(26020i, 13269i) >> (abs(vec2<u32>(global0.d.x, 11853u)) % vec2<u32>(32u)), u_input.a);
    return Struct_1(27206i, select(!vec4<bool>(arg_0.d.x, arg_0.a.x < global0.d.x, true, true), func_2(), func_2().x), u_input.b, ~reverseBits(countOneBits(vec3<u32>(arg_0.a.x, 29252u, 1u))), global0.e);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = Struct_4(!global0.b);
    var_2 = Struct_4(vec4<bool>(-1i < func_1(Struct_2(arg_0.a, var_0.b, false, vec2<bool>(false, true), global2[_wgslsmith_index_u32(global0.d.x, 16u)])).e.x, var_1.d.x, global0.b.x, false));
    let var_3 = countOneBits(~var_1.a);
    return global0.b.zw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 30>();
    var var_0 = -firstLeadingBit(vec3<i32>(-1i, 0i, ~_wgslsmith_mod_i32(-1i, global1[_wgslsmith_index_u32(global0.d.x, 30u)])));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(963f, 1613f))))) * 1f)));
    let var_2 = Struct_4(global0.b);
    let var_3 = func_1(Struct_2(~(~vec4<u32>(1u, global0.d.x, global0.d.x, 10041u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, -3271f, -713f), vec3<f32>(var_1, var_1, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(var_1 - 993f), var_1))), false, global2[_wgslsmith_index_u32(max(global0.d.x, select(global0.d.x, global0.d.x, true) ^ global0.d.x), 16u)], vec2<bool>(select(global0.b.x, global0.b.x, !global0.b.x), false)));
    var var_4 = ~firstTrailingBit(~min(vec4<i32>(var_3.a, u_input.b.x, 23328i, -61639i), vec4<i32>(var_3.c.x, var_0.x, var_0.x, -2147483647i)) >> (vec4<u32>(0u, firstLeadingBit(0u), ~35855u, _wgslsmith_add_u32(global0.d.x, 4294967295u)) % vec4<u32>(32u)));
    var var_5 = Struct_2(vec4<u32>(26176u, 4294967295u, 44091u, 4247u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1739f, var_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -388f, 603f)))), true, vec2<bool>(!global0.b.x, var_2.a.x), select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(global0.d), global0.d), 16u)], !(!(!var_3.b.yz)), func_1(Struct_2(vec4<u32>(global0.d.x, global0.d.x, global0.d.x, 53512u), vec3<f32>(788f, -1036f, var_1), true, func_3(Struct_2(vec4<u32>(global0.d.x, 4294967295u, global0.d.x, global0.d.x), vec3<f32>(-1337f, var_1, var_1), false, global0.b.zz, vec2<bool>(false, var_3.b.x))), !global0.b.zx)).b.zy));
    var var_6 = 261f;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_vec3_u32(global0.d << (abs(vec3<u32>(var_3.d.x, 4294967295u, var_5.a.x)) % vec3<u32>(32u)), global0.d), ~countOneBits(vec3<u32>(var_5.a.x, 6836u, 36302u))), global0.c, _wgslsmith_mod_i32(min(-44621i, -1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-3255i, var_0.x, 10775i, 22886i), ~countOneBits(vec4<i32>(var_3.a, 52216i, global0.a, var_4.x)))));
}

