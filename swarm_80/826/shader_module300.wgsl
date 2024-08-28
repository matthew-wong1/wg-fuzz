struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = u_input.a;
    var_0 = firstLeadingBit(u_input.a);
    var var_1 = var_0.x;
    return !(!(!select(!vec2<bool>(arg_2.c, false), select(vec2<bool>(true, false), vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(arg_0, arg_2.c)), !vec2<bool>(false, arg_2.c))));
}

fn func_2() -> Struct_1 {
    var var_0 = select(!select(func_3(false, _wgslsmith_dot_vec3_i32(u_input.d.xwx, u_input.d.zyx), Struct_1(u_input.e.x, u_input.a.www, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1761f, -1000f, -854f))), vec2<bool>(true, true), vec2<bool>(true, true)), !func_3(true, u_input.b, Struct_1(~u_input.a.x, vec3<u32>(u_input.e.x, u_input.e.x, 21979u) >> (u_input.a.xzx % vec3<u32>(32u)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1572f, -602f, -864f), vec3<f32>(1358f, 1362f, 1056f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1369f, -1500f, -1000f), vec3<f32>(1249f, 1000f, -2428f)))), func_3(all(!func_3(false, u_input.b, Struct_1(u_input.a.x, u_input.a.yyy, true), vec3<f32>(1430f, 453f, 208f))), -39731i, Struct_1(55710u, u_input.a.wzz >> (vec3<u32>(u_input.a.x, u_input.e.x, u_input.a.x) % vec3<u32>(32u)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1406f, 644f, 649f), vec3<f32>(-533f, 613f, -297f), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(747f, 1760f, -179f) - vec3<f32>(-878f, -130f, 2151f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(976f, 1954f, -1448f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, -134f, 143f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(639f, -1000f, -922f) - vec3<f32>(269f, 740f, -432f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, 1533f, -1000f))) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(591f)), 378f))) + vec3<f32>(_wgslsmith_f_op_f32(-330f * -1766f), _wgslsmith_f_op_f32(977f + _wgslsmith_f_op_f32(round(428f))), _wgslsmith_f_op_f32(select(352f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))));
    let var_2 = Struct_1(27923u, ~vec3<u32>(max(4628u, 6270u), firstLeadingBit(~37030u), u_input.e.x), true);
    var var_3 = !vec2<bool>(any(select(vec3<bool>(var_2.c, false, var_0.x), select(vec3<bool>(var_2.c, var_0.x, true), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_2.c, var_2.c)), select(var_0.x, var_0.x, false))), all(vec4<bool>(any(vec3<bool>(var_2.c, var_2.c, true)), !var_0.x, false, var_2.c)));
    var_0 = vec2<bool>(!(!select(var_0.x, var_0.x, var_0.x) | var_3.x), var_0.x);
    return var_2;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1694f, -896f), vec2<f32>(1052f, 344f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1860f, -750f), vec2<f32>(-793f, -1107f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2352f, -300f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(386f, 1000f) * vec2<f32>(1104f, 1000f)), vec2<bool>(arg_1.c, false))))));
    let var_1 = Struct_1(~(~firstTrailingBit(33440u)), vec3<u32>(arg_1.b.x, arg_1.b.x, 1u), true);
    let var_2 = func_2();
    let var_3 = var_2.c;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 334f))), -142f)))), 578f);
    return -7863i;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = 17443i;
    var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-607f)), _wgslsmith_f_op_f32(select(-1643f, -499f, false)))))))));
    let var_2 = Struct_1(_wgslsmith_mult_u32(~firstTrailingBit(_wgslsmith_mod_u32(1u, 4294967295u)), (~arg_1.b.x | ~arg_1.a) >> (~(~4294967295u) % 32u)), vec3<u32>(4294967295u, 1u, 56856u), arg_1.c);
    let var_3 = -38385i;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-754f * _wgslsmith_f_op_f32(245f - -1015f)), !(!arg_1.c))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1342f * 2423f)), 1146f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(933f * 1754f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1671f) + _wgslsmith_f_op_f32(select(1000f, 964f, false))) - _wgslsmith_f_op_f32(f32(-1f) * -436f)), any(!vec2<bool>(arg_1.c, arg_1.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i >> (u_input.e.x % 32u), -1266i), u_input.d.zwy), 0i);
    var_0 = ~reverseBits(u_input.d) >> (countOneBits(u_input.a) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-908f)), _wgslsmith_f_op_f32(func_4(func_1(-2147483647i, Struct_1(1u, vec3<u32>(u_input.e.x, u_input.e.x, u_input.a.x), false), u_input.b), func_2())), _wgslsmith_div_f32(538f, _wgslsmith_f_op_f32(f32(-1f) * -336f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, -182f, -1138f) * vec3<f32>(1618f, -1000f, 293f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1425f, -1469f, -751f), vec3<f32>(-374f, 1000f, 1476f)))))));
    var var_2 = select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))), !select(vec3<bool>(var_0.x > var_0.x, any(vec3<bool>(true, true, false)), false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), u_input.a.x == u_input.e.x, true)), vec3<bool>(true, true, true), _wgslsmith_div_u32(27463u, firstLeadingBit(1u)) != ~_wgslsmith_add_u32(u_input.e.x, u_input.a.x)));
    var var_3 = vec2<i32>(firstTrailingBit(firstLeadingBit(u_input.c)), _wgslsmith_dot_vec3_i32(max(max(~u_input.d.yyy, vec3<i32>(var_0.x, -2147483647i, var_0.x)), -var_0.ywz >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 17626u, u_input.a.x)) % vec3<u32>(32u))), vec3<i32>(max(~u_input.d.x, ~var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(58727i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, -1i, 2147483647i)), -40435i)));
    var_3 = min(select(reverseBits(vec2<i32>(max(u_input.b, 1i), _wgslsmith_add_i32(var_0.x, -54549i))), u_input.d.xz << (u_input.a.xy % vec2<u32>(32u)), vec2<bool>(var_2.x, true)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(reverseBits(vec2<i32>(6711i, var_0.x))), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.c)), _wgslsmith_div_vec2_i32(max(var_0.xx, vec2<i32>(u_input.c, 0i)), var_0.zz) << (reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, u_input.a.x), vec2<u32>(1u, u_input.e.x))) % vec2<u32>(32u))));
    var var_4 = 668f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec3<u32>(~1u, 1u, ~u_input.a.x), -8075i);
}

