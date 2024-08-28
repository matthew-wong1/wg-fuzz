struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(2147483647i, -246i, i32(-2147483648)), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec4<u32>(6440u, 1u, 0u, 22675u), vec2<f32>(636f, 1202f), 1000f, Struct_1(vec4<bool>(true, false, false, false))), 2147483647i);

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<Struct_3, 25>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, false, false));

var<private> global4: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec4<u32>(210u, 0u, 4512u, 19499u), vec2<f32>(481f, 342f), -107f, Struct_1(vec4<bool>(true, true, false, false))), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, false, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1018f))) * -263f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(935f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.d)), !global0.b.a.a.x));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global2 = array<Struct_3, 25>();
    var var_0 = 1798f;
    let var_1 = global3.a.x;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.d + global4.a.d))) - _wgslsmith_f_op_f32(func_3(global4.a.e, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -16820i, -37126i)), vec4<i32>(u_input.b.x, -23732i, 31889i, -2147483647i)))), global4.a.c.x)), -1476f);
    let var_3 = Struct_4(_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, global0.a.x), global0.c), 2147483647i, -(global0.c ^ u_input.b.x))), Struct_2(Struct_1(select(select(vec4<bool>(global0.b.e.a.x, false, false, false), global0.b.e.a, false), select(vec4<bool>(global0.b.a.a.x, true, false, global3.a.x), vec4<bool>(global4.c.a.x, global4.b.a.x, global0.b.e.a.x, false), global4.b.a), !global0.b.e.a.x)), ~vec4<u32>(53853u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.b.x, global0.b.b.x), vec2<u32>(global0.b.b.x, 129610u)), global0.b.b.x << (1u % 32u), 0u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-645f - -824f), _wgslsmith_f_op_f32(127f * global4.a.c.x)), vec2<f32>(-748f, -1524f), var_2.x == _wgslsmith_f_op_f32(var_2.x - 347f))), -1857f, Struct_1(vec4<bool>(global3.a.x, global4.c.a.x, false || global4.b.a.x, false))), -1i);
    return vec3<bool>(any(!vec4<bool>(any(global0.b.e.a.ywy), true, any(var_3.b.a.a.xxw), global0.b.e.a.x)), any(!global3.a.xxx), !var_3.b.a.a.x);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = !any(select(select(func_2(44211u), select(vec3<bool>(arg_1, global4.b.a.x, global3.a.x), vec3<bool>(global0.b.e.a.x, false, false), arg_1), global0.b.e.a.ywx), vec3<bool>(true, !global3.a.x, true), vec3<bool>(true, arg_1, true)));
    let var_1 = _wgslsmith_mod_vec3_i32(~global0.a, vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(u_input.b.x), u_input.b.x, u_input.b.x));
    let var_2 = global4.a.c.x;
    var var_3 = _wgslsmith_div_vec3_i32(global0.a, -((min(var_1, global0.a) << (vec3<u32>(4294967295u, 67098u, u_input.c) % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, global0.c), vec3<i32>(-1i, u_input.b.x, u_input.b.x) ^ var_1)));
    let var_4 = !(!(!global0.b.e.a));
    return Struct_1(!global0.b.a.a);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    var var_0 = global0.a;
    global1 = array<Struct_1, 26>();
    let var_1 = arg_0;
    var var_2 = Struct_4(u_input.b, var_1, -1i);
    let var_3 = true;
    return !global4.a.a.a.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = array<Struct_3, 25>();
    var var_1 = true;
    var var_2 = !func_4(Struct_2(func_1(_wgslsmith_f_op_f32(-220f - -1376f), !global3.a.x), min(global0.b.b, vec4<u32>(0u, 99888u, 23979u, global0.b.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2120f, global0.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.x) + -531f), func_1(global0.b.c.x, !global0.b.a.a.x)), 66310i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2358f - -820f) * -405f))), _wgslsmith_f_op_f32(min(-1113f, -1288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c.x + _wgslsmith_f_op_f32(f32(-1f) * -281f))), _wgslsmith_f_op_f32(min(1f, 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

