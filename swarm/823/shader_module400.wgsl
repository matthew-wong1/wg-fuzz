struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, true, true, false, false, true, false, false, true, false, true, false, false, true, false, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool) -> vec4<f32> {
    let var_0 = vec3<u32>(1u, u_input.e.x | u_input.e.x, ~min(~(0u & u_input.e.x), u_input.b.x));
    let var_1 = vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-969f * arg_1.b) * _wgslsmith_f_op_f32(abs(-823f)))) * _wgslsmith_f_op_f32(exp2(arg_1.b))));
    let var_2 = u_input.b;
    global0 = array<bool, 18>();
    let var_3 = u_input.a ^ _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(-68868i, -1i, -1i) ^ vec3<i32>(1i, -7451i, u_input.a.x), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(arg_1.a, 0i, u_input.c))), ~vec3<i32>(-20099i, -1i, -2147483647i)), ~(u_input.a << (u_input.d % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, arg_1.b, _wgslsmith_f_op_f32(round(1257f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), arg_1.b, var_1.x, _wgslsmith_f_op_f32(min(var_1.x, var_1.x))) - vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + arg_1.b), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)), _wgslsmith_f_op_f32(1484f * -281f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(abs(arg_1.b))), _wgslsmith_f_op_f32(floor(111f)), _wgslsmith_f_op_f32(select(arg_1.b, var_1.x, any(arg_0))), -2366f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -182f, 252f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -970f, 752f, var_1.x))))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(-674f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), !(!any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], false, global0[_wgslsmith_index_u32(63899u, 18u)]))), ~select(select(u_input.b, u_input.b, global0[_wgslsmith_index_u32(~u_input.b.x, 18u)]), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 22470u, u_input.e.x, 4294967295u), vec4<u32>(19865u, 4294967295u, 4294967295u, u_input.d.x)), vec4<u32>(u_input.d.x, 48827u, u_input.d.x, 42509u)), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), u_input.e), 18u)], select(true, false, true), false, true)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(false, false), Struct_3(6828i, 1000f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(654f, 618f, var_0.a, var_0.b), vec4<f32>(662f, var_0.b, -946f, -1013f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1365f, -151f, -850f) + vec4<f32>(var_0.b, var_0.a, var_0.a, 545f))))), u_input.a.yz << (vec2<u32>(1118u, max(70229u, ~19876u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.b, var_0.a, global0[_wgslsmith_index_u32(4294967295u, 18u)] || false)))));
    var var_2 = Struct_1(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -479f), true, ~u_input.b);
    let var_3 = _wgslsmith_f_op_f32(-1000f - var_2.a);
    var_0 = Struct_1(_wgslsmith_f_op_f32(round(var_3)), -999f, !var_2.c, min(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, 1810u, u_input.d.x, var_0.d.x), max(~var_2.d, var_2.d)), vec4<u32>(~(~var_0.d.x), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x), u_input.d), var_2.d.ywy), ~u_input.e.x)));
    return all(select(vec2<bool>(true, var_2.c), vec2<bool>(true, select(any(vec3<bool>(var_2.c, false, var_2.c)), false, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 18u)], false)))), vec2<bool>((var_0.d.x >= var_2.d.x) || !global0[_wgslsmith_index_u32(u_input.b.x, 18u)], _wgslsmith_f_op_f32(floor(var_2.a)) != _wgslsmith_f_op_f32(exp2(var_2.a)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: u32) -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_mod_i32(u_input.c, -1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f * 1543f))))));
    let var_1 = _wgslsmith_add_i32(countOneBits(-2147483647i), firstLeadingBit(-max(-54483i, u_input.a.x) | abs(1i)));
    var var_2 = true;
    var_2 = true;
    global0 = array<bool, 18>();
    return ~(-(u_input.a.yy << (max(vec2<u32>(arg_0.x, 0u), vec2<u32>(0u, 36182u)) % vec2<u32>(32u))) << (vec2<u32>(~(arg_1 << (1944u % 32u)), 4294967295u) % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 18>();
    var var_0 = (u_input.a.yx << (~vec2<u32>(37770u, abs(u_input.d.x)) % vec2<u32>(32u))) & func_4(~max(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u), u_input.b), ~u_input.b.x, select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 18u)], global0[_wgslsmith_index_u32(u_input.d.x, 18u)], global0[_wgslsmith_index_u32(u_input.e.x, 18u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.d.x, 18u)], global0[_wgslsmith_index_u32(25538u, 18u)], global0[_wgslsmith_index_u32(111418u, 18u)])), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.e.x, 18u)]), global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(true, func_2(), true, !global0[_wgslsmith_index_u32(42506u, 18u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 18u)], false, global0[_wgslsmith_index_u32(4294967295u, 18u)])), u_input.e.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(757f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(120f))) - _wgslsmith_f_op_f32(step(-351f, _wgslsmith_f_op_f32(step(-255f, -132f))))))), _wgslsmith_f_op_f32(f32(-1f) * -666f), 641f);
    var var_2 = vec4<i32>(abs(firstTrailingBit(_wgslsmith_sub_i32(var_0.x, 0i)) & -14214i), -(~53888i), var_0.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.xy, -vec2<i32>(var_0.x, -1i))));
    global0 = array<bool, 18>();
    return Struct_1(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) + _wgslsmith_f_op_f32(select(-386f, var_1.x, false)))))), true, ~(~u_input.b));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -_wgslsmith_sub_i32(u_input.c, -1i) | u_input.a.x, -1i, 2147483647i), -vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.c)), u_input.c, -(u_input.a.x << (u_input.d.x % 32u)), ~reverseBits(u_input.a.x)));
    global0 = array<bool, 18>();
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    var var_0 = Struct_1(-1356f, _wgslsmith_f_op_f32(f32(-1f) * -1094f), func_5(func_1()), u_input.b);
    var var_1 = any(vec4<bool>(true, true, reverseBits(~u_input.c) > ~u_input.a.x, func_1().c));
    let var_2 = Struct_1(-1440f, var_0.b, var_0.c, abs(firstTrailingBit(vec4<u32>(var_0.d.x, 4498u, _wgslsmith_dot_vec3_u32(var_0.d.wxw, vec3<u32>(var_0.d.x, 0u, 26407u)), _wgslsmith_div_u32(56746u, var_0.d.x)))));
    var var_3 = Struct_3(_wgslsmith_dot_vec2_i32(-firstLeadingBit(~u_input.a.xy), reverseBits(u_input.a.zy >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 25950u), var_2.d.xy) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(718f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_2.b, var_2.a)))))));
    var var_4 = u_input.e.x << (reverseBits(_wgslsmith_mod_u32(var_0.d.x, 4294967295u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec4<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, func_1().d.x) & ~var_0.d.x, _wgslsmith_add_u32(max(u_input.d.x >> (4294967295u % 32u), firstLeadingBit(u_input.b.x)), _wgslsmith_add_u32(3485u, firstTrailingBit(var_2.d.x))), 0u), vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(484f)) + _wgslsmith_f_op_f32(-var_3.b)))), func_1().b, var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))), vec4<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, var_3.a, 2147483647i), vec4<i32>(2147483647i, 16939i, var_3.a, 0i)), (abs(-49711i) & abs(var_3.a)) << (_wgslsmith_clamp_u32(var_2.d.x, 35097u, u_input.d.x) % 32u), -func_4(firstTrailingBit(vec4<u32>(11837u, 14634u, var_0.d.x, u_input.b.x)), abs(84637u), !vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 18u)]), 83803u).x, ~select(abs(-1i), firstTrailingBit(u_input.a.x), true || var_2.c)), _wgslsmith_sub_vec3_u32(~(~(~u_input.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.d.x, 25420u), ~vec3<u32>(0u, 1u, 14830u)) >> (var_0.d.xzw % vec3<u32>(32u))));
}

