struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
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

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true));

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-306f, 233f, -1699f), vec3<f32>(339f, 1343f, -765f), vec3<f32>(565f, 1862f, 267f), vec3<f32>(598f, -1634f, 798f), vec3<f32>(-1750f, -996f, -310f), vec3<f32>(463f, 742f, -873f));

var<private> global2: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(29955u, 70085u, 4294967295u), vec3<u32>(52342u, 26885u, 57500u), vec3<u32>(0u, 31091u, 15439u), vec3<u32>(68635u, 72709u, 1u), vec3<u32>(1u, 28809u, 72544u), vec3<u32>(1u, 6986u, 104927u), vec3<u32>(4294967295u, 0u, 25972u), vec3<u32>(9918u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(36982u, 47077u, 103019u), vec3<u32>(3717u, 87844u, 5599u), vec3<u32>(0u, 0u, 1u), vec3<u32>(67698u, 12387u, 0u), vec3<u32>(0u, 9377u, 78733u), vec3<u32>(21015u, 7693u, 23714u), vec3<u32>(40188u, 1u, 1u), vec3<u32>(0u, 59015u, 29703u), vec3<u32>(29880u, 94025u, 1u), vec3<u32>(13007u, 28205u, 4294967295u), vec3<u32>(36428u, 65635u, 9596u), vec3<u32>(20777u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(626u, 1u, 0u), vec3<u32>(47469u, 1u, 0u), vec3<u32>(12863u, 60953u, 4343u), vec3<u32>(20239u, 0u, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    global2 = array<vec3<u32>, 26>();
    global1 = array<vec3<f32>, 6>();
    let var_0 = arg_1;
    var var_1 = 4310u;
    var var_2 = Struct_2(vec2<bool>(true, true), Struct_1(abs(select(vec3<i32>(-1i, 3102i, var_0.a.x) >> (vec3<u32>(54146u, arg_1.b.x, 35140u) % vec3<u32>(32u)), u_input.e.zxz, true)), var_0.b), max(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.a.x, -338i), _wgslsmith_sub_i32(-1i, -23029i)), abs(-arg_1.a.xz)), u_input.d.yz), arg_1, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~min(4294967295u, u_input.c) >> (_wgslsmith_add_u32(u_input.a, arg_1.b.x) % 32u)), 31u)]);
    return !select(vec3<bool>(all(vec3<bool>(true, var_2.e.x, var_2.e.x)), true, true && (true & var_2.a.x)), vec3<bool>(false, false, false), !(!var_2.e.x) || !all(vec4<bool>(false, false, var_2.e.x, true)));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(~u_input.d, vec2<u32>(1u, ~0u) | vec2<u32>(45710u, ~u_input.a >> (u_input.a % 32u)));
    let var_1 = Struct_3(~vec2<u32>(~(~4294967295u), ~firstLeadingBit(4294967295u)));
    let var_2 = Struct_4(var_0.a.x, all(func_3(_wgslsmith_f_op_f32(-676f * -389f), Struct_1(vec3<i32>(2147483647i, var_0.a.x, u_input.d.x), reverseBits(var_1.a)))), !select(func_3(-859f, var_0).xx, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_3 = false;
    let var_4 = Struct_2(vec2<bool>(!all(vec3<bool>(false, var_3, true)), any(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(60524u, var_1.a.x), 1u, u_input.c), 31u)])), Struct_1(var_0.a, countOneBits(~reverseBits(var_0.b))), select(u_input.e.zx ^ u_input.d.xx, abs(select(vec2<i32>(u_input.d.x, var_0.a.x), select(var_0.a.yx, vec2<i32>(var_2.a, -1i), true), !var_2.c.x)), var_3 || (any(global0[_wgslsmith_index_u32(var_1.a.x, 31u)]) && func_3(-444f, var_0).x)), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-62335i, 1i, _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)), -1i, ~abs(-2147483647i)), vec2<u32>(var_1.a.x, 0u)), select(vec4<bool>(true, false, true | (true | var_2.b), false), vec4<bool>(var_2.b && all(global0[_wgslsmith_index_u32(3034u, 31u)]), !(!var_2.b), select(false, true, true), true), var_2.c.x));
    return !(!select(!var_4.e.xwz, var_4.e.zxw, false));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1f)));
    let var_1 = ~(~(~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)), ~vec4<u32>(0u, u_input.c, 10718u, u_input.a), _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(arg_1.x, u_input.c, arg_1.x, u_input.c)))));
    let var_2 = select(vec3<bool>(_wgslsmith_div_u32(0u | var_1.x, 68006u) < arg_1.x, true, any(func_2())), vec3<bool>(true, true, true), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), func_3(-894f, Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 2147483647i, arg_0.x), u_input.d), ~arg_1.wx)), !(arg_0.x != ~(-75724i))));
    let var_3 = var_2.xx;
    let var_4 = ~(~arg_1.wyz);
    return _wgslsmith_div_i32(abs(~1i), arg_0.x);
}

fn func_4(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.c, u_input.a), ~vec4<u32>(0u, 1u, 21409u, 1u)), ~u_input.c, ~_wgslsmith_mult_u32(1u, u_input.c), 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 66155u), vec2<u32>(u_input.a, 69046u))));
    let var_1 = Struct_3(var_0.wx);
    var var_2 = ~1u;
    var var_3 = func_2().x;
    let var_4 = var_1.a;
    return _wgslsmith_sub_u32(min(var_0.x ^ max(var_1.a.x, u_input.a), var_1.a.x), var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_4(true, func_1(u_input.e.wx, ~vec4<u32>(u_input.c, 0u, u_input.a, 56290u)) > _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-25024i, -1i) >> (vec2<u32>(3104u, u_input.a) % vec2<u32>(32u))), firstLeadingBit(u_input.d.x << (u_input.c % 32u)))), 31u)];
    let var_1 = u_input.b;
    global1 = array<vec3<f32>, 6>();
    global1 = array<vec3<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(32000u);
}

