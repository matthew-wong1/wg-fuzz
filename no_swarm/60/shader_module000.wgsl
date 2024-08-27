struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_4) -> u32 {
    return abs(126443u);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(u_input.c, Struct_2(vec4<u32>(~u_input.b.x, 63318u, ~88953u, ~(~u_input.b.x)), arg_1, vec3<bool>(true, true, select(arg_1.b.x || arg_1.b.x, false, !arg_1.b.x))), Struct_2(vec4<u32>(~33508u, func_3(Struct_3(2147483647i, Struct_2(vec4<u32>(82585u, u_input.b.x, u_input.b.x, 0u), Struct_1(114f, arg_1.b), vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 37860u, u_input.b.x), Struct_1(global0.x, vec2<bool>(true, true)), vec3<bool>(arg_1.b.x, arg_1.b.x, true))), ~u_input.b.yz, Struct_4(Struct_1(332f, arg_1.b), vec4<f32>(global0.x, arg_1.a, arg_1.a, global0.x), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.b.x), Struct_1(-494f, arg_1.b), vec3<bool>(arg_1.b.x, true, true)), arg_1)), _wgslsmith_div_u32(42083u, u_input.b.x), u_input.b.x | reverseBits(u_input.b.x)), arg_1, select(vec3<bool>(!arg_1.b.x, !arg_1.b.x, true), select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), !vec3<bool>(false, arg_1.b.x, true)), (0u <= u_input.b.x) && (true != arg_1.b.x))));
    return var_0.c;
}

fn func_1(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = arg_0.x;
    var var_1 = Struct_4(Struct_1(-1001f, vec2<bool>(global0.x <= global0.x, u_input.b.x <= u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-830f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-456f)))), -1881f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1468f + global0.x) + _wgslsmith_f_op_f32(step(global0.x, 1114f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(371f, global0.x)) * 861f), global0.x, !arg_0.x))), func_2(_wgslsmith_div_i32(u_input.a, ~(-17141i)), Struct_1(global0.x, select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), true))), func_2(-(i32(-1i) * -u_input.c), func_2(firstLeadingBit(u_input.d.x), func_2(-u_input.d.x, func_2(2147483647i, Struct_1(-494f, arg_0.xx)).b).b).b).b);
    global1 = -(u_input.c & 1i);
    var_1 = Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(219f, global0.x)), var_1.c.b.a), !select(select(var_1.d.b, vec2<bool>(true, var_0), var_0), vec2<bool>(false, false), var_0 || false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -112f, 1055f, -461f) - var_1.b) * _wgslsmith_f_op_vec4_f32(abs(var_1.b)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -617f, _wgslsmith_f_op_f32(ceil(var_1.c.b.a))) - _wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1165f, global0.x, var_1.c.b.a, -1607f)))))), var_1.c, Struct_1(_wgslsmith_f_op_f32(ceil(641f)), arg_0.zy));
    var var_2 = vec3<u32>(~(~(~_wgslsmith_sub_u32(var_1.c.a.x, u_input.b.x))), _wgslsmith_div_u32(func_2(u_input.a, func_2(-33395i, var_1.d).b).a.x & var_1.c.a.x, _wgslsmith_mod_u32(0u, 4294967295u)), 4294967295u);
    return ~var_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(!vec3<bool>(true, true, global0.x != -643f)), func_2((firstTrailingBit(-3380i) >> (u_input.b.x % 32u)) ^ countOneBits(~u_input.a), func_2(min(_wgslsmith_mod_i32(2147483647i, u_input.d.x), u_input.a), func_2(u_input.c, Struct_1(global0.x, vec2<bool>(false, false))).b).b).b, vec3<bool>(true, all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), any(vec3<bool>(true, true, true))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - var_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * -921f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1309f, var_0.b.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + _wgslsmith_f_op_f32(ceil(-198f)))))));
    global1 = u_input.d.x;
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, 1i, u_input.a), vec4<i32>(1i, -1i, 2147483647i, u_input.d.x)) | countOneBits(1i), u_input.a) & ~26399i, 67789i, u_input.c);
    var var_2 = -abs(_wgslsmith_add_vec3_i32(vec3<i32>(-12328i, -var_1.x, firstTrailingBit(u_input.c)), u_input.d));
    let var_3 = Struct_4(func_2(2147483647i, var_0.b).b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-166f, 1002f, 1004f, var_0.b.a), vec4<f32>(-2198f, var_0.b.a, global0.x, -1071f), vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.b.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a, var_0.b.a)), -454f, _wgslsmith_f_op_f32(ceil(var_0.b.a)), global0.x))), func_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 20541i, 23068i, u_input.a) ^ vec4<i32>(0i, u_input.c, 0i, 1i), vec4<i32>(19291i, u_input.d.x, var_2.x, 18363i)), func_2(-17345i, var_0.b).b), func_2(1i, var_0.b).b);
    var var_4 = Struct_5(var_0, func_2(var_2.x, Struct_1(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(var_0.b.a * -566f))), !var_3.a.b)));
    var var_5 = vec2<i32>(-min(u_input.a, -1i), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~45859u), firstLeadingBit(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.d.x, u_input.c), vec3<i32>(2147483647i, var_1.x, -81011i))) << (_wgslsmith_dot_vec2_u32(select(u_input.b.zy, vec2<u32>(var_0.a.x, u_input.b.x), var_0.b.b.x), ~u_input.b.xz) % 32u)), ~var_0.a.zx, select(1u >> (u_input.b.x % 32u), ~func_1(!var_3.c.c).x, true));
}

