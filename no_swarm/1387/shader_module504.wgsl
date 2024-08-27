struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(470f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-207f, -173f, arg_0.x))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    let var_1 = select(~(vec4<u32>(70257u, arg_0, 23754u, arg_0) & select(vec4<u32>(arg_0, 40951u, 9356u, arg_0), vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, false, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, reverseBits(arg_0), max(arg_0, 0u), 79669u >> (arg_0 % 32u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, 108896u, arg_0), vec4<u32>(69652u, 26112u, arg_0, 1u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(47152u, 0u, arg_0, 48974u), vec4<u32>(1u, 4294967295u, arg_0, arg_0)), 63659u, max(1u, 43691u), ~30229u)), _wgslsmith_add_u32(~arg_0, firstLeadingBit(arg_0)) >= arg_0) << (~vec4<u32>(abs(min(arg_0, 10963u)), arg_0, ~(~4294967295u), 4294967295u) % vec4<u32>(32u));
    let var_2 = vec3<u32>(~var_1.x, var_1.x, ~0u);
    return u_input.a.x;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = ~vec4<u32>(1u, 4294967295u, 4294967295u, min(~abs(1u), ~(~4787u)));
    var var_1 = firstTrailingBit(func_3(_wgslsmith_mult_u32(var_0.x, ~var_0.x), func_2(select(arg_1.yz, arg_1.xz, !arg_1.x))));
    var_1 = 0i;
    let var_2 = -firstLeadingBit(_wgslsmith_div_vec2_i32(-(vec2<i32>(u_input.a.x, arg_0) | u_input.a), vec2<i32>(reverseBits(-16671i), arg_0)));
    var var_3 = Struct_2(var_0.x, -1132f, func_2(vec2<bool>(arg_1.x, arg_1.x)), u_input.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1747f + -907f) - _wgslsmith_div_f32(-1058f, -1211f)), -1000f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(190f)))))));
    return Struct_2(abs(~(~min(0u, var_0.x))), 480f, func_2(vec2<bool>(true, arg_1.x)), select(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 2147483647i), u_input.a)), ~_wgslsmith_div_i32(var_3.d, 7139i)), var_2.x, arg_1.x), var_3.e);
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = ~arg_0.c.a ^ (arg_0.b.a >> (firstLeadingBit(arg_0.b.a) % 32u));
    var_0 = arg_0.c.a;
    var var_1 = Struct_3(arg_0.a, func_1((0i << (arg_0.d % 32u)) | arg_0.b.d, vec4<bool>(all(vec2<bool>(false, true)), true, false, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a) <= u_input.a.x)), Struct_2(~_wgslsmith_clamp_u32(max(arg_0.b.a, 49427u), _wgslsmith_mod_u32(arg_0.c.a, arg_0.d), ~21064u), -584f, func_1(1i, vec4<bool>(true, true, true, true)).c, u_input.a.x, arg_0.a.yz), ~(~arg_0.d));
    var_1 = arg_0;
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) + _wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.e.x, arg_0.c.b, -703f))))), func_1(_wgslsmith_mult_i32(firstTrailingBit(-30682i), func_3(70491u, arg_0.c.c) << (func_1(u_input.a.x, vec4<bool>(false, true, true, false)).a % 32u)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), true & any(vec2<bool>(true, true)))), func_1(0i, !vec4<bool>(arg_0.b.a < var_1.b.a, true, any(vec3<bool>(true, true, false)), true)), _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(4294967295u, arg_0.c.a, 50629u, var_1.d))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.a, var_1.d, 40521u, arg_0.d), vec4<u32>(4294967295u, 1u, arg_0.d, 0u)), vec4<u32>(~arg_0.d, ~30186u, 1u, ~arg_0.c.a))));
    return _wgslsmith_div_f32(arg_0.a.x, 1112f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, -1114f, 1000f)), func_1(u_input.a.x, vec4<bool>(true, false, true, false)), func_1(u_input.a.x, vec4<bool>(false, true, true, true)), 11789u))) + 237f));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i | u_input.a.x, (_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) | -10273i) & min(2147483647i, -u_input.a.x)), u_input.a.x);
    var_1 = 2147483647i;
    var_1 = u_input.a.x;
    let var_2 = countOneBits(-vec4<i32>(u_input.a.x, 9701i, _wgslsmith_mod_i32(firstTrailingBit(u_input.a.x), func_3(18953u, Struct_1(475f))), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(func_1(0i, vec4<bool>(true, true, false, false)).a)), var_0);
}

