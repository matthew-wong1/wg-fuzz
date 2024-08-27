struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_mult_u32(~min(arg_1.b.c.x, abs(select(39398u, arg_1.b.c.x, false))), u_input.d.x);
    var var_1 = -117f;
    return -1i;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> vec4<bool> {
    let var_0 = vec3<u32>(~arg_2, ~u_input.d.x >> (reverseBits(~arg_2 >> (~arg_2 % 32u)) % 32u), u_input.d.x);
    var var_1 = Struct_2(vec4<bool>(arg_0.x, false, all(vec2<bool>(!arg_0.x, arg_0.x || arg_0.x)), all(arg_0)), Struct_1(arg_1, !select(!vec4<bool>(arg_0.x, true, false, arg_0.x), !vec4<bool>(false, arg_0.x, false, false), select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(true, arg_0.x, true, arg_0.x), false)), select(vec2<u32>(22012u, 1u), u_input.d.zw, select(!arg_0.zx, !vec2<bool>(arg_0.x, arg_0.x), arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(465f, arg_1, 571f))), vec3<f32>(arg_1, arg_1, 1279f), !vec3<bool>(arg_0.x, false, true))))));
    var_1 = Struct_2(select(var_1.b.b, var_1.b.b, true), var_1.b, var_1.c);
    return select(vec4<bool>(false, !(!arg_0.x), true, !arg_0.x | arg_0.x), var_1.a, vec4<bool>(true, any(var_1.a), select(any(vec2<bool>(arg_0.x, var_1.a.x)), all(vec3<bool>(arg_0.x, false, true)), _wgslsmith_sub_i32(-2147483647i, -14350i) < _wgslsmith_dot_vec4_i32(vec4<i32>(77188i, 11140i, u_input.c, 14865i), vec4<i32>(u_input.b, u_input.b, 0i, u_input.a))), !(all(vec3<bool>(var_1.b.b.x, var_1.a.x, false)) && var_1.b.b.x)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_2(func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-826f * -779f))), u_input.d.x), Struct_1(_wgslsmith_f_op_f32(round(2327f)), !vec4<bool>(1i < arg_0.x, any(vec4<bool>(false, false, false, true)), true, true), u_input.d.wz), vec3<f32>(-472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-824f * 456f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-697f, -822f)) + 1f)));
    let var_1 = 0i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(-268f)), !vec4<bool>(select(!var_0.a.x, false, var_0.b.c.x == 57657u), true, false, func_3(!var_0.a.xzy, _wgslsmith_f_op_f32(-1096f + -1271f), firstLeadingBit(327u)).x), var_0.b.c);
    var_2 = var_0.b;
    let var_3 = ~(vec3<u32>(var_2.c.x & ~var_2.c.x, var_0.b.c.x, ~17728u) & u_input.d.yzx);
    return Struct_4(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(arg_0), vec2<i32>(var_1, -2147483647i)), var_1), ~_wgslsmith_sub_i32(arg_0.x, countOneBits(-2147483647i)), 0i ^ _wgslsmith_dot_vec2_i32(-arg_0, vec2<i32>(u_input.a, u_input.c)), -33014i), _wgslsmith_f_op_f32(-953f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a)) * -1000f)) >= -572f, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(min(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2478i, -3372i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(0i, -1i), vec2<i32>(0i, 2932i))), func_1(countOneBits(vec3<i32>(13654i, u_input.b, 56699i)), Struct_2(vec4<bool>(true, false, true, false), Struct_1(-1214f, vec4<bool>(true, false, true, true), vec2<u32>(41005u, 0u)), vec3<f32>(-377f, 649f, 1249f)))), countOneBits(firstTrailingBit(vec2<i32>(u_input.b, u_input.a) >> (u_input.d.ww % vec2<u32>(32u))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, 1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-106f + 1316f)))), !(!(!func_3(var_0.c.a.yww, -1034f, var_0.c.b.c.x))), vec2<u32>(0u, ~u_input.d.x));
    var var_2 = !var_0.c.b.b.x;
    var_2 = !var_0.b;
    var_2 = true;
    let var_3 = vec3<i32>(1i, _wgslsmith_div_i32(~(~54871i), reverseBits(_wgslsmith_mult_i32(-10084i, -1i))) >> (min(abs(633u >> (var_0.c.b.c.x % 32u)), 4294967295u) % 32u), _wgslsmith_dot_vec4_i32(func_2(var_0.a.wy).a, _wgslsmith_add_vec4_i32(var_0.a, var_0.a)));
    var_2 = var_0.b;
    let var_4 = func_2(~(-vec2<i32>(_wgslsmith_div_i32(1i, 2147483647i), abs(var_3.x))));
    let var_5 = vec3<bool>(any(!(!(!var_4.c.b.b.wyz))), var_1.b.x || var_4.b, all(var_4.c.b.b.wzz));
    let x = u_input.a;
    s_output = StorageBuffer(-823f, reverseBits(var_0.c.b.c), var_4.a.x);
}

