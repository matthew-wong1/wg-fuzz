struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> bool {
    var var_0 = max(reverseBits(countOneBits(~vec2<u32>(1u, arg_0.c.x))) >> (select(arg_0.c.xz, countOneBits(~arg_0.c.xy), arg_0.d.x) % vec2<u32>(32u)), ~(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.c.wx, vec2<u32>(4294967295u, 38242u)), ~vec2<u32>(arg_0.c.x, 0u)) ^ max(~arg_0.c.yy, vec2<u32>(47915u, arg_0.c.x))));
    var_0 = abs(arg_0.c.xy);
    var var_1 = arg_2;
    var var_2 = !(!(!(!all(vec4<bool>(arg_0.d.x, true, true, arg_0.d.x)))));
    var_0 = vec2<u32>(arg_0.c.x, 27770u);
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = !(!(!(!(arg_1 > arg_0.c.x))));
    let var_1 = select(!vec2<bool>(true, arg_0.d.x), vec2<bool>((_wgslsmith_dot_vec4_u32(arg_0.c, arg_0.c) >> (select(4294967295u, 8760u, arg_0.d.x) % 32u)) == arg_0.c.x, true), !select(vec2<bool>(true, func_3(arg_0, u_input.a.x, 0i)), select(vec2<bool>(false, arg_0.d.x), !arg_0.d.zy, arg_0.d.x | true), arg_0.d.yy));
    var var_2 = ~(~arg_2);
    let var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.d.x)), _wgslsmith_f_op_f32(-arg_0.a.d.x), arg_0.b.d.x));
    var var_4 = select(~vec2<i32>(-abs(40316i), -_wgslsmith_sub_i32(arg_0.b.b, -2147483647i)), u_input.a.xz, (countOneBits(arg_0.c.x) << (_wgslsmith_div_u32(_wgslsmith_div_u32(arg_2, 29942u), arg_2) % 32u)) > abs(arg_2));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a.x)) + var_3.a.x)));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = true;
    var var_1 = 1f;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(297f, 1052f)))) - 220f) * 529f), _wgslsmith_f_op_f32(-arg_0));
    let var_3 = Struct_2(Struct_1(vec4<i32>(u_input.a.x, firstLeadingBit(1i), -1i, u_input.a.x), _wgslsmith_sub_i32(-(~u_input.a.x), 30873i), firstTrailingBit(-max(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-25129i, u_input.a.x, 23196i, -1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(986f, _wgslsmith_f_op_f32(var_2 + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 33468i, u_input.a.x), u_input.a.x, vec4<i32>(1i, u_input.a.x, 2147483647i, 45065i), vec4<f32>(-1743f, -755f, 1404f, arg_0)), Struct_1(vec4<i32>(-36806i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(-1225f, -303f, 326f, -1640f)), vec4<u32>(4294967295u, 57083u, 1u, 8890u), vec3<bool>(true, true, false), u_input.a.zx), 40695u, 37720u))))), Struct_1(vec4<i32>(u_input.a.x, -firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 33034i) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 54468i), -50497i, vec4<i32>(0i, u_input.a.x >> (0u % 32u), u_input.a.x, -u_input.a.x) << (~abs(vec4<u32>(32619u, 0u, 88841u, 1u)) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, arg_0))), -915f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2 + 431f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2, arg_0))))), vec4<u32>(~(~max(89411u, 0u)), 83892u, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5591u, 43277u), vec2<u32>(1u, 1u)), 39335u)), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), false), vec3<bool>(u_input.a.x > 2147483647i, true, true), false), select(vec3<bool>(true, any(vec2<bool>(true, true)), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), func_3(Struct_2(Struct_1(vec4<i32>(36674i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, vec4<i32>(u_input.a.x, 0i, u_input.a.x, 2147483647i), vec4<f32>(var_2, -795f, arg_0, var_2)), Struct_1(vec4<i32>(-1i, u_input.a.x, 50468i, 37674i), u_input.a.x, vec4<i32>(-34780i, u_input.a.x, 30906i, -4912i), vec4<f32>(var_2, 1000f, arg_0, 1603f)), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec3<bool>(true, false, false), vec2<i32>(u_input.a.x, u_input.a.x)), 44320i, -18820i)), !func_3(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 41995i, -2147483647i), 1i, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<f32>(-565f, arg_0, arg_0, -556f)), Struct_1(vec4<i32>(-2147483647i, 57302i, -1i, -49472i), u_input.a.x, vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<f32>(var_2, arg_0, -1654f, var_2)), vec4<u32>(0u, 4294967295u, 4294967295u, 25941u), vec3<bool>(false, true, true), vec2<i32>(u_input.a.x, 13795i)), u_input.a.x, countOneBits(9128i))), -firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(0i, 0i), u_input.a.x)));
    var_0 = var_3.d.x;
    return ~_wgslsmith_div_vec4_u32(select(vec4<u32>(var_3.c.x, abs(var_3.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c.x, 33442u), vec2<u32>(1u, var_3.c.x)), 0u & var_3.c.x), vec4<u32>(1u, 1u, var_3.c.x, _wgslsmith_mod_u32(var_3.c.x, var_3.c.x)), !(!vec4<bool>(false, var_3.d.x, var_3.d.x, false))), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(4294967295u, func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(318f))))) | firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(true, true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)))));
    let var_1 = !(!select(vec4<bool>(true, var_0.b.x >= var_0.a, var_0.c.x, !var_0.c.x), !(!vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x)), any(!var_0.c)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(497f * -1768f), _wgslsmith_div_f32(-469f, 790f), _wgslsmith_f_op_f32(-500f * 785f), _wgslsmith_f_op_f32(min(1008f, 434f)))))));
    let var_3 = abs(u_input.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec2<u32>(1u, ~58551u)), ~(~var_0.b.yw), var_1.x), u_input.a);
}

