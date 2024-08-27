struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false));

var<private> global1: Struct_3;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_1(vec3<bool>(global1.a.a.x, global1.a.a.x & !(!global1.a.a.x), all(global1.c.a)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(max(-402f, 1251f)))), _wgslsmith_f_op_f32(125f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.b.x + global1.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.b.yx - global1.a.c) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1314f, 1008f))) - _wgslsmith_f_op_vec2_f32(-global1.c.c))))));
    let var_1 = arg_0;
    global0 = array<vec4<bool>, 3>();
    let var_2 = global1.c;
    global0 = array<vec4<bool>, 3>();
    return -(~(vec4<i32>(-1i) * -global1.e));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = ~(~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(12786u, global1.d, global1.d), vec3<u32>(u_input.a.x, 37796u, u_input.a.x))));
    let var_1 = false;
    let var_2 = arg_0;
    global1 = Struct_3(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.x + 1144f)), global1.a, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0, 4294967295u), abs(39546u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, max(0u, 1775u), 4294967295u, ~4294967295u), ~vec4<u32>(17794u, global1.d, 4294967295u, global1.d))), -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.e.x, global1.e.x, 59126i, global1.e.x), func_3(var_2, 2003i, vec3<u32>(1u, arg_0, var_2)))));
    global1 = Struct_3(global1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.x) + _wgslsmith_f_op_f32(global1.c.b.x - 123f))))), global1.c, max(~(abs(global1.d) & 39151u), firstLeadingBit(~global1.d) & ~firstLeadingBit(var_0.x)), vec4<i32>(-global1.e.x, ~(-2147483647i), global1.e.x, firstTrailingBit(~(global1.e.x | global1.e.x))));
    return Struct_3(global1.c, global1.c.c.x, global1.c, 78139u, (~global1.e >> (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(13492u, 60703u, 64895u, 8423u), vec4<u32>(0u, 18668u, u_input.a.x, arg_0)), vec4<u32>(arg_0, arg_0, 4294967295u, global1.d)) % vec4<u32>(32u))) >> (select(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(14332u, 0u, var_2, var_0.x), vec4<u32>(var_0.x, 13749u, arg_0, 0u), vec4<u32>(3180u, u_input.a.x, 15342u, var_2))), vec4<u32>(_wgslsmith_sub_u32(arg_0, var_2), countOneBits(46167u), u_input.a.x, ~global1.d), !(!global0[_wgslsmith_index_u32(var_0.x, 3u)])) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(25907u, 14447u, u_input.a.x), vec3<u32>(78266u, 39729u, global1.d)), global1.d), u_input.a.x << (global1.d % 32u)), ~10902u);
    global0 = array<vec4<bool>, 3>();
    global1 = func_2(var_0.a.x);
    global0 = array<vec4<bool>, 3>();
    global0 = array<vec4<bool>, 3>();
    return -firstTrailingBit(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-(abs(-66477i) | (global1.e.x ^ 1i)), global1.e.x) & ~_wgslsmith_mod_vec2_i32(~(~vec2<i32>(global1.e.x, -1i)), ~func_1(Struct_1(global1.c.a, global1.c.b, vec2<f32>(global1.a.c.x, 588f)), global1.e.zz, Struct_1(global1.c.a, global1.a.b, vec2<f32>(global1.b, global1.c.c.x)), Struct_1(global1.c.a, vec4<f32>(global1.b, global1.b, global1.c.b.x, 1058f), global1.c.c)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -145f);
    let var_2 = func_2(22412u).e.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-494f - global1.a.b.x) + _wgslsmith_f_op_f32(-global1.c.b.x)))));
    let var_4 = 1u;
    var_3 = 1396f;
    var var_5 = Struct_2(u_input.a & u_input.a, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 35841u), (max(global1.d, var_5.a.x) & var_4) << (global1.d % 32u), var_5.b));
}

