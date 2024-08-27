struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: Struct_1;

var<private> global4: vec3<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global3.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.b, global3.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1100f, global3.b.x, global3.b.x) * global3.b)))), u_input.d.x);
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    var var_1 = -102f;
    let var_2 = var_0.b.zz;
    return global2[_wgslsmith_index_u32(~4351u, 8u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    global0 = array<Struct_1, 19>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-921f + -1008f))))), _wgslsmith_f_op_f32(select(arg_0.b.x, -327f, false))), global3.b, global3.c);
    var var_1 = _wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_div_vec3_f32(arg_1.zwy, _wgslsmith_f_op_vec3_f32(max(arg_0.b, vec3<f32>(var_0.a, _wgslsmith_f_op_f32(global3.b.x - 1000f), arg_0.a)))));
    global4 = ~arg_2.zzx;
    global0 = array<Struct_1, 19>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().a) * _wgslsmith_f_op_f32(-arg_1.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = func_2();
    global2 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(func_2(), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_2.b.x, var_0.b.x, global3.b.x), vec4<f32>(global3.b.x, 524f, arg_2.a, var_0.b.x)), _wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(60828u, arg_2.c, 0u, 34949u), vec4<u32>(1040u, global4.x, 1u, arg_2.c)), _wgslsmith_clamp_u32(2066u, arg_0.x, 36835u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(290f, -909f)) + _wgslsmith_div_f32(-708f, 401f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(func_3(arg_2, _wgslsmith_div_vec4_f32(vec4<f32>(-1573f, global3.a, 2111f, -620f), vec4<f32>(-1296f, 708f, -2390f, 1000f)), _wgslsmith_mult_vec4_u32(u_input.e, u_input.e), 84530u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_2.b.x))));
    var var_2 = _wgslsmith_mult_i32(u_input.c, countOneBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.c, -29621i, 2161i)), vec3<i32>(u_input.c, 9229i, u_input.c) >> (u_input.d % vec3<u32>(32u)))) | ~(~_wgslsmith_sub_i32(u_input.c, u_input.c)));
    let var_3 = func_2();
    return !select(!arg_1, select(arg_1, !vec3<bool>(arg_1.x, false, true), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, false), select(vec3<bool>(true, arg_1.x, arg_1.x), arg_1, vec3<bool>(true, true, arg_1.x)))), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = max(~vec3<u32>(~(~64481u), 67346u, ~u_input.a), vec3<u32>(~4294967295u, firstTrailingBit(global3.c), u_input.d.x));
    let var_0 = select(vec3<bool>(any(vec2<bool>(true, true)), true, true), select(func_1(_wgslsmith_sub_vec2_u32(u_input.d.xz, ~global4.yx), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(false, false, false)), Struct_1(1000f, _wgslsmith_f_op_vec3_f32(-global3.b), countOneBits(global3.c))), vec3<bool>(any(vec3<bool>(false, false, false)), all(vec4<bool>(false, true, true, true)) || true, false), all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)))), !func_1(vec2<u32>(global3.c, 1u), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c, global3.c, global3.c, u_input.b), ~vec4<u32>(17595u, u_input.e.x, 76722u, global3.c)), 8u)]));
    var var_1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.x, global3.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(998f)))), global3.a)), _wgslsmith_f_op_vec3_f32(trunc(global3.b)), global3.c);
    var var_3 = func_2();
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1609f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - global3.b.x)), 1067f, global3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2808i) << (~u_input.e.x % 32u), ~0u, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~select(var_3.c, _wgslsmith_sub_u32(4294967295u, 86790u), var_0.x), 22u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a, var_3.b.x, -800f, -247f)))))), u_input.e, u_input.e.x)), global3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), -1000f));
}

