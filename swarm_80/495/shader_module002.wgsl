struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(2147483647i, Struct_1(vec2<f32>(-1547f, 1308f)), 4294967295u), Struct_2(2147483647i, Struct_1(vec2<f32>(2098f, -205f)), 49204u), Struct_2(-4487i, Struct_1(vec2<f32>(972f, 896f)), 4294967295u), Struct_2(1i, Struct_1(vec2<f32>(1034f, -694f)), 18842u));

var<private> global1: f32;

var<private> global2: Struct_3;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<i32> {
    var var_0 = u_input.c.x;
    var var_1 = Struct_3(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(413f, global2.c.a.x)), global2.b)), _wgslsmith_f_op_f32(-global2.b), false))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global2.c.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c.a.x, 917f), vec2<f32>(1168f, -1291f), global2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, -272f))))))), !(~firstTrailingBit(arg_1) < 0u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c.a.x, global2.c.a.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-229f, _wgslsmith_f_op_f32(-335f + var_1.c.a.x)))));
    var var_3 = vec4<f32>(1240f, -132f, 104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -584f))));
    let var_4 = -u_input.c;
    return select(firstLeadingBit(~vec2<i32>(~u_input.c.x, 0i)), vec2<i32>(var_4.x, 1i), false);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_div_vec2_i32(abs(func_3(false, 1u)), -_wgslsmith_div_vec2_i32(-u_input.d.xx, _wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(u_input.d.x, 7635i))) & select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, var_0.x), u_input.c) | var_0, var_0, true));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x & _wgslsmith_div_i32(var_1.x | var_1.x, var_0.x), var_0.x, min(-21155i, abs(var_0.x | u_input.d.x))), ~vec3<i32>(-20383i, ~reverseBits(var_0.x), -2147483647i));
    global2 = Struct_3(all(vec4<bool>(true, !select(global2.a, true, true), true, !all(vec4<bool>(arg_0.a, global2.a, arg_0.d, global2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), global2.c, arg_0.a);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-852f + -478f)));
    return _wgslsmith_dot_vec2_i32(var_2.yx, reverseBits(min(~reverseBits(var_2.yx), u_input.d.xz)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    var var_0 = min(u_input.c, select(vec2<i32>(arg_0 & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), vec2<i32>(-1i, arg_0)), _wgslsmith_mod_i32(arg_0, arg_0) & -20800i), ~vec2<i32>(func_2(Struct_3(arg_1.x, global2.c.a.x, global2.c, false), global2.c), _wgslsmith_dot_vec4_i32(vec4<i32>(30755i, u_input.c.x, arg_0, -2147483647i), vec4<i32>(1i, arg_0, 8310i, -19375i))), arg_1.x));
    let var_1 = var_0.x;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(10536u, 601u), 4u)];
    var var_3 = Struct_2(_wgslsmith_sub_i32(~(_wgslsmith_mod_i32(var_2.a, -12040i) | arg_0), 2147483647i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_2.b.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-190f + global2.b) - _wgslsmith_f_op_f32(f32(-1f) * -1856f)))), _wgslsmith_add_u32(~u_input.b ^ firstTrailingBit(var_2.c), ~59629u));
    var_3 = Struct_2(max(_wgslsmith_clamp_i32(u_input.c.x, select(12210i & arg_0, -var_3.a, any(vec2<bool>(arg_1.x, true))), -_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(77255i, 17675i, -49359i))), u_input.d.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_2.b.a.x) * _wgslsmith_f_op_f32(var_2.b.a.x - -384f)), _wgslsmith_f_op_f32(-var_3.b.a.x))), ~(_wgslsmith_add_u32(32672u | var_2.c, 44081u) | select(4294967295u ^ var_3.c, ~0u, !arg_1.x)));
    return _wgslsmith_mult_u32(~(~var_3.c), max(8522u, select(max(var_2.c, countOneBits(0u)), _wgslsmith_add_u32(49966u, var_3.c), all(!vec3<bool>(global2.d, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~countOneBits(13201u)), ~_wgslsmith_clamp_u32(func_1(u_input.d.x, vec3<bool>(false, global2.a, false)), u_input.a, _wgslsmith_add_u32(29963u, u_input.a))), 4u)];
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a.x, 1192f) * _wgslsmith_f_op_f32(-2813f - -1579f)))))));
    global2 = Struct_3(all(select(!vec4<bool>(false, global2.a, false, global2.d), select(vec4<bool>(true, global2.a, false, true), vec4<bool>(true, global2.a, false, global2.a), vec4<bool>(global2.d, false, global2.d, false)), -1653f == global2.c.a.x)) | global2.a, _wgslsmith_f_op_f32(trunc(249f)), global2.c, !global2.d);
    let var_1 = true;
    global0 = array<Struct_2, 4>();
    let var_2 = Struct_4(all(!select(vec4<bool>(global2.a, global2.d, false, true), select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(global2.d, global2.a, true, global2.a), false), vec4<bool>(true, global2.a, true, var_1))), _wgslsmith_f_op_f32(global2.c.a.x + _wgslsmith_f_op_f32(-324f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.a.x)) - _wgslsmith_f_op_f32(max(global2.b, global2.c.a.x))))), ~44740u, Struct_3(true, -128f, Struct_1(var_0.b.a), true || all(select(vec2<bool>(true, global2.a), vec2<bool>(var_1, global2.d), var_1))), Struct_1(_wgslsmith_f_op_vec2_f32(global2.c.a * global2.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.x, vec3<u32>(111245u, 1u, ~(~(~var_0.c))), -1000f, vec3<f32>(global2.b, _wgslsmith_f_op_f32(ceil(926f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b + -1000f), var_0.b.a.x)))));
}

