struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    let var_0 = true;
    let var_1 = Struct_2(vec3<bool>(select(true, true, any(vec3<bool>(false, true, false))), !(!var_0), var_0), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_2.x), ~_wgslsmith_mult_u32(9719u << (u_input.c % 32u), u_input.c)), u_input.b.x >> (select(~_wgslsmith_mult_u32(50292u, 14217u), 61555u, any(vec4<bool>(var_0, true, arg_0, false)) | select(arg_0, arg_0, false)) % 32u));
    return _wgslsmith_f_op_f32(ceil(-915f));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = 2147483647i;
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(any(vec3<bool>(false, true, true)), -570f, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 876f) + vec2<f32>(483f, arg_0.a)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a)))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a)))), any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true))), true);
    var_0 = 33713i;
    let var_2 = true;
    var_0 = abs(i32(-1i) * -(i32(-1i) * -u_input.b.x));
    return Struct_2(var_1, arg_0, -u_input.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec3<u32> {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(755f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1104f * arg_0.b.a)))), 89720u << (u_input.c % 32u)));
    let var_1 = -2147483647i;
    let var_2 = Struct_3(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)), 34423u)), vec4<bool>(false || var_0.a.x, any(select(vec3<bool>(var_0.a.x, arg_0.a.x, arg_0.a.x), select(arg_0.a, var_0.a, arg_0.a), var_0.a)), all(!select(var_0.a, arg_0.a, false)), any(var_0.a)));
    var var_3 = 2147483647i;
    let var_4 = var_2;
    return vec3<u32>(33235u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_0.b.b, var_0.b.b, arg_1)), vec3<u32>(var_0.b.b, arg_0.b.b, 0u) << (vec3<u32>(69820u, 1u, 1u) % vec3<u32>(32u))), max(vec3<u32>(var_4.a.b.b, 20305u, 4294967295u) << (vec3<u32>(4294967295u, var_2.a.b.b, var_0.b.b) % vec3<u32>(32u)), vec3<u32>(arg_1, 4294967295u, var_2.a.b.b))), vec3<u32>(~u_input.c, 4294967295u, 64299u)), 102361u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = countOneBits(~arg_0.yz | _wgslsmith_add_vec2_u32(arg_0.yx, arg_0.xy));
    let var_1 = func_2(arg_2.b).b;
    var var_2 = Struct_2(!(!func_2(Struct_1(-459f, 0u)).a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a))), 4294967295u), -arg_2.c);
    var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x + -1109f))) * _wgslsmith_f_op_f32(-arg_1.x)), var_2.b.b));
    var_2 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(1073u, 78392u, u_input.c)) >> (max(vec3<u32>(u_input.c, 0u, 4294967295u), vec3<u32>(53363u, u_input.c, u_input.c)) % vec3<u32>(32u))) & func_1(Struct_2(vec3<bool>(false, true, false), Struct_1(-1422f, 41257u), -19912i), u_input.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, _wgslsmith_f_op_f32(f32(-1f) * -1529f), 975f, 1000f)))), func_2(Struct_1(-633f, 37438u)));
    let var_1 = Struct_3(Struct_2(!select(var_0.a, var_0.a, vec3<bool>(false, var_0.a.x, var_0.a.x)), var_0.b, -2147483647i), vec4<bool>(!var_0.a.x, var_0.a.x, any(!vec2<bool>(var_0.a.x, false)), func_4(reverseBits(vec3<u32>(0u, u_input.c, u_input.c) | vec3<u32>(4294967295u, var_0.b.b, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a, var_0.b.a, var_0.b.a, 283f), vec4<f32>(1177f, var_0.b.a, var_0.b.a, 249f)) + vec4<f32>(1000f, -1000f, var_0.b.a, 1959f)), Struct_2(select(var_0.a, var_0.a, var_0.a), var_0.b, 15136i)).a.x));
    var var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 20061u), select(vec2<u32>(81232u, var_1.a.b.b), vec2<u32>(11931u, var_1.a.b.b), false)) >> ((~vec2<u32>(4294967295u, 4294967295u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.b, var_1.a.b.b), vec2<u32>(var_0.b.b, 24458u), vec2<u32>(1u, 13287u))) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.b.b, var_1.a.b.b), vec2<u32>(4294967295u, var_0.b.b), vec2<u32>(var_0.b.b, u_input.c)), vec2<u32>(var_1.a.b.b, 38645u))), func_1(var_1.a, _wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.c, 0u, 98018u), vec3<u32>(12839u, u_input.c, u_input.c)), select(vec3<u32>(u_input.c, var_1.a.b.b, 16839u), vec3<u32>(23735u, 119141u, 7958u) | vec3<u32>(1u, var_1.a.b.b, 1u), vec3<bool>(true, true, true)))).xy);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.b, select(vec3<i32>(0i, -48270i, -_wgslsmith_dot_vec3_i32(u_input.a.zww, vec3<i32>(-25241i, var_0.c, var_1.a.c))), (select(u_input.a.yxy, u_input.a.xyz, true) << (vec3<u32>(63178u, 68342u, var_2.x) % vec3<u32>(32u))) ^ vec3<i32>(max(-11148i, var_1.a.c), ~(-6610i), -16081i), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-410f)), _wgslsmith_f_op_f32(max(428f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1740f), var_0.b.a, true))))));
}

