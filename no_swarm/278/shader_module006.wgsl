struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(1047f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-577f)), 475f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1273f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(685f * _wgslsmith_f_op_f32(182f - var_0.x))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)), select(vec3<bool>(any(vec3<bool>(true, true, false)), true, false), vec3<bool>(true, false, true), any(vec3<bool>(true, true, true))))));
    var var_1 = Struct_1(vec4<i32>(u_input.a.x << (u_input.c.x % 32u), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b.x << (u_input.c.x % 32u), reverseBits(u_input.a.x), 9777i), u_input.a.x), abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(-24678i, 1i), u_input.a.xy)), ~_wgslsmith_add_i32(i32(-1i) * -46951i, abs(u_input.a.x))));
    let var_2 = Struct_1(vec4<i32>(~var_1.a.x, -2147483647i, u_input.a.x, 17764i));
    let var_3 = var_2;
    return -1000f;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(func_3()));
    let var_2 = Struct_1(vec4<i32>(-_wgslsmith_clamp_i32(u_input.b.x, min(arg_1.a.x, var_0.a.x), -2147483647i), _wgslsmith_div_i32(var_0.a.x, ~u_input.a.x | arg_1.a.x), arg_2.a.x, -firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.a.x), var_0.a.xx))));
    let var_3 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), true)));
    var var_4 = Struct_1(~select(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a) >> (~vec4<u32>(u_input.c.x, 5661u, 1u, 63800u) % vec4<u32>(32u)), arg_1.a, var_3.x));
    return !select(vec2<bool>(true, true), !var_3.xy, var_3.xx);
}

fn func_1() -> vec4<i32> {
    var var_0 = select(!(!vec3<bool>(true, true, all(vec4<bool>(false, false, true, true)))), vec3<bool>(!any(vec3<bool>(true, true, false)), !any(func_2(vec2<f32>(-167f, 1000f), Struct_1(u_input.a), Struct_1(u_input.a))), true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1027f + _wgslsmith_f_op_f32(max(-1000f, 1849f))))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1017f))))));
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, u_input.b.x), -_wgslsmith_mod_i32(-1i, u_input.b.x), -14563i, select(_wgslsmith_dot_vec3_i32(-u_input.b, u_input.b), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -72904i), firstLeadingBit(2147483647i)), all(vec4<bool>(true, true, true, true)))));
    let var_2 = -5578i;
    var var_3 = (var_0.x || !var_0.x) || func_2(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-198f)), _wgslsmith_f_op_f32(sign(377f)))), Struct_1(_wgslsmith_sub_vec4_i32(reverseBits(var_1.a), var_1.a & vec4<i32>(48530i, -22538i, var_1.a.x, var_2))), Struct_1(var_1.a)).x;
    let var_4 = 424f;
    return vec4<i32>(~1i, (2147483647i & var_2) << (reverseBits(_wgslsmith_mod_u32(max(0u, u_input.c.x), 26882u)) % 32u), -(-(-2147483647i & u_input.a.x) << (~u_input.c.x % 32u)), 67061i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = vec4<i32>(-1i) * -((func_1() | vec4<i32>(-2147483647i, 0i, 1i, u_input.b.x)) & vec4<i32>(max(-10160i, u_input.b.x), countOneBits(var_0), reverseBits(-1i), 0i));
    var var_2 = true;
    var var_3 = Struct_1(u_input.a);
    var var_4 = any(vec2<bool>(false, any(vec4<bool>(all(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, true, true)), true))));
    var_2 = ~(~u_input.c.x) == 0u;
    let var_5 = -1i;
    var var_6 = countOneBits(u_input.c.x);
    let var_7 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_5, 4294967295u, _wgslsmith_f_op_f32(-819f + 1034f));
}

