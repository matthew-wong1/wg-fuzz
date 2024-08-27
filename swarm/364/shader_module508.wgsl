struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-254f, 247f), 0u, vec3<i32>(2147483647i, 42158i, 6857i));

var<private> global1: array<Struct_1, 12>;

var<private> global2: vec2<i32> = vec2<i32>(-9707i, -56726i);

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-382f, -1258f), 16211u, vec3<i32>(1i, 0i, -16035i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec3<u32> {
    let var_0 = abs(firstTrailingBit(-(vec4<i32>(12322i, global0.c.x, global3.c.x, 1i) >> (~vec4<u32>(global0.b, 1u, u_input.b.x, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), 2602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 482f))));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 12u)];
    let var_3 = countOneBits(global0.c.x) ^ var_2.c.x;
    global3 = global1[_wgslsmith_index_u32(global3.b, 12u)];
    return max(_wgslsmith_sub_vec3_u32(~abs(u_input.b), min(~u_input.a, u_input.a)), ~(~(~u_input.b)));
}

fn func_3() -> vec2<f32> {
    global1 = array<Struct_1, 12>();
    var var_0 = any(vec4<bool>(!(~54301u <= (0u >> (global0.b % 32u))), any(vec4<bool>(true, true, true, true)) & (any(vec2<bool>(true, false)) && true), (global2.x > -86847i) && true, true));
    let var_1 = global0.c.x;
    let var_2 = select(true, !all(vec4<bool>(true, true, true, false)), false);
    var var_3 = -max(_wgslsmith_mod_i32(firstTrailingBit(global2.x) >> (40944u % 32u), max(-33994i, reverseBits(global3.c.x))), 21103i);
    return vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * global3.a.x)))), _wgslsmith_f_op_f32(step(1714f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) * 1f), 1263f, false)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: f32) -> vec2<bool> {
    global3 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, 1u), vec4<u32>(global3.b, 1u, global0.b, global3.b)) >> ((global3.b & 10558u) % 32u), u_input.a.x)), 12u)];
    var var_0 = ~((u_input.a << (~vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u))) | (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, 41618u), vec3<u32>(16661u, 1u, global0.b)) ^ u_input.b)) & ~func_2();
    global2 = vec2<i32>(arg_1.x ^ (_wgslsmith_sub_i32(~33284i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1478i, global2.x, arg_1.x, global2.x), vec4<i32>(2147483647i, 0i, global0.c.x, global2.x))) >> (_wgslsmith_sub_u32(max(4294967295u, 58671u), 1u) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-39043i, -(i32(-1i) * -7918i)), abs(countOneBits(arg_1.yy) << (var_0.xx % vec2<u32>(32u)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))))), global0.b, firstTrailingBit(-select(u_input.c, arg_1, vec3<bool>(false, arg_0.x, arg_0.x)) >> (u_input.a % vec3<u32>(32u))));
    global3 = var_1;
    return select(select(arg_0.wz, select(vec2<bool>(global3.a.x < -2237f, arg_0.x), arg_0.zz, select(!arg_0.zy, arg_0.zy, arg_0.wy)), true), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(select(global3.a.x, arg_2, true))) > _wgslsmith_f_op_vec2_f32(func_3()).x, any(!arg_0)), select(arg_0.zx, !arg_0.zz, select(select(select(arg_0.wz, arg_0.yz, arg_0.x), !arg_0.yz, select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, false), arg_0.x)), select(vec2<bool>(arg_0.x, true), select(vec2<bool>(true, arg_0.x), vec2<bool>(false, false), true), true), all(arg_0.zyz))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(798f, global3.a.x)) * vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(floor(global0.a.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(-1000f, 586f)) * global0.a), vec2<f32>(_wgslsmith_div_f32(-1878f, global3.a.x), _wgslsmith_f_op_f32(global0.a.x - 482f)))), all(func_1(vec4<bool>(true, true, true, true), ~vec3<i32>(-2147483647i, -3880i, 8920i), -650f)))), _wgslsmith_f_op_vec2_f32(ceil(global3.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(-global3.a)));
    let var_2 = Struct_1(global3.a, ~(~185u), vec3<i32>(abs(2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-global3.c.zy, global0.c.zx), vec2<i32>(-1i) * -vec2<i32>(-40431i, u_input.c.x)), -1i));
    global1 = array<Struct_1, 12>();
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-156f - global3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3)), 658f), var_3, select(u_input.b.zx, select(min(vec2<u32>(u_input.a.x, global3.b), u_input.b.zy & vec2<u32>(u_input.a.x, global3.b)), func_2().xy, true), false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-428f, -631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f + var_3) * 491f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, -760f, -229f)))))), true != (_wgslsmith_f_op_f32(-var_2.a.x) == 648f))), global0.a);
}

