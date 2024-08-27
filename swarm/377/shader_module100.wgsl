struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global2: vec4<i32> = vec4<i32>(10410i, 29287i, i32(-2147483648), 0i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    var var_0 = global1.x;
    let var_1 = Struct_1(0u);
    let var_2 = var_1.a;
    global2 = abs(abs(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, u_input.a, -14706i, global2.x)), (vec4<i32>(global2.x, -5525i, -1i, u_input.a) | vec4<i32>(global2.x, u_input.a, global2.x, u_input.a)) & select(vec4<i32>(-37468i, global2.x, global2.x, global2.x), vec4<i32>(u_input.a, -612i, global2.x, 20101i), vec4<bool>(true, global1.x, true, global1.x)), min(abs(vec4<i32>(1i, u_input.a, -29495i, 1i)), reverseBits(vec4<i32>(-14505i, u_input.a, 0i, global2.x))))));
    global0 = array<vec3<bool>, 32>();
    return select(select(select(vec4<bool>(global1.x, all(vec4<bool>(true, global1.x, true, false)), all(vec3<bool>(false, global1.x, false)), all(vec3<bool>(false, global1.x, global1.x))), select(!vec4<bool>(global1.x, true, true, global1.x), select(vec4<bool>(false, true, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, false), global1.x), !vec4<bool>(false, global1.x, false, global1.x)), vec4<bool>(false, true, any(global0[_wgslsmith_index_u32(var_1.a, 32u)]), global1.x)), !vec4<bool>(global1.x, true, !global1.x, u_input.c < var_1.a), true), vec4<bool>(true, true, any(select(select(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(3216u, 32u)], global1.x), global0[_wgslsmith_index_u32(abs(7685u), 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)])), ~(~var_1.a) != ~(~33978u)), select(vec4<bool>(global1.x, false | !global1.x, var_1.a >= ~1u, false), vec4<bool>(global1.x, max(u_input.a, global2.x) >= u_input.a, global1.x, any(vec3<bool>(global1.x, global1.x, true))), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec4<i32> {
    return vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(select(abs(vec3<i32>(5403i, global2.x, 1i)), -global2.yxw, true)), select(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(-26766i, -53537i, global2.x), _wgslsmith_add_i32(8215i, global2.x)), select(abs(vec3<i32>(49021i, global2.x, u_input.a)), global2.yxw, arg_1.a < arg_0.a), true)), 1i, -33640i, global2.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: bool) -> vec4<i32> {
    var var_0 = Struct_1(max(~(~_wgslsmith_sub_u32(u_input.b, 1u)), arg_1.x));
    var var_1 = 1u;
    let var_2 = Struct_1(9347u);
    var var_3 = vec3<bool>(-countOneBits(_wgslsmith_clamp_i32(-4732i, -1i, 45760i)) < (_wgslsmith_sub_i32(1i, global2.x) ^ 1i), false, !any(vec2<bool>(all(vec2<bool>(global1.x, false)), arg_0.x)));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1130f, -270f)) * _wgslsmith_f_op_f32(f32(-1f) * -847f)))));
    return func_4(var_2, Struct_1(~(4294967295u << (var_0.a % 32u))), any(func_3()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4)))) << (abs((firstTrailingBit(vec4<u32>(1u, u_input.b, var_0.a, 1u)) << (~vec4<u32>(1u, var_2.a, u_input.b, 0u) % vec4<u32>(32u))) >> (vec4<u32>(var_0.a, var_2.a, abs(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(108326u, 1u), arg_1.yx)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<u32> {
    global2 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, select(_wgslsmith_mod_i32(-26531i >> (arg_0.a % 32u), 1i), u_input.a & 1i, global1.x && (global1.x && global1.x)), u_input.a, global2.x), select(func_2(select(vec2<bool>(true, true), select(global1.xz, global1.yz, global1.ww), !arg_3), ~(~vec3<u32>(arg_2.a, 0u, u_input.b)), !(40348i != u_input.a)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), reverseBits(vec4<i32>(u_input.a, 2147483647i, u_input.a, -42615i))), vec4<i32>(-1i, 10798i, -8325i, u_input.a) << ((vec4<u32>(35397u, u_input.c, u_input.c, arg_2.a) & vec4<u32>(arg_0.a, u_input.b, arg_1.a, arg_0.a)) % vec4<u32>(32u))), !global1.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-678f, -591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2079f)), 791f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1471f, -109f, 2093f, 1066f), vec4<f32>(943f, -1375f, 285f, -2064f), arg_3.x)), vec4<f32>(-1595f, 2492f, 701f, -361f), global2.x < u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_f_op_f32(abs(-251f)), _wgslsmith_f_op_f32(min(-143f, 1028f)), -390f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, -678f, 1510f, 278f) + vec4<f32>(679f, 452f, 152f, 511f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(846f, 611f, 870f, 507f) + vec4<f32>(680f, -925f, 1335f, -1000f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1000f, 1305f, -645f), vec4<f32>(901f, 1533f, -1792f, -441f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, 1184f, -535f, 1005f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(301f, 130f, 783f, -930f) + vec4<f32>(-373f, 1162f, 443f, -1420f))))))));
    global2 = reverseBits(func_2(arg_3, vec3<u32>(arg_0.a, 81179u, arg_1.a), !arg_3.x));
    global2 = -reverseBits(~_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, global2.x, -1i, -38141i), ~vec4<i32>(u_input.a, -1i, global2.x, global2.x)));
    return _wgslsmith_sub_vec2_u32(select(reverseBits(vec2<u32>(arg_1.a, 72015u)) & (vec2<u32>(4294967295u, arg_2.a) & vec2<u32>(4294967295u, arg_1.a)), vec2<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, 4294967295u)), !vec2<bool>(global1.x, global1.x)) ^ vec2<u32>(arg_2.a, ~4294967295u | ~arg_2.a), select(vec2<u32>(~25508u, ~(~4294967295u)), vec2<u32>(1u, ~(~9050u)), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~u_input.b, _wgslsmith_dot_vec2_u32(~((vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))) & (vec2<u32>(0u, 15250u) << (vec2<u32>(44878u, u_input.b) % vec2<u32>(32u)))), ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.c, u_input.c)), func_1(Struct_1(u_input.b), Struct_1(14414u), Struct_1(58337u), vec2<bool>(global1.x, false)))));
    var var_1 = _wgslsmith_div_u32(countOneBits(~0u), firstTrailingBit(countOneBits(u_input.c)));
    var var_2 = Struct_1(firstTrailingBit(~(~1u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_3.x)), var_3.x, var_3.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, -573f) + vec3<f32>(-634f, var_3.x, var_3.x))))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-154f - var_3.x), var_3.x)), var_3.x, 559f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, var_3.x, var_3.x))), vec3<f32>(var_3.x, var_3.x, 1234f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-611f)), var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-768f, var_3.x, var_3.x), vec3<f32>(var_4.x, 329f, 1207f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, -1022f, var_3.x), vec3<f32>(625f, var_4.x, 2493f)), vec3<f32>(var_3.x, var_4.x, var_3.x)) + vec3<f32>(231f, var_4.x, var_3.x))), _wgslsmith_clamp_i32(u_input.a, -global2.x, -u_input.a));
}

