struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(7127i, -224i), vec2<i32>(-27969i, 2147483647i), vec2<i32>(-28530i, 0i), vec2<i32>(1i, -4586i), vec2<i32>(-61552i, 18624i), vec2<i32>(27175i, 34385i), vec2<i32>(69247i, 614i), vec2<i32>(28216i, -1i), vec2<i32>(0i, 43238i), vec2<i32>(i32(-2147483648), -30744i), vec2<i32>(-21686i, -64629i), vec2<i32>(-29666i, 2147483647i), vec2<i32>(-1i, -20566i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -8273i), vec2<i32>(-1i, -12060i), vec2<i32>(0i, 44919i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-2349i, -31892i), vec2<i32>(2147483647i, -40331i), vec2<i32>(9053i, -4183i), vec2<i32>(36568i, 8910i), vec2<i32>(i32(-2147483648), -48359i), vec2<i32>(12614i, 16394i), vec2<i32>(1i, 1i), vec2<i32>(-14008i, -39315i), vec2<i32>(-9485i, -283i), vec2<i32>(-25340i, 39542i), vec2<i32>(-66133i, 0i), vec2<i32>(-1i, -2988i));

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(0i, -1i, -56126i, 1i), vec4<i32>(0i, 2147483647i, 0i, 1i), vec4<i32>(i32(-2147483648), 28164i, -8659i, -30354i), vec4<i32>(7502i, 42980i, 45994i, -14597i), vec4<i32>(2147483647i, -20387i, i32(-2147483648), 1i), vec4<i32>(9644i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(-21716i, -40151i, 70952i, 16434i), vec4<i32>(-1i, 11607i, 1i, 43506i), vec4<i32>(24376i, -12283i, 53693i, -32017i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 7809i), vec4<i32>(2147483647i, 2147483647i, 17862i, i32(-2147483648)), vec4<i32>(9151i, -10167i, -1i, -1i), vec4<i32>(28023i, -24612i, 1i, 1i), vec4<i32>(-1i, -1i, -1i, 0i), vec4<i32>(-5291i, -13078i, -1i, 16373i), vec4<i32>(-1i, i32(-2147483648), -8731i, 3612i), vec4<i32>(-34449i, 806i, 2147483647i, -3708i), vec4<i32>(0i, -929i, 38725i, 15201i), vec4<i32>(-2435i, -1i, i32(-2147483648), 0i), vec4<i32>(-20613i, -30977i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 34793i, 41006i, 2147483647i), vec4<i32>(-24486i, 0i, 1i, -9787i), vec4<i32>(41614i, 1i, 1i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    return 4294967295u < arg_0;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> StorageBuffer {
    global0 = array<vec2<i32>, 32>();
    let var_0 = Struct_1(-u_input.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1083f))), -1977f), -522f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.b.x * 373f))), _wgslsmith_f_op_f32(min(1033f, 192f)), arg_3.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.x)))), vec2<u32>(_wgslsmith_mult_u32(~1u, arg_2.c.x), arg_2.c.x) >> (~vec2<u32>(52298u, u_input.b.x | 65819u) % vec2<u32>(32u)));
    global1 = array<vec4<i32>, 23>();
    global1 = array<vec4<i32>, 23>();
    let var_1 = ~select(vec3<u32>(4294967295u, 1u, arg_2.c.x), ~vec3<u32>(~u_input.b.x, arg_1.c.x, arg_2.c.x), vec3<bool>(all(vec3<bool>(false, false, arg_0.x)), any(!vec3<bool>(arg_3.x, arg_0.x, arg_0.x)), arg_3.x));
    return StorageBuffer(~arg_2.c, var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 32>();
    let var_0 = Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1550f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-248f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1382f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1640f, 2477f)))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.b.x, 1793u)) & _wgslsmith_mult_vec2_u32(u_input.b.zy << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, 5238u)))));
    global0 = array<vec2<i32>, 32>();
    var var_1 = 4294967295u;
    global0 = array<vec2<i32>, 32>();
    var var_2 = -26261i;
    var_2 = -15883i;
    let var_3 = vec3<f32>(-1372f, _wgslsmith_div_f32(_wgslsmith_div_f32(-861f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(-var_0.b.x))), -1179f), _wgslsmith_f_op_f32(floor(1092f)));
    var_2 = -var_0.a.x;
    let x = u_input.a;
    s_output = func_2(!vec4<bool>(true & all(vec3<bool>(false, false, true)), func_1(~53866u, var_0, var_0), true, false), Struct_1(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(1u << (u_input.b.x % 32u), 32u)] << (~u_input.b.zz % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(select(var_0.a, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(false, false)), vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.b.x, 1266f, var_3.x)), u_input.b.xz), Struct_1(global0[_wgslsmith_index_u32(4294967295u << (countOneBits(_wgslsmith_add_u32(26776u, u_input.b.x)) % 32u), 32u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -2283f, var_0.b.x, var_0.b.x)) - var_0.b), u_input.b.yx), !vec2<bool>(any(vec2<bool>(true, true)), true));
}

