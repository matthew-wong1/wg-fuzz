struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global2: array<vec3<bool>, 2>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = Struct_2(Struct_1(global0.c.a, min(-global0.c.b << (max(u_input.a, 38936u) % 32u), firstLeadingBit(abs(2147483647i)))), global0.b, Struct_1(arg_0.a, countOneBits(_wgslsmith_clamp_i32(firstTrailingBit(arg_0.b), -1i, _wgslsmith_div_i32(-28415i, global0.d.b)))), global0.c, arg_0);
    var var_0 = _wgslsmith_f_op_vec4_f32(select(arg_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.a.x, _wgslsmith_f_op_f32(min(455f, _wgslsmith_div_f32(global0.c.a.x, -419f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), true));
    global1 = array<vec2<bool>, 22>();
    global1 = array<vec2<bool>, 22>();
    let var_1 = Struct_1(global0.c.a, _wgslsmith_sub_i32(abs(_wgslsmith_mod_i32(21931i, ~0i)), countOneBits(20210i)));
    return !(!(-2147483647i >= (abs(global0.e.b) | (var_1.b & var_1.b))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = func_3(Struct_1(vec4<f32>(1f, global0.c.a.x, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(635f + 564f)), -_wgslsmith_clamp_i32(global0.d.b, -1i, -1i))) & true;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.a.a)) * arg_0.a), arg_0.b), min(global0.b >> (global0.b % vec2<u32>(32u)), global0.b), Struct_1(vec4<f32>(-743f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-202f * 1366f), _wgslsmith_f_op_f32(-arg_1)), arg_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1, global0.d.a.x), arg_1))), global0.a.b & -1i), global0.a, arg_0);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), -46136i), global0.b, arg_0, Struct_1(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f + -629f) * _wgslsmith_f_op_f32(f32(-1f) * -687f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_1)) + -350f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-712f)), 1000f))), global0.a.b), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1421f, -931f, arg_1, arg_1) * global0.c.a))))), select(1i, global0.e.b, true) >> (abs(_wgslsmith_div_u32(arg_2, 4294967295u)) % 32u)));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.a.zzw) * var_2.d.a.ywy)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_2.c.a - global0.a.a), -countOneBits(_wgslsmith_sub_i32(45752i, -44774i))), ~_wgslsmith_mod_vec2_u32(global0.b, global0.b), var_2.d, arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d.a - arg_0.a)), _wgslsmith_sub_i32(firstTrailingBit(i32(-1i) * -12025i), ~var_1.e.b)));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = func_2(global0.d, -337f, u_input.a);
    let var_1 = global0.b;
    global2 = array<vec3<bool>, 2>();
    let var_2 = 695f;
    let var_3 = 14659i;
    return Struct_2(func_2(func_2(Struct_1(vec4<f32>(-1000f, -461f, -128f, 1582f), abs(var_0.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-174f, 1757f, true)) * _wgslsmith_div_f32(509f, global0.d.a.x)), ~4294967295u).c, _wgslsmith_f_op_f32(166f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.a.x - -264f)))), u_input.a).e, global0.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.a.x, -215f, -1365f, global0.e.a.x), vec4<f32>(var_2, var_0.a.a.x, var_0.e.a.x, 565f), arg_0)) * func_2(global0.e, _wgslsmith_f_op_f32(var_0.e.a.x + -151f), var_0.b.x).e.a), global0.d.b ^ var_3), func_2(Struct_1(var_0.d.a, _wgslsmith_dot_vec2_i32(arg_1.zx, -vec2<i32>(global0.a.b, 0i))), 664f, reverseBits(~var_0.b.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(31247u, u_input.a, global0.b.x, var_1.x), vec4<u32>(var_0.b.x, u_input.a, 12472u, 0u)))).e, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(global0.c.a)), -(_wgslsmith_div_i32(var_3, var_0.a.b) ^ -4233i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(161f + _wgslsmith_div_f32(global0.d.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.e.a.x + 278f)))))));
    let var_1 = true;
    global2 = array<vec3<bool>, 2>();
    let var_2 = vec3<i32>(-_wgslsmith_dot_vec3_i32(~select(vec3<i32>(2147483647i, 1i, arg_0.x), vec3<i32>(-1i, -2147483647i, -1i), vec3<bool>(true, var_1, var_1)), abs(vec3<i32>(arg_0.x, arg_1.d.b, global0.d.b))), -1i, 2147483647i);
    var var_3 = firstTrailingBit(vec4<i32>(-global0.d.b ^ -1i, (0i & arg_1.d.b) >> (~(~59673u) % 32u), 0i, ~_wgslsmith_sub_i32(-arg_0.x, 2147483647i)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.c.a + _wgslsmith_f_op_vec4_f32(-global0.e.a)), max(-2147483647i, reverseBits(firstTrailingBit(var_3.x))) >> (abs(u_input.a) % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: i32) -> vec4<f32> {
    global0 = arg_2;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.a.x, 374f, arg_0.a.x, global0.a.a.x) * _wgslsmith_f_op_vec4_f32(-arg_0.a)) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-973f * arg_2.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -399f), _wgslsmith_div_f32(1764f, global0.e.a.x))), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_3, arg_2.c.b), _wgslsmith_sub_i32(arg_0.b, -2147483647i))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, global0.b.x), countOneBits(global0.b)), arg_0, arg_2.d, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -136f), 106f)), firstLeadingBit(0i)));
    global0 = Struct_2(Struct_1(arg_0.a, -arg_2.a.b), ~((vec2<u32>(arg_2.b.x, 83410u) >> (global0.b % vec2<u32>(32u))) | (countOneBits(arg_2.b) >> ((arg_2.b | vec2<u32>(u_input.a, global0.b.x)) % vec2<u32>(32u)))), func_2(func_2(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), -320f), 18544u).d, _wgslsmith_f_op_f32(-788f + -1284f), max(~4294967295u, global0.b.x)).d, arg_2.e, arg_0);
    global2 = array<vec3<bool>, 2>();
    global1 = array<vec2<bool>, 22>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(arg_0.a.x - 1469f)), -500f, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x))))) + arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~vec3<u32>(4294967295u, 48529u, global0.b.x) << (~(vec3<u32>(91833u, 65898u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 93495u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(select(vec3<u32>(u_input.a, 30092u, 0u), vec3<u32>(1u, 19111u, global0.b.x), false) >> (select(vec3<u32>(u_input.a, 4294967295u, 48360u), vec3<u32>(64896u, u_input.a, 0u), vec3<bool>(false, true, true)) % vec3<u32>(32u))), all(vec3<bool>(true, true, true))) >> (vec3<u32>(~_wgslsmith_div_u32(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)), global0.b.x, u_input.a) % vec3<u32>(32u));
    global2 = array<vec3<bool>, 2>();
    global2 = array<vec3<bool>, 2>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_5(global0.a, global0.d.a.xy, Struct_2(Struct_1(global0.d.a, select(2789i, global0.e.b, true)), ~vec2<u32>(global0.b.x, 1u), func_4(vec4<i32>(global0.e.b, -5114i, 46666i, global0.e.b), func_1(false, vec3<i32>(1i, -2147483647i, global0.c.b), global0.a.a.wz)), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.b, global0.e.b, -29585i, 21367i), vec4<i32>(-1i, global0.d.b, global0.e.b, -18590i)), Struct_2(Struct_1(vec4<f32>(-174f, global0.e.a.x, global0.d.a.x, 1678f), -52579i), vec2<u32>(u_input.a, 47356u), global0.d, Struct_1(vec4<f32>(global0.c.a.x, 1130f, -1126f, global0.d.a.x), -1i), Struct_1(vec4<f32>(-1321f, global0.e.a.x, 603f, -648f), 0i))), global0.c), min(global0.e.b, 4623i))), _wgslsmith_dot_vec3_i32(~(~select(vec3<i32>(37443i, global0.d.b, 1i), vec3<i32>(-33211i, global0.d.b, global0.e.b), true)), -firstTrailingBit(vec3<i32>(2147483647i, global0.e.b, -39339i)) & countOneBits(vec3<i32>(34218i, -29860i, 0i))));
    global2 = array<vec3<bool>, 2>();
    let var_2 = var_1;
    global2 = array<vec3<bool>, 2>();
    var_0 = vec3<u32>(u_input.a, 73160u, 1u) ^ ~firstTrailingBit(select(vec3<u32>(global0.b.x, 16197u, u_input.a) ^ vec3<u32>(var_0.x, 1u, 4294967295u), vec3<u32>(39925u, u_input.a, 40309u), true));
    var_0 = select(~vec3<u32>(~u_input.a ^ 52627u, 49140u, u_input.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(20902u, global0.b.x, var_0.x), vec3<u32>(u_input.a, 0u, var_0.x) << (vec3<u32>(46035u, var_0.x, var_0.x) % vec3<u32>(32u))) >> ((vec3<u32>(1u, 1u, 1u) | select(~vec3<u32>(var_0.x, 1531u, global0.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(4294967295u, 4294967295u, 1u)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(var_0.x, 2u)]))) % vec3<u32>(32u)), ~4294967295u == _wgslsmith_mult_u32(1u, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.b, 2147483647i), select(~func_2(var_2, -1000f, ~1u).b.x, firstLeadingBit(35035u), all(vec2<bool>(true, var_2.a.x >= var_1.a.x))), global0.a.a.zyy, vec2<f32>(1320f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.e.a.x))), func_1(false, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 19260i, global0.a.b), vec3<i32>(5339i, 19790i, var_1.b), vec3<i32>(var_1.b, global0.a.b, global0.e.b)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.a.x, global0.d.a.x), global0.c.a.wx)).a.a.x)), _wgslsmith_mod_vec3_i32(~firstLeadingBit(firstLeadingBit(vec3<i32>(var_2.b, global0.d.b, -27231i))), vec3<i32>(~(var_2.b & -40097i), min(func_2(Struct_1(vec4<f32>(438f, 686f, -1972f, 301f), 11952i), -518f, global0.b.x).d.b, ~global0.a.b), _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, 0i), var_1.b))));
}

