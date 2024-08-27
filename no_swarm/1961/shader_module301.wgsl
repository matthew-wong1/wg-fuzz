struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_4(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), any(vec4<bool>(true, true, true, true))), vec4<bool>(false, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, true)), arg_0.x >= firstTrailingBit(u_input.d.x)), 1u <= (~17301u | (u_input.e | u_input.d.x))), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), arg_2.x >> (((countOneBits(arg_0.x) ^ 1u) | min(0u | u_input.c.x, 5285u)) % 32u), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false)), vec4<bool>(true, true, true, true))), 154f);
    global0 = array<Struct_1, 6>();
    var var_1 = Struct_1(_wgslsmith_sub_u32((~32396u << (firstLeadingBit(arg_0.x) % 32u)) << (110508u % 32u), firstTrailingBit(abs(u_input.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-937f)), _wgslsmith_f_op_f32(910f * 1325f), var_0.e), vec3<f32>(118f, var_0.e, _wgslsmith_f_op_f32(max(-445f, var_0.e))))), vec4<u32>(~4294967295u, countOneBits(u_input.c.x), 103407u, u_input.c.x), !vec4<bool>(true, var_0.a.x, all(vec2<bool>(true, true)), true));
    var var_2 = Struct_5(countOneBits(-3085i) == _wgslsmith_add_i32(var_0.c, 2147483647i), abs(vec4<i32>(12349i, max(reverseBits(11881i), _wgslsmith_mult_i32(16104i, arg_1)), -1i, -_wgslsmith_add_i32(-56192i, var_0.c))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-379f, -1283f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(931f - 1102f))))), var_1.b.x));
    return ((_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, arg_0.x, 1u, 0u), ~vec4<u32>(arg_0.x, 1u, 0u, u_input.d.x)) & _wgslsmith_div_u32(~2598u, 0u ^ arg_0.x)) & _wgslsmith_div_u32(23080u, _wgslsmith_clamp_u32(23767u, var_1.a, ~var_1.c.x))) & _wgslsmith_mod_u32(reverseBits(0u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.c.x, 0u, arg_0.x), arg_0, vec3<bool>(false, false, var_0.a.x)), vec3<u32>(125790u, 14521u, arg_0.x)) & 42102u);
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1557f, arg_1.e, -572f, 698f), vec4<f32>(-348f, 1528f, arg_1.e, arg_1.e)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, arg_1.e, arg_1.e, arg_1.e) - vec4<f32>(-238f, arg_1.e, arg_1.e, arg_1.e)))))));
    var var_1 = -u_input.b;
    var var_2 = Struct_1(min(_wgslsmith_mod_u32(u_input.d.x, 47654u), ~countOneBits(arg_0)) ^ select(reverseBits(0u) ^ _wgslsmith_mult_u32(u_input.c.x, u_input.d.x), ~23253u, false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e), 1129f)), _wgslsmith_f_op_f32(step(2590f, 210f))), vec4<u32>(~(~arg_0) >> (func_3(u_input.d.zzx, u_input.a, reverseBits(vec3<i32>(arg_1.c, 0i, 0i))) % 32u), u_input.e, ~u_input.c.x, ~(arg_0 & 44820u)), !arg_1.a);
    var var_3 = u_input.b;
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, select(~42465u, ~(~var_2.a) ^ ~(~u_input.e), true)), 3u)];
    return var_2.d;
}

fn func_2() -> i32 {
    let var_0 = 736f;
    let var_1 = Struct_4(select(func_4(_wgslsmith_mod_u32(func_3(vec3<u32>(u_input.e, 59079u, u_input.d.x), u_input.b, vec3<i32>(-39694i, u_input.a, u_input.a)), select(u_input.c.x, 2174u, true)), Struct_4(vec4<bool>(true, true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), countOneBits(1i), any(vec2<bool>(false, false)), var_0)), vec4<bool>(true, true, true, true), true), !(!vec3<bool>(var_0 >= var_0, any(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, true, true, false)))), u_input.a, all(vec2<bool>(true, true)), -1000f);
    var var_2 = select(!(!select(var_1.b, select(vec3<bool>(var_1.b.x, true, var_1.d), var_1.a.yxw, vec3<bool>(false, true, var_1.b.x)), true)), var_1.b, vec3<bool>(var_0 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e), -379f), _wgslsmith_div_f32(-627f, 128f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1356f * 808f) + _wgslsmith_f_op_f32(var_1.e - -1000f)), var_1.b.x));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.e)) * -957f))), var_0, 647f, var_1.e);
    var var_4 = -639f;
    return -21214i | (var_1.c << (~1398u % 32u));
}

fn func_1() -> Struct_4 {
    let var_0 = 860i;
    var var_1 = Struct_5(false, vec4<i32>(-1i, max(u_input.a, func_2()), -14979i, _wgslsmith_clamp_i32(0i, 1i, min(_wgslsmith_mult_i32(-7325i, var_0), _wgslsmith_mult_i32(8393i, u_input.a)))));
    var var_2 = ~(vec2<u32>(min(~u_input.c.x, select(u_input.d.x, 1u, false)), 112667u) | vec2<u32>(reverseBits(1u), u_input.c.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-782f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1095f)) - _wgslsmith_f_op_f32(ceil(-444f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-624f, _wgslsmith_f_op_f32(192f - 1000f))))));
    global0 = array<Struct_1, 6>();
    return Struct_4(!vec4<bool>(!var_1.a, true, true, func_4(_wgslsmith_mod_u32(u_input.c.x, var_2.x), Struct_4(vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec3<bool>(var_1.a, var_1.a, false), var_1.b.x, true, 1000f)).x), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, var_1.a, true), vec3<bool>(true, var_1.a, var_1.a))), vec3<bool>(abs(var_2.x) > abs(5096u), var_1.a, var_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 4294967295u, u_input.e) | vec3<u32>(1u, u_input.e, 4294967295u), vec3<u32>(27894u, 0u, var_2.x)) > u_input.e), ~var_1.b.x, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))) + _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    global0 = array<Struct_1, 6>();
    let var_0 = func_1();
    global1 = array<Struct_2, 3>();
    var var_1 = abs(u_input.c.x) != select(97101u, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - 1284f)) > _wgslsmith_f_op_f32(round(1632f)));
    var var_2 = ~u_input.e;
    let var_3 = 339f;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(var_0.c, var_0.c, u_input.a, var_0.c), vec4<i32>(0i, u_input.a, 2147483647i, 33970i)), vec4<i32>(var_0.c, u_input.a, -14443i, var_0.c)), max(~vec4<i32>(-29728i, -2147483647i, u_input.b, -25968i), ~vec4<i32>(var_0.c, 2147483647i, u_input.b, 0i))), _wgslsmith_div_vec4_i32(~(vec4<i32>(var_0.c, var_0.c, var_0.c, var_0.c) ^ vec4<i32>(-73002i, u_input.b, var_0.c, u_input.b)), ~min(vec4<i32>(2147483647i, var_0.c, u_input.b, 0i), vec4<i32>(19375i, -2831i, var_0.c, var_0.c)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.e, var_0.e), vec2<f32>(var_3, 468f))))), _wgslsmith_add_u32(_wgslsmith_mod_u32(firstLeadingBit(1u), countOneBits(_wgslsmith_mult_u32(u_input.c.x, 0u))), min(abs(u_input.c.x | u_input.e), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, u_input.e), u_input.d))));
}

