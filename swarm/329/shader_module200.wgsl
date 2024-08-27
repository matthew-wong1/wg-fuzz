struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1028f, -473f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(290f, -217f))))));
    var var_1 = true;
    var var_2 = abs(vec2<u32>(~1u, ~4294967295u));
    return reverseBits(~u_input.a);
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-119f - 126f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-742f))), true));
    var var_1 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(~(u_input.a | 1u), abs(func_3()), 0u), vec3<u32>(_wgslsmith_sub_u32(u_input.a, 81125u), ~u_input.a, u_input.a) ^ ~(vec3<u32>(4294967295u, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, 58084u))), true);
    var var_2 = Struct_1(var_1.a, true);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1000f))))))), firstLeadingBit(_wgslsmith_sub_i32(firstTrailingBit(u_input.b), u_input.b)) < ~u_input.c.x);
    return select(vec3<bool>(true, max(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(-1637i, -17404i)), max(u_input.b, 59182i)) > countOneBits(-2147483647i), var_1.b), select(!select(!vec3<bool>(true, var_1.b, true), !vec3<bool>(false, var_2.b, var_3.c), select(vec3<bool>(var_1.b, var_2.b, true), vec3<bool>(var_3.c, false, var_2.b), vec3<bool>(var_3.c, false, var_1.b))), select(vec3<bool>(any(vec4<bool>(var_3.c, true, var_3.c, false)), true, !var_1.b), vec3<bool>(false, all(vec2<bool>(var_1.b, var_3.c)), any(vec3<bool>(false, var_2.b, var_2.b))), true), vec3<bool>(var_2.b, all(!vec2<bool>(var_3.c, true)), var_1.b)), false);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(select(firstTrailingBit(~vec3<u32>(0u, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(76577u, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.a, 1u), ~vec3<u32>(u_input.a, 1u, 1u))), func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))))), !(select(all(vec3<bool>(true, true, true)), false, false) | false));
    var var_1 = vec3<f32>(-1032f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2148f), _wgslsmith_div_f32(1814f, 990f))))))), 325f);
    var_0 = Struct_1(~countOneBits(firstTrailingBit(var_0.a)), !all(select(vec3<bool>(false, var_0.b, false), vec3<bool>(true, false, var_0.b), vec3<bool>(false, var_0.b, var_0.b))) && var_0.b);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(-884f, 1038f)), -214f, _wgslsmith_f_op_f32(var_1.x - var_1.x)))))));
    let var_2 = Struct_1(var_0.a, any(select(vec3<bool>(var_0.b, false, false), vec3<bool>(var_0.b, any(vec4<bool>(var_0.b, false, var_0.b, var_0.b)), any(vec2<bool>(var_0.b, true))), vec3<bool>(true, true, true))));
    return Struct_1(max(_wgslsmith_add_vec3_u32(var_2.a, vec3<u32>(u_input.a << (4294967295u % 32u), ~1u, 1u)), min(vec3<u32>(~1u, 1u, _wgslsmith_mod_u32(4294967295u, var_2.a.x)), ~abs(var_2.a))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select(_wgslsmith_sub_i32(_wgslsmith_div_i32(-u_input.c.x, -1i), u_input.c.x) >> (u_input.a % 32u), firstLeadingBit(0i), false);
    var_0 = func_1();
    var var_2 = false;
    let var_3 = -100516i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(37714u, 0u), var_0.a.yy), ~var_0.a.x, 31573u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(604f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1091f - 823f))))))), countOneBits(select(countOneBits(~vec4<u32>(4294967295u, 66812u, var_0.a.x, u_input.a)), abs(vec4<u32>(var_0.a.x, 7901u, var_0.a.x, 55223u)), !(!vec4<bool>(true, var_0.b, var_0.b, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 830f) - _wgslsmith_f_op_f32(f32(-1f) * -720f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(-1201f - -1206f)))));
}

