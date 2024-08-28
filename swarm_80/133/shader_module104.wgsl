struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: u32) -> vec2<i32> {
    let var_0 = 60837u;
    let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_2 = Struct_2(0i, select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !(var_1 < -480f), true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    let var_3 = _wgslsmith_mult_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(select(select(4294967295u, 32458u, true), ~51881u, true), var_0, ~(~arg_2), ~firstTrailingBit(arg_2)), u_input.c));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_1.xw)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d & u_input.d, -u_input.d & -arg_0.zy), u_input.d), true, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -212f), _wgslsmith_f_op_f32(1000f * 1000f))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)))));
    return arg_0.yx;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: f32) -> f32 {
    var var_0 = Struct_3(func_3(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.d.x, -79411i), vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.d.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, -453f, 105f, arg_3))))))), ~0u), any(vec4<bool>(arg_2.x, arg_1.x, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f))))), _wgslsmith_dot_vec3_u32(min(abs(vec3<u32>(u_input.b, 45385u, u_input.a.x)), ~vec3<u32>(u_input.b, u_input.c.x, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a.ywy)) & u_input.c.x);
    return arg_3;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-141f)) + _wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, arg_0.b.x), vec2<bool>(arg_0.b.x, arg_1.x), vec3<bool>(arg_0.b.x, arg_1.x, true), -731f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(726f, -997f)))))), -firstTrailingBit(0i), true && arg_1.x, u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))));
    var var_1 = Struct_2(~(-2147483647i) & arg_2.a, vec3<bool>(any(arg_1), arg_0.b.x, true));
    let var_2 = _wgslsmith_mult_u32(~58319u, var_0.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f)), -495f, var_0.e));
    let var_4 = arg_0;
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1173f, 1820f))))), abs(~(-u_input.d.x)), func_1(Struct_2(u_input.d.x, vec3<bool>(true, true, true)), vec4<bool>(true, true, true, true), Struct_2(abs(23297i), vec3<bool>(true, true, true)), ~0u), u_input.b, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(377f, 1000f))))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, -2147483647i, u_input.d.x, 20523i), firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -1649i))), -(vec4<i32>(u_input.d.x, 2147483647i, -2147483647i, u_input.d.x) ^ vec4<i32>(-1i, -1i, u_input.d.x, u_input.d.x))), ~firstTrailingBit(~vec4<i32>(u_input.d.x, -49046i, u_input.d.x, u_input.d.x))));
    var var_1 = Struct_1(var_0.a, 20915i, (var_0.d | (u_input.a.x ^ var_0.d)) != _wgslsmith_add_u32(0u, func_4(Struct_1(vec2<f32>(var_0.e, 1052f), var_0.b, false, var_0.d, var_0.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, u_input.d.x, 2147483647i, var_0.b), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, var_0.b))).d), ~(~(~(~50407u))), var_0.e);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.x, 668f, var_0.a.x))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(590f, -1000f, -605f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, var_0.e, -133f))), vec3<f32>(395f, 1000f, 976f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2449f, 403f, -823f))))));
    var var_3 = Struct_3(vec2<i32>(abs(-_wgslsmith_add_i32(u_input.d.x, 24602i)), (var_0.b & -33576i) | -30787i), 33340u == max(6950u, (u_input.c.x << (var_0.d % 32u)) & ~26438u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-199f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(func_4(Struct_1(var_2.zy, var_0.b, true, 109826u, 420f), vec4<i32>(-14096i, 1i, var_1.b, 1i)).e - var_0.e))), ~u_input.a.x);
    var var_4 = select(vec2<bool>(false, !(var_3.b != var_0.c) || func_4(Struct_1(var_2.xx, var_1.b, var_1.c, 68476u, var_2.x), countOneBits(vec4<i32>(0i, u_input.d.x, -2147483647i, -49623i))).c), vec2<bool>(true, true), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), var_1.c), vec2<bool>(false, var_3.b), any(vec4<bool>(var_0.c, var_3.b, true, var_1.c))), vec2<bool>(false, select(var_0.b != var_3.a.x, var_1.e == 1212f, !var_3.b)), !select(select(vec2<bool>(true, var_1.c), vec2<bool>(true, var_0.c), false), !vec2<bool>(var_0.c, true), !var_0.c)));
    var_1 = func_4(func_4(func_4(var_0, -vec4<i32>(u_input.d.x, var_1.b, var_0.b, var_1.b)), ~firstLeadingBit(~vec4<i32>(u_input.d.x, -6278i, -2147483647i, 27168i))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(var_3.a.x << (var_0.d % 32u), abs(72413i), 85244i, abs(u_input.d.x)), vec4<i32>(16296i, ~93071i, ~32595i, var_1.b)), _wgslsmith_mult_vec4_i32(-vec4<i32>(43412i, u_input.d.x, var_1.b, 67243i), select(-vec4<i32>(-25929i, var_1.b, u_input.d.x, -2147483647i), vec4<i32>(1i, u_input.d.x, -2147483647i, var_0.b), true))));
    var_1 = var_0;
    var_4 = vec2<bool>(!(!(u_input.d.x > reverseBits(1394i))), false);
    var_4 = !select(vec2<bool>(true, true), !select(vec2<bool>(var_4.x, true), select(vec2<bool>(var_4.x, true), vec2<bool>(false, false), vec2<bool>(var_3.b, var_3.b)), select(vec2<bool>(var_0.c, true), vec2<bool>(var_3.b, false), false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~_wgslsmith_mult_u32(3048u, u_input.c.x)), abs(select(_wgslsmith_clamp_u32(u_input.c.x, 32314u << (1u % 32u), 4294967295u), var_0.d, any(!vec3<bool>(true, var_3.b, var_3.b)))), 33939u);
}

