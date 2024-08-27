struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<bool>, 25>;

var<private> global2: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: vec4<bool>) -> bool {
    global0 = -2147483647i;
    let var_0 = select(13354i, -(~(-2147483647i)), true);
    global0 = u_input.b;
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(abs(2147483647i), -var_0), _wgslsmith_sub_vec2_i32(vec2<i32>(~abs(arg_1), abs(var_0)), ~vec2<i32>(u_input.a.x, var_0)));
    var var_2 = true;
    return (i32(-1i) * -u_input.b) > 1i;
}

fn func_3() -> vec2<f32> {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(722f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(674f, 791f), _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -1071f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-587f, 1192f)))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-474f, -209f, -649f, -1461f), vec4<f32>(-595f, -699f, 385f, 1084f))))))));
    let var_2 = var_1.x;
    global2 = array<vec3<bool>, 5>();
    let var_3 = Struct_2(~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5522u, u_input.c, 53194u), vec3<u32>(0u, 54756u, 22237u)), var_0 & 4294967295u)), Struct_1(_wgslsmith_f_op_f32(-var_1.x)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * var_3.b.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(1478f, -570f) + var_1.xw), false)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.wy) * _wgslsmith_f_op_vec2_f32(var_1.yz - var_1.wz)))) - var_1.xy);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -229f));
    let var_1 = arg_2.x | false;
    global1 = array<vec4<bool>, 25>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - arg_1.a))) + -682f)));
    var_2 = arg_1;
    return false && (any(vec3<bool>(true, true, arg_2.x && false)) & var_1);
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(func_3()), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-383f, 1341f)))))), global2[_wgslsmith_index_u32(~(~u_input.c) >> (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u), 5u)]);
    var var_1 = Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) << (select(vec4<u32>(u_input.c, 3454u, 0u, 0u), vec4<u32>(u_input.c, u_input.c, 55701u, 1u), false) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(44442u, u_input.c, u_input.c, 0u))), u_input.c), Struct_1(583f));
    global1 = array<vec4<bool>, 25>();
    let var_2 = ~(-vec4<i32>(~0i, -1i, 21299i, ~u_input.a.x) & -(vec4<i32>(0i, -1i, u_input.b, u_input.b) << (firstLeadingBit(vec4<u32>(17523u, 1u, 63486u, 1u)) % vec4<u32>(32u))));
    let var_3 = Struct_2(var_1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a - _wgslsmith_div_f32(822f, var_1.b.a)))));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f - 400f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.a), 1f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(~countOneBits(vec2<u32>(64724u, 103949u)), _wgslsmith_add_vec2_u32(~(vec2<u32>(1u, 28027u) ^ vec2<u32>(u_input.c, u_input.c)), vec2<u32>(1u, _wgslsmith_div_u32(u_input.c, u_input.c))), !vec2<bool>(func_1(68571u, -100974i, false, global1[_wgslsmith_index_u32(u_input.c, 25u)]), true)), func_2());
    var_0 = Struct_2(var_0.a, Struct_1(func_2().a));
    var var_1 = ~(_wgslsmith_sub_u32(16411u, 8049u) << (u_input.c % 32u));
    global1 = array<vec4<bool>, 25>();
    global2 = array<vec3<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-996f, 1140f, var_0.b.a, -343f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, -1108f, var_0.b.a, var_0.b.a)) + vec4<f32>(1231f, -1797f, var_0.b.a, 665f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a, 1000f, 1143f, var_0.b.a), vec4<f32>(1051f, 397f, 171f, 2101f), false)))))), var_0.b.a);
}

