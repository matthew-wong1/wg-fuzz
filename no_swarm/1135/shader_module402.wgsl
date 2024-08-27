struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(-3046i, -45580i, -45206i, 2147483647i), 2147483647i, 13056u));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32) -> vec2<i32> {
    let var_0 = !vec4<bool>(true, max(u_input.a.x ^ 49653u, global0.a.c & 0u) >= u_input.a.x, true, true);
    var var_1 = any(vec4<bool>(-14635i <= ~u_input.d, _wgslsmith_f_op_f32(-arg_1) >= arg_0, !((var_0.x | var_0.x) & (arg_2 == arg_2)), any(!(!vec3<bool>(var_0.x, var_0.x, true)))));
    let var_2 = ~vec4<u32>(u_input.a.x, ~(~u_input.a.x), ~4294967295u, ~u_input.a.x);
    return vec2<i32>(0i, _wgslsmith_sub_i32(-2147483647i, arg_2));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_2(global0.a);
    var var_1 = Struct_2(Struct_1(abs((vec4<i32>(var_0.a.b, u_input.e, 1i, arg_2.x) ^ vec4<i32>(9558i, -9564i, 14050i, var_0.a.a.x)) << (~vec4<u32>(u_input.a.x, u_input.a.x, var_0.a.c, 0u) % vec4<u32>(32u))), ~var_0.a.b, ~1u));
    let var_2 = max(func_3(arg_1, arg_3.x, -(~2147483647i)), arg_2.yz) << (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    var_0 = Struct_2(var_1.a);
    var_0 = Struct_2(var_1.a);
    return reverseBits(reverseBits(vec4<i32>(-min(-24619i, -8008i), max(-global0.a.b, var_1.a.b), ~0i, max(1i, var_0.a.a.x))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<i32> {
    global0 = Struct_2(global0.a);
    let var_0 = global0.a.c;
    let var_1 = global0.a.c;
    let var_2 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-133f, 1470f, 183f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -615f))), _wgslsmith_div_vec3_i32(vec3<i32>(24521i, ~1i, -43407i), arg_0), vec4<f32>(-265f, _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f * -896f) * 1f), _wgslsmith_f_op_f32(f32(-1f) * -1240f))), -global0.a.a.x, global0.a.c);
    var var_3 = 45552u;
    return vec3<i32>(abs(reverseBits(-u_input.d) & -(~(-11506i))), select(global0.a.a.x, _wgslsmith_sub_i32(0i >> (~u_input.a.x % 32u), 0i), (-global0.a.b <= 0i) && false), ~(0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(236f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1126f, -378f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -119f))))))), Struct_2(global0.a), -406f, Struct_1(global0.a.a, _wgslsmith_sub_i32(~global0.a.b << (global0.a.c % 32u), u_input.b.x), u_input.a.x));
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(func_1(global0.a.a.xyx), global0.a.a.zzx << (_wgslsmith_mod_vec3_u32(~vec3<u32>(62826u, 4294967295u, 0u), ~vec3<u32>(global0.a.c, global0.a.c, 108083u)) % vec3<u32>(32u))), ~var_0.b.a.a.xzy << (vec3<u32>(1u, 1u, u_input.a.x) % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(countOneBits(var_0.d.a), firstLeadingBit(global0.a.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(2147483647i, global0.a.b)), vec2<i32>(var_1.x, global0.a.a.x) ^ vec2<i32>(var_1.x, -2147483647i), var_0.b.a.a.wx), vec2<i32>(~35433i, var_1.x)) >> (abs(1u) % 32u), var_0.b.a.c);
    var_2 = Struct_1(~(-firstLeadingBit(firstTrailingBit(vec4<i32>(-107i, 28124i, 2147483647i, 42225i)))), _wgslsmith_clamp_i32(~_wgslsmith_add_i32(24840i, ~26464i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 7875i, -2147483647i, var_0.d.a.x), vec4<i32>(1420i, 2147483647i, 14436i, 19217i))) | abs(_wgslsmith_sub_i32(global0.a.b, 2147483647i)), 1i), _wgslsmith_add_u32(_wgslsmith_add_u32(43062u, 91839u), abs(u_input.a.x)));
    var_0 = Struct_3(1465f, Struct_2(global0.a), _wgslsmith_f_op_f32(1060f * var_0.c), global0.a);
    var var_3 = Struct_3(489f, Struct_2(var_0.d), var_0.a, Struct_1(_wgslsmith_sub_vec4_i32(global0.a.a, _wgslsmith_mult_vec4_i32(-global0.a.a, countOneBits(vec4<i32>(u_input.e, 2147483647i, global0.a.b, u_input.d)))), 2147483647i, global0.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.c));
}

