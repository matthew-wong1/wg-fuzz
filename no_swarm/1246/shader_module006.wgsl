struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(681f, -1000f, 490f, -1240f), 41730u, vec4<bool>(true, false, false, false), vec4<i32>(1i, 1i, -1i, -29013i)), Struct_1(vec4<f32>(2066f, -1000f, -434f, -1623f), 4294967295u, vec4<bool>(true, false, true, false), vec4<i32>(0i, -2931i, -7314i, -31347i)), Struct_1(vec4<f32>(2134f, 884f, 676f, -2250f), 1u, vec4<bool>(false, true, true, false), vec4<i32>(-1i, -8685i, 2147483647i, 19931i)), Struct_1(vec4<f32>(563f, 161f, -1000f, 1979f), 16446u, vec4<bool>(true, true, false, false), vec4<i32>(2147483647i, -29347i, 1i, 2147483647i)), Struct_1(vec4<f32>(1000f, -1196f, -456f, 1000f), 715u, vec4<bool>(false, false, true, false), vec4<i32>(9613i, i32(-2147483648), -1i, 5459i)));

var<private> global1: u32 = 1u;

var<private> global2: Struct_3 = Struct_3(vec4<bool>(false, true, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    var var_0 = -59304i ^ (2147483647i << ((arg_0 ^ (~arg_0 << (34236u % 32u))) % 32u));
    let var_1 = ~max(76771u, 4294967295u);
    global1 = ~arg_0;
    var_0 = 2147483647i;
    var var_2 = -(~vec4<i32>(0i ^ arg_3.x, 1i | u_input.b, -u_input.b, min(0i, arg_1.d.x))) ^ arg_1.d;
    return 1000f;
}

fn func_2(arg_0: u32) -> f32 {
    global1 = max(arg_0, 0u);
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(75711u, 5u)], Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f) + -1948f), _wgslsmith_f_op_f32(func_3(arg_0, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, arg_0), 5u)], false, vec4<i32>(48532i, 4123i, u_input.a, -30317i) ^ vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f + 1283f) - _wgslsmith_f_op_f32(-861f + -223f)), 1f), firstTrailingBit(~1u), global2.a, _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, -34412i, -33391i)), vec4<i32>(max(u_input.b, u_input.a), -u_input.b, -u_input.a, 29990i))));
    var var_1 = Struct_3(select(select(vec4<bool>(all(vec2<bool>(var_0.a.c.x, var_0.b.c.x)), any(vec4<bool>(true, true, false, false)), true, true == global2.a.x), var_0.b.c, var_0.a.c), global2.a, true));
    let var_2 = _wgslsmith_mult_u32(21272u, _wgslsmith_div_u32(max(_wgslsmith_add_u32(~25930u, var_0.a.b), firstTrailingBit(~arg_0)), ~(~(~66066u))));
    let var_3 = vec3<bool>(global2.a.x, !any(!var_1.a.zy), true);
    return var_0.b.a.x;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, 880f)), _wgslsmith_f_op_f32(func_2(23271u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-127f, 160f) - -784f), _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_u32(0u, 4294967295u))), global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_div_f32(-248f, 901f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, 915f, -1000f)) + vec3<f32>(947f, -990f, -2282f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2144f, _wgslsmith_f_op_f32(-397f + 154f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1092f, 1170f, -1078f) * vec3<f32>(1514f, -2015f, -273f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1771f, 1522f, -1444f), vec3<f32>(-475f, 1549f, -1749f), global2.a.x))))));
    var var_1 = _wgslsmith_clamp_i32(u_input.b, firstLeadingBit(_wgslsmith_add_i32(~(~2147483647i), -35601i)), _wgslsmith_div_i32(11185i, _wgslsmith_mod_i32(reverseBits(u_input.a), abs(reverseBits(2564i)))));
    global1 = ~(~1u);
    var var_2 = abs(71545u);
    return vec4<bool>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1064f))) < _wgslsmith_f_op_f32(floor(var_0.x)), all(select(vec3<bool>(all(global2.a.zw), 720f >= var_0.x, true), global2.a.zww, global2.a.zyx)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(func_1(), !vec4<bool>(true, !global2.a.x, any(global2.a.yw), false), vec4<bool>(true, true || all(vec2<bool>(global2.a.x, global2.a.x)), true, true)));
    global0 = array<Struct_1, 5>();
    global1 = _wgslsmith_mod_u32(18312u, ~countOneBits(~max(4294967295u, 39667u)));
    let var_1 = global0[_wgslsmith_index_u32(~(~1u), 5u)];
    global0 = array<Struct_1, 5>();
    global1 = 8927u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(var_1.a.wzy, vec3<f32>(var_1.a.x, -1319f, 1405f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.a.xxz * vec3<f32>(135f, 815f, -1344f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.a.x, -1472f) + var_1.a.wxy))))));
}

