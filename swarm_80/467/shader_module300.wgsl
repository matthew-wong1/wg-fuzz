struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

var<private> global1: array<vec2<i32>, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x)), arg_1.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) * -1355f), 266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))), Struct_1(vec2<u32>(15168u, ~37917u), arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)))), Struct_1(vec2<u32>(~(~29211u), ~0u), 0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(arg_1.x, 524f, -2457f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), -184f))), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1145f), _wgslsmith_f_op_f32(exp2(arg_1.x)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - arg_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, 2313f, arg_1.x, 1342f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, arg_1.x, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, 631f, -1148f, arg_1.x), vec4<f32>(arg_1.x, -1034f, 912f, 808f))))), Struct_1(max(vec2<u32>(0u, 4294967295u), ~arg_0.zz), 19242u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.x, -213f)) + vec3<f32>(arg_1.x, arg_1.x, 1053f)))), vec2<i32>(firstLeadingBit(1i), select(0i, max(-4968i, min(u_input.a.x, u_input.a.x)), all(vec2<bool>(true, true)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(1747f * -1175f)))), _wgslsmith_f_op_f32(min(-445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-990f, 279f) * _wgslsmith_f_op_f32(floor(arg_1.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-347f, -567f, var_0.c.a, arg_1.x) + vec4<f32>(arg_1.x, var_0.b.c.x, -1175f, var_0.b.c.x)) * var_0.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(var_0.a.c)), var_0.a.c)))), Struct_1(~u_input.b.ww, reverseBits(_wgslsmith_dot_vec4_u32(min(u_input.b, vec4<u32>(1u, 4294967295u, arg_0.x, u_input.b.x)), abs(vec4<u32>(arg_0.x, 35527u, u_input.b.x, arg_0.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.c.x, var_0.b.c.x, arg_1.x), vec3<f32>(arg_1.x, -1000f, var_0.c.b), vec3<bool>(false, false, true)))))))));
    var var_2 = 1490f;
    let var_3 = var_0;
    global1 = array<vec2<i32>, 22>();
    return !select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_5) -> bool {
    global1 = array<vec2<i32>, 22>();
    global1 = array<vec2<i32>, 22>();
    global0 = array<Struct_5, 32>();
    var var_0 = !any(func_3(u_input.b.ywx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(708f, -935f, -407f)))));
    var var_1 = arg_0.b;
    return var_1.x;
}

fn func_1(arg_0: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_3((1i & max(_wgslsmith_clamp_i32(1i, arg_0.x, 8095i), _wgslsmith_div_i32(-2147483647i, u_input.a.x))) << (u_input.b.x % 32u), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, false)), func_2(Struct_3(arg_0.x, vec2<bool>(false, true), true), Struct_3(arg_0.x, vec2<bool>(false, false), true), global0[_wgslsmith_index_u32(34215u, 32u)])))), !all(vec2<bool>(false, true)));
    var_0 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-27157i, min(-1i, min(1i, 21413i)), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], arg_0 >> (u_input.b.yw % vec2<u32>(32u)))), -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-9635i, 54851i, 50934i), u_input.a.zyx), vec3<i32>(var_0.a, u_input.a.x, 2147483647i) & vec3<i32>(var_0.a, arg_0.x, var_0.a))), !(!(!(!var_0.b))), true);
    var_0 = Struct_3(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x << (4294967295u % 32u), var_0.a), _wgslsmith_mod_i32(i32(-1i) * -21657i, -42848i)), arg_0.x), var_0.b, var_0.c & true);
    let var_1 = u_input.b.xw;
    let var_2 = -2165f;
    return select(vec4<i32>(_wgslsmith_div_i32(64701i, 57662i), ~0i, 1i, reverseBits(abs(-1i))), _wgslsmith_add_vec4_i32(min(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), vec4<i32>(6431i, 1972i, -2291i, 29927i) << (abs(u_input.b) % vec4<u32>(32u))), u_input.a), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1(-reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)) << (vec2<u32>(~u_input.b.x, ~u_input.b.x) % vec2<u32>(32u)));
    global0 = array<Struct_5, 32>();
    global1 = array<vec2<i32>, 22>();
    let var_1 = -vec2<i32>(_wgslsmith_clamp_i32(~var_0.x, var_0.x, func_1(vec2<i32>(u_input.a.x, 15423i) ^ var_0.wx).x), var_0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(-731f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1280f))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2935f, 142f, -248f, 416f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-292f, -970f, 955f, 1070f), vec4<f32>(1868f, -883f, -228f, -1237f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-302f, _wgslsmith_f_op_f32(min(114f, 507f)), _wgslsmith_f_op_f32(select(2283f, -636f, true)), _wgslsmith_f_op_f32(min(-1241f, 960f)))))), Struct_1(abs(_wgslsmith_sub_vec2_u32(u_input.b.xy, vec2<u32>(1u, u_input.b.x) | vec2<u32>(u_input.b.x, 81748u))), abs(_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1068f, 2364f, 989f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-168f, 234f, -474f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -620f, var_2.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_2.d.c - vec3<f32>(-1407f, -471f, 635f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d.c - var_2.c.zyz))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)))), -select(var_0.x, var_1.x, !(var_2.a <= -1160f)), _wgslsmith_f_op_f32(-var_2.d.c.x), var_2.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1128f)))));
}

