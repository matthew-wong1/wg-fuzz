struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(16487i, 29047i, -29681i, -7179i), vec4<i32>(14236i, 1i, -18751i, -17965i), vec4<i32>(4937i, 1i, 27933i, 2147483647i), vec4<i32>(1679i, -28962i, 25546i, -22424i), vec4<i32>(-30165i, -17802i, -1i, -39997i), vec4<i32>(24588i, -818i, -34531i, -17063i), vec4<i32>(-16189i, -37860i, 0i, 2147483647i), vec4<i32>(-28937i, -23682i, -28717i, 1i), vec4<i32>(2147483647i, -25195i, 0i, -1i), vec4<i32>(51998i, -1i, 1016i, 1i), vec4<i32>(1249i, -4133i, -2912i, 3669i), vec4<i32>(28692i, -37611i, 12452i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, -1i, -38854i), vec4<i32>(40283i, -10038i, -1i, 2147483647i), vec4<i32>(2147483647i, 0i, 0i, -1i), vec4<i32>(1i, i32(-2147483648), -15412i, -4657i), vec4<i32>(i32(-2147483648), 41142i, -4727i, 10852i), vec4<i32>(0i, 45678i, -1i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 65053i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 2147483647i), vec4<i32>(-7154i, -47192i, -29334i, 2147483647i), vec4<i32>(1i, -19652i, 20654i, 1i), vec4<i32>(2147483647i, 0i, 1i, 2147483647i), vec4<i32>(-26517i, -8904i, 2147483647i, 1i), vec4<i32>(-1i, -85257i, 1i, -11057i), vec4<i32>(1i, 1i, -12197i, -39621i), vec4<i32>(-14367i, 2147483647i, 1i, -13357i), vec4<i32>(-1i, 1i, -46633i, 0i), vec4<i32>(1i, 1i, -22353i, i32(-2147483648)), vec4<i32>(4925i, 57132i, 40638i, -43556i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 22429i), vec4<i32>(-12275i, -37373i, 2147483647i, -41162i));

var<private> global1: array<vec2<bool>, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<vec4<i32>, 32>();
    global1 = array<vec2<bool>, 20>();
    var var_0 = u_input.a | u_input.b.x;
    let var_1 = vec3<u32>(~u_input.a, ~22766u, u_input.a);
    var_0 = u_input.b.x;
    return _wgslsmith_sub_u32(abs(var_1.x), ~u_input.b.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global1 = array<vec2<bool>, 20>();
    let var_0 = vec4<u32>(u_input.a, 4167u | max(~u_input.a, 65340u), u_input.b.x, ~(~(47739u >> (0u % 32u)))) << (vec4<u32>(1u, ~36562u, ~(~_wgslsmith_add_u32(48402u, 1u)), _wgslsmith_add_u32(u_input.b.x, 0u)) % vec4<u32>(32u));
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    var var_1 = arg_2;
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.x))))))), arg_1.a.x, 350f, 477f);
}

fn func_2() -> vec4<bool> {
    let var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, 1064f, -150f, -1221f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(241f, 1113f, 247f, -1341f))))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(151f, 410f, 1379f, -1169f), 606f, vec3<i32>(-2147483647i, 58498i, 34421i)), Struct_1(vec4<f32>(-1000f, 1532f, 784f, 565f), -897f, vec3<i32>(14226i, 1i, -16644i)), Struct_1(vec4<f32>(-105f, 1030f, -268f, 501f), 701f, vec3<i32>(1i, 2147483647i, -2147483647i)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), -1014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1057f + 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1016f + -102f))))), 1229f, abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, ~46637i, 2147483647i), vec3<i32>(-60852i, select(-32689i, 60209i, false), 1i >> (u_input.a % 32u)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-28389i, -59864i, -1i), -vec3<i32>(8931i, 78757i, -13712i)))));
    global1 = array<vec2<bool>, 20>();
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(floor(var_1.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_1.b, -1677f, true)))), -216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.b))))), var_1.c << (var_0 % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x - -873f), _wgslsmith_f_op_f32(-var_1.b), 232f, 610f), false))), var_1.a.x, var_1.c);
    return vec4<bool>(true, (u_input.b.x >= ~59436u) & all(vec4<bool>(true, true, all(vec4<bool>(true, false, true, true)), false)), !(2454f != var_2.b), !all(select(vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global1[_wgslsmith_index_u32(var_0.x, 20u)], global1[_wgslsmith_index_u32(65719u, 20u)]), global1[_wgslsmith_index_u32(u_input.a, 20u)])));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> vec4<f32> {
    var var_0 = -vec3<i32>(1i, 1i, 1i);
    var var_1 = -20680i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))))));
    var var_3 = i32(-1i) * -reverseBits(_wgslsmith_sub_i32(2147483647i, var_0.x) & var_0.x);
    let var_4 = var_2;
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4))))))), arg_1, _wgslsmith_f_op_f32(sign(1149f)), var_4);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, func_1(Struct_1(vec4<f32>(-1225f, -387f, 464f, 1309f), -1000f, vec3<i32>(-33238i, -65733i, -1i)))), ~u_input.b.x)), 32u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(), -1392f)), vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1299f)), -1332f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f * 1103f) + _wgslsmith_f_op_f32(round(-1003f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(178f, 519f)), _wgslsmith_div_f32(-1464f, -1717f)))))), vec3<i32>(min(~(var_0.x >> (u_input.b.x % 32u)), _wgslsmith_add_i32(~(-5418i), ~var_0.x)), ~1i, 870i));
    global1 = array<vec2<bool>, 20>();
    let var_2 = !(!select(global1[_wgslsmith_index_u32(func_1(var_1), 20u)], select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), !global1[_wgslsmith_index_u32(34903u, 20u)], vec2<bool>(false, false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.a.wz)));
    var var_4 = vec4<u32>(min(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 60724u) | firstLeadingBit(u_input.b.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), ~u_input.b.x)) | firstTrailingBit(0u), u_input.b.x, ~u_input.b.x | (_wgslsmith_sub_u32(firstTrailingBit(4294967295u), min(0u, 1765u)) & u_input.b.x), u_input.a);
    let var_5 = (2147483647i & abs(_wgslsmith_add_i32(~var_1.c.x, var_1.c.x))) ^ var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~0i, ~(~var_4.yy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1138f, 661f, var_1.b, -1159f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))));
}

