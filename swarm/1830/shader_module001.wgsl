struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> u32 {
    let var_0 = ~u_input.b;
    var var_1 = min(u_input.d.yx, ~(u_input.d.xx | u_input.d.yy));
    let var_2 = -27286i;
    return 1u;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    let var_0 = u_input.c;
    var var_1 = vec4<u32>(func_2(), abs(0u), ~(~u_input.d.x & var_0), 1u) ^ ~vec4<u32>(u_input.d.x, ~u_input.c, var_0, 1u);
    var_1 = ~min((~vec4<u32>(u_input.c, var_1.x, u_input.d.x, 21391u) << ((vec4<u32>(var_0, var_0, 87033u, 0u) ^ vec4<u32>(u_input.d.x, 4294967295u, u_input.c, 1u)) % vec4<u32>(32u))) & select(abs(vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.d.x)), select(vec4<u32>(32003u, 55638u, var_1.x, 54608u), vec4<u32>(24060u, 1u, 123034u, u_input.c), arg_1.x), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), select(abs(vec4<u32>(u_input.d.x, 91518u, var_1.x, var_0)), vec4<u32>(u_input.c, 0u, u_input.d.x, var_0) << (vec4<u32>(42670u, 1u, var_0, 40286u) % vec4<u32>(32u)), arg_1.x) | vec4<u32>(max(0u, 4294967295u), 0u, 34230u, ~u_input.d.x));
    var_1 = firstLeadingBit(vec4<u32>(1u, u_input.c, u_input.d.x, ~func_2()));
    var var_2 = 386f;
    return reverseBits(46108u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), 885f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1349f, arg_1.x))) - 1000f))));
    var var_1 = arg_0;
    var_1 = Struct_1(vec3<i32>(var_1.a.x, -51623i, -44204i));
    var_1 = Struct_1(vec3<i32>(~(_wgslsmith_mult_i32(7542i, arg_0.a.x) | (u_input.b | var_1.a.x)), u_input.a >> (firstLeadingBit(~4294967295u) % 32u), -7709i));
    var_1 = arg_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), var_0.x)) - var_0.yw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((_wgslsmith_sub_vec3_u32(vec3<u32>(59607u, u_input.d.x, u_input.d.x), reverseBits(u_input.d)) & u_input.d) & (~(~u_input.d) << ((reverseBits(vec3<u32>(u_input.c, 1u, u_input.c)) | ~u_input.d) % vec3<u32>(32u))));
    var var_1 = u_input.d.x;
    var var_2 = ~(0u ^ ~var_0.x) | ((_wgslsmith_mod_u32(~1u, ~u_input.d.x) & ~func_1(667f, vec4<bool>(false, false, false, true))) << (4294967295u % 32u));
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(23695u, 1143u, var_0.x)), firstLeadingBit(u_input.d));
    var_1 = 99411u;
    var var_3 = u_input.e.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(126f, 941f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<i32>(u_input.e.x, 46980i, 1i)), vec2<f32>(1000f, -786f))))))) * _wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-33160i, 2147483647i, u_input.b), vec3<i32>(19127i, u_input.b, u_input.a)) & abs(vec3<i32>(u_input.a, u_input.b, u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, -145f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 552f) + vec2<f32>(212f, -383f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(73008i, u_input.a), vec3<i32>(countOneBits(~_wgslsmith_mult_i32(1i, u_input.e.x)), -(~u_input.a), u_input.b), _wgslsmith_mult_u32(u_input.c, 0u), i32(-1i) * -1i);
}

