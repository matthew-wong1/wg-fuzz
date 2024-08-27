struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(-(vec3<i32>(39829i, 0i, u_input.b) >> (~vec3<u32>(2646u, 0u, 4294967295u) % vec3<u32>(32u)))), firstTrailingBit(1i), _wgslsmith_f_op_f32(699f * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(451f + _wgslsmith_f_op_f32(-774f - -1572f)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.c))))));
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> vec3<i32> {
    let var_0 = 4294967295u;
    let var_1 = !(!vec3<bool>(true, _wgslsmith_f_op_f32(-arg_0.c) > arg_3, _wgslsmith_add_i32(u_input.b, u_input.b) >= abs(1i)));
    var var_2 = !var_1;
    var var_3 = vec2<u32>(4294967295u, 50718u);
    let var_4 = 1i;
    return vec3<i32>(1864i, 0i, 0i);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = countOneBits(11508i);
    let var_1 = vec3<bool>(false, true, true);
    let var_2 = Struct_1(func_3(func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-392f, -668f) + vec2<f32>(-318f, -419f)))), _wgslsmith_sub_u32(u_input.a, ~arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_2().c, _wgslsmith_f_op_f32(abs(-665f)))))), 35440i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1632f) - _wgslsmith_div_f32(-1941f, _wgslsmith_div_f32(992f, 627f)))));
    var var_3 = vec4<bool>(true || (var_1.x || true), (var_1.x & false) | (var_1.x || true), ~(_wgslsmith_add_u32(9617u, 1u) & abs(arg_0.x)) < _wgslsmith_sub_u32(arg_0.x, arg_0.x), var_2.c >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_2.c)), -1128f)), 1560f));
    var_3 = vec4<bool>(!var_3.x, true, !any(vec4<bool>(!var_3.x, -2147483647i <= var_2.a.x, 59594i == u_input.b, false)), !(!any(vec2<bool>(var_1.x, var_3.x))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(min(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 0u)), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a))), ~min(~vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(27491u, u_input.a, u_input.a))));
    var var_1 = vec4<u32>(~56837u, abs(u_input.a), ~(4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), u_input.a) >> (~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(24414u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(88033u, 4294967295u, 4294967295u, 1u)))) % vec4<u32>(32u));
    let var_2 = Struct_1(select(var_0.a, var_0.a, !vec3<bool>(all(vec4<bool>(true, true, false, false)), select(false, false, true), true)), abs(_wgslsmith_mult_i32(39898i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a.x, u_input.b, var_0.a.x, var_0.b), ~vec4<i32>(var_0.a.x, 72806i, -11205i, 24091i)))), _wgslsmith_f_op_f32(abs(func_1(_wgslsmith_sub_vec3_u32(var_1.wyz, ~vec3<u32>(23145u, var_1.x, var_1.x))).c)));
    var var_3 = var_2;
    var_3 = func_1(vec3<u32>(~_wgslsmith_dot_vec3_u32(var_1.yyy, vec3<u32>(0u, u_input.a, 1u) | var_1.xxw), ~_wgslsmith_dot_vec2_u32(var_1.zw, ~var_1.xw), u_input.a));
    var_3 = Struct_1(var_0.a, func_1(~(vec3<u32>(u_input.a, var_1.x, var_1.x) & var_1.ywx)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.c, _wgslsmith_f_op_f32(var_2.c + func_1(var_1.wyy).c)))));
    let var_4 = Struct_1(~(func_1(~var_1.xwy).a | var_0.a), 1i, 1306f);
    var_3 = func_1(reverseBits(vec3<u32>(_wgslsmith_clamp_u32(~27583u, ~var_1.x, 7854u), var_1.x, ~(~u_input.a))));
    let var_5 = !any(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)) == !((var_2.c > var_2.c) | true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1094f, 639f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, var_2.c, var_5)) - _wgslsmith_f_op_f32(561f + 1164f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.c, var_2.c, var_3.c, var_3.c))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c, var_4.c, var_4.c, var_3.c), vec4<f32>(var_2.c, var_0.c, 1000f, var_2.c))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, var_0.c, 1160f, -826f), vec4<f32>(var_0.c, var_3.c, var_0.c, var_3.c))))), 30608u, -_wgslsmith_div_vec3_i32(vec3<i32>(1i & var_3.b, ~var_2.a.x, var_3.b), min(vec3<i32>(var_0.b, -42428i, var_0.b), var_2.a) | ~var_4.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(sign(-342f)))));
}

