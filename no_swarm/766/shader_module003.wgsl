struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<f32, 5>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: bool;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    let var_0 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 5u)]))), arg_0, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 5u)])), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 5u)], _wgslsmith_div_f32(-110f, arg_0), -1977f))), vec4<i32>(u_input.b, ~u_input.d.x, -(u_input.a.x | 26680i), -23433i), vec3<bool>(true, arg_1.x, global2.x), u_input.a.yy));
    let var_1 = 4294967295u;
    let var_2 = var_0.a.d;
    global3 = var_2.x;
    global1 = array<f32, 5>();
    return 1i;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global3 = false;
    let var_0 = -reverseBits(_wgslsmith_mod_vec3_i32(-arg_2.c.wxw, arg_2.c.wwx));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_2.b)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 5u)] + arg_0), _wgslsmith_f_op_f32(-1389f * -196f)), vec3<f32>(_wgslsmith_f_op_f32(1000f + arg_2.a.x), arg_2.b.x, arg_2.b.x)), vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(arg_2.e.x, -36349i, -8913i, var_0.x)), var_0.x, arg_2.c.x), vec3<bool>(~u_input.c < (u_input.c ^ arg_1.x), global2.x, arg_2.e.x <= func_3(arg_0, arg_2.d)), -vec2<i32>(u_input.b, arg_2.c.x)));
    var_1 = Struct_3(Struct_1(var_1.a.a, arg_2.b, -(~select(vec4<i32>(var_0.x, var_0.x, arg_2.e.x, arg_2.e.x), vec4<i32>(u_input.b, -1i, 31638i, -1i), false)), var_1.a.d, firstTrailingBit(_wgslsmith_div_vec2_i32(~arg_2.c.wz, arg_2.e << (arg_1.wx % vec2<u32>(32u))))));
    var var_2 = Struct_4(!vec4<bool>(!all(vec4<bool>(false, global2.x, var_1.a.d.x, var_1.a.d.x)), var_1.a.d.x, (-2147483647i & arg_2.c.x) > arg_2.c.x, any(var_1.a.d.xx) && any(vec4<bool>(global2.x, global2.x, arg_2.d.x, var_1.a.d.x))), Struct_2(_wgslsmith_f_op_f32(-arg_0), all(!select(vec2<bool>(true, global2.x), arg_2.d.yy, vec2<bool>(var_1.a.d.x, arg_2.d.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b - var_1.a.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(269f, arg_2.b.x, var_1.a.a.x))))), abs(reverseBits(vec4<i32>(var_0.x, 44135i, 2147483647i, 2147483647i))), vec3<bool>(arg_2.d.x || false, select(true, arg_2.d.x, var_1.a.d.x), global1[_wgslsmith_index_u32(21310u, 5u)] == -608f), var_1.a.c.wx), arg_1.yw, u_input.c), -(~12424i), !(!select(vec4<bool>(var_1.a.d.x, var_1.a.d.x, true, var_1.a.d.x), !vec4<bool>(false, var_1.a.d.x, true, var_1.a.d.x), all(arg_2.d))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.b.c.b.x)) - _wgslsmith_f_op_f32(-arg_2.b.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(32735u, 5u)], vec4<u32>(u_input.c, u_input.c, u_input.c, 26557u), Struct_1(vec3<f32>(-1024f, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<f32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(68138u, 5u)], 1700f), vec4<i32>(u_input.b, -2147483647i, arg_1.x, u_input.b), vec3<bool>(false, false, arg_2.x), vec2<i32>(72436i, -6601i)))))))) > _wgslsmith_f_op_f32(floor(-1051f));
    global0 = array<Struct_1, 26>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 26u)];
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(var_1.b.x)), 1329u <= ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 6939u, u_input.c, 21664u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)) >> (u_input.c % 32u)), global0[_wgslsmith_index_u32(u_input.c, 26u)], vec2<u32>(select(u_input.c, u_input.c, var_1.e.x != -12501i) & u_input.c, u_input.c), 1u);
    var_0 = all(vec3<bool>(!arg_0.x, any(!(!vec4<bool>(false, global2.x, false, arg_0.x))), !(false & all(vec3<bool>(var_2.c.d.x, false, global2.x)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(select(select(func_1(select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<i32>(-3578i, 57855i), select(vec2<bool>(true, true), vec2<bool>(global2.x, true), vec2<bool>(false, false))), !(!vec2<bool>(global2.x, global2.x)), !select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true), false)), select(func_1(!vec2<bool>(global2.x, global2.x), -u_input.d, select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x))), vec2<bool>(global2.x, true), !(!vec2<bool>(false, global2.x))), !any(select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(true, global2.x, false, global2.x)))));
    let var_0 = false;
    global1 = array<f32, 5>();
    let var_1 = vec4<i32>(u_input.a.x, (i32(-1i) * -12123i) & _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, u_input.d.x, u_input.a.x, -29520i)), -u_input.a), 29965i & (u_input.b << (u_input.c % 32u)), _wgslsmith_mod_i32(u_input.d.x, -2147483647i)) | abs(u_input.a);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 0u), 26u)];
    global1 = array<f32, 5>();
    global2 = func_1(var_2.d.yx, var_2.e, var_2.d.xy);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

