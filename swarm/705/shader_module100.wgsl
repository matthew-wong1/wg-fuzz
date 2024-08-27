struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<f32> {
    let var_0 = any(vec3<bool>(true, any(select(select(vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(true, arg_2.a, arg_2.a)), vec3<bool>(arg_2.a, true, arg_2.a), arg_2.a)), true));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(1i, u_input.a.x, 17862i, var_1.b.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, -17926i), -vec4<i32>(var_1.b.x, var_1.b.x, -5140i, -1i)), vec4<i32>(-abs(-29128i), 16046i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.c.x, -2147483647i)), _wgslsmith_div_i32(35254i, arg_2.b.x), reverseBits(-2147483647i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.x), vec2<i32>(u_input.c.x, -51372i)))) & reverseBits(~countOneBits(max(vec4<i32>(-2147483647i, -30788i, arg_2.b.x, 2147483647i), vec4<i32>(-7803i, u_input.c.x, arg_0.x, u_input.c.x))));
    var_1 = arg_2;
    var_1 = Struct_1(arg_2.a, arg_2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(363f - 308f) - var_1.c), _wgslsmith_f_op_f32(-800f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -249f))))), arg_2.d);
    return _wgslsmith_f_op_vec2_f32(-arg_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(true, firstTrailingBit(reverseBits(vec3<i32>(arg_0.b.x, 1i, arg_1.b.x)) | ~vec3<i32>(arg_0.b.x, 3922i, arg_3.b.x)) ^ arg_0.b, 1450f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.d - vec2<f32>(339f, -574f)))), _wgslsmith_div_vec2_f32(vec2<f32>(718f, arg_1.c), arg_1.d), vec2<bool>(arg_2.x, !arg_3.a)))));
    let var_1 = ~u_input.b.wz;
    var var_2 = vec3<f32>(754f, _wgslsmith_div_f32(-743f, arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) * 323f));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.d.x, -313f))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) * -118f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1661f) + _wgslsmith_f_op_f32(-arg_1.c))))), arg_1.c);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1303f, _wgslsmith_f_op_f32(1000f + -1336f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(154f, 310f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(true, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, -36554i, 28387i), vec3<i32>(1i, 2147483647i, u_input.a.x)), _wgslsmith_f_op_f32(max(-675f, 340f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(407f, -502f))), Struct_1(true, vec3<i32>(8602i, -1i, u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -980f), _wgslsmith_f_op_vec2_f32(func_3(u_input.a, 401f, Struct_1(true, u_input.c, 396f, vec2<f32>(896f, -2234f)), vec2<f32>(-269f, 1255f)))), !(!arg_1), Struct_1(any(vec4<bool>(arg_1.x, true, false, arg_1.x)), abs(vec3<i32>(-1i, u_input.a.x, 0i)), _wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(u_input.a.x, 0i, u_input.c.x), 545f, Struct_1(true, vec3<i32>(u_input.c.x, u_input.c.x, -1i), 1356f, vec2<f32>(-2047f, 1699f)), vec2<f32>(806f, -1243f))).x, _wgslsmith_f_op_vec2_f32(vec2<f32>(667f, 941f) - vec2<f32>(-215f, -2169f)))))));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, any(vec3<bool>(false, true, false)), true, false), any(vec3<bool>(false, false, false)) && any(vec2<bool>(true, false)))), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(firstLeadingBit(-u_input.c.xy), vec3<bool>(true, true, true), u_input.b.xz & (vec2<u32>(u_input.b.x, u_input.b.x) | vec2<u32>(52105u, u_input.b.x)))), _wgslsmith_f_op_f32(func_4(Struct_1(true, vec3<i32>(2147483647i, -14062i, 50133i), _wgslsmith_f_op_f32(func_2(u_input.c.xy, vec3<bool>(false, true, false), u_input.b.wy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1455f, 1660f) - vec2<f32>(-377f, -1896f))), Struct_1(false, ~u_input.c, -1972f, vec2<f32>(106f, -542f)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), Struct_1(true, ~vec3<i32>(-43957i, -17815i, -2147483647i), -1000f, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(264f, 1033f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, 231f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1438f, -550f))))) * vec2<f32>(-653f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-755f)))))));
    var var_1 = vec3<i32>(-1i, -(_wgslsmith_add_i32(~var_0.b.x, 27863i) << (4294967295u % 32u)), select(var_0.b.x, -1i, var_0.a));
    var_1 = vec3<i32>(-21005i, 2147483647i, ~(_wgslsmith_add_i32(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, var_1.x), vec2<i32>(1i, -5781i))) | reverseBits(var_0.b.x)));
    let var_2 = Struct_1(!var_0.a, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.c, 733f), _wgslsmith_f_op_f32(f32(-1f) * -192f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(var_0, var_0, vec3<bool>(false, var_0.a, false), Struct_1(true, vec3<i32>(var_0.b.x, u_input.c.x, u_input.c.x), 1153f, vec2<f32>(var_0.d.x, var_0.d.x)))), _wgslsmith_f_op_f32(-var_0.c)), var_0.d)));
    var_1 = u_input.a;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(vec3<i32>(func_1(), _wgslsmith_mod_i32(0i, -2147483647i), _wgslsmith_sub_i32(0i, u_input.a.x))), u_input.a));
}

