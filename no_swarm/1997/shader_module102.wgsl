struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = 0u;
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.yxz, ~(arg_2 | firstLeadingBit(vec3<u32>(4294967295u, 39693u, u_input.a.x)))), ~u_input.d.yww);
    var_1 = ~(~_wgslsmith_div_u32(max(217042u, ~arg_2.x), arg_2.x));
    var_1 = arg_2.x | _wgslsmith_div_u32(u_input.d.x, ~_wgslsmith_div_u32(~arg_2.x, abs(4294967295u)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return select(arg_3.a.yzy, arg_3.a.yxw, false);
}

fn func_2() -> vec4<bool> {
    let var_0 = select(select(vec3<bool>(false, !any(vec3<bool>(false, true, true)), false), select(func_3(true, _wgslsmith_f_op_f32(select(448f, -561f, true)), vec3<u32>(u_input.d.x, u_input.a.x, u_input.d.x), Struct_2(vec4<bool>(false, false, false, false), true, true, vec2<i32>(u_input.b, u_input.c), true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, all(vec2<bool>(false, false)))), true), vec3<bool>(any(vec3<bool>(false, any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)))), true, true), vec3<bool>(any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), true, any(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-406f, -677f) - 1139f);
    let var_2 = true & var_0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-667f))))));
    var_1 = 638f;
    return vec4<bool>(any(select(select(!vec4<bool>(false, var_0.x, true, false), select(vec4<bool>(true, var_2, var_2, true), vec4<bool>(var_2, true, var_2, true), true), select(vec4<bool>(var_0.x, var_2, false, false), vec4<bool>(true, var_0.x, true, var_0.x), var_2)), vec4<bool>(true, !var_2, false, true), !vec4<bool>(true, true, true, var_2))), var_0.x, true, var_0.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = select(!select(!vec4<bool>(true, arg_2.x, arg_2.x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.x, false, false, arg_0.x), !arg_0.x), func_2()), vec4<bool>(arg_2.x, false, all(!arg_0), arg_0.x), !vec4<bool>(true, !all(arg_2.yy), arg_0.x, func_2().x));
    var var_1 = reverseBits(arg_1.xz);
    let var_2 = vec2<u32>(abs(abs(~u_input.a.x) << (37690u % 32u)), reverseBits(~(u_input.d.x ^ u_input.a.x) << (firstTrailingBit(u_input.a.x) % 32u)));
    var_0 = !select(!vec4<bool>(true, !arg_2.x, !arg_0.x, arg_0.x), func_2(), vec4<bool>(arg_0.x, arg_0.x, true, func_3(false, _wgslsmith_div_f32(arg_3.a, 1863f), vec3<u32>(100466u, 29258u, 3552u), Struct_2(vec4<bool>(arg_0.x, arg_2.x, false, arg_2.x), arg_2.x, arg_0.x, vec2<i32>(20496i, var_1.x), arg_2.x)).x));
    var_1 = _wgslsmith_mult_vec2_i32(-firstLeadingBit(vec2<i32>(var_1.x, arg_1.x)) ^ vec2<i32>(reverseBits(2147483647i), _wgslsmith_mod_i32(arg_1.x, _wgslsmith_mod_i32(2147483647i, var_1.x))), _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.yx, arg_1.zy), arg_1.wz)), firstLeadingBit(-arg_1.wy)));
    return !vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -273f))) > 719f, true, func_3(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * arg_3.a))), vec3<u32>(~1u, select(u_input.a.x, 4294967295u, false), 8490u), Struct_2(vec4<bool>(arg_0.x, true, false, var_0.x), !arg_0.x, !var_0.x, abs(vec2<i32>(-16761i, arg_1.x)), select(arg_2.x, arg_2.x, false))).x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), true), ~vec4<i32>(firstTrailingBit(-25883i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(u_input.b, u_input.b)), 11020i), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, -15107i != u_input.b, true)), Struct_3(471f)), select(func_1(vec3<bool>(true, true, true), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1i, u_input.c, u_input.b, 0i)), ~vec4<i32>(7365i, 34616i, u_input.c, -1i)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1348f))).x, true, false), any(vec2<bool>(true || func_3(true, 1006f, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), Struct_2(vec4<bool>(true, false, false, false), false, true, vec2<i32>(u_input.b, 2147483647i), true)).x, all(vec2<bool>(true, true)))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 26325i) | vec2<i32>(-4740i, u_input.c), min(vec2<i32>(15256i, u_input.c), vec2<i32>(u_input.c, u_input.b)))), vec2<i32>(~_wgslsmith_add_i32(-2147483647i, u_input.b), reverseBits(~2147483647i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -30482i), vec2<i32>(u_input.c, u_input.b) & vec2<i32>(-2147483647i, 39179i), vec2<i32>(u_input.b, -1i))), !(!(!any(vec4<bool>(true, true, true, false)))));
    var var_1 = u_input.d.xy;
    let var_2 = vec2<u32>(1u, u_input.d.x);
    var var_3 = var_2.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(541f + 1739f))), 1f)));
    let var_5 = Struct_1(u_input.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(185f, 785f)))))), abs(firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.c, -19860i))) | _wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.c, -6249i, 0i, -2147483647i) | vec4<i32>(var_0.d.x, var_0.d.x, 9080i, u_input.b)), max(vec4<i32>(-88530i, u_input.c, u_input.c, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 39876i, 17831i, var_0.d.x), vec4<i32>(u_input.b, var_0.d.x, u_input.b, 100937i)))));
    let var_6 = Struct_3(-1612f);
    var var_7 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, var_5.c.x)), _wgslsmith_div_vec2_i32(var_0.d, var_0.d)), var_0.d.x, _wgslsmith_add_i32(var_0.d.x << (6979u % 32u), var_5.c.x ^ var_0.d.x)), -countOneBits(_wgslsmith_clamp_i32(-20446i, u_input.c, -1i))));
}

