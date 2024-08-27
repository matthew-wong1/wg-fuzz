struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: i32) -> vec3<bool> {
    let var_0 = true;
    let var_1 = vec4<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, 47548u) << (vec3<u32>(0u, 39383u, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), firstLeadingBit(_wgslsmith_sub_u32(~(~46552u), u_input.c)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 18530u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.b.x, 0u), u_input.b)), vec2<u32>(_wgslsmith_div_u32(4294967295u, u_input.c), min(0u, u_input.c))), abs(~u_input.b.x)), ~u_input.b.x ^ ~reverseBits(~0u));
    let var_2 = Struct_2(vec2<bool>(var_0, false & arg_0.a.a.x));
    var var_3 = Struct_4(Struct_2(vec2<bool>(var_2.a.x != arg_0.a.a.x, true)));
    var_3 = Struct_4(Struct_2(select(vec2<bool>(false, true), vec2<bool>(var_0, !var_3.a.a.x), all(select(vec4<bool>(var_3.a.a.x, var_2.a.x, false, false), vec4<bool>(false, false, var_2.a.x, true), vec4<bool>(arg_0.a.a.x, arg_1, false, var_3.a.a.x))))));
    return !select(select(!(!vec3<bool>(var_0, var_3.a.a.x, false)), vec3<bool>(arg_0.a.a.x, var_3.a.a.x, -12561i < u_input.a), select(select(vec3<bool>(var_0, var_0, arg_1), vec3<bool>(var_2.a.x, false, arg_0.a.a.x), vec3<bool>(arg_1, arg_1, var_0)), select(vec3<bool>(false, var_0, false), vec3<bool>(arg_0.a.a.x, true, false), vec3<bool>(true, true, var_0)), select(false, true, var_0))), vec3<bool>(all(!vec4<bool>(arg_0.a.a.x, arg_1, true, true)), false, any(vec3<bool>(var_0, true, true)) && var_2.a.x), false);
}

fn func_2() -> Struct_4 {
    let var_0 = !func_3(Struct_4(Struct_2(vec2<bool>(true, true))), true, ~countOneBits(~46854i));
    let var_1 = vec3<i32>(1i, u_input.d.x, 1i);
    var var_2 = Struct_1(abs(u_input.c), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(766f * -108f), _wgslsmith_f_op_f32(min(-586f, -745f)), _wgslsmith_div_f32(-1000f, -1356f), _wgslsmith_f_op_f32(trunc(-288f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, 342f, 1454f, 1292f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1107f, 993f, 227f, -629f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1213f, -1330f, 855f, -1000f) * vec4<f32>(342f, 266f, -402f, -500f)))))), !vec2<bool>(all(vec3<bool>(false, var_0.x, var_0.x)), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1718f)))), 2466f))));
    return Struct_4(Struct_2(select(!(!var_2.c), var_2.c, var_0.zx)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = max(vec4<u32>(_wgslsmith_sub_u32(min(u_input.c, select(0u, u_input.b.x, true)), max(2014u, 84974u << (u_input.b.x % 32u))), ~firstTrailingBit(u_input.c), 12657u, u_input.b.x), (vec4<u32>(u_input.b.x ^ 4294967295u, 4294967295u, 4203u, 19484u) << (select(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b.x), countOneBits(vec4<u32>(64822u, u_input.c, 1u, u_input.b.x)), vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, true)) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b.x, ~4294967295u, 0u, ~firstLeadingBit(0u)) % vec4<u32>(32u)));
    var var_2 = Struct_3(var_0.a, Struct_1(_wgslsmith_mult_u32(~(var_1.x ^ 0u), ~_wgslsmith_dot_vec2_u32(u_input.b, var_1.wz)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1270f)))), 142f, 1000f, _wgslsmith_f_op_f32(sign(-2435f))), !(!vec2<bool>(true, var_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -625f) * 209f))), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.b.x, 9702u), min(4294967295u, 4678u)));
    var var_3 = vec4<f32>(-856f, 209f, _wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.d, -457f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.d)));
    var var_4 = func_2().a;
    return Struct_3(func_2().a, Struct_1(80855u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_2.b.b))), select(!(!vec2<bool>(false, var_4.a.x)), vec2<bool>(any(var_2.a.a), var_4.a.x | var_0.a.a.x), var_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b.b.x))))), _wgslsmith_dot_vec4_u32(var_1, ~vec4<u32>(var_1.x | 0u, ~u_input.b.x, 1u, var_2.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-select(~u_input.d, ~vec4<i32>(-482i, -2147483647i, 2147483647i, 1i), true & var_0.a.a.x) | ~select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.a) << (vec4<u32>(var_0.c, 1190u, 1u, 0u) % vec4<u32>(32u)), -u_input.d, vec4<bool>(true, var_1.a.a.x, true, var_0.b.c.x)), var_0.b.b);
}

