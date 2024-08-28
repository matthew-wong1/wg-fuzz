struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a.xy, u_input.a.yz), min(vec2<u32>(28000u, ~u_input.a.x), firstTrailingBit(firstLeadingBit(vec2<u32>(4294967295u, u_input.a.x)))));
    var var_1 = u_input.b.x;
    var var_2 = vec4<bool>(!(all(vec4<bool>(true, false, false, false)) && true), true, all(vec4<bool>(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(false, false, false)) & (-1819i < u_input.b.x))), any(!vec4<bool>(true, any(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, false)), true)));
    var var_3 = ~_wgslsmith_mult_u32(4294967295u, 1u);
    var var_4 = ~(~u_input.a.x);
    return vec2<bool>(min(~firstLeadingBit(-2147483647i), ~u_input.b.x) > -1i, var_2.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = ~_wgslsmith_add_u32(arg_0.a.b.b.x, _wgslsmith_div_u32(u_input.a.x, arg_0.a.a.b.x));
    var var_1 = arg_0.a.a;
    let var_2 = ~(min(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.a.d.x, 30030i), vec2<i32>(9456i, 3832i)), vec2<i32>(min(arg_0.a.b.d.x, arg_0.a.b.d.x), 16507i)) << (_wgslsmith_div_vec2_u32(arg_0.a.a.b.wx, ~(~vec2<u32>(var_1.b.x, u_input.a.x))) % vec2<u32>(32u)));
    let var_3 = select(select(!select(!vec4<bool>(false, arg_0.a.e.x, arg_0.a.e.x, true), !vec4<bool>(arg_0.a.e.x, false, true, false), select(vec4<bool>(arg_0.a.e.x, true, arg_0.a.e.x, arg_0.a.e.x), vec4<bool>(true, arg_0.a.e.x, true, arg_0.a.e.x), vec4<bool>(true, arg_0.a.e.x, arg_0.a.e.x, true))), vec4<bool>(any(select(vec3<bool>(arg_0.a.e.x, arg_0.a.e.x, false), vec3<bool>(false, arg_0.a.e.x, arg_0.a.e.x), vec3<bool>(arg_0.a.e.x, arg_0.a.e.x, false))), true & !arg_0.a.e.x, any(select(vec3<bool>(false, arg_0.a.e.x, arg_0.a.e.x), vec3<bool>(false, arg_0.a.e.x, arg_0.a.e.x), arg_0.a.e.x)), all(vec3<bool>(true, arg_0.a.e.x, false))), vec4<bool>(any(select(vec2<bool>(arg_0.a.e.x, arg_0.a.e.x), arg_0.a.e, vec2<bool>(true, true))), true, !all(arg_0.a.e), arg_0.a.e.x)), vec4<bool>(false, arg_0.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -185f)) >= var_1.c.b, arg_0.a.e.x), !(arg_0.a.e.x && ((arg_0.a.e.x == arg_0.a.e.x) && arg_0.a.e.x)));
    var var_4 = true;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.x, var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.c.b, var_1.a, arg_0.a.a.c.b) + var_1.e.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, 772f, var_1.a))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_1.e.a, vec3<f32>(425f, arg_1.x, arg_1.x)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, u_input.a.x < 1u, true)), select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false), true)), vec3<bool>(false, all(vec2<bool>(true, false)), all(vec3<bool>(true, true, true))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(Struct_3(Struct_2(-395f, vec4<u32>(1u, 0u, 0u, 0u), Struct_1(vec3<f32>(-113f, 1010f, 2011f), -201f), vec3<i32>(u_input.b.x, 56617i, u_input.b.x), Struct_1(vec3<f32>(217f, -1008f, 2154f), 1198f)), Struct_2(-1000f, vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), Struct_1(vec3<f32>(361f, -708f, 1527f), -1106f), vec3<i32>(u_input.b.x, 44820i, u_input.b.x), Struct_1(vec3<f32>(-518f, 1372f, -903f), 458f)), _wgslsmith_f_op_f32(trunc(2062f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-563f, -1000f) + vec2<f32>(-1997f, 381f)), func_3(vec2<f32>(-575f, 890f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-181f, -317f)) - vec2<f32>(-261f, 263f)))))), 272f);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-924f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-267f, 313f)))));
    let var_1 = func_2();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) + _wgslsmith_f_op_f32(trunc(var_0.x))), 1740f) + vec2<f32>(-240f, var_1.a.x)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -600f)) - -133f)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 31324u, u_input.a.x, u_input.a.x) << (vec4<u32>(0u, u_input.a.x, u_input.a.x, 17665u) % vec4<u32>(32u)), vec4<u32>(3080u, u_input.a.x, u_input.a.x, 71753u) << (vec4<u32>(u_input.a.x, u_input.a.x, 47434u, u_input.a.x) % vec4<u32>(32u)), max(abs(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 60289u, u_input.a.x)))), Struct_1(var_1.a, -1000f), vec3<i32>(-2147483647i, u_input.b.x, -(~u_input.b.x)), func_2()), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1053f)) + _wgslsmith_f_op_f32(step(-446f, var_0.x)))), ~vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_sub_u32(u_input.a.x, 7882u), ~64411u), func_2(), u_input.b, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(205f + _wgslsmith_f_op_f32(392f * var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(712f + var_1.b)))), var_1.a.xx, func_3(_wgslsmith_f_op_vec2_f32(-var_1.a.yx)));
    var_0 = _wgslsmith_f_op_vec2_f32(step(var_2.b.e.a.zx, var_1.a.yx));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1());
    var var_1 = Struct_2(-181f, abs(~(~_wgslsmith_sub_vec4_u32(var_0.a.b.b, vec4<u32>(59059u, 41873u, var_0.a.a.b.x, var_0.a.a.b.x)))), var_0.a.a.e, ~firstLeadingBit(vec3<i32>(-17054i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(1i, u_input.b.x, 1i)), u_input.b.x ^ -2147483647i)), var_0.a.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, countOneBits(reverseBits(0i))), ~(~0i), max(reverseBits(-6278i), -2783i << (u_input.a.x % 32u))), max(var_1.b.wx, _wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, reverseBits(var_1.b.x)), ~vec2<u32>(51503u, var_1.b.x) & ~var_1.b.zy, ~vec2<u32>(31414u, 4294967295u))));
}

