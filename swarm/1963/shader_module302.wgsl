struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
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

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-1714f, 504f, 1399f, -1101f), vec4<f32>(520f, 886f, 1170f, -1478f), vec4<f32>(917f, -126f, 1080f, -1106f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<bool>) -> bool {
    let var_0 = -vec3<i32>(-u_input.c, -1i, -arg_1.x);
    return any(select(vec2<bool>(arg_3.x, all(vec4<bool>(true, true, true, true))), arg_3, true));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    let var_0 = firstTrailingBit(-2147483647i);
    var var_1 = var_0;
    return Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1038f, arg_1.a.x, _wgslsmith_f_op_f32(sign(arg_1.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<f32>(626f, arg_1.a.x, 1407f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.x, arg_1.a.x, -1340f))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = func_3(vec4<bool>(true, false, func_2(Struct_1(vec3<f32>(-1036f, -744f, 899f)), max(select(vec4<i32>(arg_1.x, -2147483647i, arg_1.x, 55793i), vec4<i32>(arg_1.x, u_input.d.x, arg_1.x, u_input.e.x), arg_0.x), select(vec4<i32>(u_input.d.x, arg_1.x, arg_1.x, 22021i), vec4<i32>(u_input.d.x, 1i, -30961i, arg_1.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), arg_0.x, vec2<bool>(false, any(arg_0))), all(select(vec2<bool>(false, false), vec2<bool>(arg_0.x, arg_0.x), arg_0.xy)) & arg_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(490f * 1000f), _wgslsmith_f_op_f32(select(-656f, 530f, arg_0.x)), _wgslsmith_f_op_f32(round(1387f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-624f, -1000f, 1243f) * vec3<f32>(-922f, 229f, -2444f))))))));
    let var_1 = reverseBits(max(-reverseBits(vec4<i32>(8743i, u_input.c, -2147483647i, 16254i)) << (~countOneBits(u_input.b) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(-49449i, u_input.e.x, 1i, arg_1.x)), select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, -44126i, -31571i, -2147483647i), vec4<i32>(arg_1.x, -31483i, u_input.c, 0i)), ~vec4<i32>(u_input.c, 0i, arg_1.x, u_input.c), vec4<bool>(arg_0.x, arg_0.x, true, true)))));
    let var_2 = ~u_input.b;
    global0 = array<vec4<f32>, 3>();
    let var_3 = vec4<bool>(all(vec3<bool>(false, ~u_input.b.x == 4294967295u, true)), all(!vec4<bool>(false, true, var_0.a.x <= -151f, arg_0.x)), false, abs(~arg_1.x) < arg_1.x);
    return func_3(!var_3, func_3(var_3, func_3(!vec4<bool>(arg_0.x, var_3.x, arg_0.x, false), var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    let var_0 = func_1(vec3<bool>(!(!any(vec4<bool>(true, true, true, true))), true, false), u_input.d.yz);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -455f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-533f, _wgslsmith_f_op_f32(f32(-1f) * -1099f))))), var_0.a.x));
    var var_2 = _wgslsmith_mod_vec3_i32(-((vec3<i32>(1i, 9870i, u_input.c) & (vec3<i32>(-1i, -1i, u_input.c) << (u_input.b.ywx % vec3<u32>(32u)))) << (vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u), u_input.b), 72501u) % vec3<u32>(32u))), -_wgslsmith_mod_vec3_i32(abs(u_input.d), u_input.d));
    var_2 = ~(-vec3<i32>(-(~(-1i)), ~(-u_input.d.x), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(214f)));
}

