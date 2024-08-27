struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec2<f32>(1583f, 755f), Struct_1(true, 553f), Struct_1(true, -1193f), vec4<bool>(false, true, true, false), vec3<i32>(15002i, -67246i, 12434i)), Struct_4(vec2<f32>(-1160f, 252f), Struct_1(false, 1646f), Struct_1(true, 1722f), vec4<bool>(false, false, false, false), vec3<i32>(1i, 0i, 42147i)), Struct_4(vec2<f32>(198f, 935f), Struct_1(false, -249f), Struct_1(false, -178f), vec4<bool>(true, true, true, true), vec3<i32>(23740i, 44389i, -17076i)), Struct_4(vec2<f32>(1282f, -1000f), Struct_1(false, -1244f), Struct_1(false, 137f), vec4<bool>(true, true, false, true), vec3<i32>(2147483647i, 22135i, 0i)), Struct_4(vec2<f32>(782f, 664f), Struct_1(false, 409f), Struct_1(true, -525f), vec4<bool>(true, true, true, false), vec3<i32>(2147483647i, i32(-2147483648), 3388i)), Struct_4(vec2<f32>(-513f, 1000f), Struct_1(true, -640f), Struct_1(false, -2422f), vec4<bool>(false, true, true, false), vec3<i32>(0i, -47160i, 2147483647i)), Struct_4(vec2<f32>(-695f, 613f), Struct_1(false, -1000f), Struct_1(false, 1000f), vec4<bool>(false, true, false, true), vec3<i32>(-1i, 0i, 19372i)), Struct_4(vec2<f32>(1000f, 759f), Struct_1(true, 445f), Struct_1(false, 1000f), vec4<bool>(false, true, true, true), vec3<i32>(2147483647i, 60279i, -15553i)), Struct_4(vec2<f32>(1677f, -265f), Struct_1(true, -428f), Struct_1(false, 146f), vec4<bool>(true, false, false, true), vec3<i32>(i32(-2147483648), 30563i, 2147483647i)), Struct_4(vec2<f32>(674f, -1074f), Struct_1(false, -296f), Struct_1(false, -1230f), vec4<bool>(true, false, true, false), vec3<i32>(0i, -8981i, i32(-2147483648))), Struct_4(vec2<f32>(774f, 170f), Struct_1(true, -1292f), Struct_1(true, 235f), vec4<bool>(true, false, false, true), vec3<i32>(-65215i, 1i, -69356i)), Struct_4(vec2<f32>(-100f, -1067f), Struct_1(true, 345f), Struct_1(false, -477f), vec4<bool>(false, true, false, true), vec3<i32>(6591i, 48835i, -81114i)), Struct_4(vec2<f32>(-121f, 1627f), Struct_1(true, -2293f), Struct_1(true, 2107f), vec4<bool>(true, true, false, true), vec3<i32>(-1i, -1i, 1i)), Struct_4(vec2<f32>(-281f, 1946f), Struct_1(false, -1700f), Struct_1(false, -898f), vec4<bool>(true, false, true, false), vec3<i32>(2147483647i, 2147483647i, -7379i)), Struct_4(vec2<f32>(-2021f, -1535f), Struct_1(false, -578f), Struct_1(true, -1198f), vec4<bool>(false, true, false, false), vec3<i32>(0i, 820i, 11268i)), Struct_4(vec2<f32>(-597f, 841f), Struct_1(false, -370f), Struct_1(true, -1956f), vec4<bool>(false, true, false, false), vec3<i32>(i32(-2147483648), -12536i, 2418i)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec4<bool>) -> bool {
    var var_0 = 4427i;
    let var_1 = Struct_1(arg_2.c.a, -173f);
    var var_2 = _wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, countOneBits(_wgslsmith_clamp_u32(1u, 0u, 0u)), 1u) >> (~vec3<u32>(min(78437u, 6114u), 96867u, ~0u) % vec3<u32>(32u)));
    return true;
}

fn func_2(arg_0: f32) -> StorageBuffer {
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    var var_0 = Struct_3(all(vec4<bool>(any(vec4<bool>(true, false, true, true)) && func_3(Struct_1(false, -331f), Struct_3(false, vec3<i32>(2015i, u_input.b, 1i), Struct_1(true, 592f), Struct_1(true, arg_0)), global0[_wgslsmith_index_u32(4294967295u, 16u)], vec4<bool>(true, true, true, false)), true, true, true)), -vec3<i32>(reverseBits(-47332i), -2147483647i, u_input.a.x), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-360f, _wgslsmith_f_op_f32(f32(-1f) * -163f))) - arg_0)), Struct_1(false, arg_0));
    global0 = array<Struct_4, 16>();
    let var_1 = Struct_1(var_0.c.a, -782f);
    return StorageBuffer(firstLeadingBit(vec2<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(35357u, 4294967295u), vec2<u32>(55666u, 0u)))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = 399f;
    return func_2(178f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, u_input.a.x <= -17782i);
    let var_1 = (u_input.a ^ u_input.a) | (vec4<i32>(u_input.a.x, u_input.a.x, 1177i, _wgslsmith_add_i32(u_input.b ^ 2147483647i, u_input.b)) ^ vec4<i32>(abs(28321i) << (1u % 32u), _wgslsmith_add_i32(u_input.a.x | u_input.b, ~u_input.b), firstLeadingBit(~(-1221i)), u_input.b));
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(2191f, -148f, -1909f) - vec3<f32>(350f, 2606f, -791f))))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, -877f, 108f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-112f, 492f), 1f, _wgslsmith_f_op_f32(floor(1031f))) - vec3<f32>(1f, 1f, 1f))));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = func_1(-2147483647i);
}

