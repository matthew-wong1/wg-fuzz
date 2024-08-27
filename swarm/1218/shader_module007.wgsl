struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    return Struct_1(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, u_input.d) & vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x), u_input.b)), u_input.b.xyz, 1032f);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> vec3<i32> {
    let var_0 = Struct_2(vec4<i32>(2147483647i, u_input.a.x ^ select(~u_input.e.x, -u_input.e.x, arg_3 < -1024f), u_input.e.x, ~(-1i)), func_2(select(max(vec3<u32>(8006u, u_input.c, 4294967295u), u_input.b.zxz), min(~u_input.b.xzx, abs(u_input.b.xwz)), !arg_0), !any(vec3<bool>(false, false, arg_1))));
    var var_1 = u_input.b;
    var var_2 = Struct_3(true, func_2(~(~_wgslsmith_mult_vec3_u32(u_input.b.xxx, vec3<u32>(1u, var_0.b.b.x, 4294967295u))), arg_0.x).a, -reverseBits(select(max(u_input.a.yxx, vec3<i32>(u_input.a.x, u_input.a.x, u_input.e.x)), vec3<i32>(-60159i, var_0.a.x, 29225i), arg_0)), select(vec2<bool>(all(!arg_0), true), arg_2.yw, !arg_2.xx));
    let var_3 = 13303u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-360f, _wgslsmith_f_op_f32(sign(1382f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -730f) * 1f)), !var_2.d.x)));
    return select(min(_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.a.x, var_0.a.x, var_2.c.x), vec3<i32>(6615i, min(2147483647i, -2147483647i), u_input.e.x)), ~vec3<i32>(var_2.c.x, -2147483647i & var_0.a.x, var_2.c.x)), vec3<i32>(var_0.a.x, ~(~var_2.c.x), -2147483647i), arg_1 | (var_4 > _wgslsmith_f_op_f32(var_4 - 412f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<f32>) -> f32 {
    var var_0 = func_2(vec3<u32>(u_input.c, 47652u, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 4294967295u), firstTrailingBit(u_input.b.x)))), false);
    var var_1 = u_input.a.xzx;
    global0 = array<Struct_2, 29>();
    var var_2 = any(!(!arg_2)) & false;
    var_1 = ~(~_wgslsmith_mod_vec3_i32(firstTrailingBit(func_3(vec3<bool>(true, arg_2.x, arg_1), arg_1, vec4<bool>(arg_2.x, false, false, arg_1), -173f)), vec3<i32>(-2147483647i, var_1.x << (u_input.d % 32u), reverseBits(-75077i))));
    return _wgslsmith_f_op_f32(-arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_i32(u_input.e.x >> ((1u >> (u_input.d % 32u)) % 32u), _wgslsmith_mult_i32(u_input.e.x ^ 15126i, u_input.e.x)), all(vec4<bool>(true, true, false, u_input.c > u_input.d)), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-726f, -695f) + vec2<f32>(459f, -119f)), vec2<f32>(-508f, -139f)))))), _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.e.x, -18825i, -17270i), u_input.a & vec4<i32>(u_input.a.x, 0i, -46882i, -2147483647i)) ^ -2147483647i, false, !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1271f))), -346f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(min(-233f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1619f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1113f)))))));
    var var_2 = _wgslsmith_div_vec4_i32(u_input.a, u_input.a << (u_input.b % vec4<u32>(32u)));
    let var_3 = -var_2.x;
    let var_4 = Struct_3(false, countOneBits(1u) ^ u_input.c, vec3<i32>(-_wgslsmith_mod_i32(~var_2.x, _wgslsmith_sub_i32(var_2.x, 3224i)), 18879i, -1i), vec2<bool>(all(vec3<bool>(true, true, true)), false));
    var var_5 = global0[_wgslsmith_index_u32(var_4.b, 29u)];
    let var_6 = vec4<f32>(var_5.b.c, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(select(vec4<bool>(var_4.a, var_4.d.x, var_4.a, var_4.a), vec4<bool>(false, var_4.a, false, false), var_4.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b.c)));
    var_0 = var_5.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, (select(vec4<u32>(var_4.b, 1u, u_input.d, u_input.b.x), u_input.b, false) >> (~u_input.b % vec4<u32>(32u))) & ~u_input.b, all(!vec3<bool>(true, var_4.a, false))));
}

