struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 20>;

var<private> global2: array<Struct_4, 12>;

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<u32> {
    var var_0 = 35971u;
    let var_1 = Struct_5(vec3<u32>(1u, u_input.b.x, global3.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-633f - 1242f), 657f))), -705f));
    var var_2 = Struct_2(2111u, Struct_1(vec3<f32>(627f, -363f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - var_1.b) - _wgslsmith_f_op_f32(floor(var_1.b)))), true, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 23820u), u_input.b.x & global3.a, ~18763u), ~(vec3<u32>(28708u, u_input.b.x, var_1.a.x) ^ var_1.a)), -17461i, vec2<u32>(reverseBits(~global1[_wgslsmith_index_u32(71463u, 20u)]), ~(~1u))));
    var_2 = Struct_2(u_input.b.x, var_2.b);
    var_0 = ~u_input.b.x | 79472u;
    return var_1.a ^ ~countOneBits(firstLeadingBit(var_1.a));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_5(_wgslsmith_clamp_vec3_u32(~vec3<u32>(42717u, 40856u, 149937u) & ~vec3<u32>(global3.a, u_input.b.x, u_input.b.x), ~min(func_3(), ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global3.a, global3.a)), ~(~func_3())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1874f, -817f)));
    var var_1 = var_0.a.zy;
    let var_2 = Struct_5(vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(6360u, global3.a, u_input.b.x, 0u)), vec4<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(89347u, 20u)], 0u), ~68132u, reverseBits(4294967295u), 7686u)), u_input.b.x, global3.a >> (min(global3.a, firstTrailingBit(21176u)) % 32u)), var_0.b);
    let var_3 = Struct_4(Struct_3(_wgslsmith_dot_vec3_u32(~(~var_2.a), select(countOneBits(var_0.a), vec3<u32>(var_0.a.x, var_1.x, var_2.a.x), vec3<bool>(arg_0.x, true, false)))), Struct_3(global1[_wgslsmith_index_u32(1u, 20u)]));
    let var_4 = -2147483647i;
    return Struct_3(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 20u)], 4294967295u));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: bool) -> Struct_4 {
    let var_0 = 67905u;
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-(i32(-1i) * -1i), arg_2.x), ~(~firstTrailingBit(vec2<i32>(arg_2.x, arg_2.x))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1091f * 1517f) + -1132f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-978f + 225f), -2026f)), 1406f)))));
    let var_3 = 292f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(-var_3)));
    return Struct_4(Struct_3(~(~(~48543u))), func_2(select(vec2<bool>(!arg_3, var_1.x < 0i), !select(vec2<bool>(arg_3, true), vec2<bool>(true, true), arg_0), vec2<bool>(true, true))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_5 {
    let var_0 = vec2<i32>(-arg_0.x, _wgslsmith_dot_vec2_i32(~(~(-arg_0)), vec2<i32>(select(_wgslsmith_add_i32(u_input.a, arg_0.x), countOneBits(-1i), true), max(countOneBits(arg_0.x), arg_0.x))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1132f)) - -693f)))));
    global2 = array<Struct_4, 12>();
    var var_2 = func_4(any(vec2<bool>(true, true)) & true, Struct_3(firstTrailingBit(1u)), ~reverseBits((vec4<i32>(1i, 0i, var_0.x, -1i) & vec4<i32>(-2147483647i, 2147483647i, var_0.x, -1i)) & select(vec4<i32>(arg_0.x, 9088i, -1i, arg_0.x), vec4<i32>(2147483647i, arg_0.x, -2147483647i, var_0.x), true)), all(select(vec2<bool>(false, false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), all(vec3<bool>(true, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true)))).b;
    var var_3 = select(u_input.b, u_input.b, var_1 < 1000f);
    return Struct_5((max(vec3<u32>(39500u, u_input.b.x, var_3.x) << (vec3<u32>(u_input.b.x, 0u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(var_3.x, 13039u, global3.a) >> (vec3<u32>(global3.a, 0u, 4348u) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 20u)], var_3.x, 57304u), vec3<u32>(1u, 4294967295u, 57037u)), firstLeadingBit(vec3<u32>(var_2.a, 96796u, 1u))) % vec3<u32>(32u))) >> (firstLeadingBit(~vec3<u32>(global3.a, 87609u, 63151u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b.a, arg_2.a.a, 0u), vec3<u32>(0u, global1[_wgslsmith_index_u32(1u, 20u)], arg_2.b.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-417f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, -285f)) - -2232f)))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = func_5(-vec2<i32>(_wgslsmith_mult_i32(u_input.a, 33309i), 0i >> (~global3.a % 32u)), func_4(any(vec4<bool>(true, false, true, all(arg_2))), func_2(select(vec2<bool>(true, true), !vec2<bool>(arg_2.x, false), true)), vec4<i32>(~2147483647i, 24677i, select(0i, -10197i, arg_3), firstLeadingBit(arg_1)) & ~(-vec4<i32>(u_input.a, 3364i, u_input.a, 1i)), true), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global3.a, 20u)], 63533u), 12u)]);
    global1 = array<u32, 20>();
    var var_1 = vec3<bool>(!any(vec2<bool>(select(false, arg_2.x, arg_3), true)), false, !all(!arg_2.ywz));
    let var_2 = !(!(1583f != _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b, -814f), -153f)));
    global2 = array<Struct_4, 12>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, arg_0) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1306f, var_0.b, 113f) - vec3<f32>(1041f, var_0.b, 1279f)))))), var_2, ~(~1u), arg_1, max(firstTrailingBit(vec2<u32>(u_input.b.x, 1u)), _wgslsmith_mod_vec2_u32(var_0.a.xz, ~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(var_0.a.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 20>();
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1085f * 463f)))), -reverseBits(u_input.a), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), false), (any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) == (_wgslsmith_mod_i32(0i, u_input.a) >= _wgslsmith_dot_vec2_i32(vec2<i32>(5062i, u_input.a), vec2<i32>(-45888i, 23839i)))) || !(false != any(vec3<bool>(false, false, false))));
    var var_1 = Struct_3(_wgslsmith_div_u32(~func_3().x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~u_input.b.x), u_input.b.x), 20u)]));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(378f, var_0.a.x, var_0.a.x, var_0.a.x) - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, -772f, -930f) * vec4<f32>(1125f, -1034f, 979f, 995f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), vec4<f32>(-340f, 1523f, var_0.a.x, 356f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(365f, _wgslsmith_f_op_f32(sign(-387f)), _wgslsmith_f_op_f32(f32(-1f) * -543f), var_0.a.x) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1573f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1643f, -724f, 360f, var_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, var_0.a.x, -115f, var_0.a.x)), !vec4<bool>(var_0.b, true, var_0.b, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1047f, 184f, var_0.a.x, -1000f))))));
    global3 = func_4(all(vec2<bool>(!var_0.b || true, select(!var_0.b, 0u != var_1.a, all(vec2<bool>(false, true))))), Struct_3(max(3060u, abs(75285u << (u_input.b.x % 32u)))), -abs(-(vec4<i32>(var_0.d, u_input.a, -7434i, -63681i) ^ vec4<i32>(u_input.a, 1i, u_input.a, var_0.d))), true).b;
    global3 = Struct_3(~(~_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(global3.a, 20u)], 56058u ^ u_input.b.x)));
    var var_3 = Struct_4(Struct_3(_wgslsmith_mult_u32(select(func_1(1331f, 1i, vec4<bool>(var_0.b, false, var_0.b, var_0.b), true).e.x, _wgslsmith_mult_u32(var_1.a, 0u), func_1(1212f, var_0.d, vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), var_0.b).b), ~abs(25187u))), Struct_3(~global1[_wgslsmith_index_u32(37353u, 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(-21174i << (global3.a % 32u), i32(-1i) * -1i)) | ((-vec2<i32>(-30490i, -11176i) << (func_1(710f, 0i, vec4<bool>(true, true, true, var_0.b), var_0.b).e % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 2147483647i))), 84375u);
}

