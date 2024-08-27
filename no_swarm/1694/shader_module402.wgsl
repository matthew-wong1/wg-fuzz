struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = !select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(41602u, 25u)], false, global0[_wgslsmith_index_u32(4294967295u, 25u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(22099u, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], false, global0[_wgslsmith_index_u32(10829u, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]), false), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, global0[_wgslsmith_index_u32(68846u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]))), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, global0[_wgslsmith_index_u32(94823u, 25u)], false), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(2596u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], true, global0[_wgslsmith_index_u32(15599u, 25u)], global0[_wgslsmith_index_u32(97102u, 25u)])), vec4<bool>(!(!global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 25u)], false, global0[_wgslsmith_index_u32(41180u, 25u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]))), !any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)])), true), !(~(-2147483647i) < u_input.e));
    var var_1 = Struct_1(u_input.d.wy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f + 210f)));
    return firstLeadingBit(41197u);
}

fn func_2() -> vec4<u32> {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2183f, -604f, 1093f, -301f) + vec4<f32>(816f, 692f, 1381f, -165f)))), vec4<f32>(-1358f, -174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1622f), _wgslsmith_f_op_f32(-2357f + 966f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(429f, 1169f, -1040f, -1081f) + vec4<f32>(-445f, 788f, 1409f, -470f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1174f, -391f, -211f) + vec4<f32>(462f, -727f, -1000f, 1228f))))));
    global0 = array<bool, 25>();
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_add_u32(48464u, func_3()), ~(~reverseBits(u_input.c)), _wgslsmith_add_u32(~50110u, _wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.yw) << (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u)), u_input.b.x), Struct_1(~vec2<i32>(u_input.d.x, 2644i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))));
    return var_1.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = select(max(vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), abs(arg_2), arg_0.x, u_input.c), u_input.b), func_2(), !vec4<bool>(0u > arg_0.x, true, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(select(0u, arg_0.x, false), 25u)])) & abs(u_input.b);
    global0 = array<bool, 25>();
    var var_1 = _wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(u_input.a), arg_1.a.x), -vec2<i32>(14818i, u_input.d.x) ^ select(arg_1.a, u_input.d.yx, vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(arg_0.x, 25u)])))), abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.e, arg_1.a.x), arg_1.a.x)) & 45956i);
    let var_2 = arg_1;
    let var_3 = Struct_2(select(vec4<u32>(~arg_0.x, 1u, u_input.c, 82528u) | countOneBits(_wgslsmith_mult_vec4_u32(var_0, u_input.b)), ~select(~vec4<u32>(arg_2, 18652u, u_input.b.x, var_0.x), vec4<u32>(94439u, arg_0.x, arg_0.x, arg_2), !vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2, 25u)], true, global0[_wgslsmith_index_u32(arg_0.x, 25u)])), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(arg_2, 25u)], false), vec4<bool>(global0[_wgslsmith_index_u32(43343u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], false, true), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 25u)], false, true, true))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2, 25u)], global0[_wgslsmith_index_u32(20105u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(arg_2, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(32927u, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(43637u, 25u)], true, global0[_wgslsmith_index_u32(119633u, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)])), !vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)], false)), !vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], true))), arg_1);
    return arg_1;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<bool, 25>();
    var var_0 = Struct_2(vec4<u32>(u_input.b.x ^ ~79291u, u_input.c, 31378u, ~50583u), Struct_1(arg_1.a, 1f));
    let var_1 = ~56491u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(895f, -189f, arg_1.b), arg_0, false))))) * _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1280f, arg_0.x, arg_1.b))))));
    var var_3 = Struct_1(~arg_1.a | u_input.d.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f + _wgslsmith_f_op_f32(abs(-963f))))));
    return Struct_2(u_input.b, var_0.b);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = -_wgslsmith_div_vec3_i32(select(select(-vec3<i32>(6106i, 14269i, 17488i), u_input.d.wyx << (vec3<u32>(u_input.b.x, 1u, 0u) % vec3<u32>(32u)), u_input.e >= arg_1.b.a.x), u_input.d.wzz, vec3<bool>(false, all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(98205u, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)])), !global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), ~u_input.d.xxx);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(arg_2.b, 875f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-357f, -687f)))), arg_1.b.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.b), _wgslsmith_f_op_f32(450f * arg_1.b.b), arg_1.b.b) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_1.b.b, 129f), vec3<f32>(arg_2.b, 1414f, 821f), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 25u)], true)))))), arg_1.b);
    var var_2 = ~4294967295u << (~max(~_wgslsmith_clamp_u32(u_input.c, 41131u, var_1.a.x), min(var_1.a.x >> (0u % 32u), max(70263u, arg_1.a.x))) % 32u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1838f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b.b * arg_2.b)))) - -538f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))));
    let var_4 = !select(!select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.c, 25u)]), !vec2<bool>(global0[_wgslsmith_index_u32(22102u, 25u)], global0[_wgslsmith_index_u32(var_1.a.x, 25u)])), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], true), vec2<bool>(global0[_wgslsmith_index_u32(~arg_1.a.x, 25u)], true), select(vec2<bool>(global0[_wgslsmith_index_u32(81461u, 25u)], true), !vec2<bool>(true, global0[_wgslsmith_index_u32(65850u, 25u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 25u)], false), vec2<bool>(global0[_wgslsmith_index_u32(27993u, 25u)], global0[_wgslsmith_index_u32(var_1.a.x, 25u)]), vec2<bool>(true, true)))), vec2<bool>(true, true));
    return Struct_2(u_input.b << (min(vec4<u32>(~31981u, 4294967295u, min(u_input.b.x, 57408u), _wgslsmith_sub_u32(var_1.a.x, arg_1.a.x)), ~(~u_input.b)) % vec4<u32>(32u)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_3, var_3, var_4.x))))), func_1(u_input.b.zxy ^ abs(vec3<u32>(14089u, 2648u, u_input.c)), func_4(_wgslsmith_f_op_vec3_f32(trunc(var_3)), func_1(arg_1.a.wwx, arg_2, u_input.c)).b, arg_1.a.x)).b);
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global0 = array<bool, 25>();
    var var_0 = _wgslsmith_mod_u32(arg_0.a.x, 1u);
    var var_1 = firstTrailingBit(u_input.b.x);
    var var_2 = u_input.d.yxx;
    var var_3 = !vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(select(u_input.c, 4294967295u, global0[_wgslsmith_index_u32(53379u, 25u)]), 1u), 25u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 17438u), _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c)), _wgslsmith_sub_u32(0u, u_input.b.x)), 25u)], !global0[_wgslsmith_index_u32(~0u, 25u)]);
    return Struct_2(select((abs(vec4<u32>(u_input.c, 12266u, arg_0.a.x, arg_0.a.x)) << (vec4<u32>(u_input.b.x, arg_0.a.x, 43547u, 4294967295u) % vec4<u32>(32u))) << (vec4<u32>(arg_0.a.x, 0u, 5764u, 1u) % vec4<u32>(32u)), ~arg_0.a, 1793f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.b)))), func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-182f, arg_0.b.b, -1063f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1372f, -1000f, arg_0.b.b), vec3<f32>(arg_0.b.b, -595f, -1000f), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 25u)], true)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-462f, 839f, 648f) + vec3<f32>(365f, -1252f, arg_0.b.b)))))), func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-412f, arg_0.b.b, 641f)), vec3<f32>(arg_0.b.b, arg_0.b.b, -1537f), !vec3<bool>(var_3.x, true, var_3.x))), Struct_1(var_2.zz, -356f)).b).b);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = 779f;
    global0 = array<bool, 25>();
    let var_1 = vec2<u32>(33465u, _wgslsmith_div_u32(min(arg_2.x, ~(~arg_2.x)), 75666u));
    let var_2 = abs(~_wgslsmith_clamp_vec3_u32(abs(arg_2.xwy >> (arg_3.a.wxz % vec3<u32>(32u))), select(~vec3<u32>(1u, arg_1.x, 0u), vec3<u32>(arg_2.x, 1u, arg_3.a.x), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 25u)], true, false))), ~(~vec3<u32>(86943u, 1u, 45705u))));
    global0 = array<bool, 25>();
    return StorageBuffer(~(~vec3<i32>(u_input.a, _wgslsmith_sub_i32(arg_0.b.a.x, arg_0.b.a.x), 2147483647i)), _wgslsmith_f_op_f32(floor(func_5(arg_3.b.b, Struct_2(arg_3.a << (vec4<u32>(var_1.x, 1u, 1u, 1u) % vec4<u32>(32u)), arg_0.b), arg_0.b).b.b)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(-u_input.d.yy, abs(u_input.d.wy), vec2<i32>(0i, -1i & _wgslsmith_add_i32(u_input.a, -2147483647i))), -1567f);
    let x = u_input.a;
    s_output = func_7(func_6(func_5(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b)), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b), vec3<f32>(var_0.b, 1193f, var_0.b)), func_1(vec3<u32>(32147u, 1u, 0u), Struct_1(vec2<i32>(u_input.a, -3912i), var_0.b), 21703u)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, -1241f)), Struct_1(var_0.a, var_0.b)).b)), func_5(_wgslsmith_f_op_f32(step(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-610f, 605f, -1543f)), func_6(Struct_2(vec4<u32>(38915u, u_input.b.x, u_input.c, u_input.c), Struct_1(vec2<i32>(u_input.e, -2147483647i), -1000f))).b).b.b, 1056f)), func_5(_wgslsmith_f_op_f32(f32(-1f) * -473f), func_5(var_0.b, func_6(Struct_2(u_input.b, Struct_1(var_0.a, 1000f))), func_1(u_input.b.xww, Struct_1(u_input.d.zx, var_0.b), 4294967295u)), func_5(var_0.b, Struct_2(vec4<u32>(u_input.c, u_input.c, 26340u, u_input.c), Struct_1(vec2<i32>(2147483647i, u_input.a), 359f)), Struct_1(var_0.a, 1497f)).b), Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(var_0.a.x, var_0.a.x), u_input.d.zz), _wgslsmith_f_op_f32(var_0.b - 1000f))).a.zwy, ~_wgslsmith_sub_vec4_u32(min(vec4<u32>(0u, 4294967295u, u_input.c, u_input.b.x), u_input.b), _wgslsmith_add_vec4_u32(abs(u_input.b), ~vec4<u32>(u_input.b.x, u_input.c, 84153u, u_input.b.x))), Struct_2(~(~select(u_input.b, u_input.b, vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 25u)], false))), func_1(_wgslsmith_add_vec3_u32(func_4(vec3<f32>(var_0.b, var_0.b, -525f), Struct_1(vec2<i32>(-55004i, u_input.d.x), -1118f)).a.wzy, u_input.b.xyw), Struct_1(_wgslsmith_sub_vec2_i32(var_0.a, vec2<i32>(var_0.a.x, 4515i)), -384f), ~_wgslsmith_clamp_u32(1u, u_input.c, u_input.c))));
}

