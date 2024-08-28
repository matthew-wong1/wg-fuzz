struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 7>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true), vec2<i32>(2147483647i, -1i), vec2<bool>(true, true), 1i, 1i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = Struct_1(!global2.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(select(u_input.a, vec2<i32>(u_input.a.x, -56887i), false), -vec2<i32>(global2.b.x, -2147483647i))), global2.b, global2.b), vec2<bool>(false, true), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1i, -54860i), vec3<i32>(global2.e, u_input.a.x, u_input.a.x)), ~vec3<i32>(global2.b.x, global2.d, u_input.a.x) | _wgslsmith_sub_vec3_i32(vec3<i32>(49241i, u_input.a.x, 47551i), vec3<i32>(global2.d, 1i, global2.b.x))), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 27148i) ^ _wgslsmith_mod_i32(-26062i, global2.e), global2.e, global2.d)), _wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(min(global2.d, u_input.a.x), u_input.a.x)), 1i));
    global0 = _wgslsmith_f_op_f32(round(-1531f));
    global1 = array<vec2<bool>, 7>();
    var var_0 = -(~abs(vec3<i32>(1i, global2.e, 19896i))) >> (~firstLeadingBit(~(vec3<u32>(0u, 1u, arg_0.b) << (vec3<u32>(50685u, arg_0.a.x, arg_0.b) % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(step(-1332f, _wgslsmith_f_op_f32(step(223f, _wgslsmith_f_op_f32(floor(1000f))))));
    return var_1;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = vec4<f32>(-1646f, -683f, _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(1u, arg_1.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.b), arg_1.a)), arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-107f)))) - -1200f));
    var var_1 = ~vec2<u32>(_wgslsmith_mod_u32(~select(47042u, 46366u, false), arg_1.b), ~_wgslsmith_mod_u32(4294967295u, arg_1.a.x) ^ firstLeadingBit(abs(arg_1.a.x)));
    let var_2 = ~(~vec3<u32>(abs(firstLeadingBit(var_1.x)), firstLeadingBit(min(1u, 1u)), 1u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.wyx);
    var var_4 = Struct_1(global1[_wgslsmith_index_u32(min(var_1.x | 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_1.x, arg_1.a.x, var_1.x), vec4<u32>(var_1.x, 30782u, 96692u, arg_1.b)) | 25779u), 7u)], _wgslsmith_mod_vec2_i32(select(u_input.a, _wgslsmith_sub_vec2_i32(global2.b, vec2<i32>(arg_0, arg_0)), !(!global2.c.x)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, 2147483647i), 1i, _wgslsmith_sub_i32(arg_0, u_input.a.x)), -22036i)), vec2<bool>(global2.c.x, any(!(!vec3<bool>(global2.c.x, true, global2.a.x)))), 1i, -2147483647i);
    return 1444f;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = ~firstTrailingBit(countOneBits(firstLeadingBit(87250u)));
    var_0 = ~(~_wgslsmith_mult_u32(abs(~68983u), ~firstTrailingBit(1u)));
    global1 = array<vec2<bool>, 7>();
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(global2.e, Struct_2(vec2<u32>(4294967295u, 1u), 4294967295u))), _wgslsmith_f_op_f32(func_2(-54672i, Struct_2(vec2<u32>(0u, 9435u), 1u))), _wgslsmith_f_op_f32(490f - -288f), -702f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    return Struct_1(select(select(vec2<bool>(!global2.a.x, global2.a.x), select(!global1[_wgslsmith_index_u32(92635u, 7u)], vec2<bool>(global2.a.x, global2.c.x), global2.a.x), all(vec3<bool>(true, global2.c.x, true))), !select(global1[_wgslsmith_index_u32(1u, 7u)], vec2<bool>(false, global2.c.x), global2.c.x != true), select(global2.c, select(vec2<bool>(true, global2.a.x), vec2<bool>(true, false), vec2<bool>(true, false)), !vec2<bool>(true, global2.c.x))), global2.b, select(select(global2.a, select(vec2<bool>(true, true), global2.c, global2.c.x), !any(vec4<bool>(false, true, false, global2.c.x))), global2.a, global2.a), -10673i, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2487f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -2140f))));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(u_input.a.x), max(u_input.a.x, u_input.a.x), u_input.a.x, ~(~(-12229i))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-562f, 2344f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 441f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1359f)) + _wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(0u, 4277u), 0u)))), -1427f, _wgslsmith_f_op_f32(-814f + -362f), _wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(4294967295u, 6040u), 36993u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -657f, var_1, var_1) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_1, var_1, -1485f)))), vec4<f32>(_wgslsmith_f_op_f32(var_1 * 310f), _wgslsmith_f_op_f32(min(-684f, 324f)), -415f, 781f)), true)));
}

