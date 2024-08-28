struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = 606f;
    var var_1 = Struct_1(vec3<bool>(false, any(vec3<bool>(true, true, true)), 0u != ~_wgslsmith_div_u32(u_input.a, 18183u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(252f))))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -531f), 152f), ~vec2<i32>(i32(-1i) * -1i, arg_0 | arg_0) | firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 8592i) | vec2<i32>(arg_0, -25687i), countOneBits(vec2<i32>(1i, -30239i)))));
    var var_2 = vec4<u32>(_wgslsmith_add_u32(10665u, _wgslsmith_add_u32(abs(10534u), u_input.a)), _wgslsmith_mod_u32(~u_input.a, (~4294967295u ^ u_input.a) | ~u_input.a), 58348u, ~_wgslsmith_sub_u32(1u, firstLeadingBit(u_input.a)) >> (~(u_input.a & 4294967295u) % 32u));
    let var_3 = var_2.zx;
    var var_4 = u_input.a;
    return var_1.b.x;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_2(vec2<f32>(-1061f, _wgslsmith_f_op_f32(-741f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1564f)))))), true, Struct_1(vec3<bool>(all(!vec3<bool>(false, arg_0, arg_0)), true, true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(932f, 296f)) + _wgslsmith_f_op_f32(f32(-1f) * -610f)), _wgslsmith_f_op_f32(floor(1112f)), _wgslsmith_f_op_f32(-1586f * _wgslsmith_f_op_f32(-438f + -367f)), _wgslsmith_f_op_f32(func_3(0i))), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(57257i, 18662i), vec2<i32>(-1i, -1i)), ~(-1i))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.b.yz) - _wgslsmith_f_op_vec2_f32(ceil(var_0.c.b.yx)))))), var_0.c.a.x, var_0.c);
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.b.x, -922f)), arg_0, var_0.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(220f)) * _wgslsmith_f_op_f32(floor(962f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-711f * -502f), 340f, var_1.b | false)))) + vec3<f32>(_wgslsmith_f_op_f32(select(-1101f, var_0.a.x, !arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-976f, -322f) + -493f) + _wgslsmith_f_op_f32(f32(-1f) * -157f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.b.x)))));
    let var_3 = min(_wgslsmith_div_i32(~var_1.c.c.x, firstTrailingBit((var_1.c.c.x >> (0u % 32u)) >> (u_input.a % 32u))), var_0.c.c.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(120f)) - var_1.c.b.x);
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(563f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(!(_wgslsmith_mod_u32(597u, 4294967295u) > u_input.a), _wgslsmith_f_op_f32(func_1()) >= 523f, true, any(vec3<bool>(true, true, true))), select(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), vec4<bool>(false, select(false, true, any(vec2<bool>(false, true))), true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, true)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)), _wgslsmith_f_op_f32(sign(-476f)) != _wgslsmith_f_op_f32(abs(-540f)), true), select(vec4<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(false, false, true)), true, true), vec4<bool>(all(vec4<bool>(false, true, false, true)), all(vec4<bool>(false, false, false, false)), true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(4220i, _wgslsmith_mult_i32(2147483647i, ~firstTrailingBit(14208i)), max(-57571i, abs(~12932i)), 36407i), ~firstLeadingBit(select(vec2<u32>(40073u, u_input.a) >> (vec2<u32>(4294967295u, 16051u) % vec2<u32>(32u)), ~vec2<u32>(17847u, 92894u), u_input.a > u_input.a)), -14953i, ~_wgslsmith_dot_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(-50779i, -1i))), vec2<i32>(firstLeadingBit(0i), firstTrailingBit(-2147483647i))));
}

