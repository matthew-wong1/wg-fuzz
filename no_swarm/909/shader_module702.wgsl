struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    return vec3<bool>(true, !(u_input.d.x != u_input.d.x), !any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), u_input.b >= arg_0.x)));
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(51063i, (i32(-1i) * -arg_0.x) & arg_0.x, 50485i), abs(-(vec3<i32>(-2147483647i, 2147483647i, arg_0.x) & vec3<i32>(9443i, 39411i, 25279i))));
    var_0 = select(~(~min(vec3<i32>(u_input.a, u_input.c.x, -1i) | vec3<i32>(-28537i, arg_0.x, arg_0.x), ~vec3<i32>(-6008i, -2147483647i, u_input.c.x))), vec3<i32>(abs(arg_0.x), arg_0.x, arg_0.x), select(func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_0.x, -47612i) & var_0.zz, arg_0)), !vec3<bool>(true, false, u_input.d.x < 1u), !select(func_3(vec2<i32>(u_input.c.x, u_input.a)), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false)))));
    var var_1 = vec2<bool>(true, -u_input.c.x < u_input.b);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(-558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(500f + -784f))) + _wgslsmith_f_op_f32(-212f - -805f)), all(select(vec4<bool>(true, false, var_1.x, var_1.x), !vec4<bool>(var_1.x, true, true, true), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false)))))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-300f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(811f, -1000f, false))))))));
    return var_2.zz;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(vec2<i32>(46195i, 23107i))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-581f)), arg_0));
    var var_1 = Struct_1(8701i);
    let var_2 = vec4<bool>(any(!select(select(vec4<bool>(true, arg_2.x, arg_2.x, true), vec4<bool>(false, false, arg_2.x, false), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), !vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, true, true, false))), arg_2.x, all(select(!vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, all(vec4<bool>(false, true, true, arg_2.x)), true), arg_2.x)), false);
    var var_3 = ~(~vec4<u32>(u_input.d.x, u_input.d.x, 10596u, u_input.d.x));
    var var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(select(countOneBits(~var_1.a), var_1.a | abs(24592i), 1u <= _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_3.x, 4294967295u, u_input.d.x), vec4<u32>(13919u, u_input.d.x, var_3.x, var_3.x))), 1i, var_1.a & ((i32(-1i) * -2147483647i) << (0u % 32u)), _wgslsmith_sub_i32(u_input.c.x, 0i)), vec4<i32>(arg_3.c.a, var_1.a, u_input.a & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(17975i, arg_3.a, arg_3.a), vec3<i32>(-2147483647i, 20894i, u_input.c.x)), -6858i), arg_3.c.a));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(any(vec3<bool>(true, true, true)), (u_input.a & 2147483647i) > func_1(807f, vec2<f32>(-210f, 697f), vec2<bool>(true, true), Struct_2(u_input.c.x, Struct_1(u_input.c.x), Struct_1(u_input.c.x))), true, true), vec4<bool>(true, !any(vec3<bool>(true, true, true)), func_3(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b, -2147483647i), vec2<i32>(18886i, -1i))).x, true), !select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, false))));
    let var_1 = vec2<i32>(20962i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.b, -2147483647i), -vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, -1i)) ^ -u_input.b) | firstLeadingBit(vec2<i32>(2147483647i, u_input.c.x) & u_input.c);
    let var_2 = -11605i;
    let var_3 = Struct_1(-min(var_1.x, -2147483647i));
    var var_4 = vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(60176u, 17216u, u_input.d.x, u_input.d.x), ~(~vec4<u32>(20695u, u_input.d.x, 19946u, u_input.d.x))), ~_wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.d.x, 63165u, 1u), u_input.d, true), abs(vec3<u32>(u_input.d.x, 58872u, u_input.d.x)) | ~u_input.d));
    let var_5 = Struct_5(Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1564f, 1278f)))))), _wgslsmith_mult_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.a, 11536i, var_1.x)), vec3<i32>(-46691i, var_1.x, var_3.a) | vec3<i32>(-2147483647i, var_1.x, var_1.x)), var_0, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(45549u, var_4.x, 90091u)), vec3<u32>(var_4.x, 4294967295u, 52789u))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2252f, -122f)), -181f))), -(vec3<i32>(-1i) * -vec3<i32>(0i, 1i, var_1.x)), vec4<bool>(var_0.x, var_0.x, all(vec2<bool>(var_0.x, false)), false), u_input.d.x), select(vec4<bool>(!(var_4.x > 45202u), !any(vec4<bool>(true, false, false, var_0.x)), !(!var_0.x), false), !vec4<bool>(true, false, any(var_0.xw), true), !vec4<bool>(var_0.x, all(var_0.xw), var_0.x | true, false)));
    var var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_6.a, var_5.b.a), vec2<f32>(-1373f, var_5.a.a))) - vec2<f32>(615f, -416f)))), 382f, 4294967295u);
}

