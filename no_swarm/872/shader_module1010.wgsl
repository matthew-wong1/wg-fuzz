struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-470f, 194f, -1029f, 407f), vec2<u32>(49626u, 4294967295u), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_2(global0.c | ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, global0.c.x), max(global0.c, global0.c)), -721f, Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * global0.a), ~global0.c, vec2<u32>(_wgslsmith_dot_vec4_u32(select(u_input.b, u_input.b, false), firstLeadingBit(vec4<u32>(0u, global0.c.x, global0.c.x, 1u))), 0u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1177f)))) - _wgslsmith_f_op_f32(-global0.a.x));
    var var_2 = Struct_2(u_input.b.wy, _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x - var_1))) - _wgslsmith_f_op_f32(-var_1))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 195f, global0.a.x, var_1)))))), abs(_wgslsmith_add_vec2_u32(var_0.a, global0.c) & vec2<u32>(82069u, 0u)), vec2<u32>(~1u, 0u)));
    var_0 = Struct_2(vec2<u32>(17391u, var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-137f)) * 1008f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), select(u_input.b.yz, vec2<u32>(u_input.a, var_2.c.b.x), vec2<bool>(false, true)), _wgslsmith_add_vec2_u32(u_input.b.wx, ~(vec2<u32>(var_0.a.x, u_input.b.x) >> (global0.b % vec2<u32>(32u))))));
    var_2 = Struct_2(~(~vec2<u32>(u_input.b.x, 48128u)), var_2.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, var_1, 146f, -328f)))), _wgslsmith_add_vec2_u32(arg_2.yz, _wgslsmith_clamp_vec2_u32(~vec2<u32>(107901u, 20886u), firstLeadingBit(vec2<u32>(0u, 33542u)), abs(arg_2.xz))), ~(~arg_2.yy)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1656f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(-1000f, var_2.c.a.x)), _wgslsmith_f_op_f32(max(-1115f, -1601f))))))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> vec2<u32> {
    let var_0 = 28568u;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), false), arg_1 <= 1i, vec3<u32>(0u, abs(4294967295u), max(min(arg_0, 4294967295u), ~global0.b.x)), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, arg_1, -2147483647i), vec3<i32>(0i, arg_1, 32564i))) | _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, -48803i, 24102i), select(vec3<i32>(12447i, 38460i, arg_1), vec3<i32>(arg_1, -78350i, 1i), vec3<bool>(false, false, false))))), ~(~(~(~vec2<u32>(15165u, 49685u)))), ~u_input.b.yw);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(global0.a)), vec2<u32>(u_input.a, ~(~21555u)), u_input.b.zx);
    let var_2 = vec2<bool>(true, true);
    global0 = Struct_1(global0.a, select(u_input.b.yy, u_input.b.wz, var_2), var_1.c);
    return vec2<u32>(var_0, global0.b.x);
}

fn func_1() -> StorageBuffer {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1822f, -2221f, 659f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), ~abs(countOneBits(func_2(u_input.b.x, 56462i, global0.a.zw))), global0.c);
    global0 = Struct_1(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(global0.a)))))), firstLeadingBit(global0.c), u_input.b.xw);
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, ~30026u < _wgslsmith_mod_u32(0u, u_input.b.x)), vec3<bool>(any(vec3<bool>(true, true, true)), true | any(vec4<bool>(true, true, true, false)), true));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(abs(i32(-1i) * -19837i), select(_wgslsmith_clamp_i32(22004i, 2147483647i, -22036i), ~(-2147483647i), true)) | 66281i, countOneBits(16467i), countOneBits(max(abs(firstLeadingBit(-1i)), -33102i)));
    global0 = Struct_1(vec4<f32>(382f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), 1f), func_2(countOneBits(u_input.b.x), 1i, global0.a.ww), vec2<u32>(1u, ~29421u));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(global0.a.wxy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.yzz * global0.a.yyz)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.x, 1031f, global0.a.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1313f, global0.a.x, global0.a.x) * vec3<f32>(global0.a.x, -214f, 607f))))), u_input.b, global0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

