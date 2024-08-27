struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<vec3<i32>, 32>;

var<private> global3: array<u32, 8>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_5(~(~_wgslsmith_dot_vec3_u32(arg_0.zyz, arg_1.xzz)), global1.e);
    let var_1 = Struct_5(arg_1.x, global1.e);
    var var_2 = var_1;
    var_2 = var_1;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(525f, _wgslsmith_f_op_f32(step(global1.a.x, 290f)), _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_vec3_f32(-global1.a))), -1572f, min(global1.c, 0u), var_1.b, Struct_1(!var_0.b.a));
    return ~(~min(~(~arg_0), vec4<u32>(arg_1.x, u_input.a, ~4294967295u, 0u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(76668u, firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29618u << (global3[_wgslsmith_index_u32(4294967295u, 8u)] % 32u), 8u)], 8u)]), u_input.b, ~firstLeadingBit(0u)) ^ _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b), vec4<u32>(arg_1.x, arg_0.x, 1u, u_input.a), vec4<u32>(global1.c, 0u, global1.c, global1.c)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global1.c, 8u)], arg_0.x, arg_0.x, 16598u), vec4<u32>(global1.c, 36415u, global1.c, global1.c))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 18826u, 50318u, global3[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(25310u, 4294967295u, 0u, 46716u)), reverseBits(vec4<u32>(54211u, 28252u, global3[_wgslsmith_index_u32(1u, 8u)], 4294967295u)))), max(firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.x, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1710u, 8u)], 8u)]), vec4<u32>(arg_1.x, 68865u, 1741u, 4294967295u))), ~vec4<u32>(u_input.c.x, u_input.c.x, 0u, arg_0.x) ^ func_3(min(vec4<u32>(0u, 67225u, 4294967295u, arg_1.x), vec4<u32>(global1.c, u_input.a, 13600u, 1u)), ~vec4<u32>(global3[_wgslsmith_index_u32(37740u, 8u)], 62030u, 32238u, 0u))));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b), global1.a.x)), _wgslsmith_f_op_f32(671f * _wgslsmith_f_op_f32(-global1.b)), global1.b))), _wgslsmith_f_op_f32(f32(-1f) * -322f), arg_0.x, Struct_1(any(select(!vec4<bool>(false, global1.d.a, false, global1.e.a), select(vec4<bool>(false, true, false, global0.a), vec4<bool>(true, false, global1.d.a, true), vec4<bool>(global0.a, false, global0.a, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(global1.e.a, true, true, false), false)))), global1.d);
    global0 = global1.e;
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(abs(-854f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b)) * _wgslsmith_f_op_f32(floor(919f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.x)))) * -1607f), global1.c, global1.d, global1.d);
    let var_2 = Struct_5(0u, var_1.d);
    return Struct_4((u_input.d.x >= _wgslsmith_mult_i32(~u_input.d.x, -26732i)) | true, firstTrailingBit(~(~max(global1.c, 1u))), Struct_1(false), Struct_3(global1.e, 23961u, 1u, vec3<u32>(_wgslsmith_mult_u32(1u, var_1.c), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, arg_1.x)), arg_0.xx >> (arg_1 % vec2<u32>(32u))), _wgslsmith_mod_u32(~4294967295u, max(u_input.c.x, 1u)))));
}

fn func_4(arg_0: Struct_4) -> i32 {
    let var_0 = max(1u, func_2(arg_0.d.d, u_input.c).d.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, -708f, -1459f, global1.a.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, global1.a.x, 919f, global1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(601f, -1325f, 2284f, -1000f), vec4<f32>(-449f, -433f, 1282f, global1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 1157f, global1.a.x, 569f)))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))) * _wgslsmith_f_op_f32(-var_1.x)) + var_1.x);
    var var_3 = _wgslsmith_mult_i32(u_input.d.x, 28722i);
    let var_4 = -u_input.d.x;
    return ~_wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(-1i, var_4, 70149i, var_4) ^ vec4<i32>(-15526i, var_4, 0i, 1360i))) << (global1.c % 32u);
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = ~abs(vec3<i32>(u_input.d.x, 6970i, func_4(func_2(arg_0.d, vec2<u32>(0u, 0u)))));
    var var_1 = global1.c;
    global2 = array<vec3<i32>, 32>();
    var_1 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(65392u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a, u_input.b, u_input.a), 0u), arg_0.d.x, ~arg_0.c), vec4<u32>(firstTrailingBit(~1u), u_input.c.x & firstTrailingBit(global1.c), ~(68995u << (1u % 32u)), arg_0.b)), vec4<u32>(u_input.b, ~u_input.a, ~104636u, func_2(vec3<u32>(arg_0.b, 0u, 4294967295u), _wgslsmith_mod_vec2_u32(arg_0.d.xx, arg_0.d.zx)).d.d.x | ~firstTrailingBit(17648u)));
    var var_2 = _wgslsmith_mult_u32(0u, ~arg_0.d.x);
    return vec2<bool>(!(global0.a & !(global1.b < global1.b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, global3[_wgslsmith_index_u32(0u, 8u)], abs(u_input.c.x), _wgslsmith_div_u32(u_input.a & 1u, select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], global3[_wgslsmith_index_u32(global1.c, 8u)], global0.a))), ~firstLeadingBit(~vec4<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a, 56025u)), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(2076u, u_input.b, 16382u, 29006u), vec4<u32>(global1.c, 1u, u_input.a, 13204u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(421f)) * global1.b), global1.a.x, true)), 844f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, 800f))))));
    let var_2 = all(func_1(Struct_3(Struct_1(global1.e.a), ~u_input.a, _wgslsmith_mod_u32(~var_0.x, abs(global3[_wgslsmith_index_u32(u_input.c.x, 8u)])), vec3<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, global1.c), var_0.zwz), 8u)], 8u)], 78504u))));
    var_1 = _wgslsmith_f_op_vec3_f32(-global1.a);
    var var_3 = vec3<f32>(1818f, _wgslsmith_f_op_f32(global1.a.x - global1.a.x), _wgslsmith_f_op_f32(ceil(global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_3.x)));
}

