struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

var<private> global1: array<Struct_4, 2>;

var<private> global2: f32 = -305f;

var<private> global3: vec3<f32> = vec3<f32>(1603f, -1000f, -1876f);

var<private> global4: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(global4.a, Struct_2(global4.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4.d, global4.a.b)))));
    global3 = global4.a.b;
    global2 = _wgslsmith_f_op_f32(abs(-681f));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global4.a.b, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(418f, global3.x, global4.a.b.x))))) * global4.a.b) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.a.b))));
    global2 = _wgslsmith_div_f32(725f, 663f);
    return Struct_1(false);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(2022f)), _wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1165f))));
    let var_1 = vec3<bool>(all(!select(vec4<bool>(global4.a.a.a, global4.c.a, global4.c.a, false), vec4<bool>(global4.c.a, false, global4.a.a.a, global4.a.a.a), !vec4<bool>(false, false, global4.c.a, global4.c.a))), any(!(!vec3<bool>(false, global4.c.a, false))) | true, false);
    global4 = Struct_4(global4.a, ~_wgslsmith_add_vec4_i32(global4.b, ~vec4<i32>(-1i, global4.b.x, global4.b.x, 2147483647i)), func_2(), _wgslsmith_f_op_vec3_f32(global4.d - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0), vec3<f32>(_wgslsmith_f_op_f32(1371f - -2899f), 321f, var_0.x), false))));
    let var_2 = Struct_2(Struct_1(true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global4.a.b, global4.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 246f)))))));
    var var_3 = vec3<u32>(~4294967295u << ((min(0u, 1u) << (u_input.b % 32u)) % 32u), ~13300u, u_input.a << (1u % 32u));
    return -218f;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = ~59419u;
    global0 = array<vec3<u32>, 3>();
    let var_1 = 4294967295u;
    let var_2 = global4.c;
    var var_3 = firstLeadingBit(vec2<u32>(~(~u_input.a | ~var_0), min(1u & var_0, u_input.c)));
    return Struct_1(all(vec2<bool>(any(vec2<bool>(true, true)), !select(true, global4.c.a, global4.c.a))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    global4 = Struct_4(global4.a, vec4<i32>(_wgslsmith_dot_vec3_i32(global4.b.xzy, firstLeadingBit(vec3<i32>(-1i, arg_2.x, 29899i))), 2147483647i, 20359i, _wgslsmith_add_i32(30211i, global4.b.x)) ^ reverseBits(~(-global4.b)), arg_1, global4.a.b);
    let var_0 = global4.b;
    global0 = array<vec3<u32>, 3>();
    var var_1 = global4.a;
    let var_2 = -_wgslsmith_add_i32(~(~arg_2.x), _wgslsmith_sub_i32(~global4.b.x, var_0.x));
    return 365f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(floor(540f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -769f), _wgslsmith_f_op_f32(func_4(vec2<bool>(false, global4.a.a.a), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, 119f)) - global3.x), global3.x, u_input.c), max(-(~global4.b.zy), global4.b.xz), vec2<u32>(u_input.a, ~95845u))));
    var var_0 = func_2().a;
    let var_1 = Struct_3(Struct_2(func_2(), global4.d), global4.a);
    let var_2 = Struct_5(Struct_3(global4.a, Struct_2(func_2(), global4.d)), Struct_1(any(select(!vec4<bool>(var_1.a.a.a, var_1.a.a.a, true, true), vec4<bool>(false, var_1.a.a.a, var_1.b.a.a, global4.a.a.a), global4.a.b.x == global3.x))));
    global1 = array<Struct_4, 2>();
    var var_3 = ~(_wgslsmith_div_i32(~0i, global4.b.x) ^ _wgslsmith_mod_i32(-(~global4.b.x), 6017i));
    let var_4 = var_2;
    var_3 = global4.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.b.zz, _wgslsmith_sub_u32(reverseBits(~1u), u_input.c), global4.b.x, vec2<f32>(var_2.a.b.b.x, _wgslsmith_f_op_f32(min(-838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1222f)) + var_2.a.b.b.x)))));
}

