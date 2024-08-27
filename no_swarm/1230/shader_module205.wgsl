struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    let var_0 = (0i >> ((33869u | ~_wgslsmith_mod_u32(arg_1.c.x, 1u)) % 32u)) != arg_0.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2342f), 494f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-817f, _wgslsmith_f_op_f32(1502f + -2044f))));
    var var_2 = select(select(vec3<bool>(true, all(select(vec3<bool>(false, var_0, true), vec3<bool>(false, true, var_0), vec3<bool>(false, false, var_0))), !(75712u >= u_input.c.x)), !select(!vec3<bool>(arg_1.e.x, false, false), !vec3<bool>(var_0, true, true), vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))), !vec3<bool>(select(any(arg_1.e), !arg_1.e.x, 156f >= var_1.x), true, true), true);
    var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-468f))))))));
    var_2 = select(!select(!(!vec3<bool>(var_0, arg_1.d.a, var_2.x)), vec3<bool>(true, true, true), !var_0 && var_2.x), vec3<bool>(false, all(vec2<bool>(!arg_1.d.a, all(vec3<bool>(true, var_2.x, true)))), all(!select(vec3<bool>(false, var_2.x, true), vec3<bool>(false, var_2.x, var_2.x), true))), vec3<bool>(var_0, select(any(arg_1.e), all(var_2.yy) | true, var_0), true));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = vec2<u32>(37076u, 46778u);
    var_0 = vec2<u32>(4294967295u, 1u);
    var_0 = abs(~vec2<u32>(~32563u, firstLeadingBit(u_input.c.x))) ^ u_input.c.yy;
    let var_1 = !select(vec4<bool>(!all(vec4<bool>(true, false, false, false)), false, true, any(vec4<bool>(false, true, true, false))), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, true, false)), true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_1(!(!(!(!var_1.x))));
    return vec2<bool>(true, true | (_wgslsmith_f_op_f32(-343f + _wgslsmith_f_op_f32(1354f * 1032f)) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec3<i32>(-1337i, -30306i, 73358i), Struct_2(var_2, var_2, vec3<u32>(u_input.c.x, 1u, 1996u), Struct_1(var_1.x), var_1.zy)))))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: i32) -> vec3<u32> {
    var var_0 = Struct_1(!(!any(func_2())));
    var var_1 = vec3<bool>(2362i <= -arg_2, -1302f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-204f))), any(vec2<bool>(false, var_0.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 1f, _wgslsmith_f_op_f32(759f - 502f), -1517f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2625f, 1599f, -660f, arg_1)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, arg_1, 865f), vec4<f32>(arg_1, -1221f, 2468f, arg_1), var_1.x)))))));
    var_0 = Struct_1(var_1.x);
    var var_3 = !vec3<bool>(var_0.a, var_1.x, var_0.a);
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~((u_input.b.x | u_input.c.x) | 11529u) | firstTrailingBit(~u_input.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 6750u, u_input.b.x) >> (~func_1(u_input.c.x, 680f, -33310i, 10929i) % vec3<u32>(32u)), vec3<u32>(43952u, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 23145u), vec2<u32>(4294967295u, 13562u))), 4294967295u)));
    var_0 = func_1(~31435u << (u_input.a % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1948f, -500f, true)))))), abs(1i), (i32(-1i) * -1i) << (1u % 32u)).x;
    var var_1 = Struct_1(true);
    var_1 = Struct_1(abs(4294967295u) != ~u_input.a);
    var_0 = 16641u;
    var var_2 = ~vec3<u32>(u_input.b.x, 58381u, 47723u);
    let var_3 = ~firstTrailingBit(_wgslsmith_dot_vec3_u32(~func_1(30411u, -2026f, 2147483647i, -4572i), vec3<u32>(0u, ~81900u, u_input.b.x)));
    var_2 = _wgslsmith_add_vec3_u32(~select(vec3<u32>(1u, 1u, 1u), ~(~u_input.c), var_1.a), ~_wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 10991u, 73125u), vec3<u32>(675u, var_2.x, u_input.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 11160u) ^ u_input.c, vec3<u32>(4294967295u, 6820u, var_3), vec3<u32>(u_input.c.x, var_2.x, 43716u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~2147483647i));
}

