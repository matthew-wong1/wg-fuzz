struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.ww, -vec2<i32>(1i, ~u_input.c)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(u_input.b.x, -14061i)), -select(u_input.c, -38755i, false)), 2147483647i, ~(-_wgslsmith_mult_i32(2147483647i, u_input.a))));
    let var_1 = vec4<bool>(true, all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), false, true);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -abs(select(u_input.b, u_input.b, var_1)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -8216i, -2147483647i, var_0.x, ~43248i), ~vec4<i32>(var_0.x, 1i, 0i, u_input.c)), ~(-vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))));
    var var_3 = countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 6491u), vec3<u32>(70968u, 58155u, 16824u)), vec3<u32>(1u, 1u, 1u)), 1u, _wgslsmith_mult_u32(4294967295u, firstTrailingBit(48822u))) >> (~vec3<u32>(~10602u, 1u, 1u) % vec3<u32>(32u)));
    var var_4 = var_1.x || !var_1.x;
    return max(-(~(~u_input.c << (max(19311u, 14367u) % 32u))), -min(-48656i, var_2.x));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(reverseBits(vec3<i32>(countOneBits(u_input.a) << (4294967295u % 32u), -3830i, _wgslsmith_add_i32(firstLeadingBit(u_input.a), func_3()))), _wgslsmith_mod_u32(0u, ~1u), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(min(vec3<u32>(39143u, 0u, 5767u), vec3<u32>(0u, 5978u, 50503u)), ~vec3<u32>(1u, 54082u, 4294967295u))), vec3<bool>(all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), any(vec2<bool>(true, true)))), !select(all(vec3<bool>(false, true, true)), -25516i != u_input.a, select(true, true, true)), all(vec3<bool>(true, false, any(vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-513f)), _wgslsmith_f_op_f32(-1373f + -166f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(691f - 505f))), -864f))));
    let var_1 = var_0.d.x;
    let var_2 = 2147483647i;
    let var_3 = Struct_2(firstLeadingBit(firstLeadingBit(u_input.b.yxw)), _wgslsmith_mult_u32(~var_0.b, 1u), var_0.c, var_0.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(595f, var_0.e.x, var_0.e.x)))), _wgslsmith_f_op_vec3_f32(select(var_0.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, -993f, var_0.e.x)), var_0.d))));
    let var_4 = var_3;
    return -8705i;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(select(1i, 0i, any(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c))), 1i ^ u_input.a, 16499i, _wgslsmith_sub_i32(arg_1.x, _wgslsmith_add_i32(arg_1.x, -2147483647i) >> (~22938u % 32u))), select(vec4<i32>(~arg_1.x, ~arg_1.x, i32(-1i) * -969i, func_2()) >> (~(~vec4<u32>(4294967295u, arg_0.a, 16141u, 25857u)) % vec4<u32>(32u)), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, -33545i, -1i), vec4<i32>(u_input.a, 0i, 62560i, -19921i))), vec4<bool>((-1i < arg_1.x) & false, arg_0.c, arg_0.b, true)));
    var_0 = ~vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_1, reverseBits(vec2<i32>(var_0.x, 47590i))), firstTrailingBit(~vec2<i32>(u_input.b.x, 0i))), -_wgslsmith_div_i32(u_input.a, 2350i) & _wgslsmith_div_i32(_wgslsmith_mod_i32(-24157i, arg_1.x), u_input.b.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.x, 52960i), vec3<i32>(1i, 41779i, u_input.a)));
    var_0 = -u_input.b | (vec4<i32>(~var_0.x, 1i, _wgslsmith_div_i32(~var_0.x, _wgslsmith_clamp_i32(var_0.x, -1i, u_input.b.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.x), vec2<i32>(arg_1.x, -1i)), arg_1.x)) << (max(select(~vec4<u32>(arg_0.a, 0u, 0u, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a) ^ vec4<u32>(arg_0.a, 58766u, arg_0.a, arg_0.a), arg_0.b), ~(vec4<u32>(0u, 16157u, 0u, 1u) | vec4<u32>(arg_0.a, 27955u, 3661u, 39598u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(arg_0.a, (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(2146f)), _wgslsmith_f_op_f32(ceil(233f)), true)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(205f)) - _wgslsmith_f_op_f32(trunc(-523f)))) | false, !(!arg_0.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-581f)) - -750f), 1f, 1056f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(990f - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~2147483647i, -(u_input.c & -1i), u_input.b.x, u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(f32(-1f) * -1208f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1108f, 381f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(681f, 269f), _wgslsmith_f_op_f32(func_1(Struct_1(25016u, false, false), var_0.wy))), -913f)), -419f) * vec4<f32>(-1454f, -1976f, -168f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f))))));
    var var_2 = Struct_1(4294967295u, true, countOneBits(2147483647i) >= var_0.x);
    let var_3 = Struct_1(62204u, (_wgslsmith_sub_u32(firstTrailingBit(var_2.a), var_2.a) != ~firstTrailingBit(41193u)) && true, 1u > _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.a, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, 35902u, var_2.a), vec3<u32>(0u, 1u, 4294967295u))), ~4294967295u));
    var var_4 = Struct_1(~4294967295u, all(!vec2<bool>(var_3.c, select(var_2.b, true, var_2.c))), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_1.xxz, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 615f, -1983f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 901f)) * var_1.xxz), !select(vec3<bool>(var_2.b, var_4.c, var_3.b), vec3<bool>(true, true, true), vec3<bool>(true, false, var_2.c))))));
}

