struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_1, arg_0), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_1, arg_0))), true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-246f, arg_1, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_0, arg_1) + vec3<f32>(-505f, arg_0, -153f))))))), false);
    let var_1 = vec3<bool>(false, !any(vec3<bool>(any(vec4<bool>(true, true, var_0.b, var_0.b)), true, var_0.b)), var_0.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(var_0.a.x, arg_1)))), -1735f)));
    let var_3 = -(~_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-48518i, u_input.d.x, -552i)), vec3<i32>(abs(u_input.c), u_input.d.x, 4703i)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-715f * var_0.a.x) * _wgslsmith_f_op_f32(sign(-147f))), 780f, arg_0) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a) - _wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(280f, arg_0, -465f), var_1))), vec3<f32>(270f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(var_2.x + arg_0)))), all(select(vec3<bool>(var_1.x, false, true), select(var_1, vec3<bool>(var_0.b, true, var_1.x), var_1.x), !var_0.b)) & ((-var_3 & _wgslsmith_div_i32(-3519i, u_input.d.x)) <= abs(-1i)));
    return vec2<u32>(23654u, 16219u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = vec3<bool>(true & select(!(!arg_1.b), _wgslsmith_f_op_f32(arg_2.x + 1000f) <= _wgslsmith_f_op_f32(-233f + -859f), true), !all(select(vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, false), arg_1.b | true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.b, false, false), true), select(select(vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, false), false), select(vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(true, false, arg_1.b)), vec3<bool>(arg_1.b, arg_1.b, arg_1.b)), arg_1.b)));
    let var_1 = reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u ^ arg_0.x, _wgslsmith_mult_u32(1u, arg_0.x)), ~vec3<u32>(arg_0.x, arg_0.x, arg_0.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1482f, 1766f)) + _wgslsmith_f_op_vec3_f32(-arg_1.a))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, 751f, 188f) - arg_1.a) * _wgslsmith_f_op_vec3_f32(floor(arg_2)))))), all(!select(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, true, true, arg_1.b), vec4<bool>(var_0.x, var_0.x, arg_1.b, true)), select(vec4<bool>(true, var_0.x, arg_1.b, arg_1.b), vec4<bool>(true, true, false, var_0.x), vec4<bool>(arg_1.b, arg_1.b, false, false)), !arg_1.b)));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(985f))), 386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, 240f, all(var_0))))), false || var_0.x);
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-908f, 577f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1000f)))))), false);
    return all(var_0);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(884f)) - -1000f))), func_4(countOneBits(func_3(-1813f, -220f, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, u_input.a)))), Struct_1(vec3<f32>(1f, 1f, 1f), true), vec3<f32>(1375f, _wgslsmith_f_op_f32(-781f - -1474f), _wgslsmith_f_op_f32(-1253f * _wgslsmith_f_op_f32(sign(1721f))))));
    var var_1 = vec2<bool>(var_0.b, func_4(min(countOneBits(vec2<u32>(u_input.a, u_input.b)) >> (vec2<u32>(21479u, u_input.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u) | vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.a, 1u))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, -249f)), _wgslsmith_mod_u32(9773u, u_input.b) < (42416u | u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(var_0.a)), _wgslsmith_f_op_vec3_f32(-var_0.a))) + vec3<f32>(-558f, _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x)))));
    var var_2 = vec4<bool>(true, any(select(!vec2<bool>(var_0.b, var_1.x), select(select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, true), true), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, false)), vec2<bool>(var_1.x, false)), select(vec2<bool>(false, false), vec2<bool>(false, var_1.x), true))), var_1.x, var_1.x);
    var_1 = vec2<bool>(false, !(true | (var_0.a.x >= var_0.a.x)) && (false || (u_input.a == u_input.b)));
    let var_3 = Struct_1(var_0.a, var_2.x);
    return Struct_2(u_input.a);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = var_0;
    var var_2 = (_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(var_0.a, 52480u, 1u, u_input.a), ~vec4<u32>(var_0.a, 4294967295u, u_input.b, u_input.a)), vec4<u32>(38567u, 33185u, var_0.a, 37563u) ^ reverseBits(vec4<u32>(78985u, var_1.a, 42715u, 1u)), ~(vec4<u32>(var_1.a, 1u, var_0.a, var_0.a) >> (vec4<u32>(var_0.a, 4308u, u_input.b, 33759u) % vec4<u32>(32u)))) & ~firstTrailingBit(vec4<u32>(0u, 0u, 4294967295u, var_1.a))) >> (vec4<u32>(var_0.a, select(var_0.a, ~var_1.a, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 8811u) ^ vec2<u32>(var_0.a, var_1.a), vec2<u32>(12106u, u_input.a)), ~firstLeadingBit(vec2<u32>(16937u, 4294967295u)))) % vec4<u32>(32u));
    var var_3 = reverseBits(u_input.a);
    var var_4 = !all(!vec3<bool>(true, all(vec2<bool>(false, true)), false));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f * -1194f))), _wgslsmith_f_op_f32(ceil(721f))), false);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -856f), -firstTrailingBit(vec4<i32>(reverseBits(u_input.d.x), reverseBits(43752i), 2147483647i, firstLeadingBit(-1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(), i32(-1i) * -10231i, vec2<u32>(u_input.a, ~(~13484u)), func_2());
}

