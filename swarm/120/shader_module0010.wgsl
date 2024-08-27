struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: array<Struct_2, 12>;

var<private> global2: array<vec4<u32>, 18>;

var<private> global3: vec4<u32> = vec4<u32>(52614u, 1u, 6085u, 17222u);

var<private> global4: i32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = vec3<bool>(true, true, true);
    global1 = array<Struct_2, 12>();
    let var_1 = -vec4<i32>(~(max(-43878i, u_input.c.x) | abs(u_input.c.x)), ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), u_input.c, false), ~vec3<i32>(-1i, u_input.c.x, u_input.c.x)), 1i, ~(-2147483647i));
    global1 = array<Struct_2, 12>();
    let var_2 = Struct_3(vec4<bool>(var_0.x, false, false, true), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-408f + -691f), var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-469f, arg_0.x, var_0.x)), -744f, 1572f)), _wgslsmith_f_op_f32(-arg_0.x), global3.wzx, -reverseBits(var_1.x << (global3.x % 32u))), ~arg_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -627f) + 921f));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1358f * 744f), 1538f, 1002f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-747f, -1000f, 649f), vec3<f32>(-111f, 169f, 295f)))) + vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(736f, -825f), global3.yx)), 1062f, _wgslsmith_f_op_f32(-214f + 791f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(823f)) * _wgslsmith_div_f32(-593f, 440f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<f32>(-933f, -366f), global3.xw))))))));
    global0 = array<vec3<u32>, 31>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x * var_0.x), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f))), var_0.x, ~min(min(global0[_wgslsmith_index_u32(arg_0, 31u)], vec3<u32>(global3.x, 18827u, 4294967295u)), vec3<u32>(u_input.a, global3.x, u_input.b)), u_input.c.x ^ ~u_input.c.x));
    global2 = array<vec4<u32>, 18>();
    global4 = _wgslsmith_add_i32(~var_1.a.e, ~u_input.c.x);
    return !(!vec3<bool>(!all(vec4<bool>(true, false, false, false)), true, true));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_4 {
    var var_0 = select(vec3<bool>(arg_1, !arg_1, arg_1), !select(func_2(_wgslsmith_mod_u32(0u, u_input.b), arg_2), vec3<bool>(true, false, true), true), !(!select(!vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, arg_1, false))));
    let var_1 = Struct_4(select(select(select(select(vec4<bool>(arg_1, true, true, false), vec4<bool>(true, false, true, true), arg_1), !vec4<bool>(true, true, var_0.x, arg_1), var_0.x), !vec4<bool>(arg_1, var_0.x, var_0.x, arg_1), !select(vec4<bool>(arg_1, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), var_0.x)), vec4<bool>(all(select(vec3<bool>(arg_1, var_0.x, true), vec3<bool>(false, true, true), vec3<bool>(arg_1, var_0.x, var_0.x))), var_0.x, !(arg_0.b.x == -1253f), !(!arg_1)), arg_1));
    var var_2 = arg_0;
    var_2 = Struct_1(arg_0.c, _wgslsmith_f_op_vec3_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c * arg_0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - arg_0.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(1326f, var_2.c), vec2<f32>(var_2.a, arg_0.b.x)), min(arg_0.d.zz, global3.xy))), var_0.x)))), firstTrailingBit(global0[_wgslsmith_index_u32(~var_2.d.x, 31u)]), _wgslsmith_dot_vec2_i32(u_input.c.xz, -(u_input.c.zz << (global3.yw % vec2<u32>(32u)))));
    let var_3 = vec3<bool>(any(!select(select(vec2<bool>(true, false), var_0.zy, true), vec2<bool>(arg_1, false), !vec2<bool>(var_1.a.x, arg_1))), var_0.x, !var_0.x);
    return Struct_4(!(!select(vec4<bool>(false, true, true, var_3.x), !vec4<bool>(true, var_1.a.x, var_0.x, false), all(vec4<bool>(false, true, true, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 31>();
    global0 = array<vec3<u32>, 31>();
    global0 = array<vec3<u32>, 31>();
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -478f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1548f, 239f, -1150f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, -1000f, 185f)))), _wgslsmith_f_op_f32(f32(-1f) * -180f), ~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 39984u, 43777u), global3.xxz) ^ ~vec3<u32>(29269u, 91538u, 56898u)), u_input.c.x), true && ((false || any(vec2<bool>(false, true))) | any(vec2<bool>(true, true))), u_input.c.x);
    let var_1 = u_input.c.xx | ~(_wgslsmith_div_vec2_i32(max(vec2<i32>(60076i, u_input.c.x), u_input.c.yz), ~u_input.c.yy) & u_input.c.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1361f, -250f)) + 1000f), 1f))));
}

