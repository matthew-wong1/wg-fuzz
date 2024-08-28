struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(~(~max(u_input.c.x, 4294967295u)), -356f, i32(-1i) * -(i32(-1i) * -1886i));
    var var_1 = Struct_3(~((vec4<i32>(-1i) * -vec4<i32>(-28315i, global0[_wgslsmith_index_u32(0u, 17u)], -2147483647i, -1i)) & ~vec4<i32>(global0[_wgslsmith_index_u32(var_0.a, 17u)], global0[_wgslsmith_index_u32(29501u, 17u)], global0[_wgslsmith_index_u32(41399u, 17u)], -2147483647i)), _wgslsmith_f_op_f32(floor(var_0.b)));
    var var_2 = var_0.b;
    var var_3 = var_1.a;
    let var_4 = var_1.a.x;
    return select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false))), any(vec3<bool>(var_0.b < var_0.b, true, true))), false);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_3(vec4<i32>(-1i, -5825i >> (arg_1 % 32u), global0[_wgslsmith_index_u32(~(0u | u_input.c.x), 17u)], global0[_wgslsmith_index_u32(arg_0.x, 17u)]) >> (~countOneBits(u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)));
    var var_1 = select(select(vec2<bool>(-7618i > var_0.a.x, false), select(select(vec2<bool>(true, true), func_3(), true), vec2<bool>(true, -1i >= var_0.a.x), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(_wgslsmith_mod_u32(u_input.b.x, 4294967295u) < _wgslsmith_div_u32(u_input.c.x, 0u), true)), vec2<bool>(true, true), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)] >= 0i, all(vec3<bool>(false, true, false)))));
    var var_2 = Struct_3(~var_0.a, _wgslsmith_f_op_f32(-var_0.b));
    var var_3 = Struct_1(abs(16881u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), -786f)), global0[_wgslsmith_index_u32(57998u, 17u)]);
    let var_4 = abs(~u_input.c) | u_input.c;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b + -909f))) - _wgslsmith_f_op_f32(var_2.b - var_2.b)), var_2.b, var_3.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> Struct_3 {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(-1857f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-561f * _wgslsmith_f_op_f32(min(-535f, 790f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(104f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) * _wgslsmith_f_op_f32(-2079f + arg_0.x))))), arg_0.x, 413f);
    let var_1 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    return Struct_3(vec4<i32>(-1i, firstTrailingBit(-2147483647i), -20832i, global0[_wgslsmith_index_u32(0u << (u_input.c.x % 32u), 17u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2277f)))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(58573u, u_input.b.x, 4294967295u, u_input.c.x), 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2270f, 716f, -349f))))))), ~u_input.a);
    let var_1 = !(!vec4<bool>(!any(vec2<bool>(false, true)), true, -1i <= var_0.a.x, true));
    let var_2 = !var_1;
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    return Struct_3(abs(vec4<i32>(77208i, _wgslsmith_add_i32(_wgslsmith_mult_i32(15558i, 53785i), ~(-60599i)), abs(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(-1i, -19917i, -2147483647i, 16579i))), firstLeadingBit(-global0[_wgslsmith_index_u32(15156u, 17u)]))), -940f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<i32>(1i, ~reverseBits(max(global0[_wgslsmith_index_u32(~u_input.b.x, 17u)], 2147483647i)), ~_wgslsmith_mult_i32(-(-39725i & global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), u_input.d.x), global0[_wgslsmith_index_u32(~1u, 17u)]);
    var var_2 = _wgslsmith_mod_vec3_i32(var_1.zwx, var_1.xxz);
    let var_3 = -295f;
    var_0 = Struct_3(vec4<i32>(u_input.d.x, abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), abs(var_0.a.x))), var_2.x ^ _wgslsmith_dot_vec3_i32(var_1.wyy, firstTrailingBit(vec3<i32>(-6361i, global0[_wgslsmith_index_u32(909u, 17u)], 4973i))), -2147483647i), _wgslsmith_f_op_f32(-833f * var_3));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1013f))));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3, -844f, 1090f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, var_3, var_4), vec3<f32>(-624f, 1227f, var_4))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, 400f, var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-384f, 165f, var_0.b) - vec3<f32>(-1354f, 1000f, 813f))))), u_input.a);
    global0 = array<i32, 17>();
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_3) - vec3<f32>(var_3, -2668f, var_3)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-923f, -879f, -1677f) + vec3<f32>(565f, -569f, -1000f)))) - _wgslsmith_f_op_vec3_f32(func_2(u_input.b, 4294967295u))), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~4294967295u, 17u)] & u_input.a, abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), u_input.b.wzw), _wgslsmith_clamp_vec3_u32(u_input.b.xwz, u_input.b.xyw, u_input.b.zzx)), 17u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.wyw);
}

