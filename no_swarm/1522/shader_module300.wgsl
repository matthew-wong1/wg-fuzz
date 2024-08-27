struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = 1i;
    return arg_2;
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = ~(~(~(firstLeadingBit(arg_0.a.x) & 66342u)));
    return var_0;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = vec4<bool>(!all(vec2<bool>(true, true)), -arg_1.c.x <= arg_2.c.x, false, any(select(vec2<bool>(arg_1.c.x <= arg_1.c.x, true), vec2<bool>(true, true), !func_1(arg_2.b.x, -18023i, false))));
    var var_1 = true;
    var var_2 = vec2<u32>(func_3(Struct_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(22624u, 1u, 89340u, 12073u), vec4<u32>(4294967295u, arg_2.a.x, arg_1.a.x, arg_1.a.x) | vec4<u32>(arg_1.a.x, 4294967295u, arg_1.a.x, 4294967295u)))), ~select(arg_2.a.x, _wgslsmith_sub_u32(arg_1.a.x, 38559u), true) & func_3(Struct_2(~vec4<u32>(arg_1.a.x, arg_2.a.x, arg_2.a.x, 4294967295u))));
    var var_3 = !func_1(_wgslsmith_f_op_f32(arg_2.b.x + arg_0), 1i, all(select(select(var_0.yyy, var_0.ywy, false), vec3<bool>(var_0.x, var_0.x, var_0.x), any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)))));
    let var_4 = Struct_2(max(reverseBits(~firstTrailingBit(vec4<u32>(1u, 4294967295u, arg_2.a.x, 4294967295u))), countOneBits(min(vec4<u32>(arg_1.a.x, arg_1.a.x, 6188u, 58422u), vec4<u32>(var_2.x, 14227u, 24811u, 3819u)) ^ countOneBits(vec4<u32>(arg_1.a.x, 4294967295u, 0u, arg_2.a.x)))));
    return vec3<bool>(any(select(select(var_0.xy, select(vec2<bool>(true, var_0.x), var_0.xw, vec2<bool>(var_0.x, false)), !var_0.yy), var_0.yw, select(var_0.yx, var_0.yx, arg_2.c.x >= 11632i))), !var_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, true & (_wgslsmith_clamp_i32(min(-1i, 2147483647i), u_input.b, u_input.a.x) < u_input.b));
    let var_1 = abs(vec4<u32>(1u, 1u, 1u, 1u));
    var var_2 = !select(vec3<bool>(var_0.x, true, !(!var_0.x)), select(vec3<bool>(true, any(var_0), func_1(609f, u_input.a.x, false)), !vec3<bool>(var_0.x, var_0.x, var_0.x), true), vec3<bool>(!var_0.x, (-2147483647i <= u_input.a.x) & !var_0.x, false));
    var_2 = !(!select(!select(vec3<bool>(var_2.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_2.x, false), var_0.x), func_2(_wgslsmith_f_op_f32(min(-442f, 692f)), Struct_3(vec3<u32>(4294967295u, 85427u, var_1.x), vec4<f32>(-694f, 349f, 909f, 1164f), u_input.a.yx), Struct_3(vec3<u32>(6916u, 22934u, 0u), vec4<f32>(-516f, 2608f, 1000f, 1407f), u_input.a.zx)), any(var_0)));
    var_2 = vec3<bool>(var_2.x | (min(var_1.x ^ 27419u, firstTrailingBit(4294967295u)) <= _wgslsmith_dot_vec3_u32(var_1.yyx, vec3<u32>(0u, 70652u, var_1.x))), true, false);
    var var_3 = Struct_4(1i, Struct_3(vec3<u32>(~17678u, ~abs(39598u), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-762f, 685f, -568f, -612f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2069f, -376f, -288f, -1881f)))), u_input.a.yw), u_input.a.wxz, u_input.a.wx, vec2<u32>(30519u, 58381u));
    var var_4 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(~var_3.e.x, 1u), var_1.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_3.b.a.x, select(0u, 20305u, false)), ~var_3.e.x), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(432f)), var_3.b.b.x)));
}

