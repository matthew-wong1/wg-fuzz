struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32;

var<private> global2: u32 = 13106u;

var<private> global3: array<Struct_2, 6>;

var<private> global4: array<u32, 3> = array<u32, 3>(4294967295u, 4294967295u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> bool {
    global1 = -24587i;
    let var_0 = global0.x;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = false;
    let var_1 = Struct_1(firstLeadingBit(arg_1.e));
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, reverseBits(_wgslsmith_add_u32(~(~global4[_wgslsmith_index_u32(arg_1.a.x, 3u)]), ~(~27444u)))), 3u)];
    global2 = 51634u;
    global3 = array<Struct_2, 6>();
    return -13703i;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    global2 = 26002u;
    var var_0 = Struct_3(u_input.e | ~(~1u), arg_0.a.b);
    var var_1 = global0.yy;
    var var_2 = Struct_3(~_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, var_0.a), ~_wgslsmith_dot_vec4_u32(arg_0.d, arg_0.d)), arg_0.a.b);
    let var_3 = Struct_4(arg_0.a, func_3(arg_1, Struct_2(~(~arg_0.d.zz), 0i, arg_1, any(!arg_0.a.b.ywz), _wgslsmith_mod_i32(~arg_0.b, arg_0.c.c.a)), Struct_1(-59870i)), Struct_2(select(arg_0.c.a, arg_0.d.wy, vec2<bool>(!var_2.b.x, all(vec4<bool>(arg_0.a.b.x, var_2.b.x, false, var_0.b.x)))), -2147483647i, Struct_1(countOneBits(countOneBits(-43030i))), !(arg_0.c.d | any(vec3<bool>(false, var_2.b.x, var_2.b.x))), arg_0.c.e), arg_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 682f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(619f - global0.x)), 700f)));
    return any(select(select(select(var_3.a.b.zyx, vec3<bool>(true, arg_0.c.d, false), !var_0.b.x), vec3<bool>(!arg_0.a.b.x, arg_0.c.d, var_0.b.x || false), arg_0.a.b.yyz), !vec3<bool>(!var_0.b.x, 24011i == arg_1.a, all(vec4<bool>(arg_0.a.b.x, true, true, false))), var_2.b.xww));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), vec4<bool>((global4[_wgslsmith_index_u32(u_input.b, 3u)] <= 2706u) | false, true & all(vec2<bool>(true, false)), true, true), !func_1(-2147483647i)), !select(vec4<bool>(func_1(u_input.a.x), any(vec3<bool>(false, true, false)), false, func_2(Struct_4(Struct_3(u_input.b, vec4<bool>(false, false, true, false)), -1i, global3[_wgslsmith_index_u32(17391u, 6u)], vec4<u32>(20910u, 15149u, u_input.e, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e, 3u)], 3u)]), vec4<f32>(-1000f, -631f, -189f, 1000f)), Struct_1(-14278i))), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), true), true), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), u_input.d.x < u_input.d.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !any(vec3<bool>(false, false, true))), true));
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)))), -167f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(global0.x, 1725f)), 1309f), vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(select(global0.x, -519f, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(51770u), global4[_wgslsmith_index_u32(u_input.b, 3u)]), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(52140u, 3u)], 3u)], 3u)]), vec2<u32>(71065u, u_input.e))), reverseBits(vec2<u32>(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(u_input.e, 3u)], 0u), _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.b, 3u)], 59898u)))), abs(u_input.d.xw >> (vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e >> (global4[_wgslsmith_index_u32(0u, 3u)] % 32u), 3u)], 3u)], global4[_wgslsmith_index_u32(abs(4294967295u), 3u)]) % vec2<u32>(32u))), 30206i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), vec2<u32>(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(4294967295u, 3u)], ~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), 1u));
}

