struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(0i, -1i, 1i, -27506i), vec4<i32>(-11506i, 2147483647i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), -32317i, 2028i, 59411i), vec4<i32>(1128i, -60558i, 78155i, 2147483647i), vec4<i32>(-39967i, 0i, 56841i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -55368i, 37392i), vec4<i32>(32876i, -29830i, 14827i, -32273i), vec4<i32>(-1i, 2147483647i, -21771i, 0i), vec4<i32>(1i, 13693i, 33541i, 0i), vec4<i32>(-38936i, -1i, 24684i, 16829i));

var<private> global1: array<vec4<u32>, 1>;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true, 4294967295u, vec4<bool>(true, false, false, false), -968f), Struct_1(false, 10994u, vec4<bool>(false, true, true, false), -802f), Struct_1(false, 0u, vec4<bool>(true, true, true, true), 501f), Struct_1(false, 0u, vec4<bool>(true, false, false, true), 1300f), Struct_1(false, 14405u, vec4<bool>(false, false, true, false), 351f), Struct_1(false, 20470u, vec4<bool>(true, true, false, true), -536f), Struct_1(false, 1u, vec4<bool>(false, false, false, true), -1026f), Struct_1(false, 69626u, vec4<bool>(false, true, false, true), -996f), Struct_1(true, 0u, vec4<bool>(false, true, false, true), -1000f), Struct_1(true, 4294967295u, vec4<bool>(false, true, true, false), 1283f), Struct_1(true, 63549u, vec4<bool>(false, true, true, true), -1000f), Struct_1(false, 35521u, vec4<bool>(true, false, false, false), 611f), Struct_1(false, 120400u, vec4<bool>(false, false, true, false), 666f), Struct_1(false, 22429u, vec4<bool>(true, true, true, false), -1000f), Struct_1(false, 4294967295u, vec4<bool>(false, true, true, true), 690f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>) -> i32 {
    global1 = array<vec4<u32>, 1>();
    var var_0 = ~(~(-27966i));
    var var_1 = any(!select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), -30910i < u_input.b)));
    return _wgslsmith_mod_i32(-_wgslsmith_add_i32(~_wgslsmith_mod_i32(u_input.a, arg_0.x), arg_0.x), ~(arg_0.x | u_input.b));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<i32>, 10>();
    let var_0 = _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(min(-vec2<i32>(-1970i, 0i), vec2<i32>(1i, u_input.b)), abs(firstTrailingBit(vec2<i32>(-14930i, -1i)))), vec2<i32>(~func_3(vec4<i32>(u_input.b, 51111i, u_input.a, u_input.b) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1185f, -1296f, -1203f), vec3<f32>(-821f, 114f, -1621f)))), u_input.b));
    var var_1 = Struct_1(true, _wgslsmith_mult_u32(~u_input.c.x, firstTrailingBit(u_input.c.x)), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), false, (select(u_input.a, var_0, true) != -27395i) & (_wgslsmith_f_op_f32(ceil(1161f)) < _wgslsmith_f_op_f32(-588f * -956f)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f - 991f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-539f * 363f))), !(u_input.b > -37614i)))));
    let var_2 = -328f;
    var var_3 = ~(abs(~vec4<u32>(u_input.c.x, var_1.b, var_1.b, var_1.b)) | global1[_wgslsmith_index_u32(1u, 1u)]);
    return Struct_1(var_1.c.x, countOneBits(reverseBits(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, var_3.x), 1u)], ~global1[_wgslsmith_index_u32(u_input.c.x, 1u)]))), vec4<bool>(true, false, !var_1.c.x, select(var_1.c.x, var_1.a, all(!var_1.c.yzw))), _wgslsmith_f_op_f32(984f * 630f));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = func_2();
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 1>();
    var var_0 = 1f;
    global2 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1315f - _wgslsmith_f_op_f32(func_1(abs(global0[_wgslsmith_index_u32(u_input.c.x, 10u)]) ^ global0[_wgslsmith_index_u32(48978u, 10u)]))) - 1079f);
    global0 = array<vec4<i32>, 10>();
    let var_2 = select(38075i, u_input.b, true);
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2070f + -2920f) * -793f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1255f + -682f) + _wgslsmith_f_op_f32(f32(-1f) * -712f))), -189f), 794f);
    let var_4 = Struct_1(any(vec4<bool>(true, false, false, any(vec3<bool>(true, true, true)))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(13255u, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x))) >> (reverseBits(20624u) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c), firstLeadingBit(u_input.c) >> (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)))), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), 581f);
    var var_5 = -vec2<i32>(abs(abs(1i)), max(_wgslsmith_mult_i32(var_2, var_2), max(var_2, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(43860u, ~(~abs(var_4.b)), _wgslsmith_add_u32(~(~var_4.b), (var_4.b & 19648u) & var_4.b)));
}

