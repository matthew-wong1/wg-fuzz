struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    global0 = array<vec3<i32>, 31>();
    let var_0 = arg_3;
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(u_input.a & _wgslsmith_div_u32(~0u, ~1u), 5737u), ~(~(~20052u) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, arg_0.a, 0u, arg_2.x), vec4<u32>(arg_2.x, u_input.a, 1u, global1.a)), ~vec4<u32>(var_0, 4294967295u, 0u, 40084u)) % 32u)));
    var var_2 = vec4<bool>((-1579f != global1.c.x) != false, arg_0.b, false, true);
    global0 = array<vec3<i32>, 31>();
    return _wgslsmith_dot_vec2_i32(arg_0.d.ww, ~arg_0.d.zw);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.yx + global1.c.zy) * _wgslsmith_f_op_vec2_f32(abs(global1.c.zw)));
    let var_1 = ~vec2<u32>(global1.a, global1.a);
    global1 = Struct_1(u_input.a, all(select(!vec2<bool>(global1.b, true), select(vec2<bool>(global1.b, global1.b), select(vec2<bool>(true, true), vec2<bool>(global1.b, global1.b), vec2<bool>(true, false)), global1.b), !select(vec2<bool>(false, true), vec2<bool>(global1.b, global1.b), true))), vec4<f32>(491f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.c.x - 267f))) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -592f))), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x)), vec4<i32>(_wgslsmith_mod_i32(u_input.b, func_3(Struct_1(4294967295u, global1.b, vec4<f32>(global1.c.x, -969f, var_0.x, 2096f), vec4<i32>(u_input.b, 0i, global1.e, u_input.b), 4978i), Struct_2(global1.d.x, -111f), vec3<u32>(59293u, var_1.x, var_1.x), var_1.x >> (var_1.x % 32u))), 2147483647i, _wgslsmith_div_i32(~u_input.b << (~global1.a % 32u), ~0i << (max(var_1.x, 46540u) % 32u)), ~reverseBits(-global1.d.x)), 2147483647i);
    var var_2 = Struct_2(-33442i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - global1.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(-269f, 863f, false))))))));
    var var_3 = 40116u;
    return Struct_1(var_1.x, all(!select(!vec3<bool>(global1.b, global1.b, global1.b), !vec3<bool>(false, global1.b, true), select(vec3<bool>(global1.b, global1.b, false), vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(true, global1.b, global1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.c))), global1.c, !vec4<bool>(global1.b, global1.b, global1.b, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-458f, -449f), _wgslsmith_f_op_f32(min(-1939f, 207f)), _wgslsmith_f_op_f32(ceil(var_2.b)), -762f) - vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 351f), _wgslsmith_f_op_f32(var_2.b + var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x))), global1.d, ~((i32(-1i) * -12075i) ^ firstTrailingBit(arg_0)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global1 = func_2(reverseBits(_wgslsmith_dot_vec3_i32(global1.d.zwx | vec3<i32>(u_input.b, arg_1.d.x, -19647i), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.d.x, -2147483647i, -26676i), global0[_wgslsmith_index_u32(u_input.a, 31u)])) | -53043i));
    let var_0 = Struct_2(arg_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c.x + arg_1.c.x)))) + global1.c.x));
    let var_1 = _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(2595u, 1u)), _wgslsmith_clamp_u32(11666u, ~arg_1.a, global1.a & u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, u_input.a), vec2<u32>(58157u, 0u)), 15770u)), ~firstLeadingBit(~vec4<u32>(1u, 1u, u_input.a, arg_1.a) & ~vec4<u32>(global1.a, global1.a, 71400u, 4294967295u)));
    var var_2 = Struct_1(54272u, true, global1.c, vec4<i32>(-1i, global1.d.x, ~(~12912i), -15499i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.x, 22757i) | -vec2<i32>(arg_1.d.x, 27295i), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -1i), arg_1.d.xy)), func_3(func_2(2147483647i), var_0, ~vec3<u32>(var_1.x, u_input.a, 43141u), 0u)));
    var var_3 = arg_1.b;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<u32> {
    global0 = array<vec3<i32>, 31>();
    var var_0 = global1.c.x;
    let var_1 = Struct_2(-(~(global1.d.x | -1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-900f - _wgslsmith_f_op_f32(-arg_0.b))))));
    let var_2 = firstLeadingBit(global1.d);
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(984f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(-var_1.b))) - _wgslsmith_f_op_f32(max(1215f, _wgslsmith_f_op_f32(-arg_1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1708f + 1900f)))));
    return countOneBits(vec4<u32>(~_wgslsmith_mult_u32(u_input.a, global1.a), ~firstLeadingBit(0u), u_input.a, func_2(arg_1.a).a) >> (~vec4<u32>(~global1.a, global1.a & u_input.a, 3077u, 1u) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(arg_0.wz, arg_0.wz) | ~_wgslsmith_mod_u32(u_input.a | global1.a, firstLeadingBit(4294967295u)), !select(false, select(all(vec3<bool>(false, false, global1.b)), false, !global1.b), global1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1411f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_f_op_f32(-global1.c.x)))) * global1.c), _wgslsmith_mult_vec4_i32(max(global1.d, ~(-vec4<i32>(1i, -24807i, 21072i, 2147483647i))), ~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(2014i, -2147483647i, -1i, global1.e), global1.d))), -_wgslsmith_dot_vec2_i32(-global1.d.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(-32103i, global1.e), global1.d.xx) >> (arg_0.wx % vec2<u32>(32u))));
    var var_3 = global1.c.x;
    var var_4 = _wgslsmith_f_op_f32(step(global1.c.x, _wgslsmith_f_op_f32(-global1.c.x)));
    return Struct_2(min(2147483647i, max(abs(global1.d.x), 34672i)) | var_2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(3165f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 31>();
    var var_0 = Struct_2(-_wgslsmith_add_i32(~global1.e, _wgslsmith_sub_i32(global1.e, -2147483647i) >> (0u % 32u)), _wgslsmith_f_op_f32(-1242f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -398f))));
    var var_1 = func_5(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(12624u, u_input.a, 4294967295u, global1.a)), abs(vec4<u32>(global1.a, 0u, 86329u, 41258u))), func_4(func_1(Struct_2(global1.d.x, global1.c.x), Struct_1(0u, true, global1.c, vec4<i32>(var_0.a, 8276i, 2147483647i, u_input.b), global1.e)), func_1(Struct_2(-45992i, global1.c.x), Struct_1(global1.a, global1.b, global1.c, global1.d, -2147483647i)), vec3<bool>(true, global1.b, global1.b))));
    let var_2 = 17213u;
    var var_3 = global1.c.xy;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, -440f) * _wgslsmith_f_op_f32(var_0.b * 796f))) * -1317f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) * _wgslsmith_f_op_f32(var_1.b - -912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f + -788f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.d ^ vec4<i32>(_wgslsmith_mod_i32(global1.e, firstTrailingBit(2147483647i)), 2147483647i, _wgslsmith_add_i32(countOneBits(global1.e), 33216i), ~(-2147483647i)), var_2 << (~u_input.a % 32u), vec3<u32>(var_2, var_2 << (var_2 % 32u), min(~var_2 & 1u, abs(reverseBits(52740u)))));
}

