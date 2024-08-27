struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1)), arg_1, -679f) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(-922f, -210f)), _wgslsmith_f_op_f32(-593f + 727f)))), !vec2<bool>(true, _wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a) >= u_input.b.x), ~countOneBits(vec2<u32>(select(34883u, 4319u, true), reverseBits(9609u))), Struct_2(Struct_1(~(~26472u)), vec3<bool>(true, true, true)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -147f)), var_0.a.x, _wgslsmith_f_op_f32(379f - var_0.a.x)) - var_0.a), select(var_0.d.b.zx, vec2<bool>(false, !(!var_0.d.b.x)), vec2<bool>(true, false)), vec2<u32>((var_0.c.x ^ countOneBits(var_0.d.a.a)) & 1u, u_input.c.x), Struct_2(Struct_1(u_input.c.x), vec3<bool>(!var_0.d.b.x || false, true, var_0.b.x && all(var_0.b))));
    var var_2 = Struct_2(Struct_1(var_1.c.x), !select(!var_0.d.b, !vec3<bool>(false, var_1.d.b.x, var_1.b.x), var_1.d.b));
    let var_3 = vec4<f32>(-802f, var_0.a.x, _wgslsmith_f_op_f32(-1760f * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-190f))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(var_0.a * var_1.a), select(select(select(select(vec2<bool>(var_0.b.x, true), vec2<bool>(var_2.b.x, true), var_1.d.b.xz), vec2<bool>(var_0.b.x, false), any(var_0.d.b.xy)), vec2<bool>(true, var_1.b.x), all(select(vec4<bool>(true, var_1.b.x, false, false), vec4<bool>(var_1.d.b.x, false, var_1.d.b.x, false), var_1.b.x))), select(!var_2.b.zx, select(!var_1.d.b.yx, vec2<bool>(true, true), true), var_2.b.zx), var_2.b.x | false), _wgslsmith_add_vec2_u32(u_input.c.yy, max(~(~vec2<u32>(0u, arg_0.a)), ~countOneBits(u_input.c.yy))), Struct_2(var_2.a, vec3<bool>(!var_0.d.b.x, 2147483647i <= (u_input.a << (0u % 32u)), select(var_0.d.b.x, false, true))));
    return vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(23618u, 34401u, 1u), var_4.d.a.a, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_0.d.a.a, var_2.a.a, var_0.c.x)), min(4294967295u, 5243u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.a.a, u_input.c.x, var_4.d.a.a, 0u), vec4<u32>(var_0.d.a.a, 4294967295u, var_1.d.a.a, var_1.d.a.a)), vec4<u32>(var_0.d.a.a, 4294967295u, 1u, 15251u) | vec4<u32>(var_2.a.a, 17539u, 4294967295u, var_1.d.a.a), reverseBits(vec4<u32>(var_4.d.a.a, 20714u, 1u, var_4.d.a.a)))), u_input.c.x, u_input.c.x, ~_wgslsmith_add_u32(var_4.c.x, 12282u));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> bool {
    let var_0 = arg_3.b;
    let var_1 = min(_wgslsmith_mod_vec4_u32(func_3(arg_3.d.a, _wgslsmith_div_f32(arg_3.a.x, arg_3.a.x)), firstLeadingBit(~vec4<u32>(0u, arg_1.a.a, 37361u, arg_3.d.a.a))), ~(~reverseBits(vec4<u32>(arg_2.x, u_input.c.x, 43455u, arg_0.x)))) ^ ~vec4<u32>(~(~43827u), arg_2.x, 1u, 26767u);
    var var_2 = vec3<i32>(0i, abs(-u_input.a) << (58031u % 32u), -18777i);
    var var_3 = Struct_1(_wgslsmith_div_u32(func_3(Struct_1(func_3(arg_1.a, arg_3.a.x).x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.a.x)))).x, _wgslsmith_dot_vec2_u32(~vec2<u32>(81320u, arg_3.c.x) & max(arg_3.c, var_1.zw), arg_2.zx)));
    let var_4 = !(!var_0.x);
    return !var_4;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(6347u), !vec3<bool>(!any(vec2<bool>(true, false)), true, true));
    let var_1 = select(select(select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, var_0.b.x, true, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(false, true, var_0.b.x, false)), !vec4<bool>(var_0.b.x, var_0.b.x, true, true)), select(select(vec4<bool>(true, false, true, var_0.b.x), vec4<bool>(var_0.b.x, true, true, true), var_0.b.x), !vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), func_2(u_input.c.xx, Struct_2(Struct_1(arg_1.a), var_0.b), u_input.c, Struct_3(vec3<f32>(-1593f, -1091f, arg_2.x), var_0.b.zz, vec2<u32>(var_0.a.a, 18407u), Struct_2(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, false)))) || (true & var_0.b.x)), vec4<bool>(!var_0.b.x, any(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.x || !var_0.b.x, true), false), vec4<bool>(true, true, any(var_0.b), all(!select(var_0.b.yz, vec2<bool>(true, true), var_0.b.x))), var_0.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2.x + -894f), _wgslsmith_f_op_f32(step(arg_0, arg_0)), 1000f))));
    var var_3 = u_input.b;
    var var_4 = var_3.x;
    return select(select(!(!vec3<bool>(true, var_0.b.x, false)), vec3<bool>(all(!var_0.b), var_0.b.x, true), select(select(vec3<bool>(var_1.x, var_0.b.x, true), var_1.www, true), var_0.b, select(var_1.zwx, !var_0.b, true))), vec3<bool>(true, false, var_0.b.x), true);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = !(!vec4<bool>(true & (u_input.c.x == arg_2.a.a), 20601u != u_input.c.x, arg_1.x, _wgslsmith_f_op_f32(min(1089f, 534f)) > arg_0.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-179f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(538f, _wgslsmith_div_f32(arg_0.x, 390f))))) + 1271f);
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 26560u >> (arg_2.a.a % 32u)) >> (min(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yz, u_input.c.zy), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.a.a, 18064u), u_input.c.zy)), u_input.c.xy) % vec2<u32>(32u)), vec2<u32>(~arg_2.a.a, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.a, u_input.c.x, arg_2.a.a), ~u_input.c))));
    let var_3 = Struct_1(arg_2.a.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1615f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(179f + arg_0.x) - -416f), 433f, arg_0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 290f, 1024f, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 951f, -1935f, -442f)))) - vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(899f - arg_0.x), -237f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 962f, -604f, arg_0.x))))))));
    return _wgslsmith_dot_vec2_u32(reverseBits(~select(vec2<u32>(var_2.x, u_input.c.x), vec2<u32>(arg_2.a.a, var_2.x), arg_2.b.yz)), abs(u_input.c.xx & abs(vec2<u32>(8970u, arg_2.a.a)))) & countOneBits(~_wgslsmith_div_u32(135u & var_3.a, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x));
    var var_1 = !(any(vec2<bool>(true, all(vec4<bool>(true, true, false, true)))) | (true != any(vec4<bool>(true, true, true, true))));
    var_1 = ~(u_input.c.x | abs(56382u)) >= func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)), -220f), vec2<bool>(true, true), Struct_2(var_0, func_1(_wgslsmith_f_op_f32(trunc(-1657f)), Struct_1(var_0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1277f, -557f), vec2<f32>(311f, -477f), false)))));
    let var_2 = 80667u;
    let var_3 = _wgslsmith_f_op_f32(select(-1000f, -1252f, !(!func_1(_wgslsmith_f_op_f32(f32(-1f) * -1079f), var_0, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(179f, -190f)))).x)));
    var_1 = true;
    var var_4 = select(!vec2<bool>(~0u >= select(0u, 39444u, false), any(vec4<bool>(false, false, true, false)) && func_1(566f, Struct_1(13613u), vec2<f32>(-784f, var_3)).x), select(!vec2<bool>(select(false, true, true), any(vec2<bool>(true, true))), select(vec2<bool>(true, true), !func_1(var_3, Struct_1(var_0.a), vec2<f32>(-336f, -2173f)).yx, true), true), false);
    var_4 = !vec2<bool>(var_4.x, false);
    let var_5 = abs(20353i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1107f - var_3))), var_5);
}

