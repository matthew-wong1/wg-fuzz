struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(step(-203f, -1000f)), _wgslsmith_f_op_f32(round(2162f))))), all(vec3<bool>(true, true, true))));
    let var_1 = false;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, _wgslsmith_f_op_f32(abs(104f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-984f, var_0.a.a.x, 565f, 255f), vec4<f32>(-768f, var_0.a.a.x, -218f, var_0.a.a.x), var_1))))));
    var var_3 = 65614i;
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1771f, var_0.a.a.x, var_0.a.a.x, 699f)) - _wgslsmith_f_op_vec4_f32(select(var_2.a, var_2.a, false))))));
    return _wgslsmith_f_op_vec3_f32(var_2.a.wyy + var_2.a.yzz);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1843f), 753f, 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-177f, -2151f, 322f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-451f, -1243f, 481f) + vec3<f32>(-1000f, -684f, 1760f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -153f, 1207f) - vec3<f32>(1175f, 1000f, 458f))))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = Struct_5(true);
    var_1 = Struct_5(true);
    let var_2 = -select(-vec2<i32>(countOneBits(0i), abs(2147483647i)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.b, -59043i)), vec2<i32>(34530i, -25433i) & vec2<i32>(-1i, u_input.d), vec2<i32>(2147483647i, u_input.b)), vec2<i32>(~u_input.b, firstTrailingBit(u_input.d))), all(!select(vec4<bool>(var_0.b, var_1.a, var_1.a, var_0.b), vec4<bool>(true, false, true, false), vec4<bool>(false, true, var_1.a, var_0.b))));
    var_1 = Struct_5(false);
    return !select(select(vec2<bool>(any(vec4<bool>(false, false, true, var_0.b)), var_1.a), select(vec2<bool>(true, var_1.a), !vec2<bool>(true, var_0.b), false), select(vec2<bool>(var_0.b, var_1.a), vec2<bool>(false, false), all(vec4<bool>(var_1.a, var_1.a, true, var_0.b)))), !vec2<bool>(true, 2147483647i >= u_input.d), true & all(vec3<bool>(false, false, var_1.a)));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = arg_3.x;
    var var_1 = vec4<bool>(all(!select(select(arg_2.xx, vec2<bool>(arg_2.x, arg_2.x), arg_2.zz), func_2(), arg_2.zz)), select(arg_1.a.b, true, true), arg_2.x, arg_1.a.b);
    var var_2 = arg_1.a;
    let var_3 = Struct_4(arg_1.a);
    let var_4 = Struct_1(~vec3<u32>(~(~1u), _wgslsmith_mod_u32(firstLeadingBit(u_input.e), u_input.a.x & 50936u), abs(~0u)));
    return Struct_4(arg_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> vec3<f32> {
    var var_0 = Struct_1(vec3<u32>(max(min(~0u, u_input.a.x), 0u), ~u_input.a.x, 59778u));
    var_0 = Struct_1(vec3<u32>(~(~(38950u | var_0.a.x)), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.x, ~u_input.e), 1u), u_input.a.x));
    var_0 = Struct_1(~vec3<u32>(reverseBits(var_0.a.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(50583u, u_input.a.x), vec2<u32>(1510u, var_0.a.x)) % 32u), 0u, ~1u));
    var var_1 = arg_1.a;
    var_1 = arg_1.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x - arg_1.a.a.x), _wgslsmith_f_op_f32(var_1.a.x + arg_0.a.x), var_1.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, arg_0.a.x, 806f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 6060u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f * 274f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1361f + 1113f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1125f)))))) * _wgslsmith_f_op_f32(f32(-1f) * -1036f));
    let var_2 = abs((vec3<i32>(2147483647i, 0i, 53931i) ^ -vec3<i32>(u_input.c, -2147483647i, 1i)) ^ -select(~vec3<i32>(u_input.d, 10582i, 19396i), vec3<i32>(-1i, u_input.c, u_input.c) << (vec3<u32>(u_input.a.x, 13304u, u_input.e) % vec3<u32>(32u)), vec3<bool>(true, true, true)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1), var_1, _wgslsmith_f_op_f32(-var_1))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, _wgslsmith_clamp_u32(26370u, u_input.e, 1u), u_input.e), ~(~vec4<u32>(u_input.a.x, u_input.e, 4294967295u, 13843u))) == ~u_input.a.x);
    var var_4 = var_3.a.x;
    var var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, -462f, var_1, var_1)))), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -371i, var_2.x, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, -19949i, u_input.c, var_2.x), vec4<i32>(var_2.x, 1i, 1i, var_2.x))), Struct_4(Struct_3(var_3.a, var_3.b)), vec3<bool>(!var_3.b, true, true), vec4<i32>(~0i, _wgslsmith_mult_i32(u_input.b, -3551i), _wgslsmith_sub_i32(u_input.d, 26881i), firstTrailingBit(u_input.c))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_3.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -105f, _wgslsmith_f_op_f32(var_3.a.x * var_1)) + vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, -1303f, _wgslsmith_f_op_f32(abs(-548f)))), vec3<bool>(!all(vec3<bool>(false, false, var_3.b)), (u_input.b & var_2.x) == firstTrailingBit(u_input.c), u_input.e >= firstTrailingBit(29470u)))));
    var var_6 = var_3.a.x;
    var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(711f * var_5.x))));
    let var_7 = Struct_5(!var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(u_input.c, -u_input.b) << (u_input.a.xy % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), -1000f, _wgslsmith_f_op_f32(761f - 462f))), var_3.a.x, u_input.b, _wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.x, var_1, var_3.a.x, -1222f) + vec4<f32>(var_5.x, -1602f, 1000f, -323f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.x, var_5.x, var_1, -1219f), vec4<f32>(-1566f, var_5.x, -1000f, 683f), vec4<bool>(var_7.a, var_7.a, var_7.a, true))))), func_1(firstTrailingBit(u_input.b), func_1(u_input.d, Struct_4(Struct_3(var_3.a, var_7.a)), !vec3<bool>(var_3.b, var_7.a, var_7.a), vec4<i32>(0i, u_input.d, -63176i, 2147483647i)), !vec3<bool>(true, false, var_7.a), countOneBits(vec4<i32>(var_2.x, var_2.x, -1i, var_2.x)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, var_2.x, -1i, u_input.c), vec4<i32>(-51086i, 2147483647i, var_2.x, 2147483647i))))));
}

