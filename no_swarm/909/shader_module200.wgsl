struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = -u_input.c.x;
    return Struct_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1573f + -562f)))))), vec2<u32>(arg_1.x, 4294967295u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    return (4294967295u | _wgslsmith_mult_u32(_wgslsmith_add_u32(27916u, arg_2.a) ^ 0u, 4294967295u)) >> (~arg_0.a % 32u);
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = 4294967295u;
    var var_1 = u_input.a.yx;
    var_1 = vec2<u32>(u_input.a.x, select(_wgslsmith_mult_u32(func_3(Struct_1(var_1.x, vec4<bool>(arg_0.x, arg_0.x, true, true)), arg_0, Struct_2(var_1.x, -999f, vec2<u32>(4294967295u, var_1.x))), abs(~u_input.a.x)), 19119u, (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 20201u, 5942u), vec4<u32>(var_1.x, var_1.x, 26488u, var_1.x)) | var_1.x) >= 935u));
    var var_2 = _wgslsmith_mod_vec3_i32(min(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.c.x, u_input.b, -6334i)), -u_input.c.zwy) << (vec3<u32>(reverseBits(var_1.x), select(var_1.x, u_input.a.x, true), ~4294967295u) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c.x, u_input.d.x, -1i), u_input.d.yzz))), u_input.d.xwx);
    var_1 = vec2<u32>(firstLeadingBit((~var_1.x | ~u_input.a.x) << (var_1.x % 32u)), _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.x, firstTrailingBit(14014u)), var_1.x));
    return Struct_3(~(~(countOneBits(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)) << (countOneBits(vec4<u32>(5416u, var_1.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1388f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(351f, 1553f, 1000f, -1000f) * vec4<f32>(-260f, -190f, 2061f, 1473f)) + vec4<f32>(2121f, -716f, 638f, -1336f)))))), (abs(vec4<u32>(var_1.x, u_input.a.x, u_input.a.x, var_1.x)) ^ countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_1.x)))) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(25788u, u_input.a.x, 0u, 0u), ~select(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 8617u), vec4<u32>(2402u, var_1.x, var_1.x, var_1.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(select(~1u, 23492u >> (~(~u_input.a.x) % 32u), any(vec3<bool>(true, true, true))), 1u);
    var var_1 = func_1(u_input.a.zy, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, reverseBits(u_input.a.x))));
    let var_2 = func_2(vec3<bool>(true, true || any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true)), true));
    var_0 = _wgslsmith_add_u32(1u >> (var_1.a % 32u), 64174u);
    var var_3 = Struct_2(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(vec2<u32>(var_2.d.x, u_input.a.x), vec3<u32>(var_2.a.x, 4294967295u, 0u)).b))), countOneBits(var_2.d.yx));
    let var_4 = ~vec3<i32>(-(_wgslsmith_div_i32(u_input.c.x, 2147483647i) >> (~1u % 32u)), -53421i, _wgslsmith_div_i32(776i, 2147483647i) >> (u_input.a.x % 32u));
    let var_5 = vec2<f32>(-333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + 278f))) + var_2.b));
    var var_6 = ~countOneBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.b, -1231f, var_1.b, 1672f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, _wgslsmith_f_op_f32(round(1031f)), var_3.b, -2566f))), 82773u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c)))), ~abs(var_1.c.x));
}

