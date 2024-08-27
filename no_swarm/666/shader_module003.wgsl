struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(648f, 515f), vec2<f32>(-201f, 301f), vec2<f32>(-1887f, -1023f), vec2<f32>(510f, -1000f), vec2<f32>(859f, 313f), vec2<f32>(-1000f, -255f), vec2<f32>(1000f, 607f), vec2<f32>(-760f, 1283f), vec2<f32>(-158f, -254f), vec2<f32>(-1129f, 526f), vec2<f32>(-257f, -454f), vec2<f32>(771f, 472f), vec2<f32>(1000f, 1316f), vec2<f32>(-1738f, -1000f), vec2<f32>(770f, 1144f), vec2<f32>(602f, 327f), vec2<f32>(-791f, -432f));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(countOneBits(u_input.c), u_input.b.x, u_input.c, 1i);
    let var_1 = arg_0.a;
    return Struct_1(vec3<f32>(arg_1, -629f, arg_1));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    let var_0 = reverseBits(1i);
    var var_1 = Struct_4(any(!vec4<bool>(u_input.b.x != u_input.b.x, all(vec2<bool>(false, true)), any(vec2<bool>(false, false)), all(vec3<bool>(true, false, true)))), firstTrailingBit(-(u_input.b.x ^ var_0)) ^ min(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, var_0, 0i, -2147483647i), vec4<i32>(var_0, var_0, var_0, u_input.c), vec4<bool>(true, false, true, true)), vec4<i32>(-16651i, 0i, var_0, 2147483647i)), 1i));
    var var_2 = false;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.a.x)))), arg_1.a.x, false)), arg_1.a.x) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1098f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f - arg_1.a.x) * -701f)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(926f, _wgslsmith_f_op_f32(ceil(arg_1.a.x)), arg_1.a.x)))));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_2 {
    global0 = array<vec2<f32>, 17>();
    var var_0 = func_2(Struct_3(arg_0.yx, firstTrailingBit(select(~27610u, u_input.a, arg_1 | arg_1)), vec3<bool>(arg_1, true, any(arg_0))), func_2(Struct_3(arg_0.zy, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, u_input.a)) >> (firstLeadingBit(u_input.a) % 32u), arg_0), _wgslsmith_f_op_f32(abs(arg_2.x)), vec3<u32>(~(~4294967295u), abs(37132u), 30930u)).a.x, ~abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 54437u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 2394u, 68590u))));
    let var_1 = func_2(Struct_3(vec2<bool>(true, arg_1), u_input.a, vec3<bool>(arg_1, !func_3(vec2<u32>(1u, 0u), Struct_1(var_0.a)), !arg_1)), var_0.a.x, ~max(vec3<u32>(u_input.a, u_input.a, 3378u) ^ vec3<u32>(6238u, u_input.a, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    global0 = array<vec2<f32>, 17>();
    var var_2 = Struct_3(arg_0.xx, ~firstTrailingBit(u_input.a), vec3<bool>(!all(!vec3<bool>(false, true, arg_1)), !func_3(~vec2<u32>(u_input.a, 45334u), var_1), all(select(vec3<bool>(true, true, true), select(arg_0, vec3<bool>(arg_1, arg_0.x, true), arg_0), arg_0))));
    return Struct_2(vec2<u32>(1u, var_2.b), func_2(Struct_3(vec2<bool>(select(var_2.a.x, var_2.c.x, var_2.a.x), var_2.a.x || false), firstLeadingBit(u_input.a), vec3<bool>(all(arg_0), arg_1, any(vec4<bool>(var_2.c.x, arg_1, false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -282f), firstLeadingBit(vec3<u32>(~u_input.a, 23842u, var_2.b))), var_2.b, false);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global0 = array<vec2<f32>, 17>();
    var var_0 = func_4(vec3<bool>(func_3(~vec2<u32>(u_input.a, 1u), func_2(Struct_3(vec2<bool>(false, false), 64249u, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-484f * 666f), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 74219u, u_input.a), vec3<u32>(u_input.a, 12577u, 23904u), vec3<u32>(30021u, 0u, 14758u)))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), select(all(vec4<bool>(true, true, true, true)), !func_3(vec2<u32>(7707u, 1u), Struct_1(vec3<f32>(-1120f, -240f, 780f))), true)), all(!vec2<bool>(all(vec3<bool>(false, true, true)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(106f, 183f) + vec2<f32>(-325f, 768f)) - global0[_wgslsmith_index_u32(18814u, 17u)]))), u_input.b.zy);
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, 141f, var_0.b.a.x) + var_0.b.a)))))), ~var_0.c, true);
    var var_1 = Struct_4(any(vec4<bool>(var_0.d, false == any(vec3<bool>(var_0.d, var_0.d, true)), _wgslsmith_f_op_f32(min(var_0.b.a.x, 1696f)) <= _wgslsmith_f_op_f32(select(-395f, 1089f, var_0.d)), _wgslsmith_f_op_f32(-var_0.b.a.x) == var_0.b.a.x)), 0i);
    global0 = array<vec2<f32>, 17>();
    return StorageBuffer(var_0.b.a.x, _wgslsmith_add_vec4_i32(vec4<i32>(0i, 44794i, -2147483647i & var_1.b, reverseBits(-2147483647i)) >> (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_0.a.x, 44129u, u_input.a, 0u)), ~vec4<u32>(u_input.a, 4294967295u, 0u, var_0.a.x)) % vec4<u32>(32u)), vec4<i32>(arg_0, var_1.b, var_1.b, 71183i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1241f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1133f)), 1812f) + -138f)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_dot_vec3_i32(min(u_input.b, -u_input.b), firstTrailingBit(vec3<i32>(-13934i, u_input.c, u_input.b.x | 8187i))));
}

