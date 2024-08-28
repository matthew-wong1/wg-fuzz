struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, ~(~_wgslsmith_add_u32(~128304u, 0u))), 20u)];
    var var_1 = all(select(vec3<bool>(true, var_0.b, true), !vec3<bool>(!var_0.b, var_0.b, true), !vec3<bool>(var_0.b, true, any(vec3<bool>(var_0.b, var_0.b, var_0.b)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(134f, 1000f, -539f, 620f) - vec4<f32>(-770f, -169f, 2817f, 750f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1185f, 1841f, 667f, 2393f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1339f, -1136f, -1326f, 547f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1074f, -259f, 1558f, 857f), vec4<f32>(1395f, -1000f, -1000f, 795f), vec4<bool>(var_0.b, var_0.b, var_0.b, true))) * vec4<f32>(518f, 300f, 689f, 593f)))));
    return false;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    return max(~(-6001i), ~1i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec3<i32> {
    var var_0 = select(vec3<bool>((arg_2 || select(arg_2, true, arg_2)) | (_wgslsmith_f_op_f32(trunc(414f)) != 1f), arg_0.b, arg_0.b), select(!(!vec3<bool>(false, arg_1.b, false)), vec3<bool>(any(!vec4<bool>(false, false, false, arg_0.b)), arg_2, true), select(vec3<bool>(true, false, any(vec3<bool>(arg_1.b, arg_1.b, arg_2))), select(!vec3<bool>(arg_1.b, arg_2, arg_0.b), vec3<bool>(arg_0.b, true, true), arg_2), !(!vec3<bool>(true, arg_0.b, false)))), vec3<bool>(select(all(vec3<bool>(arg_1.b, arg_0.b, true)), !(arg_2 & arg_1.b), true), true, false));
    var var_1 = arg_0;
    var var_2 = ~(~firstLeadingBit(~vec2<u32>(u_input.c, u_input.c)));
    let var_3 = _wgslsmith_sub_vec3_i32(u_input.d.yxx, u_input.a.yzz);
    var var_4 = Struct_1(arg_0.c.x, arg_1.b, _wgslsmith_div_vec2_i32(var_3.xy, _wgslsmith_add_vec2_i32(-var_1.c, -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 2147483647i), u_input.d.yy))));
    return vec3<i32>(abs(reverseBits(~(~var_1.c.x))), abs(28681i), max(firstLeadingBit(13282i) << (var_2.x % 32u), -(~firstLeadingBit(-68416i))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(47953u >> (~arg_2 % 32u))) >> (_wgslsmith_add_u32((arg_2 >> (~0u % 32u)) ^ ~34877u, ~2520u) % 32u), 20u)];
    global0 = array<Struct_1, 20>();
    var var_1 = vec3<i32>(-(u_input.a.x & var_0.a) & u_input.b, _wgslsmith_mult_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.a, var_0.a, u_input.d.x), vec4<i32>(var_0.a, 13961i, u_input.b, -51597i)), u_input.b, false), var_0.c.x), -2147483647i) | func_4(Struct_1(reverseBits(0i), false, u_input.d.yw >> (vec2<u32>(u_input.c, arg_2) % vec2<u32>(32u))), Struct_1(u_input.d.x, false, var_0.c), true, max(u_input.b, _wgslsmith_mult_i32(~(-48495i), func_3(var_0.b, global0[_wgslsmith_index_u32(u_input.c, 20u)]))));
    let var_2 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))));
    var_1 = vec3<i32>(-1i) * -vec3<i32>(countOneBits(25099i & u_input.b), -6900i, -17787i);
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(countOneBits(arg_2), 2059u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c, 0u), max(u_input.c, 40591u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~u_input.c, ~arg_2, abs(1u)), max(_wgslsmith_sub_u32(0u, u_input.c), u_input.c))), arg_2), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(-134f));
    let var_1 = func_2(!func_1(vec2<i32>(-5079i, -u_input.a.x)), 315f, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.d.x, ~u_input.d.x), ~((i32(-1i) * -2147483647i) | -u_input.d.x) << (1u % 32u));
}

