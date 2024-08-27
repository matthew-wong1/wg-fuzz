struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -303f;

var<private> global1: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-1071f, -703f, 1000f, -507f), vec4<f32>(618f, 779f, -1000f, -988f), vec4<f32>(1217f, -369f, 518f, -1326f), vec4<f32>(-176f, -996f, 1030f, -401f), vec4<f32>(542f, 130f, 371f, -451f), vec4<f32>(842f, 1744f, 1040f, 1288f), vec4<f32>(-209f, -846f, -625f, 726f), vec4<f32>(1328f, -413f, -1949f, 532f), vec4<f32>(1416f, -1000f, -439f, -1102f), vec4<f32>(1832f, -432f, 907f, 1347f), vec4<f32>(1396f, -301f, -427f, -633f), vec4<f32>(-1076f, 1119f, -488f, 185f), vec4<f32>(-946f, 589f, 671f, 2155f), vec4<f32>(819f, 894f, -659f, 1394f), vec4<f32>(-668f, 105f, -182f, -492f), vec4<f32>(1058f, -977f, 814f, -1882f), vec4<f32>(-1018f, -100f, -1000f, 1317f), vec4<f32>(377f, -979f, -211f, -1566f), vec4<f32>(-1546f, 2246f, -1430f, 209f), vec4<f32>(-1127f, -1395f, 1000f, 1580f), vec4<f32>(1517f, 1057f, 749f, -567f), vec4<f32>(214f, -843f, -335f, 1179f));

var<private> global2: Struct_1 = Struct_1(false, vec2<u32>(0u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    var var_0 = vec3<bool>(false, select(_wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(1u, global2.b.x)) == _wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(global2.b.x, 61178u)), false, any(select(vec2<bool>(global2.a, global2.a), !vec2<bool>(global2.a, true), vec2<bool>(global2.a, true)))), global2.a);
    var_0 = select(vec3<bool>(global2.a, !(min(global2.b.x, 4294967295u) < ~16361u), var_0.x), vec3<bool>(false, any(vec4<bool>(any(vec3<bool>(true, false, global2.a)), global2.a, global2.a, global2.a | true)), var_0.x), !all(vec4<bool>(all(vec2<bool>(true, false)), global2.a, !var_0.x, var_0.x)));
    let var_1 = !select(select(select(select(vec4<bool>(global2.a, false, global2.a, false), vec4<bool>(global2.a, false, false, false), global2.a), vec4<bool>(true, true, var_0.x, true), var_0.x), !(!vec4<bool>(global2.a, var_0.x, false, true)), select(true, false, global2.a)), !select(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, var_0.x)), select(vec4<bool>(var_0.x, global2.a, global2.a, true), vec4<bool>(var_0.x, false, true, global2.a), vec4<bool>(true, true, var_0.x, false)), true), var_0.x);
    var var_2 = vec3<bool>(true || !(all(vec3<bool>(true, var_0.x, false)) != true), any(!vec3<bool>(true, any(vec3<bool>(global2.a, true, false)), global2.a)), all(var_1));
    let var_3 = select(select(select(vec3<bool>(false, all(var_1.xyx), false), select(var_1.yxz, var_1.xwy, select(vec3<bool>(global2.a, false, false), vec3<bool>(false, var_0.x, global2.a), vec3<bool>(var_2.x, false, global2.a))), !global2.a), var_1.wwy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-904f - -1192f))) <= _wgslsmith_f_op_f32(-536f + -316f)), !vec3<bool>(!var_1.x & true, var_0.x, select(all(var_1), global2.a & var_2.x, true)), true);
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = 7899i;
    var var_1 = !vec3<bool>(func_3(), select(global2.b.x, 1u, global2.a | global2.a) > ~(~25699u), !all(vec2<bool>(global2.a, global2.a)) & all(select(vec4<bool>(true, global2.a, global2.a, global2.a), vec4<bool>(global2.a, true, global2.a, false), vec4<bool>(global2.a, global2.a, false, true))));
    let var_2 = min(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -33533i, 2147483647i, -1i), vec4<i32>(17712i, u_input.a, u_input.a, u_input.a)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, -1i, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), -(~reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))) << (~(~(~(~vec4<u32>(18820u, 1u, 11589u, 17376u)))) % vec4<u32>(32u));
    let var_3 = Struct_1(!all(!select(vec4<bool>(true, false, global2.a, false), vec4<bool>(false, global2.a, false, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x))), vec2<u32>(countOneBits(firstLeadingBit(9863u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(~global2.b), (vec2<u32>(global2.b.x, global2.b.x) >> (vec2<u32>(global2.b.x, 1u) % vec2<u32>(32u))) & select(vec2<u32>(26021u, global2.b.x), vec2<u32>(global2.b.x, 4294967295u), var_1.xx))));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(var_3.b.x, 22u)]))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1701f + -346f))), _wgslsmith_f_op_f32(-477f * -470f), -230f), func_3()));
    return var_3;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = ~(~vec3<u32>(~12608u, _wgslsmith_div_u32(global2.b.x, var_0.b.x), 0u << (1u % 32u)));
    var_1 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.x, var_1.x, global2.b.x) & _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 83744u, var_1.x), vec3<u32>(var_1.x, 81199u, var_1.x)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(global2.b.x, var_1.x, 0u), vec3<u32>(39021u, 22805u, 0u), false), ~vec3<u32>(64505u, 70041u, 13349u))) | ((abs(vec3<u32>(var_1.x, 59408u, 26779u) >> (vec3<u32>(var_1.x, var_1.x, 4294967295u) % vec3<u32>(32u))) | (abs(vec3<u32>(0u, 23428u, 30704u)) >> (~vec3<u32>(77317u, var_0.b.x, 0u) % vec3<u32>(32u)))) & ~vec3<u32>(_wgslsmith_div_u32(3695u, 68917u), 16464u, ~global2.b.x));
    let var_2 = func_2();
    global1 = array<vec4<f32>, 22>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = Struct_1(any(select(!select(vec3<bool>(true, false, false), vec3<bool>(global2.a, global2.a, false), vec3<bool>(global2.a, false, global2.a)), select(vec3<bool>(true, false, true), vec3<bool>(global2.a, true, global2.a), select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(true, true, global2.a), global2.a)), !(!global2.a))), vec2<u32>(~global2.b.x, global2.b.x));
    var var_1 = func_2();
    var var_2 = Struct_1(all(vec2<bool>(false, true)), firstTrailingBit(~vec2<u32>(0u, 0u)));
    var var_3 = func_1();
    let var_4 = Struct_1(!(!var_1.a), ~abs(func_2().b));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1075f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(675f)) * _wgslsmith_f_op_f32(f32(-1f) * -973f))) - -1723f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1833f + _wgslsmith_div_f32(-1262f, -1567f)), 689f, false)) + _wgslsmith_f_op_f32(ceil(108f))));
    global2 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1390f, 1040f, 329f, _wgslsmith_f_op_f32(-var_5)))), _wgslsmith_f_op_f32(252f - var_5), u_input.a);
}

