struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, false, true, false), vec3<u32>(1u, 32304u, 90531u), vec2<bool>(false, true), 73117u, vec4<f32>(189f, -947f, 886f, -636f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    global1 = Struct_2(arg_2.a, countOneBits(~(~(~vec3<u32>(4294967295u, 1416u, 0u)))), !arg_2.c, ~(~1u & (arg_2.d & arg_2.b.x)) | _wgslsmith_dot_vec3_u32(~arg_2.b, ~vec3<u32>(12064u, global1.b.x, global1.d) & firstTrailingBit(vec3<u32>(global1.d, arg_2.d, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2.e), global1.e)), vec4<f32>(_wgslsmith_f_op_f32(global1.e.x - 1437f), _wgslsmith_f_op_f32(min(-333f, -1594f)), _wgslsmith_f_op_f32(trunc(global1.e.x)), arg_2.e.x), select(vec4<bool>(false, true, arg_1.x, global1.a.x), vec4<bool>(arg_2.a.x, global1.c.x, false, arg_1.x), !vec4<bool>(arg_2.c.x, true, true, true)))) + arg_2.e));
    global1 = arg_2;
    global1 = Struct_2(arg_2.a, _wgslsmith_div_vec3_u32(max(~(~vec3<u32>(0u, 13484u, 0u)), reverseBits(vec3<u32>(arg_2.b.x, 23688u, global1.b.x) >> (arg_2.b % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(arg_2.b, ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.d, global1.b.x, global1.b.x), arg_2.b))), select(!(!select(arg_2.c, global1.c, global1.a.x)), select(arg_2.a.zz, vec2<bool>(true, true), select(global1.c, arg_2.c, true)), true), ~_wgslsmith_mod_u32(~arg_2.d | arg_2.d, global1.d), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2.e.x)), _wgslsmith_f_op_f32(ceil(global1.e.x)), true)), 603f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.e.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(836f, -532f))))));
    let var_0 = arg_2.b.zx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(218f, arg_2.e.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2.e.x)))), arg_2.e.x))));
    return arg_2.a.x;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = Struct_2(!(!select(global1.a, select(global1.a, global1.a, global1.a), 63745i != u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(~global1.b.x, min(global1.b.x, ~global1.b.x), ~global1.b.x), select(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(global1.b, global1.b), vec3<u32>(global1.b.x, global1.b.x, global1.b.x) ^ global1.b), ~vec3<u32>(0u, 0u, 4294967295u), !select(vec3<bool>(global1.a.x, true, true), global1.a.xyx, global1.a.wzx))), vec2<bool>(all(select(vec4<bool>(true, false, global1.c.x, global1.c.x), !global1.a, false)), all(global1.a) | global1.c.x), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, 980f, arg_0.b.x, 830f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, -1110f, global1.e.x, -700f), vec4<f32>(-1343f, arg_0.b.x, global1.e.x, -1122f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(-1344f * 245f), _wgslsmith_f_op_f32(sign(1258f)), 597f), vec4<f32>(1f, global1.e.x, 1f, -323f), _wgslsmith_div_i32(u_input.a.x, u_input.b) <= firstTrailingBit(u_input.c)))));
    let var_0 = _wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x) >> (vec4<u32>(4294967295u, global1.b.x, global1.d, global1.b.x) % vec4<u32>(32u)), select(vec4<i32>(-27283i, 19234i, u_input.b, u_input.c) & vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 2147483647i), select(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1i), vec4<i32>(36981i, -60774i, 1i, 55885i), true), select(global1.a, vec4<bool>(global1.a.x, global1.a.x, true, false), false))), _wgslsmith_sub_vec4_i32(~(~firstLeadingBit(vec4<i32>(36626i, 2147483647i, 3698i, 14407i))), -(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, 19960i, u_input.b), vec4<i32>(-47618i, arg_0.a.x, u_input.b, -33070i)) | (vec4<i32>(arg_0.a.x, -1i, arg_0.a.x, u_input.a.x) | vec4<i32>(-11720i, u_input.b, u_input.a.x, 2147483647i)))));
    var var_1 = global1.d;
    let var_2 = vec3<bool>(true, any(vec4<bool>(!global1.a.x, global1.a.x, !global1.c.x, global1.c.x)) & true, func_3(-(~vec2<i32>(arg_0.a.x, var_0.x)), global1.a.xx, global0[_wgslsmith_index_u32(4294967295u, 30u)]));
    global1 = global0[_wgslsmith_index_u32(1u, 30u)];
    return 2147483647i;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(i32(-1i) * -22998i) ^ u_input.a.x, u_input.b, func_2(Struct_1(~vec2<i32>(-1i, 2147483647i), _wgslsmith_f_op_vec3_f32(global1.e.zyy + global1.e.xwy)))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 2147483647i, 15949i, u_input.a.x)), countOneBits(vec4<i32>(u_input.b, u_input.c, 8450i, u_input.b))), -17027i, -22031i), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-38019i, u_input.a.x, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.a.x)))));
    return Struct_1(var_0.zx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(-global1.e.x), global1.e.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e.wxy) + _wgslsmith_f_op_vec3_f32(-global1.e.yzy))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(~(~_wgslsmith_mod_vec2_i32(min(vec2<i32>(6212i, var_0.a.x), u_input.a), u_input.a >> (global1.b.xz % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -303f, var_0.b.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, global1.e.x, var_0.b.x) * global1.e.xzz)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.b.x)))), global1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.e.x))))));
    let var_1 = vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-2131f)))), -920f);
    let var_2 = func_1();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~global1.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_1().b.x))), var_2.b.x, global1.d <= 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

