struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<f32>) -> f32 {
    global1 = u_input.a.x;
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    global1 = u_input.a.x;
    global1 = abs(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~48685u, firstLeadingBit(1u)), (vec2<u32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(floor(-200f));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 318f))))) * _wgslsmith_f_op_f32(func_3(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a.wy) >= 1u), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_vec2_f32(-arg_1.xz), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1232f, arg_1.x, -1143f, 2428f), vec4<f32>(1153f, arg_0.d, -193f, arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), -705f, 984f, arg_1.x)))));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_add_u32(reverseBits(arg_0.a), 1u)), u_input.a.xxx), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~u_input.a.x, 0u, 1u)), ~vec3<u32>(_wgslsmith_div_u32(1u, arg_0.a), arg_0.a, ~arg_0.a)));
    var var_2 = Struct_2(all(vec3<bool>(true, false, any(vec2<bool>(true, true)))), Struct_1(1u, vec3<i32>(arg_0.c.x, arg_0.b.x, global0[_wgslsmith_index_u32(28545u, 27u)]), ~(~abs(arg_0.c)), arg_0.d), global0[_wgslsmith_index_u32(var_1, 27u)] > max(global0[_wgslsmith_index_u32(arg_0.a, 27u)], 18857i));
    return min(2147483647i, _wgslsmith_add_i32(abs(global0[_wgslsmith_index_u32((var_2.b.a ^ 1u) & _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(var_1, 24353u)), 27u)]), var_2.b.c.x));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(-max(-1i, ~global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), -_wgslsmith_clamp_i32(firstTrailingBit(-18418i), _wgslsmith_sub_i32(-2147483647i, arg_0.x), 6204i)), 0i ^ func_2(Struct_1(~1u, firstTrailingBit(vec3<i32>(-1i, -22439i, -1i)), select(vec4<i32>(global0[_wgslsmith_index_u32(27457u, 27u)], global0[_wgslsmith_index_u32(50005u, 27u)], -29997i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 2147483647i, 7398i, arg_0.x), true), _wgslsmith_f_op_f32(sign(2049f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1091f), _wgslsmith_f_op_f32(f32(-1f) * -246f))), ~(func_2(Struct_1(u_input.a.x, vec3<i32>(global0[_wgslsmith_index_u32(0u, 27u)], -2147483647i, -1i), vec4<i32>(10162i, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_0.x, arg_0.x), -578f), _wgslsmith_f_op_vec3_f32(vec3<f32>(342f, 2135f, -1000f) - vec3<f32>(-856f, -490f, 145f))) | _wgslsmith_sub_i32(reverseBits(arg_0.x), -14953i)));
    let var_1 = Struct_1(u_input.a.x, vec3<i32>(var_0.x ^ global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(~(u_input.a.x | u_input.a.x), 27u)], -3121i), -firstTrailingBit(-firstLeadingBit(vec4<i32>(70794i, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], var_0.x, global0[_wgslsmith_index_u32(0u, 27u)]))), 512f);
    var_0 = var_1.b;
    global1 = abs(~22601u) | min(var_1.a, _wgslsmith_dot_vec4_u32(~(~u_input.a), select(u_input.a, vec4<u32>(1u, 3210u, 4294967295u, 1u), vec4<bool>(false, true, false, false)) & vec4<u32>(639u, var_1.a, u_input.a.x, u_input.a.x)));
    var var_2 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], ~abs(1i), -21110i, global0[_wgslsmith_index_u32(min((1u >> (u_input.a.x % 32u)) >> (~u_input.a.x % 32u), ~firstTrailingBit(u_input.a.x)), 27u)] | 1i);
    let var_1 = func_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-var_0.zx, var_0.ww), -var_0.x), ~global0[_wgslsmith_index_u32(1u, 27u)]));
    global0 = array<i32, 27>();
    global1 = func_1(firstTrailingBit(_wgslsmith_add_vec2_i32(var_0.ww, max(vec2<i32>(var_1.b.x, 6097i), var_1.c.zw)) ^ func_1(_wgslsmith_clamp_vec2_i32(var_0.yw, vec2<i32>(-2147483647i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(var_1.a, 27u)], var_1.c.x))).b.yy)).a;
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 54258u, ~45146u), vec3<u32>(53234u, 2052u, 27983u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.a.wxz | vec3<u32>(u_input.a.x, 28571u, 1u), reverseBits(u_input.a.wzw), ~u_input.a.yzx))), var_0.x, min(vec4<u32>(u_input.a.x, ~(var_1.a << (16871u % 32u)), var_1.a >> (_wgslsmith_mult_u32(u_input.a.x, 32454u) % 32u), ~0u), firstTrailingBit(~(~u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * var_1.d), _wgslsmith_f_op_f32(select(-485f, _wgslsmith_f_op_f32(var_1.d + var_1.d), true)))));
}

