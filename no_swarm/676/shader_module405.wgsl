struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<u32>, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.xz) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 299f)), global0.b.zy))))), global0.b, select(!select(select(vec2<bool>(arg_1, global0.c.x), vec2<bool>(arg_1, arg_1), global0.c), select(global0.c, global0.c, global0.c), -63437i < arg_2.x), vec2<bool>(!any(vec3<bool>(true, false, global0.c.x)), any(global0.c)), arg_1), _wgslsmith_div_i32((countOneBits(0i) | (global0.d | 1i)) >> (u_input.b.x % 32u), _wgslsmith_div_i32(firstLeadingBit(~global0.d), arg_2.x)));
    let var_0 = arg_3.x;
    let var_1 = firstLeadingBit(1i);
    global2 = array<vec3<u32>, 15>();
    global2 = array<vec3<u32>, 15>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.b.yz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - global0.b.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), vec2<bool>(global0.c.x, global0.c.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(737f, 1000f), vec2<bool>(global0.c.x, false))), vec2<f32>(1000f, global0.b.x), !global0.c)))) + global0.a));
}

fn func_2() -> u32 {
    var var_0 = -13087i;
    let var_1 = vec3<bool>(all(!(!global0.c)), (i32(-1i) * -2030i) > _wgslsmith_sub_i32(global0.d >> ((u_input.a | 71423u) % 32u), countOneBits(global0.d) >> (min(1u, 1u) % 32u)), false);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0.b.zz)), _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 793f, -601f))), var_1.zx, -25900i);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(select(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, global0.d, var_2.d), vec3<i32>(1i, -2147483647i, global0.d)), firstLeadingBit(-32212i), select(true, true, var_1.x)) | (i32(-1i) * -var_2.d), false, _wgslsmith_mod_vec3_i32(select(vec3<i32>(global0.d, 1i, global0.d), vec3<i32>(global0.d, var_2.d, 1i), var_1), ~vec3<i32>(var_2.d, var_2.d, 0i)) ^ countOneBits(vec3<i32>(var_2.d, var_2.d, 0i)), ~_wgslsmith_mult_vec3_u32(min(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], vec3<u32>(3885u, 108890u, 47431u)), vec3<u32>(1u, 37334u, global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x) * var_2.b) - var_2.b), var_2.c, -((var_2.d ^ max(var_2.d, var_2.d)) << (u_input.b.x % 32u)));
    global2 = array<vec3<u32>, 15>();
    return global1.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> vec2<bool> {
    var var_0 = vec3<u32>(func_2(), 1u, ~u_input.a);
    var var_1 = select(false, false, global0.c.x);
    var_1 = !arg_0.d.c.x;
    var var_2 = u_input.b;
    let var_3 = arg_0.d.d;
    return vec2<bool>(-1000f < arg_1.x, arg_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.x)) - _wgslsmith_f_op_f32(trunc(arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!vec4<bool>(any(!global0.c), any(func_1(Struct_2(vec4<bool>(true, global0.c.x, false, global0.c.x), Struct_1(vec2<f32>(-695f, global0.b.x), vec3<f32>(-274f, 559f, global0.b.x), global0.c, global0.d), vec3<i32>(1i, 15032i, 0i), Struct_1(vec2<f32>(global0.a.x, 275f), vec3<f32>(-346f, -805f, -898f), vec2<bool>(false, false), 0i), vec4<i32>(global0.d, 12159i, global0.d, global0.d)), vec4<f32>(-978f, global0.a.x, global0.b.x, 528f), true)), global0.c.x, global0.c.x), Struct_2(vec4<bool>(false, false, true, all(!vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.b.x + -1058f), _wgslsmith_f_op_f32(round(-483f))), vec3<f32>(global0.a.x, 840f, _wgslsmith_div_f32(global0.a.x, global0.b.x)), !global0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, global0.d, global0.d), vec3<i32>(0i, global0.d, global0.d)) << (_wgslsmith_sub_u32(global1.x, 89133u) % 32u)), -(min(vec3<i32>(global0.d, -2147483647i, global0.d), vec3<i32>(global0.d, 24536i, global0.d)) & vec3<i32>(0i, global0.d, global0.d)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1033f, -869f))), _wgslsmith_f_op_vec3_f32(-global0.b), !(!vec2<bool>(true, global0.c.x)), firstTrailingBit(firstLeadingBit(1i))), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, 2147483647i), vec2<i32>(25534i, 1i)), _wgslsmith_clamp_i32(global0.d & global0.d, -32925i, _wgslsmith_dot_vec3_i32(vec3<i32>(5011i, -13112i, global0.d), vec3<i32>(-1868i, 19519i, 1i))), global0.d, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, global0.d, -2147483647i, -54093i)), vec4<i32>(global0.d, global0.d, 0i, -27418i)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, -1603f)))))), Struct_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(274f, 1959f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(1263f)), global0.b.x, global0.b.x), global0.c, _wgslsmith_div_i32(global0.d, global0.d)));
    var var_1 = global1.x;
    let var_2 = var_0.b;
    let var_3 = var_0.b;
    let var_4 = var_0.d.a;
    let var_5 = false && !any(select(vec2<bool>(var_2.a.x, var_3.d.c.x), func_1(Struct_2(vec4<bool>(false, var_0.a.x, var_0.d.c.x, true), var_2.d, vec3<i32>(var_2.e.x, -1i, -2147483647i), var_2.b, vec4<i32>(global0.d, var_2.b.d, var_2.c.x, -10840i)), vec4<f32>(var_3.b.b.x, 1810f, var_3.b.b.x, 1000f), var_3.d.c.x), false));
    global1 = u_input.b.wzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1655f - var_0.c), 21300u, -21589i, var_0.d.d, var_2.e.x << (31128u % 32u));
}

