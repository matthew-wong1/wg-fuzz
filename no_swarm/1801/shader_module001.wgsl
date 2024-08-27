struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: f32) -> i32 {
    var var_0 = true;
    var var_1 = arg_2.c;
    return ~(-2612i);
}

fn func_2() -> bool {
    let var_0 = Struct_1(-235f, true, -(func_3(true, vec2<bool>(true, false), Struct_4(-2147483647i, vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), Struct_1(387f, true, 2147483647i, u_input.a.x)), -360f) << (30844u % 32u)), min(_wgslsmith_mod_u32(42730u, u_input.b.x), 1u | _wgslsmith_div_u32(firstTrailingBit(u_input.b.x), u_input.a.x << (22559u % 32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, 309f, -759f, var_0.a));
    var var_2 = Struct_3(vec3<bool>(!var_0.b, true, true || (var_0.b || true)), vec3<bool>(any(vec2<bool>(true, all(vec3<bool>(var_0.b, var_0.b, true)))), var_0.b, any(vec2<bool>(true, true))), ~(~countOneBits(select(vec4<u32>(8559u, 49706u, 0u, var_0.d), vec4<u32>(27277u, 4294967295u, var_0.d, 0u), false))), Struct_1(var_1.x, !var_0.b, var_0.c, _wgslsmith_clamp_u32(var_0.d, 4294967295u, 0u)), Struct_2(!select(select(vec4<bool>(true, false, var_0.b, false), vec4<bool>(var_0.b, var_0.b, true, var_0.b), vec4<bool>(false, true, true, true)), !vec4<bool>(false, var_0.b, true, true), true), min(vec4<u32>(~0u, 1u ^ u_input.a.x, ~23253u, u_input.b.x), firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 15827u, 0u))), ~var_0.c));
    return !(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.a)), var_2.d.a, !var_0.b)) < _wgslsmith_f_op_f32(-1495f + _wgslsmith_f_op_f32(-var_1.x))));
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = ~vec2<u32>(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), firstLeadingBit(~firstLeadingBit(u_input.b.x)));
    var var_1 = all(vec2<bool>(func_2(), true));
    let var_2 = Struct_3(vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-424f + 727f), _wgslsmith_f_op_f32(select(1080f, 117f, false)))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-864f - 1719f))), false, any(vec3<bool>(true, true, true))), vec3<bool>(all(vec4<bool>(true, func_2(), select(true, true, false), false)), true, true), ~vec4<u32>(48941u, ~var_0.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 80456u)), ~vec4<u32>(4294967295u, 28698u, 36242u, 0u)), 1u), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1000f)))), true, ~((u_input.c ^ arg_0.x) >> (~var_0.x % 32u)), u_input.b.x), Struct_2(!vec4<bool>(true, all(vec2<bool>(true, false)), true, true), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, 0u, 14222u, var_0.x)), firstTrailingBit(vec4<u32>(4294967295u, 82058u, u_input.a.x, 4294967295u))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, var_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x), vec4<u32>(0u, var_0.x, 1u, u_input.a.x)), vec4<bool>(true, false, false, false))), 2147483647i));
    var_1 = var_2.d.b;
    var_1 = !var_2.b.x;
    return !(!select(select(var_2.b.yz, var_2.e.a.zx, !var_2.a.yz), var_2.e.a.wy, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_1(-vec2<i32>(1i, 0i)), vec2<bool>(true, !(!(u_input.b.x != 59016u))), true);
    let var_1 = u_input.a.x;
    var_0 = !select(select(select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), false), select(select(vec2<bool>(true, var_0.x), vec2<bool>(true, false), false), vec2<bool>(var_0.x, var_0.x), select(var_0.x, var_0.x, false)), select(!var_0.x, var_0.x, true)), select(select(func_1(vec2<i32>(-1i, u_input.c)), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true)), func_1(vec2<i32>(u_input.c, u_input.c) ^ vec2<i32>(42886i, u_input.c)), !any(vec4<bool>(false, false, var_0.x, var_0.x))), !func_1(vec2<i32>(u_input.c, 1i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-275f)))), true, -_wgslsmith_mod_i32(0i, -23562i), u_input.a.x);
    let var_3 = !all(select(select(select(vec3<bool>(false, var_2.b, var_0.x), vec3<bool>(false, false, false), var_0.x), !vec3<bool>(false, var_2.b, false), !vec3<bool>(false, false, var_0.x)), !vec3<bool>(true, var_0.x, var_2.b), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1932f + var_2.a)))), -1i, u_input.c);
}

