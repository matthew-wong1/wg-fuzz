struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 12u)];
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-171f, 547f))) + _wgslsmith_f_op_f32(f32(-1f) * -710f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1214f * _wgslsmith_f_op_f32(sign(1f))))));
    let var_2 = 67259u;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(860f, -674f))))) + _wgslsmith_f_op_vec2_f32(-var_1));
    global0 = array<Struct_2, 12>();
    return arg_1.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_1.zy;
    global1 = arg_0.a;
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(35500i, 1i), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(614i, global1.b, 2147483647i, arg_0.a.c.x)), ~(~vec4<i32>(u_input.d, -51701i, global1.b, arg_0.a.c.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.x, arg_0.a.c.x, -2147483647i, arg_0.a.b << (u_input.c % 32u)), -reverseBits(vec4<i32>(global1.c.x, global1.a, -20355i, 1i)))), select(((vec3<i32>(0i, global1.c.x, -22896i) << (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u))) | ~vec3<i32>(29522i, -15491i, -9597i)) ^ vec3<i32>(-23931i, -1i, 26101i), ~(-vec3<i32>(0i, u_input.b, -2147483647i) << (countOneBits(vec3<u32>(u_input.c, 4294967295u, u_input.c)) % vec3<u32>(32u))), all(!arg_0.a.d)));
    global0 = array<Struct_2, 12>();
    var var_2 = max(global1.c.x, -2147483647i);
    return ~_wgslsmith_clamp_vec2_i32(-var_1.zx, -global1.c, firstLeadingBit(~(-arg_0.a.c)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = true;
    global0 = array<Struct_2, 12>();
    let var_1 = arg_0.a;
    var var_2 = Struct_1(min(global1.b, -7856i), -19284i, select(func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, u_input.c), 12u)], vec4<bool>(true, global1.d.x, arg_0.a.d.x, arg_1)) << (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 30218u), vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u)), vec2<i32>(abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 58859i, -1i), vec4<i32>(var_1.c.x, global1.c.x, global1.a, arg_0.a.c.x))) << ((_wgslsmith_clamp_vec2_u32(vec2<u32>(65084u, 0u), vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, 1u)) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)), (global1.d.x | true) | arg_1), select(select(vec4<bool>(select(true, global1.d.x, arg_1), !arg_0.a.d.x, any(vec2<bool>(false, arg_2)), global1.d.x), select(vec4<bool>(true, arg_1, true, global1.d.x), vec4<bool>(false, true, true, false), arg_1), true), arg_0.a.d, select(global1.d, !var_1.d, arg_0.a.d)));
    var var_3 = Struct_1(_wgslsmith_add_i32(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-45427i, -5572i, arg_0.a.c.x), vec3<i32>(44568i, 12583i, -1i))), _wgslsmith_mult_i32(countOneBits(global1.b), func_3(Struct_2(var_1, var_1.d.yw), !var_1.d).x)), _wgslsmith_mult_i32(reverseBits(min(_wgslsmith_clamp_i32(var_2.a, u_input.d, u_input.b), u_input.b & global1.c.x)), u_input.b), u_input.a, !var_1.d);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_0 = firstLeadingBit(1u) ^ ~func_1((global1.c & vec2<i32>(25378i, -2147483647i)) & global1.c, ~select(vec2<u32>(42683u, u_input.c), vec2<u32>(u_input.c, 0u), vec2<bool>(global1.d.x, true)), vec2<bool>(global1.d.x | global1.d.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(select(vec3<i32>(global1.b | -3715i, -u_input.b, u_input.d | global1.c.x), abs(vec3<i32>(-2147483647i, -1i, 0i)) & -vec3<i32>(u_input.a.x, global1.a, u_input.d), select(func_2(global0[_wgslsmith_index_u32(4294967295u, 12u)], global1.d.x, true), true, !global1.d.x)), -vec3<i32>(1i & global1.a, u_input.b, ~global1.b)), ~(~vec3<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), 1u, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c, 4294967295u) << (vec4<u32>(4053u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, 19321u, 30253u)))));
}

