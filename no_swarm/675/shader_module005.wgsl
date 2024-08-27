struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: bool = true;

var<private> global3: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false));

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> u32 {
    let var_0 = arg_1.zz;
    let var_1 = !(!(!(1000f < arg_2.x) & true));
    var var_2 = Struct_1(~(~1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, min(42567u, 78280u), 4294967295u, ~1u), vec4<u32>(4294967295u, ~30605u, _wgslsmith_clamp_u32(abs(38303u), 4294967295u, 19573u), firstTrailingBit(0u))), i32(-1i) * -60128i);
    global2 = false;
    global0 = array<Struct_1, 11>();
    return _wgslsmith_clamp_u32(abs(var_2.b.x), var_2.a, 1u);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec4<bool>(arg_0.x || !any(global3[_wgslsmith_index_u32(arg_2.a, 9u)]), arg_2.c >= _wgslsmith_dot_vec2_i32(-(~arg_1.zx), ~arg_1.yx), !global1.x, false);
    var var_1 = global0[_wgslsmith_index_u32(~(~arg_2.b.x & (reverseBits(arg_2.b.x) ^ abs(0u))), 11u)];
    var var_2 = min(~arg_2.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.x, 36015u, arg_2.a, var_1.b.x), vec4<u32>(0u, arg_2.a, arg_2.a, var_1.a)) << (var_1.b % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.x, arg_2.b.x, 4294967295u, var_1.b.x), vec4<u32>(arg_2.b.x, 27480u, 0u, 24896u) >> (arg_2.b % vec4<u32>(32u))), ~vec4<u32>(44582u, 16637u, arg_2.b.x, 58607u), select(vec4<u32>(var_1.b.x, 62520u, 9725u, 1u), ~vec4<u32>(0u, 49608u, 43775u, 0u), var_0)), countOneBits(var_1.b)));
    let var_3 = vec4<bool>(false, global1.x, true, true);
    var var_4 = var_2.zxz;
    return ~_wgslsmith_mod_u32(var_4.x, var_4.x);
}

fn func_2(arg_0: f32, arg_1: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, -951f, arg_0))))))), vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1973f)))), _wgslsmith_f_op_f32(arg_0 - arg_0))));
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, min(u_input.b, u_input.b), ~(~(-1i)), max(2147483647i, u_input.a.x) >> (1u % 32u)), vec4<i32>(u_input.a.x, 1i, (u_input.b >> (arg_1 % 32u)) | firstLeadingBit(0i), u_input.a.x)), -(vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x << (0u % 32u), u_input.b, -1i & u_input.b) & vec4<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), -1357i, -9989i, _wgslsmith_mod_i32(u_input.a.x, -1i))));
    let var_2 = true;
    let var_3 = global4[_wgslsmith_index_u32(abs(arg_1) << (func_4(global1.xy, var_1.zyz, Struct_1(~func_3(vec3<i32>(11685i, 20587i, 0i), global3[_wgslsmith_index_u32(arg_1, 9u)], var_0.xx), vec4<u32>(arg_1, 49799u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 103305u), vec2<u32>(11261u, 0u)), 1u ^ arg_1), 32440i)) % 32u), 3u)];
    let var_4 = var_1.yxx & ~_wgslsmith_div_vec3_i32(vec3<i32>(abs(0i), max(var_3.c, var_3.c), var_1.x), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2147483647i), var_1.xwx)));
    return ~(~abs(var_3.b));
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = vec4<u32>(1u, 1u, 1u, 1u | firstTrailingBit(10906u));
    let var_1 = Struct_1(1u & ~(~var_0.x), _wgslsmith_clamp_vec4_u32(func_2(-1793f, min(~12048u, 1u)), abs(abs(vec4<u32>(0u, var_0.x, 4027u, var_0.x)) ^ max(vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), var_0)), var_0), -u_input.b);
    let var_2 = vec3<f32>(-1168f, -216f, -313f);
    let var_3 = u_input.a.yy;
    global2 = any(!select(select(select(vec3<bool>(arg_0, global1.x, global1.x), vec3<bool>(false, true, global1.x), true), vec3<bool>(arg_0, false, false), true), !select(vec3<bool>(global1.x, false, arg_0), vec3<bool>(true, true, global1.x), false), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, true), var_2.x < var_2.x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 9>();
    var var_0 = vec4<i32>(abs(-26869i) | u_input.a.x, 1i, _wgslsmith_sub_i32(~u_input.b, _wgslsmith_clamp_i32(~u_input.a.x, 0i, -u_input.a.x)) & (func_1(select(global1.x, true, false), 33240i << (1u % 32u)) & -2147483647i), u_input.a.x);
    let var_1 = _wgslsmith_mult_u32(1u, firstTrailingBit(12603u));
    global1 = !(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), !vec3<bool>(true, global1.x, global1.x), any(global3[_wgslsmith_index_u32(40728u, 9u)]))));
    global4 = array<Struct_1, 3>();
    var var_2 = global4[_wgslsmith_index_u32(~min(~var_1, _wgslsmith_div_u32(~select(1u, 67450u, true), ~7560u)), 3u)];
    global3 = array<vec4<bool>, 9>();
    var var_3 = firstTrailingBit(firstLeadingBit(u_input.a.x));
    let var_4 = any(global3[_wgslsmith_index_u32(1u, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xyw << (~var_2.b.xxy % vec3<u32>(32u)), -171f, 305f);
}

