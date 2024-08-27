struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    let var_0 = arg_2.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-829f, 1021f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-852f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-626f, -1557f, arg_0))))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1183f, false)) * _wgslsmith_f_op_f32(-933f - -663f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-795f, 313f)) * 1f)))) * 391f);
    var var_2 = select(vec2<bool>(true, arg_0), !select(vec2<bool>(true, !arg_0), !(!vec2<bool>(arg_0, false)), arg_0), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, arg_0, false, true), select(vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true))));
    var_2 = vec2<bool>(all(select(vec4<bool>(true, false, true, select(false, var_2.x, true)), vec4<bool>(arg_0, false, var_2.x & false, true), !vec4<bool>(var_2.x, false, var_2.x, var_2.x))), any(select(vec3<bool>(41758u == u_input.c.x, arg_1.a.x != u_input.e, all(vec3<bool>(arg_0, false, false))), select(vec3<bool>(arg_0, arg_0, false), !vec3<bool>(false, var_2.x, var_2.x), 70462u == u_input.d.x), false && (arg_0 & false))));
    return 52027u;
}

fn func_2(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~(~u_input.d.x), 1u, 35535u), u_input.c.zzz << (vec3<u32>(u_input.c.x | u_input.c.x, 40053u, _wgslsmith_mult_u32(u_input.d.x, u_input.e)) % vec3<u32>(32u)), max(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 1u, u_input.d.x), u_input.c.wzw, vec3<u32>(u_input.c.x, u_input.e, 49467u)), vec3<u32>(0u, 1u, u_input.c.x)), (u_input.c.zxw & u_input.c.wzy) << ((vec3<u32>(u_input.e, 24091u, u_input.d.x) ^ vec3<u32>(u_input.e, 4294967295u, 9756u)) % vec3<u32>(32u)))));
    return vec3<u32>(var_0.a.x, ~97424u ^ abs(~var_0.a.x), 0u) << (~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(29237u, 0u, 1u), vec3<u32>(4529u, u_input.d.x, 440u)), abs(u_input.c.wxz)), ~func_3(false, Struct_1(var_0.a), vec3<i32>(u_input.b.x, 40881i, 0i)), select(var_0.a.x, _wgslsmith_sub_u32(var_0.a.x, 43112u), all(vec3<bool>(false, false, true)))) % vec3<u32>(32u));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-842f)), _wgslsmith_div_f32(1037f, -2711f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(401f)) - _wgslsmith_div_f32(-1000f, 688f))))), 1f);
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(u_input.c.ww), u_input.d, u_input.c.yw), u_input.d), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(29453u, arg_1, 24959u), func_2(vec3<i32>(u_input.b.x, 2147483647i, -27547i))), arg_1)), select(min(reverseBits(u_input.d), reverseBits(vec2<u32>(u_input.c.x, 125944u))) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(35430u, arg_1), u_input.d), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.e, u_input.d.x)), _wgslsmith_sub_vec2_u32(~u_input.c.xy, u_input.c.yy | vec2<u32>(1u, 1u)), vec2<u32>(1u, arg_1)), !select(vec2<bool>(arg_2.x, arg_2.x), arg_2, arg_2)), vec2<u32>(_wgslsmith_dot_vec3_u32(select(u_input.c.zxw, vec3<u32>(arg_1, u_input.c.x, arg_1), true), countOneBits(u_input.c.zzw)), u_input.e));
    let var_3 = !(!arg_2);
    var var_4 = Struct_1(func_2(-u_input.b.yyz));
    return ~10196u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e ^ ~89u, 40637u, 4294967295u), min(_wgslsmith_sub_vec3_u32(u_input.c.zzw, countOneBits(vec3<u32>(0u, 1u, u_input.e))), vec3<u32>(54088u, 1u, func_1(0i, 0u, vec2<bool>(true, false)))), vec3<u32>(_wgslsmith_clamp_u32(countOneBits(u_input.c.x), 1u, func_2(vec3<i32>(62707i, u_input.a, u_input.b.x)).x), func_1(2147483647i, 39324u << (u_input.d.x % 32u), vec2<bool>(true, true)), _wgslsmith_mod_u32(u_input.d.x & u_input.d.x, min(u_input.d.x, 59377u)))));
    var var_1 = Struct_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(countOneBits(23604u), ~u_input.d.x, ~19188u), var_0.a));
    var_1 = Struct_1(vec3<u32>(~(~1u), 785u, 4294967295u));
    let var_2 = Struct_1(firstTrailingBit(~vec3<u32>(select(20309u, var_0.a.x, true), u_input.e, max(1u, 12776u))));
    var var_3 = var_2;
    var_0 = var_2;
    let var_4 = vec4<u32>(var_1.a.x, ~(~(var_0.a.x | var_1.a.x)), max(var_0.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~var_0.a.x, 25260u), ~u_input.c.x)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

