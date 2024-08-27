struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(4294967295u, 4294967295u));

var<private> global2: i32;

var<private> global3: array<vec4<i32>, 15>;

var<private> global4: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-300f, 145f, 891f), vec3<f32>(1416f, -495f, -1180f), vec3<f32>(-1000f, -684f, -1043f), vec3<f32>(957f, 291f, -2490f), vec3<f32>(-648f, 610f, -380f), vec3<f32>(1138f, 1175f, 1000f), vec3<f32>(1298f, -247f, 897f), vec3<f32>(382f, -1042f, -808f), vec3<f32>(1122f, 152f, -267f), vec3<f32>(-829f, 469f, -294f), vec3<f32>(371f, -758f, -137f), vec3<f32>(1510f, -995f, 566f), vec3<f32>(-1611f, 413f, 115f), vec3<f32>(-328f, 1335f, -518f), vec3<f32>(-1000f, 570f, 289f), vec3<f32>(-614f, 1000f, -434f), vec3<f32>(861f, 1156f, -925f), vec3<f32>(1204f, -779f, 624f), vec3<f32>(887f, -1188f, -405f), vec3<f32>(301f, -506f, 628f), vec3<f32>(712f, -2041f, 777f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_3((all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))) && (u_input.c == ~u_input.d.x)) && true, select(vec4<bool>(any(vec4<bool>(true, false, true, false)) | any(vec3<bool>(true, true, true)), false, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), arg_0.x >= arg_0.x), select(vec4<bool>(true, true, arg_1.x > arg_1.x, true), vec4<bool>(true, true, true, true), true)), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), Struct_1(vec4<f32>(-391f, arg_1.x, -433f, _wgslsmith_f_op_f32(840f - _wgslsmith_f_op_f32(-arg_1.x))), abs(abs(vec2<u32>(arg_0.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1039f, arg_1.x, -1297f, arg_1.x))) + vec4<f32>(-1056f, _wgslsmith_f_op_f32(abs(569f)), _wgslsmith_f_op_f32(f32(-1f) * -186f), arg_1.x))));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    global1 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.xz >> (vec2<u32>(29639u, 1u) % vec2<u32>(32u)), var_0.d.b), vec2<u32>(~1u, 0u)));
    var var_2 = ~global0.yyw;
    let var_3 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))));
    return arg_0.x;
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-424f * _wgslsmith_f_op_f32(f32(-1f) * -193f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(813f, -1569f))));
    global1 = Struct_2(vec2<u32>(global1.a.x, global1.a.x));
    var var_1 = Struct_1(vec4<f32>(624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1283f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1083f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-639f)) - _wgslsmith_f_op_f32(-709f - -1000f)))), vec2<u32>(4294967295u >> (min(u_input.c, func_3(u_input.d.zyx, vec2<f32>(-170f, 922f))) % 32u), ~39305u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f - 965f)), _wgslsmith_f_op_f32(-1f), -378f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 1060f)))))));
    var var_2 = !(!var_0);
    global3 = array<vec4<i32>, 15>();
    return vec4<u32>(global1.a.x, 4428u, ~firstLeadingBit(_wgslsmith_add_u32(u_input.c, ~1u)), ~(~50544u));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global2 = _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(0u, 15u)] << (func_2() % vec4<u32>(32u)), global3[_wgslsmith_index_u32(global1.a.x >> (min(global1.a.x, u_input.c) % 32u), 15u)]);
    global2 = _wgslsmith_mod_i32(~global0.x, 0i);
    global4 = array<vec3<f32>, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-474f, 774f), 367f, 1f, 434f)))));
    global4 = array<vec3<f32>, 21>();
    return ~countOneBits(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~global0.x);
    var var_1 = _wgslsmith_sub_vec2_i32(global0.zw, ~(select(vec2<i32>(1i, -1i), vec2<i32>(u_input.a.x, global0.x), true) ^ vec2<i32>(-36596i, 0i))) ^ vec2<i32>(countOneBits(0i), -_wgslsmith_sub_i32(25411i, min(global0.x, global0.x)));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1313f, -495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -760f)))), _wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(846f + 643f) + _wgslsmith_f_op_f32(f32(-1f) * -257f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(353f - 196f), -340f, all(vec2<bool>(true, true))))), -114f), func_2().ww, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1424f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-366f)))), _wgslsmith_f_op_f32(min(-2518f, 1064f)), -173f)));
    let var_3 = select(vec4<u32>(global1.a.x, _wgslsmith_mult_u32(~1u, ~u_input.c) << (reverseBits(global1.a.x) % 32u), 16917u, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(43514u, u_input.b)), vec2<u32>(14669u, 0u))), select(vec4<u32>(var_2.b.x << (1u % 32u), _wgslsmith_mod_u32(6367u, u_input.b), 37522u, abs(var_2.b.x)) << (u_input.d % vec4<u32>(32u)), ~(~select(u_input.d, u_input.d, false)), vec4<bool>(true, true, false, ~u_input.a.x < u_input.a.x)), vec4<bool>(true, true | (countOneBits(71225u) > abs(var_0.x)), false, false));
    var var_4 = 1u;
    global0 = global3[_wgslsmith_index_u32(27011u, 15u)];
    var var_5 = Struct_1(var_2.a, countOneBits(~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, var_3.x, 1u), ~global1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.a, vec4<f32>(258f, 1772f, 332f, 178f))) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(138f + 1000f), var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.x, 1006f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, abs(var_1.x | (var_1.x & 2147483647i)), u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -1i)));
}

