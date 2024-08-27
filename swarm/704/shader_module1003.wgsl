struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1496f, -1499f);

var<private> global1: vec4<f32>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, vec4<i32>(1i, -37657i, 0i, -68324i), true, vec4<i32>(0i, 0i, 1i, 37890i)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(abs(19066u), u_input.a, 1u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, u_input.a, 64651u), vec3<u32>(1u, 0u, 4294967295u))) << (_wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, arg_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 2028u, u_input.a), vec3<u32>(0u, u_input.a, arg_0))) % vec3<u32>(32u)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(29803u, 4294967295u, 1u), ~vec3<u32>(u_input.a, 0u, 59389u)))), abs(~(~vec3<u32>(arg_0, u_input.a, u_input.a) & ~vec3<u32>(50219u, 17298u, arg_0))), ~(select(abs(vec3<u32>(27214u, 0u, 1u)), max(vec3<u32>(arg_0, 33880u, u_input.a), vec3<u32>(u_input.a, 43953u, arg_0)), select(vec3<bool>(true, false, arg_1), vec3<bool>(false, arg_1, false), true)) ^ vec3<u32>(arg_0, arg_0, u_input.a ^ 88186u)));
    return ~(~u_input.b) >> (1u % 32u);
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(select(vec4<i32>(27896i, -2147483647i, -1i, u_input.b), vec4<i32>(-42028i, u_input.b, 1i, u_input.b), true), ~vec4<i32>(2519i, -4273i, u_input.b, u_input.b)), vec4<i32>(u_input.b, -func_3(u_input.a, true) & 66053i, u_input.b, u_input.b & _wgslsmith_add_i32(-u_input.b, abs(u_input.b))));
    let var_1 = min(~abs(~min(vec3<u32>(13408u, arg_0, 4294967295u), vec3<u32>(43120u, arg_0, 36790u))), ~(~(~vec3<u32>(u_input.a, 23893u, u_input.a))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(3725u, arg_0, 40847u)) >> (~vec3<u32>(arg_0, 3007u, 0u) % vec3<u32>(32u)), abs(vec3<u32>(4294967295u, 4294967295u, 0u))) % vec3<u32>(32u)));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(497f, -1309f, -331f, 412f), vec4<f32>(global0.x, global0.x, -1141f, global1.x)))))))));
    global2 = true;
    var var_2 = global3[_wgslsmith_index_u32(~0u, 1u)];
    return !var_2.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> bool {
    global2 = any(vec3<bool>(any(arg_1), select(!all(arg_1), !(arg_1.x && arg_1.x), all(select(arg_1.wwz, vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_1.x, arg_1.x, true)))), all(vec4<bool>(false, arg_1.x, arg_1.x, true)) && !(true == arg_1.x)));
    let var_0 = _wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(49288u, 63685u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 6707u), vec2<u32>(1u, 1u))))), vec2<u32>(~u_input.a, 0u));
    return func_2(~(~65377u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, -vec4<i32>(u_input.b, ~select(-2147483647i, u_input.b, false), 29620i, max(-2147483647i, max(0i, u_input.b))), select(true, true, !(all(vec4<bool>(true, true, false, true)) | true)), vec4<i32>(-u_input.b, -_wgslsmith_mod_i32(u_input.b, select(u_input.b, u_input.b, false)), 0i, u_input.b));
    global2 = func_1(~var_0.d, vec4<bool>(true, true, true, true), vec2<i32>(min(-38069i, _wgslsmith_div_i32(1492i, -33390i)), 1i) & vec2<i32>(var_0.b.x, ~(-2147483647i)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(step(global1.x, 683f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -297f)))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global0.x) * 261f) * _wgslsmith_f_op_f32(243f + global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) - global0.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1102f)), 137f)))) - global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.zwx), global1.zzz))) + global1.xww), firstTrailingBit(-2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b | 0i, ~u_input.b), var_0.d.xw), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(51744i, 1i, u_input.b), var_0.b.yyw), ~(-15207i), var_0.b.x, -7460i) & _wgslsmith_mod_vec4_i32(firstTrailingBit(var_0.d), vec4<i32>(-11076i ^ var_0.b.x, abs(var_0.b.x), 40718i, _wgslsmith_mult_i32(10911i, -28375i))), _wgslsmith_add_i32(0i, 0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, u_input.b, u_input.b) ^ vec3<i32>(99232i, 0i, u_input.b), var_0.d.yzz)));
}

