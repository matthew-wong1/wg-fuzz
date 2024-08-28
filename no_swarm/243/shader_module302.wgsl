struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_3,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = ~(~(~1u));
    global0 = array<vec2<u32>, 5>();
    let var_1 = _wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a, -45574i), vec2<i32>(u_input.a, -46566i ^ u_input.a), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), firstTrailingBit(vec2<i32>(u_input.a, max(u_input.a, 20198i))), _wgslsmith_mod_vec2_i32(-(vec2<i32>(62849i, u_input.a) << (vec2<u32>(1u, var_0) % vec2<u32>(32u))), countOneBits(-vec2<i32>(5265i, -34471i)))) | -select(_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i))), vec2<i32>(~u_input.a, 0i), true);
    let var_2 = select(vec2<bool>(true, any(vec2<bool>(all(vec3<bool>(true, false, false)), true))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), true);
    return var_2.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = select(select(vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(false, func_3(), select(true, true, true)), any(vec2<bool>(true, true))), vec3<bool>(!any(vec2<bool>(false, false)) | false, !(u_input.a >= -u_input.a), any(vec2<bool>(true, select(true, false, true)))), !vec3<bool>(true, false, any(vec2<bool>(true, true))));
    global0 = array<vec2<u32>, 5>();
    global0 = array<vec2<u32>, 5>();
    let var_1 = Struct_1(~(~select(-vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a, u_input.a), !var_0)));
    var var_2 = Struct_3(select(!var_0, select(vec3<bool>(arg_0 >= arg_0, all(vec4<bool>(true, true, var_0.x, var_0.x)), true), !var_0, !(!vec3<bool>(var_0.x, var_0.x, var_0.x))), true), select(abs(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a), _wgslsmith_add_vec3_i32(var_1.a, vec3<i32>(u_input.a, -2147483647i, u_input.a)))), var_1.a, var_0.x), Struct_2(arg_1, -18223i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f - 1156f)) + _wgslsmith_f_op_f32(-arg_0)), vec4<bool>(var_0.x, false, true, true)));
    return Struct_2(abs(firstTrailingBit(_wgslsmith_div_u32(7936u, 1u) ^ (arg_1 << (var_2.c.a % 32u)))), 1i, -346f, vec4<bool>(true, var_2.a.x, var_2.a.x, true));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c, 873f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c))), arg_0.c))), _wgslsmith_f_op_f32(-1704f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-359f - arg_0.c) + -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_0.c) * _wgslsmith_f_op_f32(arg_0.c + arg_0.c)))));
    let var_1 = 0i;
    var_0 = vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, arg_0.c))))) + _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * arg_0.c))))));
    let var_2 = Struct_3(!arg_0.d.yzx, vec3<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(arg_0.b, 2147483647i))), var_1 << (~_wgslsmith_mult_u32(68316u, 8194u) % 32u), -arg_0.b), Struct_2(~(~arg_0.a), u_input.a, -961f, arg_0.d));
    let var_3 = var_2;
    return func_2(func_2(-650f, var_2.c.a).c, 1u);
}

fn func_1(arg_0: u32, arg_1: u32) -> bool {
    global0 = array<vec2<u32>, 5>();
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(-262f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1046f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 1u, arg_0), (vec3<u32>(1u, arg_0, arg_1) >> (vec3<u32>(arg_0, 1u, arg_1) % vec3<u32>(32u))) & vec3<u32>(13725u, arg_0, 73160u))));
    global0 = array<vec2<u32>, 5>();
    let var_1 = Struct_4(vec4<u32>(var_0.a, ~42370u, max(arg_0, _wgslsmith_div_u32(~42563u, func_4(var_0).a)), countOneBits(abs(arg_0) | ~var_0.a)), Struct_1(vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a), -14518i, _wgslsmith_mult_i32(937i, ~1i))), Struct_3(func_2(func_4(func_4(Struct_2(var_0.a, -7960i, -1860f, vec4<bool>(false, false, var_0.d.x, var_0.d.x)))).c, arg_0 >> (~1u % 32u)).d.xxy, vec3<i32>(var_0.b, i32(-1i) * -2147483647i, 2147483647i) | vec3<i32>(u_input.a, abs(-21105i), u_input.a), var_0), any(!vec2<bool>(var_0.d.x, all(vec3<bool>(true, var_0.d.x, false)))), var_0.c);
    var var_2 = Struct_3(var_1.c.a, ~(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -19874i, var_0.b), var_1.b.a), -var_1.c.b) << (vec3<u32>(var_0.a, var_0.a, ~0u) % vec3<u32>(32u))), var_0);
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 5>();
    var var_0 = true;
    var_0 = any(!vec2<bool>(all(vec2<bool>(true, true)), func_1(~72002u, 15840u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1498f, 244f, 644f, -163f), vec4<f32>(787f, 151f, -521f, -505f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2250f), func_2(-299f, 52265u).c, _wgslsmith_div_f32(-180f, 1109f), _wgslsmith_f_op_f32(522f - -1803f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(select(-1000f, 808f, false)), -1553f, -1165f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1378f, 668f, 1921f), vec4<f32>(-694f, 655f, -707f, -134f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-540f, -261f, 227f, 729f), vec4<f32>(-307f, 675f, -1194f, 1196f), vec4<bool>(true, true, true, true)))))))));
    let var_2 = !any(select(!func_2(969f, 56358u).d.xzz, func_4(Struct_2(4294967295u, u_input.a, -973f, vec4<bool>(false, false, false, true))).d.zzz, true));
    var var_3 = 86814u;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - _wgslsmith_f_op_vec2_f32(ceil(var_1.zx))))), _wgslsmith_f_op_vec2_f32(-var_1.yy), func_4(func_2(var_1.x, 4294967295u)).d.wx));
    let var_5 = -1524f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1, var_1, false)) - _wgslsmith_f_op_vec4_f32(select(var_1, var_1, false))))), -1i, vec4<i32>(-1i) * -reverseBits(vec4<i32>(1i, u_input.a, -2147483647i, u_input.a)), u_input.a, 6141u);
}

