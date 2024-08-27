struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1((countOneBits(~u_input.b.x) >> ((4294967295u >> (~u_input.a % 32u)) % 32u)) == 6815u, vec4<bool>(arg_1, false, _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, 2147483647i), _wgslsmith_clamp_i32(-44156i, 1i, 1i)) != -3894i, arg_1), vec2<u32>(u_input.b.x, firstLeadingBit(~37282u)));
    var var_1 = min(~(-vec3<i32>(29144i, _wgslsmith_add_i32(1i, 0i), -1i)), ~(min(-vec3<i32>(1i, -1i, 2147483647i), max(vec3<i32>(-62465i, -2147483647i, 2147483647i), vec3<i32>(-2174i, 1i, 11511i))) >> (vec3<u32>(~u_input.b.x, 1u, ~u_input.a) % vec3<u32>(32u))));
    var var_2 = Struct_2(u_input.b.zzw, _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(-2450f, -613f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(444f, arg_0)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-202f, arg_0))))))), var_0);
    var_1 = select(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(-32118i, var_1.x, 63244i), vec3<i32>(-2147483647i, var_1.x, var_1.x))), countOneBits(vec3<i32>(-2147483647i, -44477i, max(2147483647i, var_1.x))), all(var_0.b.xzw)) & _wgslsmith_div_vec3_i32(abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(28123i, -11334i, var_1.x), vec3<i32>(var_1.x, 38308i, -52471i))), min((vec3<i32>(-2147483647i, var_1.x, var_1.x) >> (var_2.a % vec3<u32>(32u))) >> (vec3<u32>(0u, var_0.c.x, var_0.c.x) % vec3<u32>(32u)), -(~vec3<i32>(var_1.x, -22340i, -2147483647i))));
    let var_3 = arg_0;
    return Struct_1(var_2.c.b.x, vec4<bool>(!var_0.b.x, !(min(-33749i, -22296i) != var_1.x), var_0.a, true), var_0.c);
}

fn func_3(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = Struct_2(vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, u_input.a, arg_0.c.c.x) << (~arg_0.c.c.x % 32u), 1u, _wgslsmith_add_u32(~(~u_input.a), 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(805f, arg_0.b.x))), vec2<f32>(arg_0.b.x, arg_0.b.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 907f)), _wgslsmith_f_op_vec2_f32(-arg_0.b))))), Struct_1(true, !(!select(vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x, true), vec4<bool>(false, arg_0.c.b.x, arg_0.c.a, arg_0.c.a), arg_0.c.b)), ~func_2(_wgslsmith_f_op_f32(arg_0.b.x - 416f), arg_0.c.a).c));
    let var_1 = 1i;
    var_0 = Struct_2(select(vec3<u32>(~u_input.b.x, ~_wgslsmith_mult_u32(u_input.b.x, 1u), ~_wgslsmith_dot_vec3_u32(var_0.a, var_0.a)), min(abs(~arg_0.a), _wgslsmith_mod_vec3_u32(u_input.b.xyw, ~vec3<u32>(u_input.b.x, 1u, 0u))), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)), _wgslsmith_div_vec2_f32(arg_0.b, arg_0.b), !vec2<bool>(var_0.c.a, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b)) * vec2<f32>(arg_0.b.x, -393f))), arg_0.c);
    var_0 = arg_0;
    return StorageBuffer(-40062i, vec3<u32>(~reverseBits(_wgslsmith_sub_u32(4294967295u, var_0.a.x)), ~func_2(_wgslsmith_f_op_f32(1018f - 225f), true).c.x, ~1u), 507f);
}

fn func_1() -> StorageBuffer {
    return func_3(Struct_2(~firstTrailingBit(u_input.b.wzy) & ~vec3<u32>(u_input.a, 109629u, 21385u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(362f, -2497f), vec2<f32>(426f, -294f), vec2<bool>(true, true)))), func_2(-153f, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(false, true, false, true))));
    let var_1 = vec2<i32>(~(~reverseBits(0i)), ~abs(~(-1i)));
    let x = u_input.a;
    s_output = func_1();
}

