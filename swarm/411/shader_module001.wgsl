struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(2909u, 24117u, 4294967295u, 106248u), vec4<u32>(1u, 4294967295u, 4294967295u, 49472u), vec4<u32>(31288u, 98861u, 0u, 11956u), vec4<u32>(60314u, 1u, 0u, 0u), vec4<u32>(4294967295u, 34058u, 121279u, 26900u), vec4<u32>(1u, 1u, 24474u, 53403u), vec4<u32>(84237u, 13874u, 4294967295u, 7099u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = ~0u;
    var var_1 = arg_3;
    global0 = array<vec4<u32>, 7>();
    var var_2 = _wgslsmith_sub_u32(0u, var_0);
    global0 = array<vec4<u32>, 7>();
    return select(vec3<bool>(all(!vec4<bool>(var_1.d, false, true, false)), true, true), select(vec3<bool>(arg_3.d, var_1.d, arg_0.a.d), !vec3<bool>(arg_3.d, true, 1524f <= var_1.b.x), true), !(!arg_0.a.d));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    let var_0 = Struct_2(Struct_1(~(~select(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec4<u32>(52535u, 1u, 4294967295u, 0u), false)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(exp2(arg_2))))), ~select(~vec3<u32>(u_input.a, u_input.a, u_input.a), min(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(44873u, u_input.a, u_input.a)), func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec2<f32>(2285f, arg_1.x), vec3<u32>(1u, u_input.a, u_input.a), false, vec4<i32>(-1i, -16345i, u_input.b.x, 13937i))), arg_1.xy, 4294967295u, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec2<f32>(-636f, arg_2), vec3<u32>(4566u, u_input.a, 17215u), false, vec4<i32>(u_input.b.x, -27331i, u_input.b.x, -2147483647i)))), !func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 7u)], arg_1.zx, vec3<u32>(1u, 48986u, 4294967295u), true, vec4<i32>(-2087i, 1i, -12311i, -2147483647i))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, -187f), vec2<f32>(-1549f, arg_2))), 1u, Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<f32>(1450f, arg_1.x), vec3<u32>(71144u, u_input.a, 1u), false, vec4<i32>(38595i, u_input.b.x, -1i, 3472i))).x, vec4<i32>(14117i, 14821i, -15099i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)) ^ -vec4<i32>(50008i, u_input.b.x, -2357i, u_input.b.x)));
    let var_1 = var_0;
    let var_2 = var_0;
    let var_3 = var_1.a;
    global0 = array<vec4<u32>, 7>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -481f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(-1197f)))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = vec3<bool>(1u == ~(~(~u_input.a)), false, !(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 4294967295u), u_input.a) == ~1u));
    global0 = array<vec4<u32>, 7>();
    let var_1 = _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, u_input.a))), ~(vec2<u32>(75314u, u_input.a) | vec2<u32>(1u, u_input.a))), _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(u_input.a, 0u)), ~vec2<u32>(18200u, 7745u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(33609u, 29355u), firstLeadingBit(vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1809f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(func_2(vec4<f32>(1301f, -688f, 1486f, 1180f), vec3<f32>(1000f, 2265f, -1412f), -1166f)))), 1f, 898f)));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)) * 311f), _wgslsmith_f_op_f32(290f - -761f))));
    return Struct_2(Struct_1(global0[_wgslsmith_index_u32(select(u_input.a, ~u_input.a, any(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), 7u)], var_2.zw, firstTrailingBit(~(vec3<u32>(4294967295u, u_input.a, 1u) & vec3<u32>(4294967295u, 4294967295u, 25773u))), false, ~(-arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(24034i, 1i ^ (-u_input.b.x ^ u_input.b.x), u_input.b.x, u_input.b.x));
    var var_1 = func_1(vec4<i32>(~_wgslsmith_div_i32(-2147483647i, u_input.b.x) & -func_1(vec4<i32>(33330i, -1i, u_input.b.x, 0i)).a.e.x, max(~var_0.a.e.x, u_input.b.x), -2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-u_input.b.x, firstTrailingBit(-4391i)), abs(_wgslsmith_mult_i32(12194i, -1i))))).a;
    var var_2 = Struct_1(var_0.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_0.a.b.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.b - vec2<f32>(412f, -108f)))), var_0.a.c, true, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(select(-var_0.a.e, var_0.a.e, select(vec4<bool>(false, var_1.d, var_1.d, true), vec4<bool>(false, var_0.a.d, var_0.a.d, var_1.d), var_1.d)), var_1.e), var_1.e));
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    let var_3 = var_0;
    var_1 = var_3.a;
    var_2 = func_1(var_2.e).a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.e.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 131f, var_3.a.b.x) + vec3<f32>(var_3.a.b.x, var_3.a.b.x, var_0.a.b.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -557f, -1000f))))))));
}

