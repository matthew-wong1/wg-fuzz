struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(75315i, 2147483647i, -1i, 0i, -31397i, 55136i, 43537i, i32(-2147483648), -1i, 18389i);

var<private> global1: array<bool, 28>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(firstLeadingBit(select(vec4<i32>(global0[_wgslsmith_index_u32(0u, 10u)], 59199i, global0[_wgslsmith_index_u32(44553u, 10u)], global0[_wgslsmith_index_u32(34997u, 10u)]), min(vec4<i32>(-2147483647i, 2147483647i, 0i, u_input.a.x), vec4<i32>(2147483647i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 10u)], 2147483647i)), !vec4<bool>(global1[_wgslsmith_index_u32(85461u, 28u)], global1[_wgslsmith_index_u32(35547u, 28u)], global1[_wgslsmith_index_u32(6587u, 28u)], global1[_wgslsmith_index_u32(27706u, 28u)]))) << (select(vec4<u32>(14479u, abs(48893u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u)), 1u), vec4<u32>(1u, 1u, 1u, 1u), select(false, true, u_input.b.x <= u_input.a.x)) % vec4<u32>(32u)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), 1u, (_wgslsmith_div_i32(u_input.b.x, global0[_wgslsmith_index_u32(0u, 10u)]) | 1i) & 17366i, vec2<u32>(1u, 66416u)));
    var_0 = Struct_5(-var_0.a, var_0.b);
    var var_1 = _wgslsmith_f_op_f32(var_0.b.a.x + var_0.b.a.x);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) * _wgslsmith_f_op_f32(-413f * var_0.b.a.x))))));
    return firstLeadingBit(var_0.b.d.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> Struct_3 {
    let var_0 = Struct_5(_wgslsmith_sub_vec4_i32(vec4<i32>(-global0[_wgslsmith_index_u32(5071u, 10u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(12912u, 11122u), 10u)], 2147483647i, 1i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -495i, u_input.b.x), vec3<i32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(4646u, 10u)])), u_input.a.x, i32(-1i) * -2147483647i, global0[_wgslsmith_index_u32(50725u, 10u)])) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_0)), 7083u, firstTrailingBit(_wgslsmith_mult_i32(0i, ~u_input.b.x)), vec2<u32>(firstLeadingBit(func_3()), ~12256u)));
    let var_1 = arg_1;
    global0 = array<i32, 10>();
    var var_2 = Struct_5(~vec4<i32>(~u_input.a.x, -u_input.b.x, var_0.a.x << (var_0.b.b % 32u), u_input.b.x) << (max(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.b, 4294967295u, 4294967295u, 52117u), vec4<u32>(4294967295u, 60569u, 4294967295u, var_0.b.b))), firstTrailingBit(vec4<u32>(var_0.b.d.x, var_0.b.b, 17325u, 1u) >> (vec4<u32>(20101u, 36543u, 4294967295u, var_0.b.b) % vec4<u32>(32u)))) % vec4<u32>(32u)), var_0.b);
    let var_3 = Struct_4(65701u, vec3<u32>(32412u, ~(~var_0.b.b) & var_2.b.d.x, ~var_2.b.d.x), -abs(var_0.a.ww), arg_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))) + _wgslsmith_div_f32(-206f, _wgslsmith_f_op_f32(-arg_0.x))))));
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-802f, -261f, 156f, 1017f) - vec4<f32>(-1966f, 1102f, 1497f, -161f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-174f, -255f, 1160f, -645f) - vec4<f32>(-1839f, -1049f, -116f, 190f))))))), ~min(_wgslsmith_mod_u32(~66980u, 1u), select(70637u, ~15325u, true)), global0[_wgslsmith_index_u32(15709u, 10u)] | -2463i, ~(~vec2<u32>(1u, 1u)));
    global0 = array<i32, 10>();
    global1 = array<bool, 28>();
    global0 = array<i32, 10>();
    var var_1 = var_0.a.x;
    return Struct_4(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, var_0.d.x, 135233u), _wgslsmith_sub_vec3_u32(vec3<u32>(76u, var_0.b, 1u), vec3<u32>(45820u, var_0.d.x, var_0.d.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x)) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 6133u, var_0.d.x), vec3<u32>(1u, var_0.d.x, 0u))), ~(~(~vec3<u32>(var_0.d.x, var_0.b, 22580u))) << (vec3<u32>(var_0.b, _wgslsmith_sub_u32(var_0.d.x, func_3()), select(83922u, ~4294967295u, arg_1.a)) % vec3<u32>(32u)), u_input.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1164f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f + -789f)), 1030f))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    global0 = array<i32, 10>();
    let var_0 = func_4(_wgslsmith_sub_i32(-arg_1.x, -1i), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, 1716f, 223f, 232f)))) - vec4<f32>(_wgslsmith_f_op_f32(873f + -852f), -681f, _wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(round(-1289f)))), Struct_3(!arg_0), true, true));
    global0 = array<i32, 10>();
    let var_1 = var_0.b.x;
    global0 = array<i32, 10>();
    return ~var_1;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global1 = array<bool, 28>();
    global0 = array<i32, 10>();
    global1 = array<bool, 28>();
    var var_0 = arg_2;
    var var_1 = var_0.a;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<u32>(countOneBits(func_1(true, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -57036i, u_input.a.x), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(10095u, 10u)], 1i)), _wgslsmith_sub_u32(1u, 0u))), countOneBits(~1u), 84586u), vec3<u32>(abs(1u), 1u, 19103u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(269f, 404f, 384f, 275f))), 1u, u_input.a.x, vec2<u32>(1u, 12242u)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, -454f, 265f, -2157f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -873f, -174f, 1149f) * vec4<f32>(-496f, 619f, 1000f, -1000f))), func_3(), firstTrailingBit(-global0[_wgslsmith_index_u32(115178u, 10u)]), vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, 1582f, -271f, -787f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 339f, -292f, -574f)))), _wgslsmith_add_u32(1u, ~30017u), global0[_wgslsmith_index_u32(6633u, 10u)], vec2<u32>(4294967295u, 18567u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), abs(~(~vec2<u32>(85542u, 7131u))), firstTrailingBit(1i)), 1u);
    var var_1 = global1[_wgslsmith_index_u32(var_0.c.d.x, 28u)];
    let var_2 = -_wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, u_input.b.x, -1i, -1i), ~vec4<i32>(global0[_wgslsmith_index_u32(3160u, 10u)], global0[_wgslsmith_index_u32(var_0.c.b, 10u)], global0[_wgslsmith_index_u32(var_0.d.x, 10u)], -32534i), func_4(2147483647i, Struct_3(global1[_wgslsmith_index_u32(var_0.a.d.x, 28u)])).d) << (~(~vec4<u32>(var_0.d.x, var_0.d.x, var_0.b.b, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(-10777i >> (0u % 32u)), firstTrailingBit(~global0[_wgslsmith_index_u32(1u, 10u)]), ~35705i, var_0.c.c));
    var var_3 = func_5(vec3<u32>(~var_0.d.x, reverseBits(15485u), _wgslsmith_add_u32(func_1(global1[_wgslsmith_index_u32(var_0.a.d.x, 28u)], ~vec3<i32>(u_input.a.x, 1i, u_input.b.x), ~118117u), ~0u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.b, var_0.c.b, var_0.c.b), vec3<u32>(var_0.c.b, var_0.c.d.x, var_0.d.x)), abs(vec3<u32>(var_0.b.b, 40613u, var_0.b.b))), vec3<u32>(func_3() & ~var_0.b.d.x, var_0.a.b, 0u)), func_5(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.d.x, var_0.c.d.x, 46998u), vec4<u32>(0u, 79167u, var_0.a.d.x, 87759u)), ~var_0.a.d.x, 1u) & vec3<u32>(func_1(false, var_2.yyy, var_0.a.b), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.c.b, var_0.b.d.x, 0u), vec4<u32>(var_0.a.d.x, 34971u, 58228u, 28071u)), var_0.a.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(17069u, var_0.d.x, var_0.d.x), vec3<u32>(58472u, 4294967295u, var_0.c.b)) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.c.d.x, var_0.d.x, var_0.d.x), vec3<u32>(1u, 4294967295u, 852u), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.d.x, 4294967295u, var_0.b.d.x), vec3<u32>(71688u, 64971u, var_0.d.x))) % vec3<u32>(32u)), func_5(~vec3<u32>(var_0.c.d.x, var_0.c.b, 1u) << (vec3<u32>(4816u, var_0.d.x, 8486u) % vec3<u32>(32u)), ~vec3<u32>(73532u, var_0.d.x, 1u) & abs(vec3<u32>(var_0.b.b, 1u, var_0.b.d.x)), Struct_2(var_0.c, func_5(vec3<u32>(78221u, var_0.a.d.x, 1u), vec3<u32>(67002u, 8891u, var_0.b.b), Struct_2(Struct_1(var_0.b.a, var_0.a.b, var_2.x, vec2<u32>(var_0.d.x, var_0.a.b)), var_0.c, Struct_1(var_0.a.a, var_0.b.d.x, var_0.b.c, var_0.c.d), vec2<u32>(var_0.d.x, var_0.c.d.x), u_input.b.x), var_0.c.b).c, func_5(vec3<u32>(1u, var_0.c.d.x, 0u), vec3<u32>(0u, var_0.c.d.x, var_0.d.x), Struct_2(var_0.a, var_0.c, var_0.b, vec2<u32>(var_0.a.b, 1u), 3289i), 0u).b, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), var_0.d), var_0.a.c), 29601u), var_0.c.d.x), ~(~(~4294967295u)) ^ ~_wgslsmith_div_u32(var_0.d.x ^ 4294967295u, ~var_0.d.x));
    var_3 = Struct_2(func_5(firstTrailingBit(vec3<u32>(var_0.a.d.x, 4294967295u, 15722u) | vec3<u32>(var_3.d.x, 4294967295u, var_0.a.b)) ^ abs(min(vec3<u32>(46247u, var_3.a.b, var_0.d.x), vec3<u32>(var_0.c.b, 2552u, 4294967295u))), ~firstLeadingBit(vec3<u32>(71533u, 65142u, var_0.a.d.x)) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.d.x, var_0.d.x), vec3<u32>(var_0.b.b, 0u, var_0.c.b)), Struct_2(var_3.a, func_5(~vec3<u32>(1u, 0u, var_0.d.x), select(vec3<u32>(4294967295u, 1u, 62689u), vec3<u32>(1u, 19761u, 37404u), true), func_5(vec3<u32>(var_0.c.d.x, 85015u, 1u), vec3<u32>(var_0.c.b, 18813u, var_3.c.b), Struct_2(Struct_1(var_3.b.a, 0u, var_2.x, var_0.c.d), Struct_1(var_3.c.a, var_3.d.x, -1i, vec2<u32>(1u, var_3.b.d.x)), Struct_1(var_0.a.a, 75020u, u_input.b.x, vec2<u32>(1u, var_0.b.b)), var_0.b.d, var_0.b.c), var_0.b.b), var_0.b.b | var_3.b.b).c, var_0.b, vec2<u32>(2616u, _wgslsmith_sub_u32(101589u, var_3.c.b)), ~_wgslsmith_mod_i32(var_2.x, 18314i)), var_3.c.b).c, func_5(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_3.b.b, 1u, var_0.b.b), vec3<u32>(var_3.d.x, var_3.a.b, var_3.b.d.x)), firstLeadingBit(func_4(global0[_wgslsmith_index_u32(var_3.d.x, 10u)] << (var_3.d.x % 32u), func_2(vec4<f32>(1000f, var_0.a.a.x, var_0.c.a.x, var_3.b.a.x), Struct_3(global1[_wgslsmith_index_u32(36586u, 28u)]), global1[_wgslsmith_index_u32(0u, 28u)], false)).b), func_5(vec3<u32>(func_4(global0[_wgslsmith_index_u32(4493u, 10u)], Struct_3(global1[_wgslsmith_index_u32(var_0.d.x, 28u)])).b.x, 0u >> (var_3.d.x % 32u), 4294967295u), func_4(u_input.a.x, func_2(vec4<f32>(var_0.c.a.x, -215f, var_3.a.a.x, var_0.a.a.x), Struct_3(false), false, global1[_wgslsmith_index_u32(var_0.c.b, 28u)])).b, Struct_2(func_5(vec3<u32>(1u, var_3.b.d.x, 14635u), vec3<u32>(var_0.a.d.x, 2033u, 0u), Struct_2(Struct_1(var_0.a.a, var_0.d.x, u_input.a.x, var_3.a.d), var_0.c, var_3.c, var_0.d, 1i), var_0.c.b).b, Struct_1(var_3.b.a, var_3.a.d.x, var_2.x, vec2<u32>(24696u, 19740u)), func_5(vec3<u32>(2081u, 0u, var_0.d.x), vec3<u32>(var_0.c.b, 42574u, 1u), Struct_2(var_0.b, Struct_1(var_3.b.a, var_0.a.d.x, var_0.c.c, vec2<u32>(0u, var_3.c.b)), var_3.c, var_3.b.d, global0[_wgslsmith_index_u32(1u, 10u)]), var_0.c.d.x).a, vec2<u32>(var_0.d.x, 1u), func_5(vec3<u32>(var_3.c.b, 1u, var_0.d.x), vec3<u32>(16745u, 4614u, 1u), Struct_2(Struct_1(var_3.a.a, 16527u, var_0.c.c, var_0.a.d), var_3.b, Struct_1(var_3.b.a, 1u, -2147483647i, var_0.c.d), var_0.b.d, -37387i), 21574u).e), min(~var_0.c.d.x, var_3.d.x >> (var_0.c.b % 32u))), ~_wgslsmith_sub_u32(42041u, var_0.b.d.x) << (635u % 32u)).b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-691f, var_3.a.a.x, 1242f, 1133f))) + vec4<f32>(-772f, var_0.a.a.x, -781f, -482f))), 23725u, -6704i, var_3.c.d), var_3.a.d << (countOneBits(~var_3.d) % vec2<u32>(32u)), i32(-1i) * -18983i);
    var var_4 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1793f, _wgslsmith_f_op_f32(f32(-1f) * -756f))), _wgslsmith_f_op_f32(f32(-1f) * -167f), var_0.a.a.x, _wgslsmith_f_op_f32(-var_3.c.a.x)) - var_0.c.a), func_2(var_3.c.a, Struct_3(any(!vec3<bool>(global1[_wgslsmith_index_u32(var_3.c.d.x, 28u)], global1[_wgslsmith_index_u32(var_3.b.b, 28u)], true))), false || global1[_wgslsmith_index_u32(~(~0u), 28u)], true), global1[_wgslsmith_index_u32(0u << (_wgslsmith_div_u32(max(4294967295u ^ var_3.b.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, var_0.a.b), vec2<u32>(var_3.b.b, var_3.d.x))), func_3()) % 32u), 28u)], any(vec4<bool>(true, select(any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], true, false)), any(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(var_3.b.d.x, 28u)])), any(vec2<bool>(global1[_wgslsmith_index_u32(1579u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]))), global1[_wgslsmith_index_u32(func_5(~vec3<u32>(var_0.a.d.x, var_3.a.b, var_3.d.x), min(vec3<u32>(var_3.b.d.x, 46467u, 1u), vec3<u32>(var_3.c.b, 0u, var_3.b.d.x)), func_5(vec3<u32>(var_0.a.d.x, var_3.d.x, var_3.a.d.x), vec3<u32>(0u, var_3.c.b, var_0.d.x), Struct_2(var_0.c, Struct_1(vec4<f32>(-239f, -1385f, 995f, -894f), 4811u, 50326i, var_0.d), var_3.b, var_0.b.d, u_input.b.x), var_0.d.x), select(var_3.c.b, var_0.a.d.x, false)).d.x, 28u)], ~var_2.x > -u_input.b.x))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(firstTrailingBit(abs(2903u)), var_0.d.x << ((20916u << (var_3.d.x % 32u)) % 32u), _wgslsmith_sub_u32(~var_0.b.b, firstTrailingBit(4294967295u))));
}

