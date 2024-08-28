struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 581f;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1148f, -2202f), 0u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-534f, 829f), 117933u), Struct_1(vec3<bool>(false, false, true), vec2<f32>(1494f, -636f), 0u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(256f, -486f), 80259u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-446f, -501f), 0u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(1000f, -204f), 4294967295u), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-230f, 431f), 23607u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(1993f, 1626f), 83496u), Struct_1(vec3<bool>(true, true, true), vec2<f32>(1199f, -2428f), 89155u), Struct_1(vec3<bool>(false, false, true), vec2<f32>(485f, -1063f), 0u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-2387f, -1354f), 4294967295u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-575f, -2065f), 54931u), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1408f, -1288f), 52923u), Struct_1(vec3<bool>(false, true, true), vec2<f32>(1169f, 158f), 19689u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-315f, -1138f), 4294967295u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(2257f, -564f), 1u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(191f, -921f), 69758u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(1578f, -699f), 96533u));

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, -1245f, global0.a)))))) - vec3<f32>(global0.b, -1453f, _wgslsmith_f_op_f32(-global4.b)));
    var var_1 = Struct_3(global0.c.a.xx, !global4.c.a.x | true);
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(497f, 1000f, global0.c.a.x)) - -885f);
    global0 = Struct_2(global4.a, global4.a, global3[_wgslsmith_index_u32(1u, 18u)], 15280u);
    return -151f;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    var var_0 = reverseBits(u_input.e);
    let var_1 = reverseBits(var_0.x);
    global1 = -374f;
    var var_2 = arg_0.b && arg_0.b;
    var_2 = !any(global4.c.a.xy);
    return arg_1.b;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec3<bool> {
    global4 = Struct_2(global4.c.b.x, _wgslsmith_f_op_f32(func_2()), global0.c, _wgslsmith_mod_u32(global2.c, countOneBits(countOneBits(global2.c ^ 34614u))));
    let var_0 = vec4<bool>((u_input.a.x == ~_wgslsmith_div_u32(global0.d, global4.c.c)) | arg_1.b, any(vec3<bool>(arg_1.a.x, _wgslsmith_div_u32(global2.c, 0u) >= (33405u | global0.c.c), all(vec3<bool>(arg_1.a.x, true, false)))), any(global0.c.a.xy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(-514f, global2.b.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(global4.c.a.xz, arg_1.a.x), Struct_2(1000f, global2.b.x, Struct_1(global0.c.a, vec2<f32>(-193f, arg_0), global0.c.c), global2.c), vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, global0.d), 10380u)), global4.b)) >= _wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b, -1000f) + global4.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f) + _wgslsmith_f_op_f32(max(global2.b.x, arg_0))));
    global0 = Struct_2(global4.c.b.x, 352f, Struct_1(!vec3<bool>(any(vec3<bool>(true, false, false)), !global2.a.x, all(vec2<bool>(true, global2.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1511f, -2116f) + vec2<f32>(902f, global2.b.x)) + _wgslsmith_f_op_vec2_f32(-global4.c.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global4.c.b), global2.b, select(vec2<bool>(arg_1.b, false), arg_1.a, vec2<bool>(global2.a.x, false))))), global2.c), ~_wgslsmith_add_u32(~_wgslsmith_mod_u32(global4.d, global2.c), _wgslsmith_mult_u32(75997u, countOneBits(47877u))));
    global3 = array<Struct_1, 18>();
    return vec3<bool>(false, global4.c.a.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(round(global0.c.b.x));
    var var_0 = Struct_2(1298f, -864f, Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.c.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1033f, 1000f))) + global4.c.b), 55865u), ~1u);
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(-global4.a)))), _wgslsmith_f_op_f32(var_0.a + global4.b), Struct_1(!(!func_1(global4.b, Struct_3(vec2<bool>(var_0.c.a.x, var_0.c.a.x), true))), global0.c.b, max(firstTrailingBit(41609u), 26943u)), 1u ^ (~_wgslsmith_mod_u32(55425u, var_0.d) >> (6134u % 32u)));
    let var_1 = vec2<i32>(u_input.e.x, select(_wgslsmith_dot_vec3_i32(u_input.e.yww, vec3<i32>(-10481i, u_input.e.x, u_input.e.x)) << (firstTrailingBit(u_input.a.x) % 32u), u_input.e.x, true));
    var var_2 = any(select(select(!vec2<bool>(global2.a.x, global2.a.x), global4.c.a.yx, var_0.c.a.xz), select(vec2<bool>(true, true), var_0.c.a.zy, true), vec2<bool>(any(!vec3<bool>(global0.c.a.x, global2.a.x, var_0.c.a.x)), !(global4.c.a.x || global2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-12297i, var_1.x, _wgslsmith_f_op_f32(min(1232f, -659f)), ~(~firstTrailingBit(vec3<i32>(2147483647i, 3404i, 0i))));
}

