struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-1i, -15616i, -31708i, 63038i), vec4<i32>(41678i, -1i, 1i, i32(-2147483648)));

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(27360i, true, 1030f, 23988u, vec4<i32>(26760i, 6016i, 1i, 23665i)), Struct_1(1i, true, 324f, 1u, vec4<i32>(-6736i, -2813i, -12935i, 54295i)), Struct_1(-6795i, true, -1000f, 548u, vec4<i32>(1i, -1i, 11658i, -7115i)), Struct_1(238i, true, -382f, 42754u, vec4<i32>(42391i, 59184i, 2147483647i, -22252i)), Struct_1(26705i, false, -1156f, 73586u, vec4<i32>(1i, 0i, 2147483647i, -35645i)), Struct_1(-38180i, true, -773f, 0u, vec4<i32>(-35144i, 32199i, i32(-2147483648), 1991i)));

var<private> global2: u32 = 29581u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> f32 {
    global0 = array<vec4<i32>, 2>();
    global2 = u_input.b.x;
    let var_0 = Struct_1(firstTrailingBit(-1i), arg_1.x, -1000f, 1u, firstLeadingBit((global0[_wgslsmith_index_u32(u_input.b.x, 2u)] | vec4<i32>(-2347i, u_input.a.x, u_input.a.x, u_input.a.x)) & vec4<i32>(u_input.a.x, u_input.a.x, 41748i, 2147483647i)) ^ vec4<i32>(_wgslsmith_div_i32(u_input.a.x << (11755u % 32u), max(64578i, 0i)), u_input.a.x & u_input.a.x, 49093i, 69424i));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a.x >> ((u_input.b.x & 4294967295u) % 32u), _wgslsmith_add_i32(-27016i, u_input.a.x) | -963i, ~31618i, _wgslsmith_add_i32(u_input.a.x, 33905i)), -vec4<i32>(1i, 54925i, var_0.e.x, abs(52306i))), !((u_input.a.x >> (19285u % 32u)) != _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.a, 2147483647i), u_input.a.x)), 1f, abs(8181u), vec4<i32>(min(u_input.a.x, _wgslsmith_mod_i32(var_0.e.x, countOneBits(u_input.a.x))), 29080i, _wgslsmith_mult_i32(_wgslsmith_add_i32(~1i, 0i), var_0.a), _wgslsmith_clamp_i32(-1i, countOneBits(-u_input.a.x), _wgslsmith_mod_i32(-1i & var_0.a, _wgslsmith_sub_i32(6475i, var_0.e.x)))));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(var_1.a, -(u_input.a.x >> (var_0.d % 32u)) << (var_0.d % 32u), 1508i), 1023f != _wgslsmith_f_op_f32(min(1087f, var_0.c)), var_0.c, ~0u, vec4<i32>(u_input.a.x, var_1.a, var_1.e.x, 7559i));
    return 499f;
}

fn func_2() -> vec4<f32> {
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), vec2<bool>(false, true))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1166f * 593f) + _wgslsmith_f_op_f32(select(435f, -1000f, false))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1094f, 1000f))), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(ceil(-1365f))), _wgslsmith_f_op_f32(min(836f, 209f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(711f, -637f))))));
}

fn func_1() -> vec4<i32> {
    global1 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    global1 = array<Struct_1, 6>();
    var var_1 = Struct_1(u_input.a.x, ~(u_input.b.x << (u_input.b.x % 32u)) > 57899u, 1195f, _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(33430u, 1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_div_u32(1u, 21823u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, 31518u, u_input.b.x)), reverseBits(vec3<u32>(0u, 40583u, u_input.b.x))), u_input.b.x, ~41002u)), ~(-max(min(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], vec4<i32>(-2147483647i, u_input.a.x, -51210i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, var_1.c, var_1.c, -445f))), vec4<f32>(_wgslsmith_div_f32(-2094f, 263f), var_1.c, _wgslsmith_f_op_f32(step(var_1.c, var_0.x)), -1088f))));
    return global0[_wgslsmith_index_u32(var_1.d, 2u)];
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    global2 = ~(~(~2611u << (u_input.b.x % 32u)));
    var var_0 = Struct_1(min(select(~max(-41963i, 31757i), _wgslsmith_clamp_i32(-10768i, ~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, arg_0.x, arg_0.x)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), arg_0.x), all(select(vec4<bool>(true, u_input.a.x > 25298i, true, true), vec4<bool>(true, true, all(vec2<bool>(true, false)), true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-750f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-717f))))), select(~0u, 0u, true), global0[_wgslsmith_index_u32((4294967295u ^ u_input.b.x) & 3485u, 2u)]);
    let var_1 = select(select(vec2<bool>(!var_0.b & (arg_0.x > 0i), 1147f >= _wgslsmith_f_op_f32(var_0.c * -1000f)), vec2<bool>(true, true), !(!select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), false))), vec2<bool>(!(!var_0.b), 661f >= var_0.c), 2147483647i < var_0.e.x);
    let var_2 = Struct_1(abs(_wgslsmith_mod_i32(~(u_input.a.x ^ -53855i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, var_0.e.x), u_input.a.x))), any(vec3<bool>(all(select(vec3<bool>(false, var_1.x, false), vec3<bool>(false, false, var_0.b), vec3<bool>(false, var_1.x, var_0.b))), var_0.b, var_1.x)), -311f, ~var_0.d, vec4<i32>(-_wgslsmith_add_i32(u_input.a.x ^ arg_0.x, arg_0.x), i32(-1i) * -select(var_0.e.x, -10982i, true), firstLeadingBit(~reverseBits(-2147483647i)), 1i));
    let var_3 = abs(_wgslsmith_div_i32(-1i, -2147483647i));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    var var_1 = 1000f;
    var var_2 = max(~_wgslsmith_div_u32(u_input.b.x, 111713u), u_input.b.x);
    let var_3 = vec2<bool>(false, !var_0.b | true);
    let var_4 = !all(var_3);
    var_1 = var_0.c;
    global2 = firstTrailingBit(~4294967295u);
    global1 = array<Struct_1, 6>();
    let var_5 = Struct_1(_wgslsmith_dot_vec4_i32(var_0.e, vec4<i32>(16408i, u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, -44811i, -59801i), var_0.e)), -(var_0.e.x | -33505i))), all(var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f * _wgslsmith_f_op_f32(-var_0.c)))), ~u_input.b.x, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(sign(var_0.c)), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x >> (10270u % 32u)), var_0.d, var_0.d, func_4(-var_0.e).d));
}

