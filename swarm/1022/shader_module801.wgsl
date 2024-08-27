struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> f32 {
    return arg_2;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(975f, -1677f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2362f, -471f)) * _wgslsmith_f_op_f32(1750f - 170f)), -1665f)) - vec4<f32>(-1356f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1015f, -732f, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1606f, -441f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(true, vec4<bool>(true, false, true, true))), true, 1004f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, -759f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 1326f, var_0.x, var_0.x), vec4<f32>(-994f, -162f, 658f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 525f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -1292f, -455f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1322f, 1556f, var_0.x) * vec4<f32>(881f, -2506f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 332f, 967f) + vec4<f32>(-1011f, -807f, 2170f, -1039f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1513f) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))))));
    var_0 = vec4<f32>(1108f, var_0.x, 1000f, var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 199f, _wgslsmith_f_op_f32(var_0.x * var_0.x), 600f)));
    var var_1 = var_0.x;
    return arg_1.x;
}

fn func_1() -> bool {
    var var_0 = Struct_1(0u < func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(-44221i, -1i, u_input.b)), 17421i), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(2653u, u_input.a)), countOneBits(vec2<u32>(u_input.a, 16069u)))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), all(vec3<bool>(false, false, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), true), vec4<bool>(false, all(vec2<bool>(false, true)), true, any(vec4<bool>(false, true, false, false)))));
    var_0 = Struct_1(var_0.a, vec4<bool>(any(!select(var_0.b.xz, var_0.b.zw, false)), false, any(select(!var_0.b, select(var_0.b, vec4<bool>(var_0.a, var_0.a, false, true), var_0.b), !var_0.b)), var_0.a));
    let var_1 = Struct_3(Struct_1(false, select(var_0.b, vec4<bool>(var_0.b.x, all(var_0.b.zz), true, any(vec3<bool>(var_0.a, false, var_0.a))), all(var_0.b.wyy) & (false && var_0.b.x))));
    var var_2 = 66159u;
    var var_3 = u_input.a <= ((~_wgslsmith_mult_u32(1u, 37977u) & (u_input.a ^ 1u)) << (~(~50687u) % 32u));
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(817f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1855f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1845f * -997f))), 558f));
    let var_1 = min(abs(vec3<u32>(~14157u, _wgslsmith_div_u32(abs(1u), 1u), ~(~u_input.a))), vec3<u32>(_wgslsmith_div_u32(~(~0u), 4294967295u & u_input.a), ~_wgslsmith_mod_u32(u_input.a, 78678u) >> (u_input.a % 32u), 43268u));
    let var_2 = true;
    let var_3 = Struct_3(Struct_1(!(!(var_1.x < 0u)), !arg_0));
    var var_4 = vec3<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(2147483647i, 0i, -1i)), -vec3<i32>(-25946i, -2147483647i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(0i, u_input.b, u_input.b), _wgslsmith_div_i32(-24462i, 2147483647i), u_input.b), firstTrailingBit(vec3<i32>(45752i, -35978i, u_input.b)) << (firstTrailingBit(vec3<u32>(49223u, u_input.a, u_input.a)) % vec3<u32>(32u)))), -_wgslsmith_sub_i32(u_input.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.b, -1i))));
    return Struct_3(Struct_1(true, select(arg_0, select(vec4<bool>(var_3.a.a, false, var_2, arg_1), !arg_0, select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, arg_1), var_3.a.b)), vec4<bool>(all(var_3.a.b.yz), !arg_0.x, var_3.a.a, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -503f;
    let var_1 = func_4(vec4<bool>(157f >= _wgslsmith_f_op_f32(-var_0), u_input.b <= _wgslsmith_add_i32(1i, u_input.b), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, all(vec4<bool>(true, true, true, false)), true))), !any(vec2<bool>(func_1(), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(407f, var_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(1000f, var_0)))))), select(vec4<u32>(154u, countOneBits(_wgslsmith_div_u32(98164u, u_input.a)), ~(~1u), u_input.a), countOneBits(~max(vec4<u32>(u_input.a, 35503u, 4294967295u, 11843u), vec4<u32>(1u, 4294967295u, 38772u, 1u))), var_1.a.b));
}

