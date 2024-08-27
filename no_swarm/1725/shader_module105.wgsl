struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(0u), Struct_2(66063u), Struct_2(20063u), Struct_2(15782u), Struct_2(27122u), Struct_2(84257u), Struct_2(0u));

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global2: array<Struct_3, 23>;

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(1u), Struct_2(33384u), Struct_2(1u), Struct_2(1u), Struct_2(34458u), Struct_2(0u), Struct_2(19728u), Struct_2(81597u), Struct_2(1u), Struct_2(0u), Struct_2(1u), Struct_2(44570u), Struct_2(62834u), Struct_2(1u), Struct_2(0u), Struct_2(1u), Struct_2(28446u), Struct_2(25242u), Struct_2(17937u), Struct_2(35871u), Struct_2(1u), Struct_2(32309u), Struct_2(6434u), Struct_2(0u), Struct_2(14457u));

var<private> global4: array<vec3<u32>, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.e, 25u)];
    let var_1 = global4[_wgslsmith_index_u32(var_0.a, 26u)];
    let var_2 = Struct_2(60121u);
    global3 = array<Struct_2, 25>();
    let var_3 = countOneBits(vec2<i32>(~(-2147483647i), reverseBits(-u_input.b)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1707f)) - -1033f) * _wgslsmith_div_f32(-344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-446f + -509f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1241f)), -1531f))))));
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> vec4<i32> {
    return ~(~reverseBits(-vec4<i32>(0i, -22321i, u_input.d.x, 1i))) | -vec4<i32>(4499i, -2147483647i, select(29195i, -2147483647i, true), 2147483647i);
}

fn func_5(arg_0: vec4<i32>) -> i32 {
    var var_0 = arg_0.xzw << (vec3<u32>(1u, ~_wgslsmith_sub_u32(u_input.e & u_input.e, 64998u), 4294967295u) % vec3<u32>(32u));
    global0 = array<Struct_2, 7>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-668f, 111f, -2360f) - vec3<f32>(-287f, -151f, 1000f)), vec3<f32>(1402f, -336f, -892f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1200f, -172f, -1000f)), vec3<f32>(1000f, -1011f, -1025f)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -845f), -883f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f + _wgslsmith_f_op_f32(var_1.x + 1174f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.x)), -1406f)));
    global0 = array<Struct_2, 7>();
    return -2147483647i;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_add_i32(func_5(func_4(!(true | global1.x), Struct_5(Struct_1(vec4<u32>(14979u, 46260u, 4294967295u, u_input.c), -1000f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_add_vec2_i32(arg_0, arg_0)))), arg_0.x);
    var var_1 = Struct_4(global1.x);
    global1 = vec4<bool>(true, all(vec2<bool>(all(global1.wyx), !any(vec4<bool>(global1.x, true, false, global1.x)))), (u_input.c & ~u_input.c) == u_input.e, var_1.a);
    let var_2 = Struct_2((~(u_input.e & u_input.e) >> (24858u % 32u)) ^ ~3472u);
    let var_3 = !var_1.a;
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_2.a), vec2<u32>(var_2.a, var_2.a))), vec2<u32>(_wgslsmith_mult_u32(3967u, var_2.a), var_2.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool) -> vec4<f32> {
    let var_0 = firstLeadingBit(0u);
    global4 = array<vec3<u32>, 26>();
    let var_1 = select(!global1.ywy, global1.wwz, global1.xzw);
    global3 = array<Struct_2, 25>();
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_1.a, arg_1.a, 119368u) & ~vec4<u32>(9357u, arg_1.a, arg_1.a, u_input.e), ~vec4<u32>(~u_input.c, _wgslsmith_sub_u32(28573u, 1u), func_2(u_input.d), u_input.e)), arg_0.x);
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(-874f)), 1892f, _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-169f, var_2.b)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = 38510i;
    var var_1 = _wgslsmith_f_op_f32(arg_1.a.b * arg_0.x);
    let var_2 = ~firstLeadingBit(-(arg_1.d & arg_1.d));
    var var_3 = Struct_5(arg_1.a, _wgslsmith_f_op_f32(step(arg_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1.a.b)))) * -249f))), select(_wgslsmith_mult_vec2_i32(u_input.d, u_input.a), u_input.d, true));
    global3 = array<Struct_2, 25>();
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~_wgslsmith_mult_u32(u_input.c, 31367u), 0u, u_input.c, ~func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(-786f, 2047f, 1023f), global0[_wgslsmith_index_u32(u_input.e, 7u)], global1.x)) - vec4<f32>(1f, 1f, 1f, 1f)), Struct_3(Struct_1(vec4<u32>(u_input.c, u_input.c, u_input.c, 23858u), 199f), vec4<u32>(15111u, 20938u, u_input.c, 46093u), vec4<u32>(25387u, 68666u, 41708u, u_input.e), _wgslsmith_mod_i32(u_input.d.x, 26086i)), 4294967295u & firstLeadingBit(u_input.e)));
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.c, 3322u, 1u, 26629u)), ~(~firstLeadingBit(vec4<u32>(u_input.e, var_0.x, u_input.c, 29194u)))), -104f);
    var var_2 = max(min(vec2<i32>(2147483647i, ~(~(-372i))), vec2<i32>(u_input.d.x, -u_input.d.x)), firstTrailingBit(vec2<i32>(firstTrailingBit(1i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), u_input.b))));
    let var_3 = func_4(false, Struct_5(Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(-955f, var_1.b, -450f), global0[_wgslsmith_index_u32(var_1.a.x, 7u)], global1.x)).x), _wgslsmith_f_op_f32(-var_1.b), u_input.a)) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(-2147483647i, -2147483647i, var_2.x), vec3<i32>(2147483647i, u_input.b, u_input.a.x), true), vec3<i32>(-27364i, reverseBits(var_2.x), -var_2.x)), -u_input.a.x, _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(1i, u_input.b) << (0u % 32u)), -29648i);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.b), var_1.b, !global1.x)) - var_1.b)), ~(~(vec2<u32>(73509u, var_0.x) | firstTrailingBit(vec2<u32>(var_4.a.x, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(580f, 716f, -2214f), Struct_2(var_0.x), true)).x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(2089f * _wgslsmith_f_op_f32(var_1.b * 1403f)), var_1.b)), vec2<i32>(-1i, ~51727i), firstLeadingBit(1u));
}

