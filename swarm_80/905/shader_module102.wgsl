struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1933f * -1251f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-691f - 644f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(315f - -1790f) - _wgslsmith_f_op_f32(round(-1046f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1500f, 169f, 114f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, 442f, -1252f, 1196f) * vec4<f32>(1005f, -290f, 1455f, 442f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1866f, -385f, 143f, -1000f))))))));
    let var_1 = firstLeadingBit(max(vec3<u32>(_wgslsmith_sub_u32(~1119u, 1u), _wgslsmith_mod_u32(~4294967295u, u_input.a), min(1u, abs(40656u))), vec3<u32>(24355u, ~countOneBits(arg_3), 0u)));
    let var_2 = vec4<bool>(any(!(!select(vec4<bool>(true, false, true, arg_1), vec4<bool>(true, arg_1, true, true), arg_1))), arg_1, !(arg_1 | true), false);
    var var_3 = ~(var_1 ^ var_1);
    var var_4 = var_2.x;
    return arg_2.x;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -815f)))))), u_input.b, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true), true), vec4<bool>(true, true, !all(vec4<bool>(true, false, false, false)), true), vec4<bool>(arg_0.x > (10980i << (0u % 32u)), u_input.a < min(u_input.a, 1u), all(vec3<bool>(true, true, true)), true)), select(vec4<i32>(_wgslsmith_add_i32(func_3(u_input.a, true, arg_0.yz, 1u), 0i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(25255i, arg_0.x), _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(u_input.b, 17457i, arg_0.x)), _wgslsmith_mult_i32(u_input.b, -2147483647i)), func_3(~37795u, false, -vec2<i32>(-2147483647i, arg_0.x), abs(72012u)), _wgslsmith_sub_i32(~0i, max(arg_0.x, u_input.b))), _wgslsmith_div_vec4_i32(~(vec4<i32>(arg_0.x, -1i, -18468i, 2147483647i) ^ vec4<i32>(0i, 3660i, u_input.b, arg_0.x)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.b, 0i, arg_0.x)), vec4<i32>(-2147483647i, 1i, u_input.b, u_input.b) ^ vec4<i32>(arg_0.x, arg_0.x, u_input.b, u_input.b))), (u_input.a > ~65320u) & true));
    var_0 = !var_1.c.x;
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1526f, var_2.a, 1518f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(658f, var_1.a, var_1.a)), !vec3<bool>(false, false, var_2.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, -914f, 1714f)))), !select(var_2.c.wwz, select(var_1.c.zwz, var_2.c.yyw, vec3<bool>(false, var_1.c.x, false)), select(vec3<bool>(false, var_1.c.x, var_2.c.x), vec3<bool>(false, false, true), vec3<bool>(false, true, false))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - var_2.a) + _wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(812f))), _wgslsmith_f_op_f32(trunc(-1000f))));
    return arg_0.x;
}

fn func_1() -> f32 {
    let var_0 = countOneBits(u_input.b);
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(abs(vec2<i32>(2147483647i, 0i))), _wgslsmith_mod_vec2_i32(vec2<i32>(12959i, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(35211i, u_input.b), vec2<i32>(-2147483647i, -5228i)))), vec2<i32>(var_0, _wgslsmith_add_i32(1i, abs(var_0)))), (~vec2<i32>(var_0, 29271i) << (vec2<u32>(7605u, u_input.a) % vec2<u32>(32u))) | max(vec2<i32>(func_2(vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_add_i32(var_0, u_input.b)), vec2<i32>(i32(-1i) * -1851i, ~u_input.b)));
    var var_2 = ~vec4<i32>(1377i, var_0, -157i, _wgslsmith_mult_i32(func_3(firstLeadingBit(u_input.a), select(true, false, true), vec2<i32>(1i, 1i), ~12731u), abs(-var_0)));
    var var_3 = false;
    var var_4 = firstTrailingBit(abs(reverseBits(vec2<i32>(0i, var_2.x))));
    return _wgslsmith_f_op_f32(select(-1442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(802f, -770f, false)) - _wgslsmith_f_op_f32(1129f * 2228f))) * _wgslsmith_f_op_f32(sign(1000f))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_1()), ~_wgslsmith_sub_i32(abs(24479i), -42346i), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), 4506u != u_input.a)), firstLeadingBit(vec4<i32>(-u_input.b, _wgslsmith_sub_i32(18620i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2617i), vec2<i32>(-1i, u_input.b)), u_input.b) << (vec4<u32>(1u, 1u, ~27814u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 22231u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))));
    var var_1 = (_wgslsmith_clamp_u32(u_input.a, _wgslsmith_clamp_u32(78068u, 47077u, 8220u), u_input.a) ^ (~(~u_input.a) | _wgslsmith_add_u32(1u, u_input.a << (1u % 32u)))) << (u_input.a % 32u);
    let var_2 = u_input.a;
    var var_3 = vec2<bool>(false, true);
    var_0 = Struct_1(-497f, _wgslsmith_div_i32(var_0.d.x, -121398i), select(!select(var_0.c, vec4<bool>(var_3.x, false, false, var_3.x), var_3.x), var_0.c, var_0.c), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a));
}

