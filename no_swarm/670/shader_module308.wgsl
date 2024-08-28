struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec3<f32>(574f, 423f, -296f)), Struct_4(vec3<f32>(1984f, -1000f, -613f)), Struct_4(vec3<f32>(1071f, -237f, 288f)), Struct_4(vec3<f32>(-1000f, 1000f, -723f)), Struct_4(vec3<f32>(1324f, 747f, -1000f)), Struct_4(vec3<f32>(-1069f, 129f, 268f)), Struct_4(vec3<f32>(686f, 1424f, 309f)), Struct_4(vec3<f32>(-518f, -376f, 1480f)), Struct_4(vec3<f32>(1725f, 691f, 101f)), Struct_4(vec3<f32>(1000f, -239f, 2319f)), Struct_4(vec3<f32>(396f, -287f, -1264f)), Struct_4(vec3<f32>(-1999f, 1172f, -612f)), Struct_4(vec3<f32>(875f, 1070f, -1776f)), Struct_4(vec3<f32>(137f, -268f, 488f)), Struct_4(vec3<f32>(-1030f, 1227f, -430f)), Struct_4(vec3<f32>(1075f, -749f, 775f)), Struct_4(vec3<f32>(-564f, 582f, -1466f)), Struct_4(vec3<f32>(1300f, -2538f, -1000f)), Struct_4(vec3<f32>(389f, -1566f, 600f)), Struct_4(vec3<f32>(844f, 961f, 1000f)), Struct_4(vec3<f32>(-1039f, 774f, 1226f)), Struct_4(vec3<f32>(-1000f, 300f, -1882f)), Struct_4(vec3<f32>(628f, -686f, -695f)), Struct_4(vec3<f32>(-1000f, 423f, -116f)), Struct_4(vec3<f32>(-1233f, 1636f, 1080f)), Struct_4(vec3<f32>(1813f, -690f, -666f)), Struct_4(vec3<f32>(782f, -517f, -570f)), Struct_4(vec3<f32>(-1252f, -448f, -235f)), Struct_4(vec3<f32>(267f, -1997f, -914f)), Struct_4(vec3<f32>(-602f, 686f, 743f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = ~(-vec3<i32>(_wgslsmith_mod_i32(2147483647i, 1i), 8054i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, arg_1.a), global0.c.xy)));
    global0 = Struct_1(global0.a, ~select(global0.b, vec4<u32>(1u, u_input.b, ~1u, 28957u), true), vec4<i32>(_wgslsmith_clamp_i32(countOneBits(~var_0.x), u_input.c, _wgslsmith_clamp_i32(~var_0.x, u_input.c, -global0.c.x)), u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~u_input.d.yyw, global0.c.xwy), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global0.c.zwy, u_input.d.xwy), -arg_1.a)), var_0.x));
    let var_1 = select(select(select(vec2<bool>(false, false), vec2<bool>(true, all(vec3<bool>(false, true, true))), true), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(vec2<bool>(all(vec2<bool>(true, false)), select(false, true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, true))))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), true), !vec2<bool>(all(vec4<bool>(true, false, true, true)) | any(vec2<bool>(true, true)), true));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))), vec4<u32>(92888u, u_input.b, _wgslsmith_add_u32(u_input.b, ~76698u), countOneBits(global0.b.x)) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(24779u, u_input.b), global0.b.yx, false), reverseBits(global0.b.xx)), select(4294967295u, ~18487u, var_1.x), 4294967295u, ~abs(global0.b.x)), u_input.d);
    var var_3 = var_2.a;
    return arg_0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1827f)))) - _wgslsmith_f_op_f32(global0.a + -1090f));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    let var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1951f) + _wgslsmith_f_op_f32(trunc(1000f)))))), Struct_2(u_input.d.x));
    let var_1 = select(select(select(vec4<bool>(30067i < u_input.d.x, !var_0, var_0, !var_0), vec4<bool>(var_0 && false, any(vec4<bool>(true, true, true, var_0)), false && var_0, true), (var_0 != var_0) || true), !select(select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(false, true, true, var_0), true), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, true, var_0, false)), vec4<bool>(var_0, (var_0 && true) || !var_0, any(!vec3<bool>(var_0, true, true)), all(!vec3<bool>(false, var_0, true)))), select(select(!vec4<bool>(false, false, true, var_0), vec4<bool>(select(true, var_0, var_0), false, true, 46294i != u_input.a), var_0 == !var_0), select(vec4<bool>(true, var_0 | true, any(vec2<bool>(true, var_0)), select(var_0, var_0, true)), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(true, var_0, false, var_0), false)), select(!vec4<bool>(false, true, true, var_0), select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_0, true, true), var_0), select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, var_0, false, false), var_0))), true), !select(vec4<bool>(true, false, true, var_0), select(select(vec4<bool>(false, false, var_0, true), vec4<bool>(false, var_0, false, true), vec4<bool>(var_0, false, var_0, var_0)), vec4<bool>(true, true, true, true), vec4<bool>(var_0, var_0, var_0, var_0)), !select(vec4<bool>(false, var_0, false, true), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, true))));
    var var_2 = Struct_1(-1000f, ~(~(~select(vec4<u32>(arg_0, arg_0, arg_0, 1u), global0.b, var_1))), u_input.d << (vec4<u32>(abs(arg_0), global0.b.x, _wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(14574u, arg_0, 10807u, arg_0)) ^ global0.b.x, arg_0) % vec4<u32>(32u)));
    global1 = array<vec2<f32>, 9>();
    let var_3 = 635f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.a)), var_2.a)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(1047f - var_2.a), true)))));
    return countOneBits(countOneBits(vec2<i32>(global0.c.x, u_input.a << (34264u % 32u))));
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.a, 703f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a) * vec3<f32>(140f, -1038f, 2818f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1910f + -1416f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + -1292f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global0.a), _wgslsmith_f_op_f32(exp2(global0.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a, -240f, global0.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, 152f, global0.a)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1308f, 810f, -240f), vec3<f32>(216f, global0.a, global0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-959f, global0.a, global0.a)))))));
    let var_1 = arg_0;
    global2 = array<Struct_4, 30>();
    let var_2 = vec3<bool>(all(vec2<bool>(true, true)), (abs(var_1) >= 1i) & true, !(!(_wgslsmith_f_op_f32(min(var_0.x, global0.a)) > var_0.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(400f)), max(select(vec4<u32>(countOneBits(4294967295u), global0.b.x, global0.b.x, u_input.b), global0.b, !select(vec4<bool>(true, true, var_2.x, false), vec4<bool>(true, false, true, var_2.x), false)), global0.b), select(~_wgslsmith_mult_vec4_i32(global0.c, global0.c), _wgslsmith_add_vec4_i32(~u_input.d, vec4<i32>(i32(-1i) * -1i, global0.c.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(1142i, u_input.a, u_input.c), vec3<i32>(0i, global0.c.x, u_input.d.x)))), select(!select(vec4<bool>(true, var_2.x, true, true), vec4<bool>(false, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), !(!vec4<bool>(var_2.x, false, true, var_2.x)), all(vec2<bool>(false, var_2.x)))));
    return Struct_2(arg_0 ^ (_wgslsmith_add_i32(u_input.d.x << (1u % 32u), reverseBits(arg_0)) & 32183i));
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    let var_0 = func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.c.x), abs(func_2(global0.b.x))));
    return StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(countOneBits(0u), abs(16648u), _wgslsmith_add_u32(1u, 1u), _wgslsmith_div_u32(21836u, 4294967295u)), vec4<u32>(_wgslsmith_mult_u32(u_input.b, global0.b.x), firstLeadingBit(u_input.b), firstLeadingBit(0u), _wgslsmith_clamp_u32(~1294u, _wgslsmith_mult_u32(global0.b.x, 29818u), ~u_input.b))), ~((vec2<i32>(18524i, global0.c.x) | _wgslsmith_clamp_vec2_i32(u_input.d.ww, vec2<i32>(-36565i, u_input.d.x), vec2<i32>(global0.c.x, 6751i))) ^ ~max(vec2<i32>(u_input.a, u_input.a), global0.c.yw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 30u)];
    global2 = array<Struct_4, 30>();
    global0 = Struct_1(var_0.a.x, firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(~8530u, _wgslsmith_add_u32(4294967295u, u_input.b)), 1u, global0.b.x, 1u)), vec4<i32>(2147483647i, global0.c.x, -2147483647i, 0i));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_2(-20531i);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(882f, -1020f, -567f, 881f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1122f, var_0.a.x, 777f, global0.a), vec4<f32>(1000f, var_0.a.x, 630f, var_0.a.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.a - -1385f), -1000f, var_0.a.x, var_0.a.x) + vec4<f32>(619f, -1427f, 1000f, _wgslsmith_f_op_f32(807f * var_0.a.x)))));
}

