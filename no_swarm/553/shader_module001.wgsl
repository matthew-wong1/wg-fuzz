struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: Struct_4 = Struct_4(Struct_1(vec3<u32>(13430u, 4294967295u, 4294967295u), 133904u, -41426i, -1000f, vec2<bool>(true, false)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global3.a.d), global0.d, -1976f, 719f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1496f) - _wgslsmith_f_op_f32(select(global1.d, global3.a.d, true))), global3.a.e.x))), true, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, -559f, 1501f, 159f)))));
    var var_1 = !select(!global0.e, !global1.e, vec2<bool>(!(!global0.e.x), true));
    global1 = global3.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), -250f)));
    global1 = Struct_1(_wgslsmith_add_vec3_u32(global3.a.a, abs(_wgslsmith_div_vec3_u32(u_input.e.yxy, ~vec3<u32>(global3.a.a.x, global3.a.a.x, global3.a.b)))), ~4294967295u, -71474i, 270f, select(!select(!global0.e, vec2<bool>(false, global1.e.x), any(vec4<bool>(global0.e.x, true, var_1.x, global3.a.e.x))), !select(global1.e, select(vec2<bool>(true, true), vec2<bool>(var_1.x, false), true), global1.e), var_0.c));
    return _wgslsmith_f_op_f32(-var_2.x) > 1407f;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = vec4<i32>(global0.c, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2, 11256i, 2147483647i), -vec3<i32>(arg_2, 39584i, 0i)), -1i, -25131i), u_input.a, arg_2) | vec4<i32>(min(0i << ((global0.b & 1u) % 32u), global1.c), _wgslsmith_dot_vec4_i32(max(vec4<i32>(33223i, arg_2, global0.c, global3.a.c), firstTrailingBit(vec4<i32>(0i, u_input.d, -1i, 24481i))), -(vec4<i32>(global0.c, u_input.a, global1.c, 1i) & vec4<i32>(global3.a.c, -32253i, -1i, u_input.b))), global0.c, 27135i);
    let var_1 = vec4<f32>(605f, 1f, global3.a.d, _wgslsmith_div_f32(arg_1.x, -321f));
    var var_2 = global3.a;
    global1 = Struct_1(abs(~vec3<u32>(var_2.a.x, 1u, ~global1.b)), ~4294967295u, ~global0.c, arg_1.x, global0.e);
    let var_3 = global3.a;
    return Struct_1(vec3<u32>(_wgslsmith_sub_u32(countOneBits(global3.a.a.x), select(54651u, u_input.e.x, func_3())), select(4294967295u, global0.b, false), 16971u), global0.b, _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_mult_i32(global3.a.c, -24055i)), _wgslsmith_add_i32(-38366i, -20808i)) | global0.c, 911f, var_2.e);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    global3 = Struct_4(global3.a);
    global3 = Struct_4(arg_2);
    let var_0 = ~(-20799i);
    let var_1 = func_2(_wgslsmith_div_f32(global0.d, arg_1.x), _wgslsmith_f_op_vec3_f32(-arg_1), global3.a.c);
    global0 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(func_2(var_1.d, vec3<f32>(-2311f, global3.a.d, global0.d), var_1.c).a.x, var_1.b, func_2(457f, vec3<f32>(654f, -199f, global1.d), global1.c).a.x), ~(~global1.a))), arg_2.b, 2147483647i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * -2595f)))))), vec2<bool>(1u > global1.b, select(false, global0.e.x, false)));
    return global1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = all(vec3<bool>(func_1(false | all(global0.e), vec3<f32>(_wgslsmith_div_f32(global3.a.d, 718f), _wgslsmith_f_op_f32(590f + -2417f), _wgslsmith_f_op_f32(global3.a.d + global0.d)), global3.a), global0.e.x, global0.b == ~(~72723u)));
    var var_0 = u_input.e.zy;
    let var_1 = Struct_4(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(4070u, global1.b, 4294967295u) >> (~vec3<u32>(global3.a.a.x, 0u, 1u) % vec3<u32>(32u)), max(global3.a.a & global1.a, u_input.e.wxw)), ~(~_wgslsmith_dot_vec3_u32(global0.a, u_input.e.yxw)), -2147483647i, -1000f, func_2(_wgslsmith_f_op_f32(ceil(550f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global3.a.d, global3.a.d)))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.c, u_input.d) | vec3<i32>(u_input.b, global1.c, global1.c), select(vec3<i32>(0i, 1i, -23603i), vec3<i32>(-2147483647i, global1.c, 14328i), vec3<bool>(global0.e.x, false, global0.e.x)))).e));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.d))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, 470f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-675f - _wgslsmith_f_op_f32(sign(global3.a.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(583f)), _wgslsmith_div_f32(global3.a.d, global3.a.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, 1000f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1010f, 1345f)))))));
    var_0 = global0.a.xz;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.d, global3.a.d, global1.d, var_1.a.d), vec4<f32>(var_2.x, global3.a.d, var_1.a.d, 916f)) + vec4<f32>(global0.d, global1.d, global3.a.d, var_2.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.d, -1391f, -895f, var_1.a.d), vec4<f32>(313f, -1354f, var_2.x, 334f))))))));
    global1 = func_2(_wgslsmith_f_op_f32(643f + _wgslsmith_f_op_f32(exp2(var_1.a.d))), _wgslsmith_f_op_vec3_f32(-var_3.a.yyy), ~(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.c, 2147483647i, global0.c, -10211i), vec4<i32>(global0.c, global0.c, var_1.a.c, -2147483647i)) << (_wgslsmith_div_vec4_u32(vec4<u32>(2526u, 1u, 25382u, 0u), vec4<u32>(4294967295u, var_1.a.a.x, 1u, 4294967295u)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(~global3.a.b, 1u, _wgslsmith_div_u32(global3.a.b, 4499u), 1u), ~(~u_input.e)) % vec4<u32>(32u)), _wgslsmith_sub_u32(1u, 0u), ~func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1238f) * global3.a.d), var_3.a.yxz, _wgslsmith_sub_i32(global3.a.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-6008i, global0.c, u_input.a), vec3<i32>(var_1.a.c, u_input.a, global3.a.c)))).c);
}

