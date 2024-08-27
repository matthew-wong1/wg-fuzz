struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1301f), _wgslsmith_f_op_f32(max(325f, arg_0.a.x)), -219f, 1387f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1198f, 1622f, 1716f, -428f)), var_0))));
    let var_2 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_2, u_input.b.x), 34594i, 0i, ~arg_2), max(reverseBits(vec4<i32>(-123625i, arg_2, 35690i, u_input.b.x)), reverseBits(vec4<i32>(arg_2, 2147483647i, arg_2, 2147483647i))))) << (~(~(~vec4<u32>(0u, 97916u, u_input.a, u_input.d.x)) >> (~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 72436u) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_1 = Struct_1(var_1.a);
    var_1 = arg_0;
    return Struct_2(arg_0);
}

fn func_3() -> bool {
    let var_0 = any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true)));
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i), 0i, _wgslsmith_dot_vec4_i32(countOneBits(select(firstLeadingBit(vec4<i32>(0i, 1i, -2147483647i, u_input.b.x)), vec4<i32>(u_input.b.x, 18252i, u_input.b.x, 0i) & vec4<i32>(-13561i, u_input.b.x, 2147483647i, u_input.b.x), !vec4<bool>(true, var_0, false, var_0))), min(vec4<i32>(u_input.b.x, u_input.b.x, reverseBits(-2147483647i), 2147483647i), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, 41559i, -21245i, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(100269i, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, -22359i, -1i))))));
    return _wgslsmith_mult_i32(var_1.x, 2147483647i) <= -_wgslsmith_dot_vec3_i32(vec3<i32>(~(-53732i), var_1.x, ~u_input.b.x), max(vec3<i32>(u_input.b.x, -13409i, u_input.b.x), vec3<i32>(var_1.x, var_1.x, var_1.x)));
}

fn func_2() -> i32 {
    var var_0 = func_3();
    var_0 = !all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, true)));
    var_0 = true;
    var var_1 = _wgslsmith_mod_vec3_i32(u_input.b, u_input.b);
    var var_2 = func_1(func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-1420f)), -1000f, _wgslsmith_div_f32(-1901f, -1167f), _wgslsmith_f_op_f32(step(283f, 807f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1053f, 712f)) + -888f), firstTrailingBit(u_input.b.x) | u_input.b.x).a, 142f, max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.b.x, 2147483647i), u_input.b), u_input.b.x | 1i) | _wgslsmith_sub_i32(abs(-6451i), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_1.x, u_input.b.x, var_1.x)) >> (_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.c, u_input.c)) % 32u))).a;
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f)))));
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -652f, -1476f, 2175f), vec4<f32>(238f, -1072f, 1688f, -125f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, -1000f, -389f, 473f)), vec4<f32>(139f, -523f, -1058f, -301f)))), _wgslsmith_f_op_f32(f32(-1f) * -1082f), -(~17473i));
    let var_2 = func_2() ^ -u_input.b.x;
    var var_3 = -107f;
    var_3 = 793f;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.a.x * 1051f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-583f))), -482f, var_1.a.a.x) + _wgslsmith_f_op_vec4_f32(var_1.a.a - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.a.x, -1797f, -1893f, -336f), vec4<f32>(var_1.a.a.x, -1796f, var_1.a.a.x, 377f)), vec4<f32>(391f, 731f, -1729f, var_1.a.a.x))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-622f, -1000f)))) - -1458f);
    var var_5 = Struct_2(var_1.a);
    var_5 = func_1(var_1.a, var_4.a.x, _wgslsmith_div_i32(4430i, abs(24999i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a.x, -392f, 4294967295u, 40923i);
}

