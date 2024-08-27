struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = true;
    var var_1 = vec3<u32>(34214u, 109519u, 0u);
    let var_2 = 0u;
    let var_3 = vec3<u32>(u_input.b.x >> (var_1.x % 32u), ~(~(~4294967295u)), 0u);
    let var_4 = Struct_3(-(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-8576i, -1i, 28689i), vec3<i32>(2147483647i, u_input.c, u_input.c))) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(15469i, 2147483647i, u_input.a), vec3<i32>(-1i, -10568i, u_input.c)) | vec3<i32>(u_input.a, 3829i, 42919i))), select(select(vec2<bool>(!arg_3, true), !vec2<bool>(arg_3, arg_1.x), vec2<bool>(any(arg_1), all(arg_1.xzy))), arg_1.zz, func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-142f, -322f, -625f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2))), Struct_1(18630u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1267f, 407f, arg_2)), _wgslsmith_f_op_f32(-arg_2), vec3<u32>(1u, 4294967295u, 121233u)))), Struct_1(_wgslsmith_mult_u32(select(~var_2, ~var_1.x, true), 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 421f, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 1865f, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(1212f * arg_2), -1149f, -1541f, 243f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) + 2025f), countOneBits(var_3)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(26434i, u_input.a)), reverseBits(vec2<i32>(u_input.a, 22749i))), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), -vec2<i32>(-1i, 19001i)))), vec4<f32>(arg_2, 385f, _wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))))));
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> vec4<f32> {
    var var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(floor(arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, vec4<bool>(false, false, false, true), 1871f, true)) - -2725f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.b.x)))), arg_0.b.x))), vec3<u32>(arg_0.a, 4294967295u, ~4294967295u) >> (firstTrailingBit(u_input.b.xyx) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1762f)), arg_0.c, -1378f) - var_0.b.wzz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.x, arg_0.b.x, var_0.b.x)))))), var_0.b.wzz);
    let var_2 = arg_0;
    let var_3 = select(arg_1.xz, select(arg_1.zz << (_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a, 89665u), var_0.d.xx) % vec2<u32>(32u)), min(arg_1.yy, select(vec2<i32>(u_input.a, arg_1.x), arg_1.zy, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), func_3(arg_0.b.wyw, var_2.b.yyw, Struct_1(47347u, var_2.b, 1000f, vec3<u32>(var_2.a, 74540u, 37365u))))) ^ vec2<i32>(arg_2, -2147483647i), true);
    var var_4 = true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f + arg_0.b.x) - _wgslsmith_f_op_f32(-var_0.c)), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1271f + arg_0.c)), -824f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1948f - -1000f), -1007f)))));
    let var_1 = Struct_3(countOneBits(vec3<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, 16397i), abs(vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.c))), ~(-9964i))), !vec2<bool>(all(vec2<bool>(true, true)), true), Struct_1(min(_wgslsmith_clamp_u32(51961u, 4294967295u, ~u_input.d.x), u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, -527f) - _wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.d.x, vec4<f32>(1114f, var_0.a, -1426f, 442f), 485f, vec3<u32>(18170u, u_input.d.x, u_input.b.x)), vec3<i32>(18391i, 0i, -11648i), u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.yxz, u_input.b.xxw), u_input.d.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(48607u, u_input.d.x, u_input.d.x, u_input.d.x), u_input.b), ~16198u))), vec2<i32>(i32(-1i) * -abs(2147483647i), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 25311i, -28797i), vec4<i32>(-1i, -1i, 25684i, u_input.a)), vec4<i32>(u_input.c, -17807i, -15242i, 0i) >> (vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(928f, var_0.a, var_0.a, var_0.a) + vec4<f32>(3096f, var_0.a, var_0.a, var_0.a))))));
    var var_2 = !var_1.b;
    var_2 = !var_1.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_1.b.x, select(!vec4<bool>(var_1.b.x, var_1.b.x, true, var_2.x), !vec4<bool>(true, var_2.x, var_1.b.x, true), !vec4<bool>(true, var_1.b.x, var_2.x, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(428f - 496f), -1062f)), true))));
    var_3 = var_1.e.x;
    let var_4 = var_1.a;
    var var_5 = var_1;
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(13217u, vec3<i32>(var_1.a.x, ~(_wgslsmith_clamp_i32(-1i, -2147483647i, -7758i) << (u_input.d.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, 11343i), var_1.a.x) ^ 63456i), 2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(max(2147483647i, 2147483647i), -28312i, 1i, 1i), vec4<i32>(var_1.a.x, var_5.d.x, abs(-49726i), 0i)), var_1.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_5.e.zzz))));
}

