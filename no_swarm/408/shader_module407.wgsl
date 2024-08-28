struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 27>;

var<private> global2: array<Struct_3, 4>;

var<private> global3: vec3<f32> = vec3<f32>(-1576f, 643f, -884f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-global0.d.x));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.b))));
    let var_2 = true && global0.a.x;
    var_0 = 423f;
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.b.wxy, _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, var_1.a.x, global3.x), vec3<f32>(-707f, 1396f, global0.b.x)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(global0.d)), var_1.a.yyw, all(global0.a.zwx)))), vec3<f32>(global3.x, 1000f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(global3.x, 1770f)))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(global0.d)))));
    return (-global0.c >> (~vec2<u32>(35644u, max(global0.e.x, 1u)) % vec2<u32>(32u))) ^ ~vec2<i32>(global0.c.x, reverseBits(-global0.c.x));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>) -> bool {
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    let var_0 = arg_0.a;
    global3 = var_0.d.b.yyx;
    return (~abs(global0.e.x) << (1u % 32u)) > global0.e.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<bool>) -> vec3<u32> {
    global1 = array<bool, 27>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global0.d.x)), global3.yx))), func_4(Struct_5(global2[_wgslsmith_index_u32(~global0.e.x, 4u)], Struct_2(_wgslsmith_f_op_vec2_f32(global0.b.yw + global0.b.xy), any(global0.a.yww), Struct_1(global0.a, vec4<f32>(756f, 966f, arg_1, -2169f), arg_0.xy, vec3<f32>(arg_1, 706f, -212f), vec3<u32>(global0.e.x, global0.e.x, 72879u)), func_3(vec4<u32>(global0.e.x, global0.e.x, 14851u, global0.e.x))), global3.x, ~global0.e, u_input.c), global0.a.xx), Struct_1(global0.a, vec4<f32>(-296f, global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-274f + -764f))), -180f), firstLeadingBit(select(arg_0.zw, u_input.c.yy, u_input.a.x >= global0.e.x)), global0.b.ywy, u_input.a), ~arg_0.yw);
    let var_1 = abs(~_wgslsmith_mod_u32(global0.e.x, _wgslsmith_sub_u32(~global0.e.x, global0.e.x >> (var_0.c.e.x % 32u))));
    let var_2 = global0.e.x;
    let var_3 = _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b | abs(vec2<u32>(var_0.c.e.x, u_input.a.x)), var_0.c.e.yx), 11753u), abs(1u));
    return vec3<u32>(u_input.b.x, var_0.c.e.x & var_3, min(u_input.a.x, var_3));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = vec3<u32>(~global0.e.x, 41235u, firstTrailingBit(0u)) >> (func_2(_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.x, u_input.c.x, -19580i, 2147483647i), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(global0.c.x, -2147483647i, -13701i, 1i)) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(global0.e.x, 34644u, 1u, 0u), vec4<u32>(1u, 1u, 614u, global0.e.x)) >> ((vec4<u32>(2982u, global0.e.x, 2777u, u_input.a.x) | vec4<u32>(global0.e.x, 0u, u_input.a.x, global0.e.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f + global0.d.x))), global0.a.xw) % vec3<u32>(32u));
    global0 = Struct_1(vec4<bool>(!select(true & global1[_wgslsmith_index_u32(var_0.x, 27u)], global0.a.x, global0.a.x), u_input.c.x <= global0.c.x, global0.a.x, (~global0.e.x >> (20496u % 32u)) <= _wgslsmith_mult_u32(firstLeadingBit(u_input.b.x), 13728u << (u_input.b.x % 32u))), _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, global3.x, arg_0.x), vec4<f32>(arg_0.x, -857f, global3.x, arg_0.x)))), false))), _wgslsmith_clamp_vec2_i32(u_input.c.zx, _wgslsmith_clamp_vec2_i32(u_input.c.yz, vec2<i32>(global0.c.x, func_3(vec4<u32>(0u, 1u, 31100u, 0u)).x), -vec2<i32>(global0.c.x, -2147483647i)), ~(~global0.c & ~u_input.c.xx)), arg_0, ~vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(86621u, global0.e.x), global0.e.yz)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.x, global0.e.x, global0.e.x), vec4<u32>(global0.e.x, 1u, global0.e.x, 34966u)) ^ ~u_input.a.x, u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global0.b.x, -921f));
    var var_2 = !(!select(select(!vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(global1[_wgslsmith_index_u32(global0.e.x, 27u)], false), global0.a.x & global1[_wgslsmith_index_u32(56299u, 27u)]), vec2<bool>(true, true), !select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), global0.a.yw, global0.a.yx)));
    var var_3 = 1u | min(18964u, func_2((vec4<i32>(26520i, global0.c.x, u_input.c.x, u_input.c.x) | vec4<i32>(global0.c.x, -1i, u_input.c.x, global0.c.x)) >> ((vec4<u32>(global0.e.x, var_0.x, 1u, u_input.a.x) | vec4<u32>(global0.e.x, 43167u, var_0.x, global0.e.x)) % vec4<u32>(32u)), 907f, vec2<bool>(!global0.a.x, u_input.b.x >= u_input.a.x)).x);
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(select(_wgslsmith_add_vec2_i32(firstLeadingBit(abs(global0.c)), vec2<i32>(-global0.c.x, u_input.c.x)), select(vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(-11667i, -1i), true) & ~vec2<i32>(1i, -1i), global0.b.x < _wgslsmith_f_op_f32(abs(global3.x))));
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1309f), 968f), abs(0i & _wgslsmith_div_i32(u_input.c.x, global0.c.x)) <= min(func_1(global0.d), abs(u_input.c.x)), Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1836f, 642f, 783f, _wgslsmith_f_op_f32(abs(global0.d.x))))), vec2<i32>(0i >> (1u % 32u), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.yww))), global0.e), u_input.c.zz);
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec2<f32>(var_1.c.b.x, _wgslsmith_f_op_f32(floor(1844f))), _wgslsmith_f_op_f32(sign(var_1.c.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(459f * var_1.c.d.x), var_1.c.b.x) + -1088f)));
}

