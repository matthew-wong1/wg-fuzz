struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = 39934u;
    let var_1 = arg_1;
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -761f)), arg_0.b));
    var_2 = Struct_4(Struct_3(vec2<f32>(957f, var_2.a.a.x), arg_1));
    let var_3 = ~((select(-1717i, _wgslsmith_mod_i32(arg_1.d.x, var_2.a.b.a), true) | (~(-9774i) >> (select(4294967295u, 0u, false) % 32u))) << (var_2.a.b.c % 32u));
    return _wgslsmith_sub_u32(0u ^ ~var_2.a.b.c, arg_0.b.c);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(1640f + arg_1.x);
    var var_1 = arg_2.wxw ^ vec3<u32>(1u, ~(~u_input.a), arg_2.x);
    var_1 = vec3<u32>(arg_2.x, u_input.a, _wgslsmith_add_u32(1u, func_3(Struct_3(_wgslsmith_f_op_vec2_f32(-arg_1.xx), Struct_1(-55922i, false, 9185u, vec2<i32>(39407i, -715i))), Struct_1(1i, select(false, true, false), 46376u, -vec2<i32>(-57943i, 1i)))));
    var_0 = arg_1.x;
    let var_2 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))), select(true, false, all(vec4<bool>(true, true, false, true)))), !vec3<bool>(any(vec4<bool>(false, false, true, false)), false, true), !vec3<bool>(all(vec4<bool>(false, true, true, true)), true, arg_0.x >= arg_0.x)));
    return Struct_4(Struct_3(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))), Struct_1(-1i, select(all(vec4<bool>(false, var_2, false, var_2)), var_2, any(vec4<bool>(var_2, false, false, true))), 1u, vec2<i32>(1i, -16531i))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: i32) -> vec2<bool> {
    var var_0 = select(select(!select(select(vec2<bool>(arg_2.a.b.b, true), vec2<bool>(arg_2.a.b.b, arg_2.a.b.b), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(arg_2.a.b.b, arg_2.a.b.b), vec2<bool>(arg_2.a.b.b, arg_2.a.b.b)), true | arg_2.a.b.b), select(vec2<bool>(select(arg_2.a.b.b, true, false), select(false, arg_2.a.b.b, false)), !select(vec2<bool>(true, false), vec2<bool>(arg_2.a.b.b, false), vec2<bool>(arg_2.a.b.b, true)), vec2<bool>(false, true)), vec2<bool>(true, true)), !vec2<bool>(!select(arg_2.a.b.b, true, arg_2.a.b.b), true), ((arg_2.a.a.x == _wgslsmith_f_op_f32(-477f - -1466f)) || select(!arg_2.a.b.b, any(vec2<bool>(false, false)), !arg_2.a.b.b)) && true);
    var var_1 = Struct_5(52713u, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), arg_2.a.a)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.yyz))), min(vec4<u32>(u_input.a, 0u, _wgslsmith_sub_u32(arg_1.x, 1u), arg_2.a.b.c), vec4<u32>(32053u, max(arg_1.x, arg_2.a.b.c), arg_1.x, 4294967295u))).a.b, ~reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(55657u, 0u), u_input.a)), arg_1);
    let var_2 = Struct_4(arg_2.a);
    var_0 = !vec2<bool>(!var_0.x, any(select(vec4<bool>(var_2.a.b.b, false, arg_2.a.b.b, var_0.x), vec4<bool>(true, true, true, true), !vec4<bool>(true, var_2.a.b.b, false, false))));
    var_0 = vec2<bool>(!(all(vec3<bool>(var_1.b.b, arg_2.a.b.b, false)) || select(all(vec4<bool>(arg_2.a.b.b, false, var_1.b.b, var_1.b.b)), true, arg_2.a.b.b)), true);
    return select(!vec2<bool>(!(var_2.a.b.b && false), all(!vec4<bool>(false, true, var_0.x, var_0.x))), vec2<bool>(any(vec3<bool>(true, false || arg_2.a.b.b, true)), false), !select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), vec2<bool>(false, false)), !(!vec2<bool>(var_1.b.b, true)), !var_2.a.b.b));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))) | !all(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-298f, 746f, 1370f, 747f) + vec4<f32>(-1663f, 803f, 616f, 302f)), select(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(4294967295u, arg_0.x), vec2<bool>(false, true)), func_2(vec2<f32>(-2223f, -819f), vec3<f32>(-872f, -554f, -1330f), vec4<u32>(u_input.a, 63051u, u_input.a, 46817u)), max(2147483647i, -4780i)));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1118f, 1960f))) - vec2<f32>(-1238f, 1051f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1269f)), func_2(vec2<f32>(-337f, -1576f), vec3<f32>(-2873f, 772f, -568f), arg_0).a.a.x) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(748f, -1000f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1679f, -2067f, -1245f)))))), vec4<u32>(arg_0.x, ~(arg_0.x >> ((1u ^ u_input.a) % 32u)), ~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2714f, 243f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, 1776f, -1044f)), _wgslsmith_mult_vec4_u32(vec4<u32>(19324u, arg_0.x, 4294967295u, u_input.a), vec4<u32>(15311u, 4294967295u, 57959u, arg_0.x))).a.b.c, ~arg_0.x & 1u)).a;
    return 7882u;
}

fn func_5(arg_0: i32) -> Struct_3 {
    var var_0 = vec3<u32>(11076u, _wgslsmith_mult_u32(1u, countOneBits(4294967295u)), 0u);
    let var_1 = u_input.a;
    var var_2 = 1f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 234f, 1540f, 1116f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1471f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f * -923f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-2813f)))), -2024f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(abs(var_3.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(f32(-1f) * -1237f)), _wgslsmith_f_op_f32(f32(-1f) * -1254f), true)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(ceil(var_3.xz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1147f, var_3.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 19525u, 44587u, u_input.a), vec4<u32>(var_0.x, 106844u, var_0.x, u_input.a))).a.a.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(-var_3.x))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-var_3.zw), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) + vec2<f32>(635f, var_4.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.x, var_4.x, var_3.x))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, 559f, 899f), var_3.zzw)))), ~((vec4<u32>(var_1, 4905u, var_1, 0u) | vec4<u32>(u_input.a, var_0.x, 1u, 19959u)) | vec4<u32>(63022u, 5330u, var_0.x, 89354u))).a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(43206u, u_input.a), vec2<u32>(u_input.a, 31435u)), vec2<u32>(47092u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(1u, u_input.a)), vec2<u32>(1u, _wgslsmith_mult_u32(1u, 0u))));
    var var_1 = func_5(-(2147483647i << (_wgslsmith_add_u32(func_1(vec4<u32>(u_input.a, 0u, var_0.x, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 29026u, u_input.a), vec3<u32>(4294967295u, 75885u, var_0.x))) % 32u)));
    var var_2 = vec2<bool>(var_1.b.b, var_1.b.b);
    var_2 = vec2<bool>(true, min(1u, max(9747u, u_input.a << (var_1.b.c % 32u))) == _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, ~56337u), select(vec2<u32>(1u, var_0.x), ~vec2<u32>(57254u, var_1.b.c), vec2<bool>(false, false))));
    var_2 = vec2<bool>(any(select(select(!vec4<bool>(var_1.b.b, true, var_1.b.b, var_2.x), vec4<bool>(true, false, true, var_2.x), vec4<bool>(var_1.b.b, true, true, false)), !vec4<bool>(true, var_1.b.b, true, true), var_2.x)), !(func_2(func_2(vec2<f32>(var_1.a.x, var_1.a.x), vec3<f32>(1041f, 346f, var_1.a.x), vec4<u32>(4294967295u, u_input.a, var_1.b.c, var_0.x)).a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, -1007f, var_1.a.x)), vec4<u32>(16136u, 0u, var_0.x, 1u)).a.b.b && var_2.x));
    var_2 = vec2<bool>(false, var_1.b.b);
    let var_3 = Struct_2(var_1.b.d.x, all(select(vec4<bool>(false, var_2.x, all(vec4<bool>(var_1.b.b, false, false, true)), var_1.a.x > -993f), select(select(vec4<bool>(false, var_1.b.b, true, true), vec4<bool>(var_1.b.b, false, true, false), false), !vec4<bool>(false, var_2.x, false, var_1.b.b), !vec4<bool>(var_2.x, var_2.x, true, false)), !select(vec4<bool>(false, var_1.b.b, false, var_1.b.b), vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(false, false, true, true)))));
    let var_4 = vec2<bool>(var_3.b, false);
    var_2 = vec2<bool>(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-769f)) * 1f), ~_wgslsmith_mult_u32(var_0.x, u_input.a << (43461u % 32u)));
}

