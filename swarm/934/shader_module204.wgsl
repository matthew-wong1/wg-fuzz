struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, reverseBits(_wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(4294967295u, arg_1)))), u_input.d.x);
    var var_1 = Struct_1(0u, any(!(!(!vec3<bool>(false, arg_0.b, arg_0.b)))), ~(~max(_wgslsmith_clamp_u32(arg_1, var_0, 91297u), _wgslsmith_div_u32(22023u, arg_1))), true, _wgslsmith_mod_i32(u_input.a.x, -15152i));
    var var_2 = arg_0.b;
    var_2 = true;
    let var_3 = !any(!vec3<bool>(false, true, var_1.b)) | all(vec2<bool>(arg_0.d, all(select(vec4<bool>(true, var_1.b, false, arg_0.b), vec4<bool>(false, false, arg_0.d, false), vec4<bool>(true, var_1.b, true, var_1.b)))));
    return _wgslsmith_dot_vec3_u32(abs(~(~countOneBits(vec3<u32>(arg_0.a, 4294967295u, u_input.d.x)))), u_input.d);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(func_3(arg_1, firstTrailingBit(22449u) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d.yx), ~u_input.d.xy) % 32u)), arg_0, 0u, arg_1.d, u_input.b.x);
    var var_1 = arg_1;
    let var_2 = Struct_1(1u, true, arg_1.a ^ 1u, -(select(8773i, -36560i, arg_0) | 1i) > (min(-u_input.b.x, ~arg_1.e) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.e, u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c, 4294967295u, var_0.c, arg_1.c), u_input.e)) % 32u)), 45332i);
    let var_3 = var_2;
    var var_4 = vec4<bool>(var_2.d, true, arg_0, true);
    return ~4294967295u;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    return u_input.e.x | 27798u;
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = func_4(((0i << (func_2(true, Struct_1(55279u, arg_0.d, u_input.e.x, true, u_input.b.x)) % 32u)) < u_input.a.x) | true, vec2<bool>(all(select(!vec2<bool>(arg_0.d, false), select(vec2<bool>(false, true), vec2<bool>(arg_0.d, true), arg_0.b), vec2<bool>(true, arg_0.d))), !(!(!arg_0.b))));
    let var_1 = ~vec3<u32>(u_input.c | ~abs(u_input.e.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 67429u), ~firstTrailingBit(vec2<u32>(24499u, var_0))), ~min(var_0, ~5015u));
    var var_2 = ~(~u_input.e.zzw);
    var var_3 = 719f;
    let var_4 = _wgslsmith_div_vec4_i32(u_input.b, _wgslsmith_mult_vec4_i32(min(u_input.b, -u_input.b), vec4<i32>(_wgslsmith_div_i32(u_input.b.x, -29964i), u_input.a.x, u_input.b.x, _wgslsmith_add_i32(arg_0.e, arg_0.e)))) >> (vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.e, ~u_input.e), func_3(arg_0, 1u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.c, 6841u) ^ _wgslsmith_dot_vec2_u32(u_input.e.zw, vec2<u32>(var_0, var_2.x)), _wgslsmith_dot_vec2_u32(var_1.yx, vec2<u32>(1u, arg_0.c))), _wgslsmith_add_u32(1u, u_input.e.x) | var_1.x, ~func_3(Struct_1(var_1.x, arg_0.b, 9168u, true, u_input.b.x), var_1.x)) % vec4<u32>(32u));
    return vec3<bool>(true, arg_0.b, arg_0.d);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = 43211i;
    let var_1 = 28403i;
    var var_2 = u_input.b;
    var var_3 = arg_1;
    let var_4 = Struct_1(arg_1.a >> (4294967295u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(530f, 923f))), -1000f) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1344f, 148f))))), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~var_3.c, _wgslsmith_sub_u32(u_input.c, u_input.d.x)), arg_2, _wgslsmith_mult_u32(_wgslsmith_div_u32(43937u, var_3.c), _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(arg_2, 7004u, u_input.d.x, u_input.d.x))))), true, 2147483647i);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, true)) & true), Struct_1(u_input.e.x, all(!func_1(Struct_1(18093u, true, 36743u, true, u_input.b.x))), ~(~u_input.c), false, i32(-1i) * -2147483647i), 25935u);
    var var_1 = abs(var_0.c);
    var_1 = 0u << ((u_input.d.x ^ ((func_2(var_0.b, Struct_1(u_input.e.x, true, var_0.a, false, -26796i)) >> (_wgslsmith_mod_u32(var_0.a, var_0.a) % 32u)) & _wgslsmith_mult_u32(var_0.c, select(u_input.d.x, var_0.a, var_0.d)))) % 32u);
    var_1 = var_0.a;
    let var_2 = _wgslsmith_div_vec3_u32(u_input.e.yxy, abs(vec3<u32>(4294967295u, var_0.c, ~40475u))) << (_wgslsmith_add_vec3_u32(abs(abs(~vec3<u32>(4294967295u, var_0.c, 4294967295u))), u_input.d) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_f_op_f32(sign(-782f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, -437f, -567f, -115f))))))), ~select(u_input.b.zy, vec2<i32>(-2147483647i, ~u_input.a.x), var_0.b));
}

