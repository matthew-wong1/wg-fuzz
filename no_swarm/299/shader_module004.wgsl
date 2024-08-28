struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstTrailingBit(-1i) << (firstTrailingBit(0u) % 32u), u_input.b), select(_wgslsmith_sub_i32(-25982i & u_input.b, reverseBits(u_input.b)) ^ firstLeadingBit(_wgslsmith_mod_i32(u_input.b, u_input.b)), u_input.b, true));
    var var_1 = Struct_1(~select(_wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.a), select(vec3<u32>(4294967295u, 70351u, 24125u), u_input.a, vec3<bool>(false, true, true)), select(u_input.a, vec3<u32>(arg_0.a.x, 4294967295u, 4294967295u), vec3<bool>(false, false, true))), u_input.a, any(vec4<bool>(true, true, true, true)) & any(vec2<bool>(true, false))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, _wgslsmith_div_u32(~34768u, 39597u), (arg_0.a.x << (arg_0.a.x % 32u)) << (~4294967295u % 32u), min(max(1u, 1u), ~78208u)), ~(~(~vec4<u32>(4294967295u, 8773u, 94217u, 4294967295u)))));
    var var_2 = vec3<bool>(true, 1f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1446f + 888f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(-391f))), true)), all(vec2<bool>(true, true)));
    var_1 = Struct_1(var_1.b.ywy, var_1.b);
    var_1 = Struct_1(select(var_1.a, ~(~vec3<u32>(var_1.b.x, 99382u, 19949u)), !(!vec3<bool>(var_2.x, true, false))), _wgslsmith_add_vec4_u32(var_1.b, firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, 66601u, var_1.b.x, 55992u), _wgslsmith_add_vec4_u32(var_1.b, var_1.b)))));
    return vec4<bool>(var_2.x, all(var_2.zy), !any(select(select(vec3<bool>(false, true, var_2.x), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, false, true)), select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, var_2.x)), vec3<bool>(var_2.x, var_2.x, var_2.x))), !var_2.x);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1532f);
    let var_1 = Struct_4(func_3(Struct_3(u_input.a.xz)), Struct_2(~(-firstTrailingBit(vec3<i32>(u_input.b, -25761i, u_input.b))), u_input.b, select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(all(vec3<bool>(false, true, arg_0)), arg_0, all(vec2<bool>(false, arg_0))), vec3<bool>(!arg_0, all(vec4<bool>(arg_0, false, arg_0, true)), arg_0))), Struct_2(countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(-65475i, 3444i)), u_input.b >> (4294967295u % 32u), _wgslsmith_mod_i32(u_input.b, u_input.b))), 22317i, !vec3<bool>(!arg_0, true, arg_0)), Struct_1(~firstTrailingBit(vec3<u32>(3158u, u_input.a.x, 84476u)) << ((u_input.a | (u_input.a << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))) % vec3<u32>(32u)), vec4<u32>(u_input.a.x, u_input.a.x, 1u ^ u_input.a.x, 0u)));
    var var_2 = Struct_3(vec2<u32>(var_1.d.b.x, 1311u));
    let var_3 = _wgslsmith_f_op_f32(max(-1560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -819f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1205f * arg_1.x)))))));
    var_0 = -497f;
    return Struct_3(u_input.a.yx);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = ~abs(select(~0u, arg_3 & 44410u, false));
    var var_1 = func_2(!(true || (arg_2 >= arg_1.x)) || true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -3981f, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 709f, -1964f, arg_0) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -945f, -605f, -397f), vec4<f32>(-895f, arg_0, arg_0, arg_0)))))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(arg_0 * arg_0), 6660i, vec4<bool>(true, true, true, true));
    var_1 = func_2(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(416f + -190f), -1993f, _wgslsmith_f_op_f32(-var_2.a), arg_0))));
    var var_3 = vec3<i32>(-1i, -1i, firstTrailingBit(~var_2.b));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -978f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(896f)))));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(func_1(-2191f, vec3<i32>(reverseBits(i32(-1i) * -40440i), u_input.b, u_input.b >> (u_input.a.x % 32u)), ~u_input.b, 1u))));
    let var_1 = true;
    var var_2 = select(!(!select(vec4<bool>(var_1, var_1, var_1, false), !vec4<bool>(false, var_1, var_1, true), u_input.b == u_input.b)), select(vec4<bool>(all(!vec4<bool>(false, var_1, false, var_1)), !(!var_1), any(select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, var_1, false), var_1)), var_1), !(!select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, var_1, true, var_1))), !select(select(vec4<bool>(false, true, var_1, false), vec4<bool>(var_1, var_1, var_1, var_1), var_1), !vec4<bool>(var_1, var_1, var_1, false), var_1)), !vec4<bool>(all(func_3(Struct_3(u_input.a.yz)).wyy), func_3(func_2(var_1, vec4<f32>(-799f, -760f, 1502f, -186f))).x, !var_1, true));
    var_2 = !select(vec4<bool>(true, all(!vec4<bool>(var_1, false, var_2.x, var_1)), var_1, func_3(func_2(var_2.x, vec4<f32>(-1505f, -662f, 1217f, 568f))).x), func_3(func_2(var_1, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(651f, -1000f, -1496f, 1541f))))), !select(vec4<bool>(false, var_1, true, var_1), !vec4<bool>(var_2.x, false, var_2.x, var_1), false));
    let var_3 = -501f;
    var_2 = select(!vec4<bool>(false, true, var_2.x, (var_2.x & var_1) || (var_3 >= 901f)), !select(func_3(Struct_3(vec2<u32>(1u, 0u))), vec4<bool>(all(vec3<bool>(var_2.x, true, var_1)), select(var_2.x, true, var_1), true, any(var_2.wxz)), !(!vec4<bool>(false, var_2.x, false, false))), true);
    var var_4 = -1606f;
    var var_5 = reverseBits(u_input.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a)));
}

