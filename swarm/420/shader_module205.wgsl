struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-1240f, -824f), vec2<f32>(618f, -834f), vec2<f32>(723f, 1407f), vec2<f32>(-342f, -519f), vec2<f32>(-1000f, -1039f), vec2<f32>(1293f, 1205f), vec2<f32>(-761f, -1260f), vec2<f32>(-1063f, 256f), vec2<f32>(-612f, -1346f), vec2<f32>(-908f, 1000f), vec2<f32>(299f, -246f), vec2<f32>(1753f, 662f), vec2<f32>(-2832f, 2089f), vec2<f32>(1705f, 465f), vec2<f32>(-248f, -1000f), vec2<f32>(288f, 1105f), vec2<f32>(1108f, 170f), vec2<f32>(-591f, -691f), vec2<f32>(737f, 1258f));

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(951f, 1019f, -341f), vec3<f32>(220f, -210f, 726f), vec3<f32>(157f, -325f, 1000f), vec3<f32>(2133f, -1358f, -565f), vec3<f32>(-1019f, 350f, 1644f), vec3<f32>(630f, 323f, -1258f));

var<private> global2: array<u32, 29> = array<u32, 29>(27718u, 4294967295u, 1u, 60972u, 8709u, 41738u, 73590u, 56915u, 47330u, 15925u, 4294967295u, 31255u, 91558u, 17183u, 34223u, 19006u, 4294967295u, 0u, 46495u, 0u, 4660u, 81677u, 9149u, 41611u, 0u, 1u, 10679u, 87574u, 82475u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: i32) -> bool {
    global0 = array<vec2<f32>, 19>();
    let var_0 = reverseBits(u_input.a.x);
    global1 = array<vec3<f32>, 6>();
    global2 = array<u32, 29>();
    var var_1 = select(~(-(~abs(vec4<i32>(12575i, -9921i, u_input.d.x, 2147483647i)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-24733i, 33656i, arg_3, arg_2.x) & vec4<i32>(0i, -1i, -1i, arg_3), vec4<i32>(arg_2.x, 1i, arg_2.x, 1i) | vec4<i32>(2423i, arg_3, -19736i, 0i)) ^ -firstLeadingBit(vec4<i32>(-2147483647i, arg_3, -8477i, -30010i)), -min(vec4<i32>(-5103i, u_input.d.x, arg_2.x, arg_3) | vec4<i32>(arg_3, -12870i, 19757i, arg_2.x), select(vec4<i32>(0i, -38027i, -47632i, -4061i), vec4<i32>(-1i, u_input.d.x, 7267i, 4294i), vec4<bool>(false, false, false, true)))), select(vec4<bool>(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) < _wgslsmith_div_f32(1000f, -181f), false, !any(vec2<bool>(true, true)), !all(vec3<bool>(true, false, false))), vec4<bool>(false, select(false, true, any(vec4<bool>(true, true, false, false))), all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), select(true, true, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) > arg_0.x)));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(abs(arg_0.b)), arg_0, -1959i);
    var var_1 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a | ~u_input.a);
    var var_2 = select(!vec2<bool>(func_3(vec4<f32>(-397f, 293f, -1000f, arg_0.a), vec3<u32>(116600u, 65716u, global2[_wgslsmith_index_u32(4294967295u, 29u)]), u_input.d, u_input.d.x) || all(arg_2.xx), true), arg_2.xx, arg_1);
    var var_3 = select(select(select(!select(arg_2.yz, arg_2.xz, vec2<bool>(true, var_2.x)), select(vec2<bool>(var_2.x, arg_2.x), arg_2.yy, true), arg_2.x), arg_2.zy, select(!arg_2.yy, vec2<bool>(arg_1, !arg_2.x), arg_2.zx)), !arg_2.xy, arg_2.xx);
    var var_4 = select(vec4<bool>(!(u_input.d.x < u_input.d.x), true, false, !all(arg_2)), select(vec4<bool>(true, false, all(arg_2.yz), any(select(vec4<bool>(arg_2.x, arg_1, var_3.x, arg_1), vec4<bool>(true, true, true, false), vec4<bool>(arg_1, true, arg_1, true)))), !vec4<bool>(false, true, !arg_2.x, !arg_2.x), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, select(all(select(arg_2.yx, arg_2.xx, var_2.x)), var_2.x, global2[_wgslsmith_index_u32(51967u, 29u)] <= 4294967295u)));
    return _wgslsmith_f_op_f32(round(var_0.b.b));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(arg_0.a + 213f))), 544f));
    return Struct_3(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_div_f32(-2021f, _wgslsmith_f_op_f32(ceil(-1011f))), _wgslsmith_f_op_f32(sign(952f))), _wgslsmith_f_op_f32(trunc(arg_0.a)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.a, arg_0.a)))), select(select(!arg_1, arg_1, !arg_1.x), arg_1, !select(arg_1, vec3<bool>(false, arg_1.x, arg_1.x), arg_1)))), Struct_1(_wgslsmith_f_op_f32(566f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -994f)))), 721f), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -u_input.b, u_input.b, -13627i << (u_input.c.x % 32u)), -reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -48000i))) | 50597i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 19>();
    var var_0 = u_input.d.x;
    global2 = array<u32, 29>();
    global0 = array<vec2<f32>, 19>();
    global2 = array<u32, 29>();
    let var_1 = func_1(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1520f) + -805f)))), vec3<bool>(true, true, false), abs(u_input.a.yy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, 542f, var_1.a, -123f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(708f, 147f, -988f, var_1.a)))))), 682f, _wgslsmith_div_i32(1i, -1i), -(i32(-1i) * -1i));
}

