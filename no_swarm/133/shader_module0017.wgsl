struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

var<private> global2: i32;

var<private> global3: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec2<f32> {
    global1 = array<vec3<bool>, 10>();
    global0 = 28979u;
    let var_0 = arg_1.e;
    var var_1 = ~_wgslsmith_sub_u32(u_input.b, 0u);
    let var_2 = arg_1;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.e.x, arg_0)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_0) + var_0.xy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.d, arg_1.d), _wgslsmith_f_op_vec2_f32(-var_0.xz), arg_1.c)))) - var_0.zx)));
}

fn func_2() -> Struct_2 {
    var var_0 = ~u_input.a.x;
    global3 = 844f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1874f) + vec2<f32>(144f, 752f)), _wgslsmith_f_op_vec2_f32(func_3(-2174f, Struct_3(344f, 29354i, vec2<bool>(true, true), -1000f, vec4<f32>(-1237f, 313f, 1938f, 1000f)), vec3<bool>(false, false, true)))))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(348f, -536f)))), true, 39429i, reverseBits(firstTrailingBit(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)))));
    global2 = var_1.c;
    global2 = min(-29648i, var_1.d.x) >> (min(4294967295u, ~u_input.b) % 32u);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a))), true & !select(var_1.b, true, var_1.b), select(var_1.d.x, -1i, var_1.b), vec4<i32>(var_1.c, select(var_1.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.x, -1i, -1i), vec3<i32>(2147483647i, -7008i, var_1.c)), true), firstTrailingBit(-var_1.d.x), _wgslsmith_dot_vec4_i32(var_1.d, ~vec4<i32>(var_1.d.x, var_1.d.x, 10979i, 1i)))), Struct_1(var_1.a, !(any(global1[_wgslsmith_index_u32(0u, 10u)]) || true), -1i, var_1.d), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)))) - vec2<f32>(_wgslsmith_f_op_f32(select(-716f, var_1.a.x, true)), _wgslsmith_f_op_f32(300f * 1432f))), var_1.b, -17037i, min(~vec4<i32>(var_1.d.x, -33191i, var_1.d.x, -2147483647i), var_1.d)), var_1.d.x, ~vec4<u32>(max(u_input.b, u_input.a.x), 1u, u_input.a.x, u_input.a.x));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<i32>(-1i, _wgslsmith_mod_i32(0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -24822i, -30895i, 0i), ~vec4<i32>(-31095i, 0i, -49738i, -2147483647i)), -29894i), _wgslsmith_sub_i32(~select(1i, 1i, true), _wgslsmith_dot_vec4_i32(select(vec4<i32>(12818i, 26891i, 1i, -16091i), vec4<i32>(-1i, -2147483647i, 23804i, 13511i), true), vec4<i32>(1i, 1i, 1i, 1i)) & ~(-2147483647i)));
    var var_1 = 958f;
    let var_2 = func_2();
    global2 = -(~var_0.x);
    var var_3 = 9294u;
    return var_2.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    let var_0 = abs(arg_0);
    let var_1 = func_2();
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3(arg_1.a.x, Struct_3(var_1.c.a.x, -(~0i), !select(vec2<bool>(true, false), vec2<bool>(false, arg_2), var_1.b.b), arg_1.a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, -524f, arg_1.a.x, var_1.c.a.x))))), !(!select(global1[_wgslsmith_index_u32(39024u, 10u)], global1[_wgslsmith_index_u32(arg_3.x, 10u)], true)))).x, _wgslsmith_f_op_f32(min(arg_1.a.x, -701f)), !(!(!any(vec2<bool>(var_1.c.b, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(select(~23436u, 1u, any(vec2<bool>(false, true))) >> (u_input.b % 32u));
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(28686i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 1i, -1i, -20935i), vec4<i32>(1i, 1i, 1i, 1i)), -_wgslsmith_div_i32(-2147483647i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i) >> (u_input.a % vec2<u32>(32u)), ~vec2<i32>(-33957i, -1i))), -(-vec4<i32>(23496i, 2147483647i, -61916i, 23145i) >> (~vec4<u32>(32312u, u_input.b, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), func_1(), false, countOneBits(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.b, 39052u, 1u, u_input.b)), u_input.b, ~(~u_input.a.x)))));
    var var_1 = all(vec2<bool>(true, true));
    var_1 = false;
    let var_2 = any(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), func_2().b.b), vec2<bool>(any(global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), u_input.b != 0u), select(vec2<bool>(true, true), vec2<bool>(true, true), all(global1[_wgslsmith_index_u32(u_input.b, 10u)]))), vec2<bool>(true, true), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true))));
    var var_3 = func_2();
    let var_4 = var_3.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.a.x - -175f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.a.x) * _wgslsmith_f_op_f32(var_3.b.a.x * 499f))))), ~max(~1i, _wgslsmith_dot_vec4_i32(var_3.b.d, min(vec4<i32>(var_3.b.c, var_4.x, -25486i, 1i), vec4<i32>(33059i, -32515i, var_4.x, 56642i)))), _wgslsmith_sub_u32(abs(40854u), var_3.e.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1353f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f * -695f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_3.a.a.x, var_3.c.a.x), var_3.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.b.a.x, 452f)) - -848f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(650f, var_3.a.a.x, -2260f, -1000f)))))), u_input.a.x);
}

