struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32) -> bool {
    var var_0 = arg_0.a.x;
    global0 = array<vec3<f32>, 20>();
    let var_1 = Struct_1(vec3<bool>(select(true, any(vec3<bool>(true, true, false)), true) || all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)) | true, !(true && all(vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(abs(-1334f)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-arg_0.a), arg_0.b);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x));
    return false;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 20>();
    let var_0 = Struct_2(Struct_1(arg_0.a, -584f), arg_0, select(select(arg_0.a, !vec3<bool>(true, false, arg_0.a.x), vec3<bool>(-1i < u_input.b, func_3(Struct_3(vec2<f32>(1492f, arg_0.b), vec4<u32>(0u, 4294967295u, 0u, 64064u)), vec2<i32>(u_input.b, u_input.b), 41314u), arg_0.a.x)), vec3<bool>(true, true, !(arg_0.a.x || arg_0.a.x)), !select(select(arg_0.a, arg_0.a, arg_0.a.x), vec3<bool>(true, arg_0.a.x, arg_0.a.x), !arg_0.a)), arg_0);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-819f)), _wgslsmith_f_op_f32(round(-1055f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.b, -156f, false)) - var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(644f))))), vec4<u32>(u_input.c, max(4294967295u, 0u), firstTrailingBit(1u) >> (abs(u_input.c) % 32u), u_input.c));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b * arg_0.b), var_1.a.x) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-959f, -991f)), var_1.a)))), _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(reverseBits(var_1.b), select(vec4<u32>(u_input.c, var_1.b.x, 1u, var_1.b.x), vec4<u32>(var_1.b.x, 38476u, 1u, 4294967295u), vec4<bool>(var_0.c.x, true, false, arg_0.a.x)), vec4<u32>(4294967295u, var_1.b.x, var_1.b.x, var_1.b.x) & vec4<u32>(u_input.d, 67690u, u_input.d, 55305u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(42733u, var_1.b.x), u_input.a, 2141u, max(u_input.c, 23893u)), firstTrailingBit(firstTrailingBit(var_1.b))), max(vec4<u32>(~u_input.d, var_1.b.x, _wgslsmith_mod_u32(22852u, u_input.d), _wgslsmith_mult_u32(1u, 55606u)), reverseBits(firstLeadingBit(vec4<u32>(u_input.a, 0u, 0u, u_input.d))))));
    var var_3 = var_0.b;
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_0.a.b;
    var var_1 = _wgslsmith_mod_i32(-2147483647i, u_input.b);
    var_0 = arg_0.d.b;
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xy + arg_1.zy)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(667f * arg_0.a.b)), -1797f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.xz, arg_1.xy))))));
    return Struct_3(arg_1.xz, max(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 22557u, 386u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(20211u, 26740u, 4294967295u, u_input.d), vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.a), vec4<u32>(u_input.a, u_input.d, 8397u, 1u)), firstTrailingBit(vec4<u32>(u_input.d, u_input.c, 16456u, u_input.c)))), vec4<u32>(9481u, 0u << (u_input.c % 32u), u_input.c, u_input.a)));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = ~abs(_wgslsmith_div_vec3_u32(arg_0.b.wzw, vec3<u32>(49353u | u_input.c, 64972u << (u_input.d % 32u), _wgslsmith_clamp_u32(u_input.d, 12337u, arg_0.b.x))));
    var var_1 = -500f;
    let var_2 = func_2(func_2(Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), all(vec2<bool>(false, true))), arg_0.a.x)));
    var var_3 = func_4(Struct_2(var_2, func_2(func_2(Struct_1(vec3<bool>(false, var_2.a.x, var_2.a.x), -2255f))), !select(vec3<bool>(false, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), select(vec3<bool>(false, var_2.a.x, true), var_2.a, true)), Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(543f, arg_0.a.x) - -2393f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(978f, _wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-604f + 1375f), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 45438i, u_input.b)), vec4<i32>(-34885i, u_input.b, -24962i, u_input.b) & vec4<i32>(u_input.b, u_input.b, u_input.b, -1245i)), firstLeadingBit(vec4<i32>(6672i, u_input.b, u_input.b, u_input.b))), -countOneBits(vec4<i32>(u_input.b, 29898i, u_input.b, -6512i)) << (arg_0.b % vec4<u32>(32u))), func_2(Struct_1(!var_2.a, _wgslsmith_f_op_f32(-var_2.b))));
    let var_4 = vec4<bool>(var_2.a.x, !any(!(!vec2<bool>(true, var_2.a.x))), select(1u != ~_wgslsmith_dot_vec3_u32(vec3<u32>(35874u, var_0.x, u_input.c), arg_0.b.yxy), false, (14489u >> (func_4(Struct_2(Struct_1(var_2.a, -134f), Struct_1(var_2.a, 1833f), var_2.a, Struct_1(var_2.a, var_2.b)), vec3<f32>(arg_0.a.x, var_3.a.x, arg_0.a.x), vec4<i32>(u_input.b, u_input.b, -1i, 89086i), Struct_1(var_2.a, -1000f)).b.x % 32u)) > (_wgslsmith_clamp_u32(1727u, var_3.b.x, 4294967295u) << (arg_0.b.x % 32u))), true);
    return Struct_1(select(!(!var_2.a), select(func_2(Struct_1(var_4.xxw, arg_0.a.x)).a, !var_4.ywz, vec3<bool>(false, !var_4.x, var_4.x)), func_2(var_2).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(269f + -895f), 119f))));
}

fn func_1() -> f32 {
    var var_0 = 1602f;
    let var_1 = func_5(func_4(Struct_2(func_2(Struct_1(vec3<bool>(true, true, true), 686f)), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), -557f), vec3<bool>(true, true, all(vec4<bool>(false, true, true, true))), Struct_1(vec3<bool>(true, false, false), _wgslsmith_f_op_f32(f32(-1f) * -2364f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1080f + 1631f), -386f, _wgslsmith_f_op_f32(-530f - -952f)) * vec3<f32>(1f, 1f, 1f)), countOneBits(vec4<i32>(14663i ^ u_input.b, -2147483647i, u_input.b, _wgslsmith_mult_i32(31112i, -34047i))), func_2(func_2(Struct_1(vec3<bool>(false, false, false), -1546f)))));
    return _wgslsmith_f_op_f32(trunc(func_2(var_1).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(152f)))) * _wgslsmith_f_op_f32(func_1()));
    let var_1 = ~(vec2<i32>(-1i >> (countOneBits(u_input.d) % 32u), _wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)))) ^ (-select(vec2<i32>(0i, u_input.b), vec2<i32>(2147483647i, u_input.b), false) >> (~min(vec2<u32>(62152u, 4294967295u), vec2<u32>(u_input.d, 27u)) % vec2<u32>(32u))));
    var var_2 = func_4(Struct_2(func_5(func_4(Struct_2(Struct_1(vec3<bool>(true, true, false), 1000f), Struct_1(vec3<bool>(true, true, true), -398f), vec3<bool>(false, true, false), Struct_1(vec3<bool>(true, false, false), 570f)), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.b, var_1.x), vec4<i32>(var_1.x, -18844i, var_1.x, u_input.b)), func_2(Struct_1(vec3<bool>(true, true, false), -141f)))), func_5(Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(614f, 395f))), _wgslsmith_add_vec4_u32(vec4<u32>(53042u, 22152u, 4294967295u, u_input.c), vec4<u32>(4294967295u, 75660u, 31454u, u_input.a)))), vec3<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false))), !(0u != u_input.c), _wgslsmith_sub_u32(4294967295u, u_input.a) == ~u_input.d), Struct_1(func_2(func_2(Struct_1(vec3<bool>(false, true, false), -807f))).a, 1111f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(153f - -289f) + _wgslsmith_f_op_f32(max(407f, -598f))), func_4(Struct_2(Struct_1(vec3<bool>(false, false, false), -1819f), Struct_1(vec3<bool>(false, true, true), -1411f), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, false), 1528f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1019f, -1202f, 981f)), vec4<i32>(22934i, -1i, 2147483647i, u_input.b), func_5(Struct_3(vec2<f32>(1000f, 927f), vec4<u32>(u_input.c, u_input.c, u_input.d, 30735u)))).a.x) * _wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(50406u, 20u)]))), vec4<i32>(min(abs(u_input.b), u_input.b), u_input.b, var_1.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 1i, var_1.x, var_1.x), vec4<i32>(u_input.b, 2147483647i, 26578i, -65364i))) ^ select(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(-1i, -1i, -1i, u_input.b)), vec4<i32>(var_1.x, abs(0i), 24677i >> (1u % 32u), i32(-1i) * -13209i), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), true)), func_5(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1031f))), vec4<u32>(4294967295u, 0u, ~1911u, 9681u))));
    let var_3 = false;
    let var_4 = func_2(Struct_1(!func_2(func_2(Struct_1(vec3<bool>(var_3, var_3, true), -457f))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 2500f)));
    global0 = array<vec3<f32>, 20>();
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b, 371f)) - var_2.a)), vec4<u32>(u_input.a, ~(~u_input.c) >> (u_input.c % 32u), var_2.b.x, min(_wgslsmith_div_u32(4294967295u, 1u), select(var_2.b.x | 59186u, _wgslsmith_mod_u32(10432u, 24517u), true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_2.b.ywy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-727f, -751f, var_4.b, var_4.b))))), _wgslsmith_mult_u32(var_2.b.x, select(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, var_2.b.x), vec2<u32>(25156u, 4294967295u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(5038u, u_input.a), var_2.b.yw), var_4.a.x)));
}

