struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-1133f, -103f), vec2<f32>(-1000f, 872f), vec2<f32>(-448f, -1716f), vec2<f32>(-100f, 3089f), vec2<f32>(1008f, 1176f), vec2<f32>(1000f, -214f), vec2<f32>(570f, -523f), vec2<f32>(849f, -543f), vec2<f32>(-393f, 202f), vec2<f32>(-1725f, 1027f), vec2<f32>(-277f, -790f), vec2<f32>(2336f, 1534f), vec2<f32>(245f, 1473f), vec2<f32>(-908f, -418f), vec2<f32>(-1160f, -1163f), vec2<f32>(-485f, -908f));

var<private> global1: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global2: i32;

var<private> global3: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(1u, 1u, 0u, 0u));

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0u, vec3<f32>(2607f, 776f, -188f)), Struct_1(0u, vec3<f32>(499f, -565f, -1105f)), Struct_1(1u, vec3<f32>(-126f, 972f, 810f)), Struct_1(56292u, vec3<f32>(-371f, -1000f, -719f)), Struct_1(4294967295u, vec3<f32>(585f, 379f, 177f)), Struct_1(0u, vec3<f32>(-336f, 945f, -1655f)), Struct_1(39785u, vec3<f32>(-518f, -259f, 642f)), Struct_1(67509u, vec3<f32>(473f, 1113f, 2057f)), Struct_1(0u, vec3<f32>(114f, -1863f, -1000f)), Struct_1(1u, vec3<f32>(-1752f, -378f, -127f)), Struct_1(41351u, vec3<f32>(-214f, 1139f, 1487f)), Struct_1(1u, vec3<f32>(1011f, 926f, -231f)), Struct_1(18255u, vec3<f32>(2022f, 581f, 210f)), Struct_1(0u, vec3<f32>(-1733f, -1477f, 1166f)), Struct_1(55694u, vec3<f32>(365f, -1590f, 2374f)), Struct_1(36998u, vec3<f32>(-254f, -1889f, 1000f)), Struct_1(0u, vec3<f32>(-573f, 342f, 347f)), Struct_1(0u, vec3<f32>(471f, 344f, -1422f)), Struct_1(12297u, vec3<f32>(-440f, 2530f, -490f)), Struct_1(47152u, vec3<f32>(233f, -149f, 621f)), Struct_1(30334u, vec3<f32>(1060f, 2270f, 723f)), Struct_1(4294967295u, vec3<f32>(228f, 1447f, -461f)), Struct_1(1u, vec3<f32>(-533f, -1002f, 1048f)), Struct_1(22971u, vec3<f32>(1055f, 1569f, 958f)), Struct_1(47806u, vec3<f32>(-930f, 604f, -446f)), Struct_1(4294967295u, vec3<f32>(-899f, 1084f, -107f)), Struct_1(47982u, vec3<f32>(1136f, 871f, -1456f)), Struct_1(0u, vec3<f32>(-470f, -721f, -965f)), Struct_1(1u, vec3<f32>(-241f, -467f, -314f)), Struct_1(4294967295u, vec3<f32>(-668f, 523f, 1729f)), Struct_1(0u, vec3<f32>(257f, -586f, -399f)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> i32 {
    global1 = _wgslsmith_mult_vec2_u32(arg_0.a, ~vec2<u32>(reverseBits(30112u), select(arg_2, 0u, arg_1.x)));
    global4 = array<Struct_1, 31>();
    var var_0 = arg_0;
    let var_1 = !(!vec3<bool>(true, all(select(arg_1, vec2<bool>(arg_1.x, arg_1.x), true)), !all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))));
    global2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(firstTrailingBit(u_input.a.x), 1i, 1i, _wgslsmith_mod_i32(u_input.a.x, 1i)), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, 0i), countOneBits(14097i), _wgslsmith_div_i32(u_input.a.x, -2147483647i))), -(vec4<i32>(-1i, 7263i, u_input.a.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, 20795i, u_input.a.x))), select(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(29872i, u_input.a.x, u_input.a.x, u_input.a.x), abs(vec4<i32>(-9491i, u_input.a.x, -32705i, u_input.a.x))), vec4<i32>(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-8911i, u_input.a.x, -2147483647i, 79115i)), 1i, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, ~u_input.a.x, 2559i), ~vec4<i32>(-6160i, u_input.a.x, -2147483647i, 7167i)), select(vec4<bool>(arg_1.x, !arg_1.x, arg_1.x, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_1.x, true, false), var_1.x), select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(true, true, arg_1.x, arg_1.x), arg_1.x), true), arg_1.x)));
    return u_input.a.x;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = Struct_2(arg_3.wz, _wgslsmith_dot_vec4_u32(~max(min(arg_3, arg_3), ~global3[_wgslsmith_index_u32(arg_3.x, 1u)]), vec4<u32>(arg_3.x, 1u, ~_wgslsmith_mult_u32(u_input.d, u_input.b), u_input.c)), arg_2.yzw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-601f * arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))));
    return arg_1.x;
}

fn func_2() -> vec2<i32> {
    global2 = 57835i & countOneBits(func_4(any(vec2<bool>(true, true)), vec4<i32>(func_3(Struct_2(vec2<u32>(u_input.b, 4294967295u), u_input.d, vec3<f32>(-1000f, 1000f, 113f), -266f), vec2<bool>(false, true), 0u, global4[_wgslsmith_index_u32(global1.x, 31u)]), u_input.a.x >> (21381u % 32u), -1i, -25630i), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.c, 43413u, u_input.d), vec4<u32>(4294967295u, global1.x, global1.x, global1.x))));
    global4 = array<Struct_1, 31>();
    let var_0 = global1.x;
    var var_1 = global4[_wgslsmith_index_u32(global1.x, 31u)];
    global2 = ~_wgslsmith_mult_i32(2147483647i, u_input.a.x);
    return select(-vec2<i32>(min(firstLeadingBit(u_input.a.x), u_input.a.x), i32(-1i) * -24699i), max(-min(u_input.a, abs(vec2<i32>(-2147483647i, -359i))), -u_input.a), true);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> bool {
    var var_0 = arg_2.yy;
    global1 = vec2<u32>(var_0.x, ~var_0.x);
    var var_1 = arg_0.b.x;
    var var_2 = _wgslsmith_add_vec2_i32(u_input.a, func_2());
    var var_3 = -var_2.x >= var_2.x;
    return _wgslsmith_f_op_f32(trunc(665f)) == arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(1i, -_wgslsmith_div_i32(u_input.a.x, -15981i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x << (min(101113u, 85034u) % 32u)), u_input.a));
    let var_1 = global1.x << (global1.x % 32u);
    let var_2 = select(!vec2<bool>(!any(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, false, false))), vec2<bool>(true, !func_1(Struct_1(0u, vec3<f32>(3400f, -2121f, 1000f)), var_0.x, vec3<u32>(124515u, 1u, global1.x), 11370u) != true), vec2<bool>(_wgslsmith_clamp_i32(5531i, -u_input.a.x, _wgslsmith_clamp_i32(var_0.x, u_input.a.x, var_0.x)) > _wgslsmith_mod_i32(1i, 0i << (var_1 % 32u)), all(vec3<bool>(true, true, true))));
    global1 = countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(31455u, u_input.b), ~vec2<u32>(global1.x, global1.x)), ~1u)) & _wgslsmith_mult_vec2_u32(~select(vec2<u32>(u_input.c, 39115u) & vec2<u32>(10386u, 28057u), countOneBits(vec2<u32>(u_input.b, 78984u)), var_2.x), vec2<u32>(var_1, ~1u));
    global0 = array<vec2<f32>, 16>();
    let var_3 = Struct_2(abs(~min(~vec2<u32>(15513u, 49501u), vec2<u32>(global1.x, global1.x))), min(u_input.b, abs(global1.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1337f, -1090f, 918f)) * vec3<f32>(-2453f, 145f, 736f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(878f, 1327f, -1448f))))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1575f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)))));
    global0 = array<vec2<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(vec3<u32>(4294967295u, 1u, 72726u))) | _wgslsmith_sub_vec3_u32(vec3<u32>(~668u, 1u, global1.x >> (var_3.a.x % 32u)), vec3<u32>(firstLeadingBit(var_1), global1.x, 4807u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_div_f32(var_3.d, 123f)))))), max(var_3.a.x, _wgslsmith_sub_u32(firstLeadingBit(~u_input.d), ~select(1u, var_3.a.x, var_2.x))), ~_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(54580u, 50519u), ~(~19818u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 46378u, global1.x, var_1), vec4<u32>(4010u, global1.x, 46239u, 1u))), global3[_wgslsmith_index_u32(1u, 1u)]);
}

