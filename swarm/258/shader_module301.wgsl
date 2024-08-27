struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> vec2<i32> {
    var var_0 = u_input.d.zy;
    var_0 = ~(~vec2<u32>(u_input.a, 0u | _wgslsmith_mult_u32(1u, var_0.x)));
    global0 = reverseBits(firstLeadingBit(_wgslsmith_add_u32(~max(4294967295u, 3735u), ~4294967295u)));
    var_0 = ~abs(u_input.d.zx);
    return vec2<i32>(~_wgslsmith_add_i32(u_input.c, -20267i << ((1245u & var_0.x) % 32u)), -20217i);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> i32 {
    global0 = firstTrailingBit(_wgslsmith_add_u32(0u, arg_0.a));
    let var_0 = ~arg_1.x;
    var var_1 = abs(vec4<u32>(reverseBits(_wgslsmith_mod_u32(arg_1.x ^ 4294967295u, ~arg_2.x)), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, ~arg_1.x), arg_3.x), arg_1.x, _wgslsmith_sub_u32(max(4294967295u, var_0), _wgslsmith_sub_u32(max(1u, var_0), ~arg_2.x))));
    var var_2 = arg_2;
    let var_3 = vec4<f32>(-480f, -463f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - _wgslsmith_f_op_f32(trunc(-1423f))), arg_0.c.x)), 1000f);
    return arg_0.b.x;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), (~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -3870i, 0i), vec3<i32>(u_input.c, 25710i, u_input.e)) ^ vec3<i32>(26188i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -28375i), u_input.b), i32(-1i) * -15838i)) >> ((_wgslsmith_add_vec3_u32(~u_input.d, _wgslsmith_div_vec3_u32(arg_1, u_input.d)) ^ vec3<u32>(arg_1.x, arg_1.x, ~0u)) % vec3<u32>(32u)), Struct_1(~u_input.d.x, vec4<i32>(1936i, func_3(Struct_1(4294967295u, vec4<i32>(-1i, -26304i, u_input.b.x, u_input.c), vec2<f32>(arg_0, arg_0), vec4<u32>(1u, 1u, 51681u, arg_1.x), arg_0), ~vec4<u32>(arg_1.x, arg_1.x, 0u, u_input.a), countOneBits(vec4<u32>(15343u, arg_1.x, arg_1.x, 0u)), ~vec2<u32>(u_input.a, u_input.a)), -(~(-39823i)), _wgslsmith_clamp_i32(1i, u_input.b.x ^ u_input.e, _wgslsmith_div_i32(u_input.c, u_input.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -166f) * vec2<f32>(arg_0, arg_0)))), vec4<u32>(min(~1u, 58236u), u_input.a, 61080u, 1u), -1368f), ~firstTrailingBit(vec4<u32>(arg_1.x, 30669u, 57946u, u_input.a) & vec4<u32>(1u, 4294967295u, 6823u, 4294967295u)) >> (firstTrailingBit(vec4<u32>(arg_1.x, arg_1.x, 0u, u_input.d.x | 0u)) % vec4<u32>(32u)), vec4<i32>(-(~u_input.e), _wgslsmith_dot_vec2_i32(-(~u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.e), vec2<i32>(u_input.b.x, u_input.c))), ~(-u_input.b.x), 1i));
    let var_1 = ~_wgslsmith_mod_i32(-(2147483647i | _wgslsmith_mod_i32(-2147483647i, u_input.b.x)), var_0.c.b.x);
    let var_2 = arg_2.x;
    global0 = var_0.c.d.x;
    global0 = var_0.d.x;
    return -select(vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.c.b, vec4<i32>(var_0.c.b.x, var_0.b.x, -2147483647i, u_input.e)), -45692i, -var_1, -var_1) ^ min(vec4<i32>(var_0.e.x, -82598i, 0i, 5558i), vec4<i32>(var_0.e.x, -2147483647i, u_input.b.x, var_1)), ~vec4<i32>(var_0.e.x, 67780i, 19871i, -24320i), select(select(!vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(var_2, true, true, arg_2.x), false), arg_2, any(!vec3<bool>(true, false, arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~76366u), vec4<i32>(u_input.c, ~u_input.e, ~1i, -_wgslsmith_dot_vec2_i32(u_input.b, func_1())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-101f, -504f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2036f, -1118f) - vec2<f32>(-1909f, -2787f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-784f, 1218f), vec2<f32>(318f, -278f)))))), abs(vec4<u32>(u_input.a, 1u, 33088u, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-792f))))) + _wgslsmith_div_f32(623f, -947f)));
    var_0 = Struct_1(var_0.a, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, u_input.b.x, -1i, var_0.b.x), vec4<i32>(1i, 31816i, 0i, -2147483647i)) | var_0.b, _wgslsmith_mod_vec4_i32(var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1179f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(floor(554f))))) + var_0.c), ~(vec4<u32>(~0u, u_input.a, firstTrailingBit(43823u), ~0u) ^ (vec4<u32>(1u, 4294967295u, 26389u, u_input.a) | (var_0.d ^ var_0.d))), _wgslsmith_div_f32(1611f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-625f * 121f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.e) - vec2<f32>(-1392f, 1000f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.e, -1804f), vec2<f32>(var_0.e, 591f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.c)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_0.c)))))));
    var var_2 = reverseBits(func_2(953f, min(vec3<u32>(27491u, u_input.d.x, ~var_0.a), ~vec3<u32>(79438u, u_input.d.x, 107147u)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))));
    var_2 = min(var_0.b, vec4<i32>(abs(_wgslsmith_div_i32(~1i, -var_0.b.x)), var_0.b.x, _wgslsmith_mult_i32(u_input.c, _wgslsmith_mult_i32(2147483647i, 1i & u_input.b.x)), var_2.x));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(var_0.e + -1568f)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true)))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2001f, var_0.e))), _wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(var_1.x, var_1.x), true))))))));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, firstLeadingBit(u_input.a), u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, 20958u, ~(~var_0.d.x))), vec4<u32>(u_input.a, abs(_wgslsmith_clamp_u32(var_0.d.x, firstTrailingBit(41374u), 1u)), var_0.d.x, ~0u));
    global0 = abs(var_0.d.x);
    var var_4 = Struct_4(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.e, _wgslsmith_f_op_f32(var_1.x * var_0.c.x), false)), -1831f), u_input.d, !vec4<bool>(false, false, true, all(vec3<bool>(false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, u_input.c, var_0.b.yxw, vec2<i32>(min(0i, countOneBits(firstTrailingBit(u_input.c))), ~(~_wgslsmith_mod_i32(u_input.b.x, 16631i))));
}

