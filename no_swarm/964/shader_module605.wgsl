struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> Struct_1 {
    return Struct_1(u_input.d.wx);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = u_input.c;
    var var_1 = ~var_0.xx | ~(~vec2<u32>(firstTrailingBit(var_0.x), 1u));
    let var_2 = Struct_2(arg_1.b, arg_0.b);
    var_1 = ~u_input.c.ww;
    var_1 = _wgslsmith_mult_vec2_u32(~((vec2<u32>(var_1.x, 26780u) & vec2<u32>(var_0.x, 785u)) | ~var_0.zy), ~abs(u_input.c.zx)) ^ select(u_input.c.zz, var_0.xx, select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(false, false, false))), !select(vec2<bool>(false, true), vec2<bool>(false, false), true)));
    return func_1().a.x | ((u_input.b | ((u_input.d.x ^ 11934i) << (4294967295u % 32u))) << ((_wgslsmith_clamp_u32(48387u, _wgslsmith_mod_u32(var_0.x, var_0.x), var_0.x) ^ ~4294967295u) % 32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(1129f));
    var var_1 = abs(~(-u_input.d.x | -13737i));
    let var_2 = Struct_2(func_1(), func_1());
    var var_3 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.a.a.x, var_2.b.a.x, func_3(var_2, Struct_2(var_2.a, var_2.a)), 0i), ~vec4<i32>(8687i, -20620i, -1i, u_input.b), true) << (~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(37765u, 0u, u_input.a, 1u), vec4<u32>(arg_1.x, 1u, u_input.c.x, arg_1.x))) % vec4<u32>(32u)), firstLeadingBit(u_input.d));
    var_1 = -16070i;
    return abs(vec2<i32>(-_wgslsmith_mult_i32(abs(var_2.a.a.x), var_2.a.a.x), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<i32>(-41373i, -49793i, -10562i);
    var var_2 = Struct_1(var_0.a);
    var var_3 = Struct_1(u_input.d.zz);
    var_3 = func_1();
    var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(~_wgslsmith_sub_vec2_i32(firstLeadingBit(var_2.a), vec2<i32>(var_2.a.x, 6515i)), func_2(u_input.c.zwz, u_input.c.wy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-163f, 286f, -765f))), vec2<i32>(-var_1.x, var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, func_1().a.x);
}

