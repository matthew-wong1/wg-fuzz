struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    let var_0 = false;
    var var_1 = select(vec4<bool>(!(~(-49604i) <= _wgslsmith_sub_i32(-1760i, arg_0)), !var_0, all(vec4<bool>(40324i == arg_0, var_0, true, any(vec4<bool>(var_0, true, true, var_0)))), var_0), !(!vec4<bool>(var_0, false, true != var_0, true)), select(!vec4<bool>(true, arg_0 <= -47129i, var_0, true), select(select(vec4<bool>(var_0, var_0, var_0, false), !vec4<bool>(var_0, true, true, false), vec4<bool>(true, var_0, var_0, var_0)), !select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, false, var_0, var_0)), !vec4<bool>(var_0, false, false, true)), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, var_0), vec4<bool>(var_0, var_0, true, var_0)), !vec4<bool>(true, false, var_0, true), vec4<bool>(false, false, var_0, var_0)), vec4<bool>(34741u >= arg_1.x, any(vec2<bool>(var_0, var_0)), var_0, select(var_0, var_0, var_0)), select(select(vec4<bool>(true, var_0, false, false), vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, true, true, false)), !vec4<bool>(var_0, true, var_0, var_0), select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(false, var_0, var_0, true), true)))));
    let var_2 = var_0;
    var var_3 = -157f;
    let var_4 = !(!vec2<bool>(true | all(var_1.wyz), !any(var_1.wy)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1486f * -209f)))) + _wgslsmith_f_op_f32(step(-516f, -866f)));
}

fn func_2() -> Struct_1 {
    var var_0 = 1351f;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(718f * -501f)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(-763f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1243f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(568f - 1227f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1i, u_input.a)))), Struct_1(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 329u, u_input.a.x) ^ vec3<u32>(10483u, 4294967295u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 37866u), ~u_input.a.xyz))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x));
    return var_2.c;
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = ~u_input.a;
    let var_1 = Struct_1(~var_0.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-398f, -450f, -926f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, -1277f, 1103f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-333f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -159f)))) - 1547f), func_2());
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1265f + -133f)))) + 1166f);
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_f_op_f32(-457f - -1624f), Struct_1(var_1.a));
    return Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_2.a, var_2.a)) * var_2.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -1174f, var_2.a.x) - vec3<f32>(1616f, 1578f, var_2.b))))), 263f, Struct_1(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(58804u);
    var var_1 = ~4294967295u;
    var var_2 = Struct_3(func_1(!vec4<bool>(true, true, all(vec2<bool>(false, false)), all(vec2<bool>(true, true)))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~29706u, func_2().a), u_input.a.wz)));
    var_1 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(u_input.a.zz | vec2<u32>(4294967295u, u_input.a.x)), ~(~firstLeadingBit(vec2<u32>(4294967295u, 1u)))) << (~_wgslsmith_div_u32(max(var_2.a.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 1u, 4294967295u, u_input.a.x), u_input.a)), var_0.a) % 32u);
    var var_3 = Struct_3(var_2.a, _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a.x, 4294967295u, var_2.a.c.a, 0u) >> (reverseBits(u_input.a) % vec4<u32>(32u))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.c.a, var_2.b, 1u, u_input.a.x), u_input.a, vec4<u32>(u_input.a.x, 0u, 4294967295u, 21497u)))));
    var var_4 = 56783u;
    var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-261f, _wgslsmith_f_op_f32(var_2.a.a.x - 188f), var_3.a.a.x) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.b, 1263f, var_2.a.b))))), _wgslsmith_f_op_f32(min(1f, var_3.a.b)), func_2()), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 17358u), vec2<u32>(var_2.b, 4294967295u), true), max(u_input.a.xz, select(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 12653u), vec2<bool>(false, false)))) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.b, 21248u, var_2.b) | vec4<u32>(99661u, 0u, var_2.b, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 57802u, 3318u, 20371u), u_input.a)));
    let var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b * var_3.a.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -795f)), 1f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.a.b, -260f)), _wgslsmith_f_op_f32(-var_3.a.b))), _wgslsmith_f_op_vec2_f32(-func_1(vec4<bool>(true, false, false, false)).a.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-9863i, -32108i, -21692i), vec3<i32>(2147483647i, 1i, -58589i))), u_input.a);
}

