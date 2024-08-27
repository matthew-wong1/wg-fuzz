struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false, vec2<f32>(272f, 305f), 50539u), Struct_1(false, vec2<f32>(-267f, 498f), 1u));

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, vec2<f32>(-1004f, -1088f), 33881u), Struct_1(true, vec2<f32>(-121f, 290f), 1u), Struct_1(true, vec2<f32>(1000f, 269f), 69643u), Struct_1(true, vec2<f32>(1752f, 511f), 5536u), Struct_1(false, vec2<f32>(-152f, -2629f), 22895u), Struct_1(true, vec2<f32>(-121f, -634f), 0u), Struct_1(false, vec2<f32>(409f, 638f), 0u), Struct_1(false, vec2<f32>(-1414f, 1998f), 53880u), Struct_1(true, vec2<f32>(2336f, -1000f), 1u), Struct_1(true, vec2<f32>(219f, -319f), 75121u), Struct_1(true, vec2<f32>(-1005f, 190f), 41914u), Struct_1(true, vec2<f32>(-1164f, -2288f), 3470u), Struct_1(true, vec2<f32>(-247f, -834f), 0u), Struct_1(false, vec2<f32>(-300f, -906f), 4294967295u), Struct_1(false, vec2<f32>(-528f, -981f), 4294967295u), Struct_1(true, vec2<f32>(-107f, -197f), 4953u), Struct_1(false, vec2<f32>(-829f, -553f), 47079u), Struct_1(false, vec2<f32>(-2862f, 744f), 4294967295u), Struct_1(true, vec2<f32>(-197f, 1645f), 19622u), Struct_1(true, vec2<f32>(2182f, -123f), 4294967295u), Struct_1(true, vec2<f32>(295f, -1000f), 4294967295u), Struct_1(false, vec2<f32>(-571f, 271f), 44043u), Struct_1(true, vec2<f32>(-652f, -646f), 28542u), Struct_1(true, vec2<f32>(1796f, -2660f), 22870u), Struct_1(true, vec2<f32>(-1128f, -1000f), 1u), Struct_1(false, vec2<f32>(1716f, -608f), 1u), Struct_1(true, vec2<f32>(1000f, 936f), 19832u), Struct_1(true, vec2<f32>(-492f, 491f), 26123u), Struct_1(true, vec2<f32>(-619f, 780f), 0u), Struct_1(true, vec2<f32>(-2217f, -302f), 4294967295u), Struct_1(true, vec2<f32>(853f, 1483f), 18837u), Struct_1(false, vec2<f32>(-1233f, -297f), 48516u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(!(!arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.b)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.b.x, arg_0.b.x)))) * _wgslsmith_f_op_vec2_f32(-arg_0.b))), 0u);
    let var_1 = var_0;
    var var_2 = true;
    var_2 = !(~(_wgslsmith_mod_i32(-4105i, -1i) ^ u_input.b) < -_wgslsmith_sub_i32(u_input.a, ~u_input.a));
    var var_3 = _wgslsmith_div_i32(i32(-1i) * -2147483647i, min(-9477i, 0i));
    return var_1.b.x;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 17034u)) << ((max(vec4<u32>(u_input.c.x, 67626u, 68903u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, 27756u, u_input.c.x)) >> (~vec4<u32>(833u, u_input.c.x, 27157u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c.x, 23536u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)))), vec4<u32>(u_input.c.x, u_input.c.x, ~u_input.c.x, 0u)), 2u)];
    let var_1 = global1[_wgslsmith_index_u32(abs(~4294967295u), 32u)];
    let var_2 = Struct_1(!var_1.a, var_0.b, u_input.c.x & ~(var_0.c | (11618u >> (var_1.c % 32u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(688f, var_1.b.x, var_1.b.x, var_0.b.x), vec4<f32>(var_1.b.x, 220f, var_2.b.x, var_1.b.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, -678f, var_2.b.x, 717f) * vec4<f32>(var_2.b.x, 741f, 1593f, var_2.b.x))))), vec4<f32>(-1014f, 941f, var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1249f))))));
    var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(firstLeadingBit(var_0.c), 32u)])))), _wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1106f, var_3.x, 232f, -589f))))));
    return StorageBuffer(var_3.yy, max(var_1.c, _wgslsmith_mod_u32(0u, u_input.c.x)), var_1.c, 1259f, ~23569u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, -1631f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1081f, -368f)))), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, 1000f)))))), select(~0u, reverseBits(1u), !(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -13020i, u_input.b), vec4<i32>(u_input.b, u_input.b, -128i, -2147483647i)) == 1i)));
    var_0 = global1[_wgslsmith_index_u32(abs(~max(var_0.c ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1448u, 4743u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, var_0.c, 85741u, 0u)), ~1u)), 32u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), var_0.b.x);
    var var_2 = var_0.b;
    var_0 = Struct_1(!var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(-1797f, var_1.x)))) - var_0.b), ~_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(var_0.c, 55387u, 4294967295u, 22421u)), ~(~vec4<u32>(1u, 1u, 120683u, 38477u))));
    let var_3 = vec4<u32>(var_0.c | 32297u, u_input.c.x, _wgslsmith_sub_u32(1u, u_input.c.x), 1u);
    let x = u_input.a;
    s_output = func_1(true);
}

