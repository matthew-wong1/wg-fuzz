struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(361f - 1428f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(211f + 775f))), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f + -309f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2543f)), _wgslsmith_f_op_f32(1046f - 295f)))))), 0u, _wgslsmith_div_u32(80231u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, ~arg_0.x, 37699u, arg_0.x), ~(~vec4<u32>(4294967295u, 105774u, arg_0.x, arg_0.x)))), ~(u_input.a >> (abs(_wgslsmith_sub_u32(arg_0.x, 19156u)) % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1084f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(387f)) * 304f))))));
    let var_1 = -vec4<i32>(-(~abs(var_0.d)), 0i, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(2147483647i, -1i)), vec2<i32>(~2147483647i, -var_0.d)), ~var_0.d << (countOneBits(reverseBits(var_0.b)) % 32u));
    let var_2 = Struct_4(var_0, Struct_2(select(vec4<bool>(!arg_1.x, true, false, var_0.d > -2147483647i), !select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(false, arg_1.x, false, true), arg_1.x), vec4<bool>(true, arg_1.x, any(arg_1), any(vec4<bool>(arg_1.x, true, arg_1.x, true)))), !select(vec3<bool>(arg_1.x, false, arg_1.x), select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + var_0.a)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(528f, -1061f));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(u_input.a, 48029i, arg_2.d)), -vec3<i32>(1i, u_input.a, -1i) << (vec3<u32>(arg_2.b, arg_2.b, arg_2.c) % vec3<u32>(32u))), arg_2.d), firstLeadingBit(-reverseBits(63737i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1182f, _wgslsmith_f_op_f32(func_3(firstLeadingBit(vec2<u32>(arg_2.b, arg_2.c)), vec2<bool>(true, true))))));
    var_0 = -1323f;
    let var_3 = global0[_wgslsmith_index_u32(~(~(arg_2.b << (arg_2.b % 32u))), 2u)];
    return arg_2.e;
}

fn func_1(arg_0: bool) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(328f * 274f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f - -223f)))) - 777f), _wgslsmith_div_u32(~0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(76637u, 1u, 6253u), reverseBits(vec3<u32>(10195u, 39661u, 1u)))), ~firstTrailingBit(1u), -1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(538f, -190f), false, Struct_1(-585f, 7791u, 1u, -12884i, 994f))), _wgslsmith_f_op_f32(912f + 946f))))));
    var var_1 = firstTrailingBit(reverseBits(_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(var_0.b, var_0.b, 4294967295u, 25024u)), vec4<u32>(var_0.c ^ 0u, abs(27708u), ~var_0.b, reverseBits(4294967295u)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(-1232f)), 30004u, var_0.c, _wgslsmith_div_i32(var_0.d, ~(u_input.a ^ -1i)), 421f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + var_0.a))), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(max(var_0.a, -500f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.a, var_2.a))))));
    let var_4 = Struct_4(Struct_1(-347f, _wgslsmith_div_u32(min(countOneBits(0u), var_0.c & 1u), 0u), _wgslsmith_mult_u32(countOneBits(var_2.b), ~(~0u)), _wgslsmith_mult_i32(u_input.a, ~(~(-46647i))), 587f), Struct_2(select(!vec4<bool>(true, arg_0, arg_0, arg_0), select(!vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(false, arg_0, true, true)), vec4<bool>(false, true, var_1.x <= 1u, arg_0 || arg_0)), vec3<bool>(arg_0, !arg_0, !all(vec4<bool>(false, true, arg_0, false)))));
    return vec4<u32>(0u, 1u, _wgslsmith_mod_u32(12167u, 20162u), _wgslsmith_mod_u32(4294967295u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a.c, 5783u), vec2<u32>(4294967295u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-651f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(476f)) + -1071f), true, true, true), select(vec3<bool>(true, all(vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, false, true)), false, true), vec3<bool>(true, true, true)), true));
    var var_1 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, 4294967295u), func_1(var_0.b.x) & abs(vec4<u32>(1609u, 67123u, 21756u, 4252u))), 0u);
    var var_2 = Struct_2(vec4<bool>(var_0.b.x, any(!(!var_0.b)), (35270u > _wgslsmith_dot_vec3_u32(vec3<u32>(12582u, 4294967295u, 27832u), vec3<u32>(1u, 30433u, 4294967295u))) & var_0.b.x, select(var_0.a.x & var_0.b.x, var_0.a.x, _wgslsmith_f_op_f32(min(-2342f, -168f)) > _wgslsmith_f_op_f32(ceil(1005f)))), var_0.a.yxz);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-1778f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f), -291f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1556f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-128f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec2<f32>(-356f, -451f), var_2.b.x, Struct_1(-162f, 1u, 30219u, u_input.a, -691f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1628f, _wgslsmith_f_op_f32(127f + -629f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2216f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(23831u, 0u), var_0.a.yz))) - _wgslsmith_f_op_f32(-1325f + _wgslsmith_f_op_f32(min(794f, 1046f)))))));
    let var_4 = vec4<i32>(~(-25175i), _wgslsmith_add_i32(-36718i, ~u_input.a) & _wgslsmith_mod_i32(0i, -26674i), 0i, _wgslsmith_mod_i32(u_input.a, 1i)) << (~select(vec4<u32>(66994u, 1u, 1u, 1u), vec4<u32>(~4294967295u, 1u, firstLeadingBit(49622u), firstLeadingBit(14807u)), (var_2.a.x & var_0.a.x) | true) % vec4<u32>(32u));
    var_1 = 25171u;
    var var_5 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(-60581i), ~(~u_input.a)), countOneBits(vec2<i32>(2147483647i, _wgslsmith_div_i32(var_4.x, u_input.a)))), var_4.zw);
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(233f + var_3.x), -491f), -634f)), var_3.x)), vec2<i32>(countOneBits(0i), select(500i, 1i, any(var_6.a))), u_input.a);
}

