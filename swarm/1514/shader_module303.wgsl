struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_4, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_5) -> bool {
    var var_0 = _wgslsmith_mult_i32(~20386i, reverseBits(~u_input.a.x));
    let var_1 = Struct_2(arg_3.a.a, _wgslsmith_f_op_f32(arg_1 + arg_1));
    global1 = u_input.b.zyy;
    global1 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(101353u, 47637u, 55751u, 18647u), _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(global1.x, u_input.c.x, 1u, u_input.c.x))), 64417u, _wgslsmith_clamp_u32(arg_0.x, 51628u, 0u)) | vec3<u32>(firstTrailingBit(global1.x) | u_input.b.x, _wgslsmith_clamp_u32(~arg_0.x, ~101099u, ~(u_input.b.x >> (global1.x % 32u))), 4294967295u);
    var var_2 = Struct_1(true, vec2<f32>(arg_3.a.a.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(436f, arg_2.a.a.c))))), arg_1, 1667f);
    return !arg_3.a.a.a;
}

fn func_2() -> u32 {
    var var_0 = Struct_3(true, !vec4<bool>(any(vec4<bool>(true, true, true, true)), func_3(global1.xz, 1333f, Struct_4(Struct_2(Struct_1(false, vec2<f32>(321f, -774f), -160f, 2776f), 279f), Struct_2(Struct_1(true, vec2<f32>(-302f, -470f), 272f, 1137f), -433f), Struct_3(true, vec4<bool>(false, true, false, true), Struct_2(Struct_1(false, vec2<f32>(2199f, 1000f), 1366f, -989f), -1545f), Struct_2(Struct_1(true, vec2<f32>(-204f, 1000f), -1109f, 729f), -1268f), vec4<f32>(490f, 157f, -255f, 558f)), vec4<f32>(-1076f, 424f, -516f, -1484f)), Struct_5(Struct_2(Struct_1(false, vec2<f32>(1000f, 1200f), 2778f, -621f), 491f), u_input.a.zx)), all(vec4<bool>(true, false, false, false)), !any(vec3<bool>(true, false, false))), Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, 1545f))), 1766f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2641f, 2836f), -144f))), _wgslsmith_f_op_f32(637f - 1f)), Struct_2(Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1358f, -816f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(987f, -689f), vec2<f32>(333f, -1344f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-1510f + _wgslsmith_div_f32(455f, -3263f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2000f)) + _wgslsmith_f_op_f32(step(1147f, -1665f)))))), vec4<f32>(-279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-781f, 597f) - -437f) * _wgslsmith_f_op_f32(select(2312f, _wgslsmith_f_op_f32(step(-1354f, 2147f)), all(vec3<bool>(true, false, true))))), _wgslsmith_div_f32(-507f, _wgslsmith_f_op_f32(1f + -602f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(179f, 3145f)), _wgslsmith_f_op_f32(ceil(1226f))), _wgslsmith_f_op_f32(458f - _wgslsmith_f_op_f32(ceil(-266f))))));
    var var_1 = ~firstTrailingBit(_wgslsmith_div_i32(-u_input.a.x, 80172i));
    let var_2 = vec3<u32>(~global1.x, ~firstLeadingBit(~u_input.c.x), ~(global1.x & ~min(u_input.c.x, u_input.c.x)));
    let var_3 = _wgslsmith_f_op_f32(-var_0.c.a.b.x);
    var_1 = select(12386i, min(u_input.a.x, i32(-1i) * -2147483647i), !(!var_0.a) & var_0.d.a.a);
    return _wgslsmith_sub_u32(4294967295u, 0u);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = !vec2<bool>(arg_1, arg_1);
    global0 = array<vec3<i32>, 27>();
    var var_1 = vec3<u32>(u_input.c.x, ~0u, ~(~4294967295u));
    global1 = vec3<u32>(abs(reverseBits(var_1.x)), func_2(), 24374u);
    var var_2 = select(vec3<bool>(func_3(abs(_wgslsmith_div_vec2_u32(u_input.b.yy, vec2<u32>(global1.x, u_input.c.x))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-843f, 2722f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global1.x, 4294967295u, 1805u)), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 0u, 47408u))), 23u)], Struct_5(Struct_2(arg_3.a.a, arg_3.a.a.b.x), arg_3.b)), true, true), select(vec3<bool>(func_3(_wgslsmith_add_vec2_u32(global1.yz, var_1.zx), _wgslsmith_f_op_f32(abs(1314f)), Struct_4(Struct_2(Struct_1(false, vec2<f32>(arg_3.a.b, arg_3.a.b), 1000f, -492f), -1000f), Struct_2(arg_3.a.a, 166f), Struct_3(var_0.x, vec4<bool>(true, arg_1, false, var_0.x), Struct_2(arg_3.a.a, -591f), Struct_2(Struct_1(var_0.x, arg_3.a.a.b, -1000f, 499f), arg_3.a.b), vec4<f32>(arg_3.a.a.c, arg_3.a.b, -1937f, arg_3.a.a.d)), vec4<f32>(2642f, 461f, arg_3.a.a.b.x, arg_3.a.a.d)), Struct_5(arg_3.a, u_input.a.xw)), true, arg_1), select(!vec3<bool>(arg_2.x, false, arg_2.x), !select(vec3<bool>(arg_2.x, true, true), vec3<bool>(true, arg_1, arg_2.x), vec3<bool>(false, arg_1, true)), vec3<bool>(true, true, arg_2.x)), false), true);
    return arg_3.a.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = arg_2.a.a;
    global2 = array<Struct_4, 23>();
    global0 = array<vec3<i32>, 27>();
    var var_1 = Struct_3(false, select(!select(select(vec4<bool>(true, var_0.a, true, true), vec4<bool>(true, true, true, var_0.a), vec4<bool>(true, true, true, false)), !vec4<bool>(arg_2.a.a.a, arg_2.a.a.a, var_0.a, false), false), vec4<bool>(true, !(var_0.a | arg_2.a.a.a), -u_input.a.x > (i32(-1i) * -2147483647i), all(vec3<bool>(true, var_0.a, var_0.a))), var_0.a), arg_2.a, Struct_2(func_1(-arg_1.x, all(vec3<bool>(var_0.a, true, arg_2.a.a.a)), vec2<bool>(true, false), Struct_5(Struct_2(Struct_1(true, var_0.b, arg_2.a.a.d, arg_2.a.b), arg_2.a.a.c), min(u_input.a.wy, arg_1.xz))), -1000f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(ceil(var_0.b.x)))), -1115f, _wgslsmith_f_op_f32(-arg_2.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 198f, arg_2.a.a.a)))));
    global0 = array<vec3<i32>, 27>();
    return arg_2.a.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<vec3<i32>, 27>();
    let var_0 = -vec4<i32>(min(_wgslsmith_clamp_i32(-1i, u_input.a.x, -1i), u_input.a.x) | _wgslsmith_add_i32(-90728i, u_input.a.x), 0i & select(~u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), select(arg_0.a, false, false)), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.ww), -490i)), u_input.a.x);
    global1 = vec3<u32>(arg_1.x, ~global1.x, arg_1.x);
    var var_1 = var_0;
    var var_2 = Struct_4(Struct_2(Struct_1(true, arg_0.b, arg_0.b.x, _wgslsmith_f_op_f32(-230f + 174f)), arg_0.b.x), Struct_2(func_1(i32(-1i) * -var_1.x, all(!vec4<bool>(arg_0.a, true, arg_0.a, false)), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, false), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a), arg_0.a)), Struct_5(Struct_2(arg_0, arg_0.b.x), firstTrailingBit(vec2<i32>(17544i, -2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(617f)))))), Struct_3(true, !vec4<bool>(!arg_0.a, arg_0.a, 18895u < arg_1.x, func_4(arg_1, vec3<i32>(2147483647i, 0i, var_0.x), Struct_5(Struct_2(Struct_1(arg_0.a, vec2<f32>(arg_0.d, -1287f), arg_0.d, arg_0.b.x), 1263f), vec2<i32>(-48307i, -2147483647i))).a), Struct_2(Struct_1(arg_0.d <= -733f, _wgslsmith_f_op_vec2_f32(arg_0.b * arg_0.b), func_1(var_1.x, arg_0.a, vec2<bool>(false, true), Struct_5(Struct_2(arg_0, arg_0.d), vec2<i32>(var_0.x, -2147483647i))).c, 1742f), arg_0.c), Struct_2(func_1(var_1.x & 15321i, arg_0.b.x != -282f, !vec2<bool>(arg_0.a, arg_0.a), Struct_5(Struct_2(Struct_1(false, vec2<f32>(-2433f, arg_0.d), arg_0.c, arg_0.c), 796f), var_1.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-793f, arg_0.b.x, arg_0.b.x, arg_0.d)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -962f, 922f, arg_0.c) + vec4<f32>(1151f, -1112f, -1402f, 2072f)) * vec4<f32>(-888f, arg_0.d, 956f, arg_0.d)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-142f, arg_0.b.x, arg_0.c, 226f), vec4<f32>(arg_0.b.x, -1060f, 1003f, -1000f), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_0.b.x, -1733f, -1499f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 258f, arg_0.c, -428f) - vec4<f32>(1000f, arg_0.c, arg_0.d, -1136f)))))));
    return Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_2.c.e.x, arg_0.c, false)), _wgslsmith_f_op_f32(min(-1529f, -585f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, -709f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, var_2.d.x) - var_2.a.a.b))) + vec2<f32>(var_2.d.x, var_2.d.x)), arg_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(4294967295u, u_input.c.x)), abs(-(vec3<i32>(2147483647i, 0i, -8772i) << (u_input.b.xzw % vec3<u32>(32u)))), Struct_5(Struct_2(func_1(u_input.a.x, true, vec2<bool>(true, false), Struct_5(Struct_2(Struct_1(false, vec2<f32>(1363f, -1020f), -486f, 925f), 1493f), u_input.a.xz)), -216f), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.a.wx) & vec2<i32>(u_input.a.x, 2147483647i))), global1.xx | vec2<u32>(countOneBits(global1.x), abs(u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) + _wgslsmith_f_op_f32(var_0.b.x + var_0.d)))));
    var var_2 = _wgslsmith_mod_i32(max(_wgslsmith_add_i32(max(u_input.a.x, u_input.a.x), reverseBits(2147483647i)), u_input.a.x), 39414i & _wgslsmith_sub_i32(reverseBits(u_input.a.x), i32(-1i) * -4998i)) < (i32(-1i) * -4189i);
    global0 = array<vec3<i32>, 27>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-434f, _wgslsmith_f_op_f32(-2609f - _wgslsmith_f_op_f32(ceil(337f))), var_1, var_0.d) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, 213f, var_0.d, var_1), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-976f, var_0.b.x, -293f, -182f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-637f, var_0.b.x, var_0.b.x, -209f) - vec4<f32>(-994f, var_0.c, var_0.d, 733f))), vec4<bool>(false == var_0.a, true, global1.x != 1u, var_0.a)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_3.x)), _wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -3144f), all(vec4<bool>(var_0.a, var_0.a, true, var_0.a)))), _wgslsmith_div_f32(var_3.x, var_1), 188f) - var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(57980u, global1.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(func_5(Struct_1(var_0.a, vec2<f32>(var_4.x, 1564f), var_0.c, 263f), u_input.c.xx).c, -729f), _wgslsmith_f_op_vec2_f32(exp2(var_4.xy)), var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_3.x))), vec2<bool>(func_5(var_0, u_input.b.xz).a, all(!vec2<bool>(var_0.a, var_0.a))))));
}

