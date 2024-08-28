struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<bool, 26>;

var<private> global3: array<Struct_5, 22>;

var<private> global4: array<bool, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_5) -> vec2<u32> {
    var var_0 = Struct_2(select(vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.d, _wgslsmith_sub_u32(u_input.a.x, 39266u)), 26u)], _wgslsmith_f_op_f32(-global0.a) != 786f), vec3<bool>(any(global0.b.zz) || !arg_2.x, !global0.b.x, any(global0.b)), vec3<bool>(!select(true, global0.b.x, global4[_wgslsmith_index_u32(arg_0.b.x, 2u)]), true, any(!global0.b))), true, -vec4<i32>(-55173i, -38687i, ~arg_3.c.x, -2147483647i) & firstLeadingBit(-vec4<i32>(-14236i, u_input.b, arg_3.c.x, 24402i) & _wgslsmith_add_vec4_i32(vec4<i32>(-20268i, 2147483647i, arg_3.c.x, arg_0.c.x), vec4<i32>(-7832i, 31398i, 38949i, -1i))), ~(~_wgslsmith_add_vec3_u32(arg_3.b, ~arg_0.b)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(911f, global0.a)))), !select(vec3<bool>(arg_2.x, false, false), vec3<bool>(global0.b.x, arg_3.e.x, true), select(global0.b, vec3<bool>(arg_3.e.x, true, false), vec3<bool>(global0.b.x, global2[_wgslsmith_index_u32(arg_0.d, 26u)], arg_3.e.x)))));
    var var_1 = arg_3;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-290f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)))) * arg_1.x))));
    var var_3 = vec3<u32>(~_wgslsmith_sub_u32(arg_0.d, 60973u | (var_0.d.x >> (33175u % 32u))), ~((8408u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, 4294967295u, 1u, u_input.a.x), vec4<u32>(arg_0.d, var_1.d, 1u, var_0.d.x)) % 32u)) | arg_3.b.x), _wgslsmith_add_u32(var_0.d.x >> (var_1.b.x % 32u), ~5356u));
    let var_4 = countOneBits(u_input.a);
    return max(vec2<u32>(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_0.d.x, arg_0.d, var_1.d, 10771u), vec4<u32>(1u, 31348u, 0u, arg_3.d), arg_0.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(3383u, arg_3.d, arg_3.b.x, 37696u), vec4<u32>(var_3.x, 4294967295u, 4294967295u, var_4.x))), u_input.a.x), ((vec2<u32>(var_3.x, var_0.d.x) | _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, var_4.x), vec2<u32>(arg_0.b.x, var_0.d.x))) & abs(arg_0.b.xz | vec2<u32>(u_input.a.x, var_3.x))) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2304u, 36725u, 32873u, arg_0.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(33198u, 0u, var_3.x, 40119u), vec4<u32>(arg_3.d, 4294967295u, arg_3.b.x, var_4.x), vec4<u32>(4294967295u, var_0.d.x, var_4.x, var_0.d.x))), reverseBits(arg_3.d)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_5 {
    var var_0 = true;
    var var_1 = arg_2.x;
    var var_2 = ~(-_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, 37614i, 13415i), -vec4<i32>(-1i, u_input.b, u_input.b, u_input.b))) >> (vec4<u32>(1u, 23118u, _wgslsmith_dot_vec2_u32(func_3(Struct_5(arg_2.x, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec2<i32>(u_input.b, 2845i), u_input.a.x, vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 2u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_f_op_vec3_f32(round(arg_3.xyz)), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], false, true, arg_0), Struct_5(arg_3.x, vec3<u32>(u_input.a.x, u_input.a.x, 20876u), vec2<i32>(u_input.b, -11027i), 40629u, vec4<bool>(arg_1.x, true, global0.b.x, false))), ~u_input.a | ~vec2<u32>(1u, 14903u)), 4294967295u) % vec4<u32>(32u));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)), 796f)))), u_input.b, arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-756f)), arg_2.x), Struct_2(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x >> (~u_input.a.x % 32u), 2u)], false, false), true, ~(-vec4<i32>(-3713i, 64442i, u_input.b, -19578i)), abs(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u)), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), Struct_1(global0.a, vec3<bool>(global0.b.x, arg_1.x, true))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, global0.a))))));
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f * _wgslsmith_f_op_f32(round(arg_2.x))) * -1774f) + 1f), ~(~var_3.e.d), vec2<i32>(max(2147483647i, -26561i) | var_2.x, u_input.b) & -(vec2<i32>(var_3.b, 0i) & var_2.wz), firstTrailingBit(countOneBits(_wgslsmith_clamp_u32(7352u, 0u, u_input.a.x) | 1u)), select(vec4<bool>(true, true, true, !select(false, true, false)), select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(65007u, 26u)], global4[_wgslsmith_index_u32(4294967295u, 2u)], var_3.e.a.x, false), vec4<bool>(true, true, arg_1.x, global4[_wgslsmith_index_u32(var_3.e.d.x, 2u)]), true), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 26u)], true, var_3.e.e.b.x), global0.b.x || global4[_wgslsmith_index_u32(8298u, 2u)]), vec4<bool>(false, any(vec4<bool>(false, true, global4[_wgslsmith_index_u32(4294967295u, 2u)], var_3.e.e.b.x)), true, global4[_wgslsmith_index_u32(var_3.e.d.x, 2u)]), (var_3.e.d.x | var_3.e.d.x) != 21289u), !(!vec4<bool>(true, var_3.e.a.x, false, false))));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.a)), arg_1.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) * func_2(arg_0, vec2<bool>(global4[_wgslsmith_index_u32(arg_1.d, 2u)], arg_1.e.x), vec2<f32>(1001f, arg_2.a), vec4<f32>(global0.a, 1329f, arg_1.a, arg_2.a)).a) * 1586f))));
    var var_1 = _wgslsmith_dot_vec3_u32(max(_wgslsmith_clamp_vec3_u32(~(~arg_1.b), ~(~arg_1.b), vec3<u32>(arg_1.d << (18523u % 32u), 93862u, _wgslsmith_mult_u32(arg_1.b.x, 1u))), func_2(any(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 2u)], arg_1.e.x, true)), arg_2.b.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.a, -1896f))) - vec2<f32>(-1703f, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2.a, arg_2.a, arg_2.a))).b), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~(arg_1.b | arg_1.b), arg_1.b), countOneBits(abs(_wgslsmith_add_vec3_u32(arg_1.b, arg_1.b)))));
    var var_2 = arg_1.e;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-arg_1.a), countOneBits(_wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(arg_3, 30291i, 2147483647i, -11936i)), vec4<i32>(arg_1.c.x << (21716u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 0i), vec3<i32>(28873i, 0i, 1i)), u_input.b, arg_3))), arg_1.c.x, true, Struct_2(vec3<bool>(true, true, any(!global0.b.yy)), 4810i <= arg_1.c.x, vec4<i32>(u_input.b, ~arg_1.c.x, func_2(arg_2.b.x, global0.b.xz, vec2<f32>(825f, var_0), vec4<f32>(403f, -653f, 977f, arg_2.a)).c.x, -42129i) & (vec4<i32>(arg_3, u_input.b, u_input.b, u_input.b) | ~vec4<i32>(11644i, arg_1.c.x, u_input.b, 37344i)), vec3<u32>(countOneBits(arg_1.d) ^ arg_1.b.x, _wgslsmith_sub_u32(4294967295u, 1u), 71126u), Struct_1(arg_1.a, select(!arg_2.b, select(arg_1.e.zxy, vec3<bool>(true, arg_2.b.x, false), arg_2.b.x), global0.b))));
    var var_4 = Struct_4(1f, reverseBits(var_3.b), 1i, func_2(true, global0.b.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -447f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(380f, var_3.a, var_0, -1181f)))).e.x, var_3.e);
    return var_4.e.e;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> vec4<i32> {
    global0 = func_4(all(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], true, global4[_wgslsmith_index_u32(0u, 2u)])), select(vec3<bool>(global0.b.x, false, global4[_wgslsmith_index_u32(71312u, 2u)]), vec3<bool>(global0.b.x, false, false), global0.b), true)), func_2(!(global0.b.x && true), !global0.b.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, arg_0)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-213f, 494f), vec2<f32>(arg_0, 427f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a), arg_0, 350f, arg_0))), Struct_1(1017f, vec3<bool>(true, !global0.b.x, true)), 15691i);
    global3 = array<Struct_5, 22>();
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_1.x, u_input.a.x), 26u)];
    global3 = array<Struct_5, 22>();
    global3 = array<Struct_5, 22>();
    return ~reverseBits(vec4<i32>(abs(34342i), 2147483647i, u_input.b << (_wgslsmith_mod_u32(arg_1.x, 39386u) % 32u), _wgslsmith_add_i32(arg_2, i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), max(8304u, u_input.a.x)), vec4<u32>(u_input.a.x, ~u_input.a.x, ~102685u, 41068u))), _wgslsmith_clamp_u32(~14854u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(132075u, u_input.a.x)), vec2<u32>(0u, 1u)), ((u_input.a.x & u_input.a.x) & u_input.a.x) << (u_input.a.x % 32u)));
    var var_1 = abs(max(~(~(u_input.b << (var_0 % 32u))), -u_input.b));
    let var_2 = -1000f;
    let var_3 = firstLeadingBit(~(~reverseBits(min(vec4<u32>(u_input.a.x, u_input.a.x, 96463u, 58850u), vec4<u32>(u_input.a.x, 2775u, var_0, 4294967295u)))));
    global2 = array<bool, 26>();
    global1 = array<Struct_3, 11>();
    let var_4 = min(_wgslsmith_dot_vec4_i32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1893f, 210f)), vec2<u32>(var_0, ~1u), u_input.b), vec4<i32>(~u_input.b, func_1(var_2, vec2<u32>(38506u, u_input.a.x) & vec2<u32>(var_3.x, 1u), _wgslsmith_div_i32(u_input.b, u_input.b)).x, u_input.b ^ u_input.b, u_input.b)), reverseBits(-48226i) << (_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(var_3, vec4<u32>(u_input.a.x, var_0, u_input.a.x, 0u)), var_3) % 32u));
    let var_5 = !global0.b.x;
    let var_6 = vec3<f32>(-155f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(117f)), global0.a))))), _wgslsmith_f_op_f32(-1227f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(217f + 935f) + func_4(false, global3[_wgslsmith_index_u32(1u, 22u)], Struct_1(var_2, vec3<bool>(global4[_wgslsmith_index_u32(13345u, 2u)], true, var_5)), u_input.b).a))));
    let x = u_input.a;
    s_output = StorageBuffer(48898u, ~(~0u), vec2<f32>(1f, _wgslsmith_f_op_f32(select(var_2, global0.a, true))));
}

