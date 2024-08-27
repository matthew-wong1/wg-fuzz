struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

var<private> global2: array<i32, 23> = array<i32, 23>(-1i, 1i, -1i, 53937i, -33931i, -1i, i32(-2147483648), 0i, 0i, 19841i, 21294i, 2147483647i, 1i, -1i, 1i, -38572i, 2950i, 0i, 1i, -1i, 1i, -18385i, -5914i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = 1u;
    var_0 = 0u;
    global2 = array<i32, 23>();
    global1 = firstTrailingBit(firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.c.x, -41951i, -global1.x, -global1.x))));
    let var_1 = vec4<i32>((select(~u_input.c.x, global2[_wgslsmith_index_u32(0u, 23u)], select(arg_3.a.x, false, false)) ^ -_wgslsmith_sub_i32(-21408i, -6834i)) | (global2[_wgslsmith_index_u32(0u, 23u)] ^ firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 23u)] | -1i)), -25810i, u_input.c.x, global2[_wgslsmith_index_u32(~1848u, 23u)]);
    return global0.a;
}

fn func_2(arg_0: i32) -> Struct_2 {
    global2 = array<i32, 23>();
    global0 = Struct_1(vec2<bool>(any(vec4<bool>(true, global0.a.x, true, true)), global0.a.x), _wgslsmith_f_op_vec2_f32(-global0.b), ~reverseBits(global0.c | vec4<u32>(1941u, global0.c.x, u_input.a.x, u_input.b.x)) ^ global0.c);
    var var_0 = global0.b.x;
    var_0 = global0.b.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -367f)))) - 1794f));
    return Struct_2(u_input.b.x, Struct_1(select(func_3(abs(12849u), -1826f, var_1 >= var_1, Struct_1(global0.a, global0.b, vec4<u32>(42190u, u_input.b.x, 15613u, u_input.a.x))), !global0.a, false), global0.b, vec4<u32>(0u, global0.c.x, 1u, 46412u)), Struct_1(select(vec2<bool>(global0.a.x, global0.a.x), !(!vec2<bool>(true, global0.a.x)), !vec2<bool>(global0.a.x, global0.a.x)), vec2<f32>(1573f, 1314f), _wgslsmith_add_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.x, u_input.a.x, global0.c.x, 0u), u_input.a), countOneBits(u_input.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(24340u, 1012u, 55344u, u_input.a.x), vec4<u32>(29916u, 1u, 26737u, global0.c.x)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = u_input.a.x;
    global0 = func_2(~(-global1.x)).b;
    let var_1 = func_2(35137i).c;
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-56215i, global1.x, -2147483647i), global1.wyw)), u_input.c.x, select(global1.x, 58955i, all(!vec3<bool>(var_1.a.x, arg_0.c.a.x, true)))), _wgslsmith_mod_vec4_i32(vec4<i32>(select(u_input.c.x, global2[_wgslsmith_index_u32(51166u, 23u)], false), _wgslsmith_dot_vec4_i32(vec4<i32>(27385i, global2[_wgslsmith_index_u32(var_1.c.x, 23u)], 28170i, global1.x), vec4<i32>(0i, global1.x, 1i, 2147483647i)), 21118i, -2147483647i ^ global1.x), abs(~vec4<i32>(global1.x, u_input.c.x, global1.x, -57014i))) << (func_2(abs(-2147483647i) >> (arg_0.a % 32u)).b.c % vec4<u32>(32u)));
    var var_2 = Struct_1(arg_0.b.a, var_1.b, ~u_input.b);
    return var_1;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(1262f + _wgslsmith_f_op_f32(sign(arg_1.c.b.x)));
    global0 = func_4(func_2(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(arg_1.a, arg_1.c.c.x), ~global0.c.x), 23u)], 0i)));
    var var_1 = Struct_1(!select(vec2<bool>(any(vec2<bool>(false, true)), select(global0.a.x, arg_0, arg_1.b.a.x)), !vec2<bool>(arg_1.c.a.x, false), arg_1.b.a), global0.b, global0.c);
    let var_2 = !func_4(arg_1).a.x;
    var_1 = Struct_1(!(!select(func_3(2850u, -121f, true, arg_1.b), var_1.a, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.b + var_1.b) - vec2<f32>(-306f, -657f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.b.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(642f, arg_1.c.b.x) - vec2<f32>(arg_1.c.b.x, var_0)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-327f, -567f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, arg_1.b.b.x))), !select(vec2<bool>(var_1.a.x, global0.a.x), !vec2<bool>(global0.a.x, false), var_1.a))), ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.a), u_input.a.xx), global0.c.x, 36155u, u_input.b.x), select(var_1.c, vec4<u32>(global0.c.x, 1u, arg_2, 22958u), vec4<bool>(true, global0.a.x, var_2, global0.a.x)) ^ ~u_input.b));
    return func_4(arg_1).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!vec2<bool>(any(!global0.a), any(select(vec3<bool>(global0.a.x, true, false), vec3<bool>(true, global0.a.x, true), false))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x) - _wgslsmith_f_op_f32(func_1(true, Struct_2(global0.c.x, Struct_1(global0.a, vec2<f32>(global0.b.x, global0.b.x), global0.c), Struct_1(global0.a, vec2<f32>(global0.b.x, 629f), vec4<u32>(80164u, 4294967295u, 0u, u_input.b.x))), min(1u, global0.c.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-303f, 950f, false)) + _wgslsmith_f_op_f32(ceil(global0.b.x)))))), vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(u_input.b.x, 41822u) & (global0.c.x ^ 1u)), ~u_input.a.x, u_input.b.x, global0.c.x));
    global0 = Struct_1(vec2<bool>(any(!vec2<bool>(global0.a.x, global0.a.x)), global0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1038f, global0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(-1163f + global0.b.x), _wgslsmith_f_op_f32(-global0.b.x)), global0.a.x))), firstLeadingBit(func_2(~global1.x).c.c));
    let var_0 = _wgslsmith_f_op_f32(max(-1790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0.b.x) - 1266f))) * global0.b.x)));
    let var_1 = func_2(_wgslsmith_dot_vec3_i32(~(global1.yxw >> (u_input.a.zyy % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_i32(vec3<i32>(global1.x, global1.x, u_input.c.x), vec3<i32>(global1.x, global1.x, global1.x) | global1.zzy), global1.xyw));
    global0 = Struct_1(global0.a, var_1.c.b, ~vec4<u32>(1472u, ~_wgslsmith_add_u32(global0.c.x, u_input.b.x), 1u, firstLeadingBit(u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(16416i, global1.x, global1.x), global1.wy, _wgslsmith_div_u32(~func_2(i32(-1i) * -1i).b.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~1u), global0.c.ww)));
}

