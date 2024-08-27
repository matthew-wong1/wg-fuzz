struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: f32 = 444f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_4(global0.x);
    var var_1 = Struct_5(Struct_1(arg_0.c.a, _wgslsmith_dot_vec2_u32(vec2<u32>(18323u >> (arg_0.c.b % 32u), max(1u, arg_0.c.b)), _wgslsmith_sub_vec2_u32(~vec2<u32>(74044u, u_input.a.x), u_input.a.wx))));
    let var_2 = 1u;
    global1 = 1073f;
    let var_3 = Struct_5(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_1.a.a, arg_0.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-25222i, -2147483647i, var_1.a.a, var_1.a.a), vec4<i32>(10859i, -1i, -20652i, -1i))), vec3<i32>(_wgslsmith_sub_i32(1126i, 8469i), -arg_0.c.a, arg_0.c.a | arg_0.c.a)), ~28994u ^ min(u_input.a.x & arg_0.c.b, var_1.a.b)));
    return _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))));
    var var_1 = vec2<f32>(2963f, arg_1.a.x);
    return !select(select(!select(vec3<bool>(true, arg_1.b.x, true), vec3<bool>(global0.x, true, arg_1.b.x), vec3<bool>(true, arg_0, global0.x)), select(vec3<bool>(global0.x, global0.x, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_0, arg_0), !vec3<bool>(arg_0, true, global0.x)), any(vec2<bool>(true, true))), !vec3<bool>(false, false, arg_1.b.x), countOneBits(arg_1.c.b << (u_input.a.x % 32u)) == ~4294967295u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_2(Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-160f - arg_0.x), -631f), _wgslsmith_f_op_vec2_f32(trunc(arg_0.xz)), global0.zy)), !select(global0.yy, select(global0.xy, vec2<bool>(true, global0.x), true), global0.yy), Struct_1(min(-930i, ~(-1i)), ~arg_1.a.b))));
    global0 = !select(select(vec3<bool>(arg_2, 52791u <= u_input.a.x, arg_2), !(!vec3<bool>(arg_2, true, global0.x)), (arg_1.a.a < 50825i) & false), vec3<bool>(any(func_3(false, Struct_3(vec2<f32>(362f, 1999f), vec2<bool>(arg_2, global0.x), Struct_1(arg_1.a.a, arg_1.a.b)), Struct_5(Struct_1(arg_1.a.a, 25510u)))), arg_2, !(!global0.x)), func_3(global0.x, Struct_3(_wgslsmith_f_op_vec2_f32(floor(arg_0.xz)), !global0.yy, arg_1.a), arg_1));
    let var_1 = Struct_1(~countOneBits(firstTrailingBit(1i)) << ((~4294967295u << (select(~u_input.a.x, max(arg_1.a.b, arg_1.a.b), true) % 32u)) % 32u), _wgslsmith_dot_vec3_u32(u_input.a.zxz, vec3<u32>(17147u, 4294967295u, ~arg_1.a.b)));
    var var_2 = arg_1;
    let var_3 = -711f;
    return -max(~(~(~var_1.a)), _wgslsmith_mult_i32(-1i, ~(-46959i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, -5142i), vec4<i32>(0i, -1i, -1i, -12618i)), -18744i, -(~2147483647i))), u_input.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(~(-vec2<i32>(0i, -13658i))), countOneBits(vec2<i32>(~2147483647i, func_1(vec3<f32>(564f, 1655f, -991f), Struct_5(Struct_1(1i, u_input.a.x)), global0.x)))), 0i, _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(802f, 459f, 447f, -1000f) + vec4<f32>(590f, 425f, 977f, -959f)))))));
}

