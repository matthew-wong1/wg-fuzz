struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false)), any(vec4<bool>(true, true, true, true))), !all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -728f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(966f + 655f), -1158f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2514f - -211f)))), Struct_1(any(vec2<bool>(true, true))));
    var_0 = Struct_2(var_0.a, var_0.b, var_0.c);
    var var_1 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-581f, _wgslsmith_f_op_f32(f32(-1f) * -228f)), _wgslsmith_f_op_f32(f32(-1f) * -215f), -872f)), Struct_1(!(-737f != var_0.b.x) || all(vec2<bool>(var_0.a.x, var_0.a.x))));
    global0 = Struct_3(i32(-1i) * -max(max(global0.a, 60628i), u_input.a.x));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(119021u, 13225u), abs(vec2<u32>(12724u, 4294967295u))) & _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(0u, 5902u)), vec2<u32>(_wgslsmith_mod_u32(1u, 78198u), _wgslsmith_dot_vec3_u32(vec3<u32>(34254u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 12464u)))), _wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(22395u, 26678u)) & abs(abs(vec2<u32>(4294967295u, 40713u))), abs(vec2<u32>(_wgslsmith_div_u32(1u, 40560u), ~26453u))));
    return _wgslsmith_f_op_f32(abs(-1000f));
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-204f)), _wgslsmith_f_op_f32(func_3())), -205f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-720f + 1337f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(921f)), _wgslsmith_f_op_f32(max(394f, 1000f))))));
    var var_1 = Struct_2(select(select(vec4<bool>(true, true, any(vec3<bool>(true, false, true)), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true)) & true), vec4<bool>((global0.a << (34189u % 32u)) == ~(-2147483647i), true, -25987i <= u_input.a.x, var_0.x == -2109f), vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec2<bool>(true, true)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1758f, -530f, _wgslsmith_f_op_f32(max(var_0.x, -621f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))))), Struct_1(!(!any(vec3<bool>(false, false, false)))));
    var var_2 = var_1.a.zx;
    let var_3 = var_1.c;
    var_2 = !(!select(!select(var_1.a.yz, var_1.a.ww, vec2<bool>(var_3.a, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, var_3.a), var_3.a), select(vec2<bool>(true, false), vec2<bool>(true, false), var_3.a), select(var_1.a.ww, vec2<bool>(var_1.c.a, var_3.a), var_2.x)), var_3.a));
    return Struct_3(_wgslsmith_clamp_i32(u_input.a.x, 50827i, 1i));
}

fn func_1() -> vec3<f32> {
    global0 = func_2();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3139f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(172f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(428f * -507f))), true))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(495f, 880f, 940f) - vec3<f32>(var_0, -159f, var_0))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(816f)), var_0, var_0) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(890f, var_0, var_0))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, -367f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(min(var_0, -390f)), -1699f), vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 * 1546f), _wgslsmith_f_op_f32(-var_0)), any(vec4<bool>(false, true, true, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-295f * _wgslsmith_f_op_f32(f32(-1f) * -1772f)), _wgslsmith_f_op_f32(-1595f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1394f) + _wgslsmith_f_op_vec3_f32(func_1()))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, global0.a), -68757i, _wgslsmith_sub_i32(u_input.a.x, global0.a))), global0.a), firstTrailingBit(countOneBits(50170u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(372f + var_0.x)), _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1181f, var_0.x) + var_0.x))));
}

