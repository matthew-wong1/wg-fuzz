struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 0i, 2147483647i, 2147483647i);

var<private> global1: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(-261f, 453f), vec2<f32>(675f, 668f), vec2<f32>(379f, 485f), vec2<f32>(-1000f, -1004f), vec2<f32>(2179f, -1000f), vec2<f32>(581f, 1028f), vec2<f32>(-1000f, 203f), vec2<f32>(1291f, 1424f), vec2<f32>(1000f, 2093f), vec2<f32>(716f, 1619f), vec2<f32>(-385f, -308f), vec2<f32>(500f, -1182f), vec2<f32>(712f, 1000f), vec2<f32>(1000f, 868f), vec2<f32>(-840f, 385f), vec2<f32>(-965f, -121f), vec2<f32>(-545f, -1115f), vec2<f32>(528f, -1423f), vec2<f32>(445f, -921f), vec2<f32>(430f, 1813f), vec2<f32>(533f, 452f), vec2<f32>(641f, 1567f), vec2<f32>(-857f, -101f), vec2<f32>(818f, -1027f));

var<private> global2: array<bool, 17>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    global2 = array<bool, 17>();
    global0 = u_input.b;
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_div_u32(~(~29098u), ~_wgslsmith_add_u32(23118u, arg_2.a))), _wgslsmith_div_f32(-412f, _wgslsmith_f_op_f32(arg_0.a.b.b.x * arg_2.b)));
    let var_1 = !(!select(select(!vec2<bool>(global2[_wgslsmith_index_u32(46129u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)]), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(31411u, 17u)]), !global2[_wgslsmith_index_u32(18776u, 17u)]), vec2<bool>(u_input.b.x > arg_0.b.d.x, !global2[_wgslsmith_index_u32(var_0.a, 17u)]), global2[_wgslsmith_index_u32(arg_2.a, 17u)]));
    global1 = array<vec2<f32>, 24>();
    return _wgslsmith_mod_u32(arg_1.a, ~0u);
}

fn func_2() -> Struct_4 {
    var var_0 = firstLeadingBit(2147483647i);
    var var_1 = Struct_3(4294967295u, Struct_2(_wgslsmith_div_u32(~u_input.a, u_input.a) | u_input.a, vec3<f32>(_wgslsmith_div_f32(-1000f, 1392f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2041f) + -936f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(753f - -173f))))), Struct_2(select(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(u_input.a, u_input.a)), false), vec3<f32>(_wgslsmith_f_op_f32(round(-1449f)), _wgslsmith_f_op_f32(983f * _wgslsmith_div_f32(392f, 540f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1600f), -593f))), u_input.b);
    global1 = array<vec2<f32>, 24>();
    global0 = firstTrailingBit(-max(min(~vec4<i32>(0i, -1i, 2147483647i, 0i), firstLeadingBit(u_input.b)), vec4<i32>(-1i) * -vec4<i32>(global0.x, u_input.b.x, -2147483647i, u_input.b.x)));
    return Struct_4(Struct_1(_wgslsmith_div_u32(select(63000u, ~64367u, var_1.b.b.x != var_1.b.b.x), func_3(Struct_5(Struct_3(9649u, Struct_2(57345u, var_1.b.b), Struct_2(var_1.c.a, vec3<f32>(var_1.c.b.x, 620f, var_1.c.b.x)), vec4<i32>(global0.x, -8138i, u_input.b.x, u_input.b.x)), Struct_3(u_input.a, Struct_2(53685u, var_1.c.b), var_1.c, vec4<i32>(var_1.d.x, u_input.b.x, var_1.d.x, 2147483647i)), Struct_4(Struct_1(var_1.c.a, -1000f), -19236i)), var_1.c, Struct_1(42811u, -507f))), var_1.b.b.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, -var_1.d.x), -global0.x ^ ~max(u_input.b.x, u_input.b.x)));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1526f);
    let var_1 = vec4<u32>(u_input.a, 15317u, select(1u, u_input.a, !(var_0 <= var_0)) >> (~arg_0 % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(17062u, u_input.a, u_input.a), vec3<u32>(0u, 0u, arg_0)), ~(~vec3<u32>(8206u, arg_0, 4294967295u))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, arg_0, 51073u), max(vec3<u32>(30207u, 79125u, u_input.a), vec3<u32>(5022u, u_input.a, arg_0)))));
    var var_2 = func_2();
    var var_3 = firstTrailingBit(~(~(_wgslsmith_add_i32(global0.x, -16589i) << (61235u % 32u))));
    var_2 = Struct_4(var_2.a, _wgslsmith_add_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -11422i, 1i, global0.x), u_input.b)), 1i));
    return abs(func_2().a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<i32>(-1i) * -u_input.b, -min(abs(vec4<i32>(1i, u_input.b.x, 2147483647i, u_input.b.x) & vec4<i32>(-13088i, u_input.b.x, u_input.b.x, u_input.b.x)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 71782i, 0i), u_input.b)), !vec4<bool>(true, true | (global2[_wgslsmith_index_u32(u_input.a, 17u)] & global2[_wgslsmith_index_u32(67723u, 17u)]), global2[_wgslsmith_index_u32(~(~0u), 17u)], true));
    global1 = array<vec2<f32>, 24>();
    var var_0 = Struct_2(abs(~(~u_input.a) ^ func_1(26677u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(828f, 667f, 938f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-848f, -423f, 100f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1198f, 319f, -140f), vec3<f32>(887f, 1000f, 1357f), global2[_wgslsmith_index_u32(492u, 17u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1393f, -394f, 365f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-819f, -1006f, 1767f) * vec3<f32>(-923f, 592f, 426f)))))));
    let var_1 = select(vec3<u32>(823u, _wgslsmith_mult_u32(func_3(Struct_5(Struct_3(var_0.a, Struct_2(u_input.a, vec3<f32>(-2085f, -1465f, 680f)), Struct_2(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, 1504f)), vec4<i32>(global0.x, u_input.b.x, -1i, u_input.b.x)), Struct_3(1u, Struct_2(var_0.a, vec3<f32>(-1438f, 962f, -3452f)), Struct_2(var_0.a, var_0.b), vec4<i32>(global0.x, -2379i, global0.x, 62547i)), Struct_4(Struct_1(1u, 104f), 11305i)), Struct_2(1u, vec3<f32>(1000f, 295f, -1721f)), Struct_1(var_0.a, var_0.b.x)), 4294967295u), 42729u >> (countOneBits(var_0.a >> (u_input.a % 32u)) % 32u)), vec3<u32>(var_0.a, u_input.a, var_0.a), !vec3<bool>(global2[_wgslsmith_index_u32(var_0.a, 17u)], true, !(var_0.b.x <= -1000f)));
    let var_2 = Struct_3(~(~(~(~var_1.x))), Struct_2(func_1((var_0.a | var_1.x) >> (var_0.a % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(893f, var_0.b.x, var_0.b.x)))), Struct_2(~1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b.x)), -585f, _wgslsmith_div_f32(var_0.b.x, -1127f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_0.b)), vec3<f32>(var_0.b.x, -951f, var_0.b.x), all(vec2<bool>(false, global2[_wgslsmith_index_u32(15089u, 17u)])))))), select(-u_input.b, vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, ~global0.x), firstLeadingBit(~38080i), 1i | global0.x, _wgslsmith_add_i32(u_input.b.x, firstLeadingBit(global0.x))), select(select(!vec4<bool>(global2[_wgslsmith_index_u32(46357u, 17u)], false, true, true), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 17u)], true, false, global2[_wgslsmith_index_u32(0u, 17u)]), !vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], true)), vec4<bool>(0i != global0.x, !global2[_wgslsmith_index_u32(12591u, 17u)], !global2[_wgslsmith_index_u32(var_1.x, 17u)], false & global2[_wgslsmith_index_u32(0u, 17u)]), (5052u > u_input.a) || global2[_wgslsmith_index_u32(countOneBits(u_input.a), 17u)])));
    global0 = vec4<i32>(-42871i, var_2.d.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(37610i), ~global0.x, global0.x, ~global0.x), u_input.b), global0.x);
    global0 = _wgslsmith_sub_vec4_i32(var_2.d, _wgslsmith_mult_vec4_i32(u_input.b, var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, max(var_0.a, 0u) & _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(36429u, 43004u, 0u, var_0.a)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, var_2.c.a, 0u, var_1.x), vec4<u32>(39095u, 0u, var_2.c.a, u_input.a), vec4<u32>(var_2.c.a, u_input.a, 44319u, 64726u)), ~vec4<u32>(var_2.c.a, 95245u, var_1.x, 0u))));
}

