struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: array<f32, 6> = array<f32, 6>(298f, -581f, -217f, 715f, -818f, -270f);

var<private> global2: Struct_3 = Struct_3(Struct_1(false, 23387i, -1182f, true, 125f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global2.a.c))));
    global2 = Struct_3(arg_1);
    global2 = Struct_3(arg_1);
    let var_1 = vec4<u32>(_wgslsmith_add_u32(~arg_2.a, _wgslsmith_mod_u32(firstTrailingBit(1u), ~(arg_2.a >> (4294967295u % 32u)))), u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(min(~vec3<u32>(arg_2.a, 13478u, arg_2.a), u_input.a.ywy) & vec3<u32>(56169u, firstTrailingBit(arg_2.a), 54891u), vec3<u32>(arg_2.a, u_input.a.x, select(_wgslsmith_add_u32(4294967295u, 0u), u_input.a.x, true))));
    var var_2 = Struct_3(global2.a);
    return vec4<i32>(arg_1.b, arg_1.b, -2147483647i, max(var_2.a.b, 2053i));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.b, 0i, global2.a.b), vec3<i32>(global2.a.b, global2.a.b, -1i) & vec3<i32>(global2.a.b, global2.a.b, global2.a.b)) > global2.a.b, _wgslsmith_dot_vec4_i32(func_3(abs(vec3<i32>(global2.a.b, 1i, -18113i)), global2.a, Struct_4(u_input.a.x, 2632f, vec2<bool>(global2.a.a, false)), select(vec3<bool>(global2.a.d, global2.a.a, false), vec3<bool>(global2.a.d, global2.a.a, false), vec3<bool>(global2.a.a, global2.a.d, global2.a.a))), ~(~vec4<i32>(global2.a.b, global2.a.b, global2.a.b, 0i))), global2.a.c, select(any(vec4<bool>(false, false, false, false)), !global2.a.a, all(vec3<bool>(global2.a.d, false, false)) && any(vec4<bool>(false, global2.a.d, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 6u)])) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(875u, 6u)])), 1000f)), global2.a, global2.a);
    let var_1 = global2.a;
    var var_2 = var_0.a;
    var var_3 = 4294967295u;
    let var_4 = select(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global2.a.d, var_0.c.a))), !select(select(vec2<bool>(true, false), vec2<bool>(var_1.d, var_1.a), var_2.a), select(vec2<bool>(global2.a.d, var_2.a), vec2<bool>(global2.a.a, var_0.b.a), false), select(false, true, global2.a.a)), !vec2<bool>(var_1.d, any(global0[_wgslsmith_index_u32(25957u, 24u)]))), !select(!select(vec2<bool>(false, true), vec2<bool>(var_0.c.d, true), vec2<bool>(true, true)), select(select(vec2<bool>(var_2.a, true), vec2<bool>(false, true), var_1.d), !vec2<bool>(true, var_0.b.d), select(vec2<bool>(true, true), vec2<bool>(var_1.d, var_2.d), var_2.a)), var_2.d), vec2<bool>(global2.a.d, select(1u < (u_input.a.x | u_input.a.x), !var_0.a.d || var_0.a.a, !(false && var_0.a.a))));
    return Struct_3(Struct_1(false, var_0.a.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(118f)))), (_wgslsmith_sub_u32(u_input.a.x, 0u) ^ _wgslsmith_sub_u32(4294967295u, u_input.a.x)) >= ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -729f)));
}

fn func_1(arg_0: i32) -> i32 {
    global2 = func_2();
    let var_0 = min(u_input.a.ww, u_input.a.xw);
    var var_1 = -(~vec2<i32>(-abs(global2.a.b), func_3(-vec3<i32>(global2.a.b, 2147483647i, global2.a.b), global2.a, Struct_4(4294967295u, 1290f, vec2<bool>(true, false)), vec3<bool>(global2.a.d, false, global2.a.a)).x));
    global0 = array<vec4<bool>, 24>();
    let var_2 = Struct_2(Struct_1(global2.a.d, var_1.x, global2.a.e, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(657f, global2.a.c), global1[_wgslsmith_index_u32(~u_input.a.x, 6u)])) > global1[_wgslsmith_index_u32(countOneBits(var_0.x), 6u)], -549f), func_2().a, Struct_1(true, -_wgslsmith_div_i32(_wgslsmith_clamp_i32(29786i, -1i, 0i), _wgslsmith_clamp_i32(-58321i, -50229i, arg_0)), -1284f, !global2.a.a, _wgslsmith_f_op_f32(floor(-2210f))));
    return ~max(global2.a.b, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    var var_0 = !vec4<bool>(global2.a.a, true, any(!select(vec3<bool>(global2.a.a, false, global2.a.a), vec3<bool>(false, true, false), vec3<bool>(false, global2.a.d, false))), true);
    var var_1 = ~u_input.a.x;
    var var_2 = u_input.a.yz | u_input.a.wz;
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(abs(global2.a.b), max(1i, 12019i), func_1(2347i))) >> (vec3<u32>(~_wgslsmith_mult_u32(14217u, 1u), u_input.a.x, var_2.x) % vec3<u32>(32u)));
}

