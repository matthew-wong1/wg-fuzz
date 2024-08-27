struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(0u, 3693u), vec2<u32>(34761u, 67020u), vec2<u32>(4294967295u, 54622u));

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(-5533i, vec4<i32>(45497i, 30784i, -9046i, 38516i), -673f, 12240u, 18604u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    global3 = Struct_1(51471i, _wgslsmith_add_vec4_i32(max(vec4<i32>(global2.a, max(-2147483647i, global2.a), ~global2.b.x, -37991i), vec4<i32>(global2.a, 0i, -global3.a, -2832i)), vec4<i32>(min(_wgslsmith_dot_vec2_i32(global3.b.yx, vec2<i32>(global2.b.x, 0i)), -global2.a), _wgslsmith_add_i32(global2.a, global3.b.x), select(global3.b.x, ~global2.a, false), 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -2145f), reverseBits(0u), 25737u);
    global2 = Struct_1(global2.a, ~vec4<i32>(-global2.a, 2147483647i, reverseBits(global3.b.x) & -global2.a, 81760i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-766f))))), -966f, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))) || true)), global2.e, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, ~(~vec3<u32>(arg_0, 1u, u_input.c.x)) ^ ~vec3<u32>(73228u, global0[_wgslsmith_index_u32(0u, 10u)], arg_0)), 10u)]);
    global0 = array<u32, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-410f + -195f), -296f) - vec2<f32>(global3.c, global3.c)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.c), 792f, _wgslsmith_f_op_f32(-global3.c)), vec3<f32>(global2.c, var_0.x, _wgslsmith_f_op_f32(sign(global3.c)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(abs(global2.c)), global2.c) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, global3.c, -459f), vec3<f32>(var_0.x, 309f, -1361f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, 575f, global2.c) - vec3<f32>(global2.c, global3.c, -1000f)))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)))));
    return _wgslsmith_mult_vec4_i32(-vec4<i32>(global3.b.x, -2147483647i, -min(2147483647i, -14225i), global3.b.x), global2.b);
}

fn func_2() -> f32 {
    global3 = Struct_1(~global2.b.x, func_3(4294967295u), 784f, ~min(global3.d, 69585u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.b.wxx, vec3<u32>(~43889u, 77417u, 1u)), u_input.c));
    global3 = Struct_1(-global3.b.x, -vec4<i32>(func_3(1u).x, _wgslsmith_add_i32(0i, global3.a), global2.a, -global3.a) >> (vec4<u32>(~(~global3.e), firstLeadingBit(select(0u, 16056u, false)), _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(global3.e, global3.e), abs(4294967295u)), 1u) % vec4<u32>(32u)), global2.c, min(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.e, 15331u, 1u), min(u_input.b, u_input.d)), 1u)), ~(_wgslsmith_clamp_u32(1u, 4294967295u, global2.d) >> (max(24138u, global0[_wgslsmith_index_u32(~39382u, 10u)]) % 32u)));
    global1 = array<vec2<u32>, 3>();
    var var_0 = vec2<f32>(global2.c, 1520f);
    var var_1 = vec3<f32>(1535f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.c - 428f))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c)));
}

fn func_1() -> vec4<i32> {
    let var_0 = global2.b.wxy;
    var var_1 = 1545f;
    global3 = Struct_1(~14107i, -(~(~(-vec4<i32>(33060i, global2.a, 18922i, 27043i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -928f), 0u, select(68030u >> (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global3.e << (global0[_wgslsmith_index_u32(39194u, 10u)] % 32u), 10u)], firstLeadingBit(0u)) % 32u), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 17210u), ~vec2<u32>(24335u, 105428u)), 10u)], true));
    let var_2 = vec2<bool>(true, true);
    let var_3 = Struct_1(-2147483647i, _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global3.b.x, -29514i, var_0.x, -1933i), global3.b) >> (~u_input.d % vec4<u32>(32u)), vec4<i32>(~var_0.x | _wgslsmith_div_i32(global2.a, var_0.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-23063i, 0i, -560i, global2.b.x), global3.b), -14353i, global2.a)), global2.c, 104807u, global2.e);
    return firstTrailingBit(vec4<i32>(-1i, 0i, var_0.x, global2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = Struct_1(firstTrailingBit(reverseBits(global2.a)), _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(var_0.x), _wgslsmith_add_i32(0i, var_0.x), -var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -35137i), var_0.yx)) & vec4<i32>(-var_0.x, abs(global3.a), func_3(global3.d).x, countOneBits(global2.a)), -vec4<i32>(global3.a, _wgslsmith_add_i32(global2.b.x, var_0.x), -27237i >> (global2.e % 32u), _wgslsmith_div_i32(global3.a, global2.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -663f), 0u, ~4294967295u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)) + global2.c)) < _wgslsmith_f_op_f32(func_2());
    var var_2 = global3.e ^ global3.d;
    let var_3 = Struct_4(_wgslsmith_sub_vec3_u32(select(u_input.c, _wgslsmith_mult_vec3_u32(~u_input.b.zzx, ~vec3<u32>(41038u, u_input.d.x, 1u)), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.d ^ 0u, reverseBits(26330u), select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24380u, 10u)], 10u)], 4294967295u, var_1)), ~min(vec3<u32>(global3.d, u_input.d.x, 37954u), u_input.b.wxz))));
    global0 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(10846i, ~(-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.x, 2147483647i), vec3<i32>(global2.b.x, 1i, global3.a)), ~2147483647i)));
}

