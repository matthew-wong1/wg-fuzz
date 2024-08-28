struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = true;
    var var_1 = u_input.b.x;
    global0 = array<Struct_1, 23>();
    var var_2 = 575f;
    var var_3 = reverseBits(u_input.b);
    return select(-(~vec4<i32>(0i, -14779i, 8783i, -55544i)), select(_wgslsmith_sub_vec4_i32(u_input.b | u_input.b, vec4<i32>(0i, 2147483647i, u_input.b.x, 3385i)), ~u_input.b, !var_0), false) | (vec4<i32>(reverseBits(~1i), var_3.x, u_input.b.x, 23730i) << (vec4<u32>(~select(37698u, 49211u, var_0), reverseBits(57879u), ~(arg_0 | arg_0), 1u) % vec4<u32>(32u)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = select(vec3<bool>(all(vec3<bool>(true, all(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, true)))), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) + _wgslsmith_f_op_f32(round(-1000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-170f))));
    let var_2 = ~arg_0.x;
    let var_3 = Struct_1(0u, false, -1i);
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1035f, -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(180f, 1000f)) + vec2<f32>(1058f, -829f)), !(27752u != arg_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1638f, 467f) - vec2<f32>(-1000f, 539f)) - vec2<f32>(1000f, -409f))))));
    return vec3<bool>(!any(var_0.xx), select(_wgslsmith_mod_u32(~var_3.a, abs(var_3.a)) <= _wgslsmith_dot_vec4_u32(~arg_0, firstTrailingBit(vec4<u32>(u_input.a.x, 64093u, arg_0.x, arg_0.x))), all(vec4<bool>(false, var_0.x, any(vec2<bool>(var_0.x, var_0.x)), var_3.b)), !(!any(vec3<bool>(false, false, var_3.b)))), any(!vec2<bool>(var_0.x, all(vec2<bool>(true, var_0.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-866f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f * 1037f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(813f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -494f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1430f + 677f) * -826f))))));
    let var_2 = func_2(arg_0.a);
    let var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(((u_input.a >> (u_input.a % vec3<u32>(32u))) ^ u_input.a) & u_input.a, u_input.a), select(~select(~u_input.a, max(vec3<u32>(53163u, arg_1.a, 29382u), vec3<u32>(u_input.a.x, 57457u, arg_0.a)), func_3(vec4<u32>(0u, 31131u, arg_0.a, arg_0.a))), ~min(u_input.a, ~vec3<u32>(4294967295u, arg_1.a, 1939u)), !vec3<bool>(true, !arg_0.b, true & arg_0.b)));
    let var_4 = arg_0;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    let var_0 = !vec4<bool>(true, func_1(global0[_wgslsmith_index_u32(~countOneBits(127801u), 23u)], global0[_wgslsmith_index_u32(min(~17445u, 1u), 23u)], vec2<i32>(0i, u_input.b.x)), true, true);
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_1 = Struct_1(~1u, select(true, !var_0.x, func_1(global0[_wgslsmith_index_u32(18412u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.b.ww >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))) && !(var_0.x | any(var_0)), _wgslsmith_add_i32(max(1490i, -u_input.b.x), func_2(u_input.a.x).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f) + _wgslsmith_f_op_f32(min(318f, 2321f))), _wgslsmith_div_f32(-1841f, 1f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -717f)))), 1223f, vec3<i32>(-1i) * -select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, -2147483647i, var_1.c)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, 71852i), u_input.b.xyy), false), -_wgslsmith_div_i32(~firstTrailingBit(u_input.b.x), ~u_input.b.x));
}

