struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -32674i);

var<private> global1: array<vec4<bool>, 8>;

var<private> global2: u32 = 16974u;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<bool>) -> vec2<bool> {
    global2 = 55763u >> (firstTrailingBit(u_input.b.x) % 32u);
    global0 = vec2<i32>(2147483647i, global0.x);
    global0 = vec2<i32>(1i, ~global0.x) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(arg_2.x), ~arg_2.x), select(vec2<u32>(1u, 1u), ~u_input.b.yy, vec2<bool>(arg_3.x, true))), max(~(u_input.a >> (20723u % 32u)), u_input.d)) % vec2<u32>(32u));
    global1 = array<vec4<bool>, 8>();
    var var_0 = 1u;
    return !(!(!select(arg_3, !arg_3, false)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_2(vec2<bool>(any(!func_3(arg_2, -974f, vec2<u32>(53520u, u_input.b.x), vec2<bool>(arg_1, arg_2.x))), !arg_1), arg_0);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1006f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 338f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-274f * -1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-625f)), _wgslsmith_f_op_f32(-555f + -1645f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(732f, -802f)))), -691f, -477f);
    let var_2 = 15566u;
    let var_3 = true;
    global2 = _wgslsmith_sub_u32(~(~_wgslsmith_mod_u32(1u, ~var_2)), _wgslsmith_mod_u32(var_2, ~36771u));
    return !var_0.a;
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<i32>(~(~global0.x), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-268i, global0.x, global0.x, global0.x), ~vec4<i32>(global0.x, global0.x, global0.x, 6268i)), -vec4<i32>(-16299i, -7217i, 5132i, 20749i)), firstTrailingBit(global0.x), global0.x) & ~firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 1i, -22238i, global0.x) << (u_input.b % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 2174i, 23822i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x))));
    let var_1 = vec2<bool>(true, all(vec3<bool>(any(func_2(Struct_1(-1i), false, vec3<bool>(true, true, false))), any(vec4<bool>(false, true, false, true)), !any(vec2<bool>(true, true)))));
    var var_2 = vec2<bool>(u_input.d <= ~_wgslsmith_mult_u32(1u, ~u_input.c), var_1.x);
    let var_3 = var_1.x;
    var var_4 = Struct_2(vec2<bool>(!var_1.x, true), Struct_1(min(-22993i, abs(var_0.x)) | ~abs(var_0.x)));
    return Struct_3(var_4.b, -52474i, -7148i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1450f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(810f - -252f) + -427f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, _wgslsmith_f_op_f32(-268f + arg_2)))))), i32(-1i) * -10322i, 29600i, func_1(), 52883u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -1086f));
    let var_2 = var_0.a.x;
    var var_3 = vec4<bool>(!any(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~var_0.e, 65973u), 8u)]), arg_1 != arg_2, !var_0.d.d != false, var_0.d.d);
    let var_4 = vec2<i32>(~(-var_0.d.c), 1i | _wgslsmith_mult_i32(firstTrailingBit(global0.x), var_0.c));
    return var_3.wy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 174f, -201f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1276f, -1249f, 1000f), vec3<f32>(-775f, -464f, 293f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f * -302f)), 1f, func_1()), Struct_1(_wgslsmith_div_i32(-max(global0.x, global0.x), global0.x)));
    global2 = 1u;
    global1 = array<vec4<bool>, 8>();
    let var_1 = !(!select(vec4<bool>(var_0.a.x, false, var_0.a.x, true), select(global1[_wgslsmith_index_u32(1u, 8u)], vec4<bool>(false, false, var_0.a.x, true), func_3(vec3<bool>(false, var_0.a.x, var_0.a.x), -298f, vec2<u32>(1u, 0u), var_0.a).x), true));
    let x = u_input.a;
    s_output = StorageBuffer(-(~reverseBits(-vec4<i32>(var_0.b.a, var_0.b.a, 2147483647i, global0.x))), _wgslsmith_f_op_f32(-1381f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-500f, 108f))))));
}

