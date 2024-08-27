struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(~arg_0.x, countOneBits(14647u)), ~0u) & ~arg_0.zw, Struct_1(arg_0.x, _wgslsmith_add_u32(4528u, 0u), !vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a, 13u)], true)));
    global0 = array<bool, 13>();
    var var_1 = false;
    let var_2 = select(var_0.b.c, var_0.b.c, var_0.b.c.x);
    var_1 = var_0.b.c.x;
    return reverseBits(0u ^ (reverseBits(~4294967295u) | (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.b, arg_0.x, var_0.b.a), vec3<u32>(39177u, 22380u, 0u)) >> (~1u % 32u))));
}

fn func_2() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(1470f + _wgslsmith_f_op_f32(step(-1308f, 1462f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(f32(-1f) * -745f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1855f)) - _wgslsmith_f_op_f32(f32(-1f) * -389f)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_4(firstTrailingBit(firstTrailingBit(-vec2<i32>(1i, 1i))), vec3<u32>(u_input.a, abs(u_input.a), _wgslsmith_mult_u32(~(u_input.a >> (320u % 32u)), 67256u)));
    var var_3 = vec3<i32>(-1i & -_wgslsmith_div_i32(-2147483647i ^ var_2.a.x, 0i), var_2.a.x, 1i);
    let var_4 = select(vec3<bool>(!global0[_wgslsmith_index_u32(73668u, 13u)], global0[_wgslsmith_index_u32(~func_3(vec4<u32>(var_2.b.x, var_2.b.x, 0u, var_2.b.x)), 13u)], global0[_wgslsmith_index_u32(~firstTrailingBit(~var_2.b.x), 13u)]), vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1699f + 414f), _wgslsmith_f_op_f32(step(1360f, -832f)))) < _wgslsmith_f_op_f32(step(-1000f, var_1.a)), any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 13u)], false, global0[_wgslsmith_index_u32(var_2.b.x, 13u)]), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(38785u, 13u)], false, true), vec3<bool>(false, true, true))), var_2.b.x < var_2.b.x), true);
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_4 {
    let var_0 = vec4<bool>(any(vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.b, 13u)], false, arg_1.c.x, arg_1.c.x)), global0[_wgslsmith_index_u32(reverseBits(1u), 13u)], all(arg_1.c), all(!vec4<bool>(false, global0[_wgslsmith_index_u32(23708u, 13u)], global0[_wgslsmith_index_u32(arg_1.b, 13u)], global0[_wgslsmith_index_u32(40395u, 13u)])))), !(!all(select(vec3<bool>(arg_1.c.x, true, true), vec3<bool>(arg_1.c.x, arg_1.c.x, true), vec3<bool>(global0[_wgslsmith_index_u32(19749u, 13u)], false, arg_1.c.x)))), false, arg_1.c.x);
    global0 = array<bool, 13>();
    let var_1 = true || (_wgslsmith_f_op_f32(abs(-1603f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(505f - -908f), _wgslsmith_f_op_f32(trunc(2332f)))), 188f)));
    global0 = array<bool, 13>();
    let var_2 = Struct_4(~firstLeadingBit(vec2<i32>(1i, 1i)), firstLeadingBit(vec3<u32>(~arg_2, ~min(u_input.a, 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, u_input.a, 4294967295u), firstLeadingBit(vec4<u32>(15219u, arg_2, arg_0, 1u))))));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    global0 = array<bool, 13>();
    let var_0 = func_4(~((func_2() >> (~1u % 32u)) | (~arg_0.b ^ _wgslsmith_div_u32(arg_2.x, 15933u))), Struct_1(arg_0.a, 1u, arg_0.c), 39128u);
    var var_1 = Struct_3(1000f);
    var_1 = Struct_3(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-617f, var_1.a), var_1.a), var_1.a), var_1.a < var_1.a)));
    return Struct_2(_wgslsmith_clamp_vec2_u32(~vec2<u32>(~u_input.a, func_4(var_0.b.x, Struct_1(0u, var_0.b.x, vec2<bool>(true, true)), arg_0.a).b.x), arg_2.xz, ~(arg_2.zy << (var_0.b.yx % vec2<u32>(32u))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), arg_0);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    return Struct_2(vec2<u32>(~(arg_2.b.b >> (52510u % 32u)), max(arg_0.x, u_input.a)), func_1(arg_2.b, -firstLeadingBit(_wgslsmith_clamp_i32(52167i, arg_3.x, arg_3.x)), vec4<u32>(abs(arg_2.a.x), ~(4294967295u << (arg_0.x % 32u)), ~u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.a, arg_2.b.a, 24883u), vec4<u32>(u_input.a, u_input.a, 51822u, 6300u)))).b);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_1.x;
    global0 = array<bool, 13>();
    let var_1 = arg_2.b;
    var var_2 = vec4<bool>(arg_2.b.c.x, !arg_2.b.c.x, arg_0.c.x, false);
    global0 = array<bool, 13>();
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))));
}

fn func_7(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> u32 {
    let var_0 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(71910i, -2147483647i, -1i)), -(vec3<i32>(-2147483647i, -1i, 0i) << (vec3<u32>(0u, arg_0, arg_2.x) % vec3<u32>(32u)))) & ~countOneBits(min(vec3<i32>(1069i, 17003i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(1i, -1i, -80871i))));
    var var_1 = arg_2;
    var_1 = _wgslsmith_sub_vec2_u32(arg_2, vec2<u32>(1u, _wgslsmith_div_u32(~var_1.x >> (_wgslsmith_mod_u32(0u, u_input.a) % 32u), var_1.x)));
    global0 = array<bool, 13>();
    var var_2 = 1002f;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    var var_0 = Struct_1(func_7(_wgslsmith_mod_u32(~1u, min(~40640u, u_input.a)), func_6(Struct_1(_wgslsmith_add_u32(u_input.a, 77685u), ~33285u, select(vec2<bool>(global0[_wgslsmith_index_u32(69568u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, -316f, -658f, 342f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-138f, -208f, -189f, -871f) + vec4<f32>(-674f, -911f, -468f, 1286f))), func_5(vec2<u32>(0u, u_input.a), func_1(Struct_1(39660u, 0u, vec2<bool>(true, true)), 1i, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), Struct_2(vec2<u32>(u_input.a, 0u), Struct_1(30869u, 55288u, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 13u)]))), -vec3<i32>(-1i, 29165i, 1i))), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.a) >> (vec2<u32>(43928u, 28727u) % vec2<u32>(32u)), vec2<u32>(~u_input.a, 1u))), ~(~func_7(_wgslsmith_mod_u32(34409u, 1u), func_6(Struct_1(u_input.a, 396u, vec2<bool>(false, global0[_wgslsmith_index_u32(16459u, 13u)])), vec4<f32>(-1614f, -1521f, 352f, -1303f), Struct_2(vec2<u32>(1u, 70935u), Struct_1(u_input.a, u_input.a, vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)])))), vec2<u32>(u_input.a, u_input.a))), vec2<bool>(true, true));
    let var_1 = 658f;
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 13u)];
    let var_3 = 7935u;
    let var_4 = func_6(Struct_1(func_7(~var_0.b, Struct_3(-242f), ~(~vec2<u32>(88390u, 1u))), firstTrailingBit(10004u), var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) * _wgslsmith_f_op_f32(trunc(543f))))), Struct_2(vec2<u32>(~u_input.a, func_5(vec2<u32>(var_3, var_3), Struct_2(vec2<u32>(4666u, 48998u), Struct_1(24104u, 4294967295u, var_0.c)), Struct_2(vec2<u32>(1387u, 0u), Struct_1(u_input.a, u_input.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(var_3, 13u)]))), vec3<i32>(-46656i, -2147483647i, 1i)).a.x) >> ((~vec2<u32>(var_3, 0u) ^ (vec2<u32>(16889u, var_0.a) ^ vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)), Struct_1(1u, ~func_3(vec4<u32>(44991u, var_0.a, u_input.a, 4294967295u)), !var_0.c)));
    var_2 = !(var_0.c.x || global0[_wgslsmith_index_u32(1u, 13u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-1049f, 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-780f, -1250f, -864f, 781f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -764f, var_1))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(405f, 638f, var_1, var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, -264f, var_4.a, var_1) + vec4<f32>(var_1, var_1, -345f, -566f)), all(var_0.c))))));
}

