struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2943i, -1i, 1i, -1i), arg_1.c.a.b), u_input.a);
    var_0 = ~u_input.a;
    var_0 = min(max(u_input.a, max(-1362i, abs(arg_0.a.x)) >> (arg_2 % 32u)), _wgslsmith_dot_vec4_i32(abs(arg_0.a), ~(~(-vec4<i32>(0i, u_input.a, 1i, arg_1.a.x)))));
    var_0 = i32(-1i) * -2147483647i;
    let var_1 = arg_1;
    return arg_1.c.e;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>) -> bool {
    var var_0 = Struct_1(u_input.a < (i32(-1i) * -50369i), arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2813f, -157f), vec2<f32>(-1485f, 110f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-151f, -708f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1905f, -945f), vec2<f32>(946f, 200f))))));
    var_0 = Struct_1(var_0.a, vec4<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, arg_2.x), vec3<i32>(-2147483647i, arg_2.x, -29376i))), ~(~_wgslsmith_mult_i32(-6391i, 0i)), func_3(Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(14242i, -54312i, 0i, u_input.a), vec4<i32>(-26030i, u_input.a, u_input.a, arg_2.x))), Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, u_input.a), var_0.b.xw), firstLeadingBit(vec4<u32>(1u, 76555u, 7058u, arg_1)), Struct_2(Struct_1(var_0.a, arg_2, vec2<f32>(var_0.c.x, var_0.c.x)), vec4<u32>(1u, arg_1, arg_0, 0u), var_0.b.x, vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), 25227i)), ~(~arg_1), vec3<bool>(var_0.a, select(var_0.a, var_0.a, true), select(var_0.a, var_0.a, true))), -39044i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-790f, _wgslsmith_div_f32(-611f, var_0.c.x)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(1064f)), -201f))));
    var var_1 = 29931i;
    var var_2 = vec2<bool>(!var_0.a, (~_wgslsmith_div_u32(4294967295u, arg_0) << (~countOneBits(35079u) % 32u)) >= ~arg_0);
    var_2 = select(!select(select(vec2<bool>(var_2.x, var_2.x), !vec2<bool>(true, var_2.x), false), !vec2<bool>(var_2.x, var_2.x), true), !(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_2.x), vec2<bool>(var_0.a, var_0.a))), (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 0u) & vec2<u32>(41912u, 30340u), vec2<u32>(arg_0, 4294967295u)) << (885u % 32u)) == _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u) >> (min(vec2<u32>(arg_1, arg_0), vec2<u32>(15532u, 0u)) % vec2<u32>(32u)), countOneBits(vec2<u32>(0u, arg_0) ^ vec2<u32>(arg_0, 3044u))));
    return false;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = vec3<bool>(true, !arg_1.x, all(!vec3<bool>(false, arg_0.x, arg_0.x)) && false);
    var_0 = select(vec3<bool>(true, true, false), arg_0.zwx, select(!vec3<bool>(true, var_0.x, true), select(vec3<bool>(arg_0.x, var_0.x, var_0.x), vec3<bool>(all(vec2<bool>(false, arg_0.x)), var_0.x, !arg_1.x), func_2(1u, 1u, vec4<i32>(u_input.a, u_input.a, -1i, 14009i)) || var_0.x), arg_0.zwx));
    var_0 = arg_0.xzy;
    var_0 = vec3<bool>(!(u_input.a > u_input.a), arg_1.x, false);
    var_0 = !vec3<bool>(all(select(arg_0.xx, select(arg_0.zy, vec2<bool>(false, var_0.x), var_0.yx), true)), arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2123f)))) != -275f);
    return Struct_4(select(vec2<i32>(countOneBits(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), -1i), select(vec2<i32>(-u_input.a, -37550i), vec2<i32>(~u_input.a, 23832i), !vec2<bool>(arg_0.x, arg_0.x)), select(var_0.yy, select(select(vec2<bool>(arg_0.x, arg_1.x), arg_0.zw, true), var_0.xz, true), arg_1.zz)), ~_wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(0u), 0u, 0u, _wgslsmith_mod_u32(80242u, 55266u)), vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(Struct_1(arg_1.x, _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a, -1i, 16973i, -6140i)), vec4<i32>(33530i, u_input.a, u_input.a, 0i) | vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 243f))), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 29970u)), select(vec2<u32>(0u, 4713u), vec2<u32>(27613u, 28691u), arg_1.zx)), 24167u, ~(~0u), ~(~0u)), u_input.a >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(69515u, 6505u), vec2<u32>(0u, 1u)) % 32u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, 1179f, 130f, -784f)))), -2497i ^ _wgslsmith_div_i32(u_input.a ^ u_input.a, u_input.a << (23465u % 32u))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(arg_0.c.a.a, -vec4<i32>(12974i, u_input.a, u_input.a, -1i) ^ _wgslsmith_sub_vec4_i32(abs(vec4<i32>(26510i, arg_0.a.x, u_input.a, arg_0.c.c)), select(vec4<i32>(arg_0.c.e, u_input.a, u_input.a, 20865i), arg_0.c.a.b, arg_0.c.a.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.d.x, 844f) + vec2<f32>(735f, arg_0.c.a.c.x))))), ~vec4<u32>(~arg_2, 47593u, arg_0.c.b.x, ~1u), 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(448f, _wgslsmith_f_op_f32(-arg_0.c.a.c.x)), arg_0.c.d.x, arg_0.c.a.c.x, arg_0.c.a.c.x)), _wgslsmith_mult_i32(arg_0.a.x, arg_0.a.x));
    return Struct_3(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_add_vec4_i32(arg_0.c.a.b, var_0.a.b)), arg_0.c.a.b) << (abs(vec4<u32>(38693u, var_0.b.x, firstLeadingBit(73193u), 45628u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec4<bool>(all(vec2<bool>(true, true)), false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_mult_u32(61839u, ~(~21701u)));
    let var_1 = -(~(_wgslsmith_sub_vec3_i32(var_0.a.yxw, var_0.a.wzy) ^ var_0.a.zyx));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1991f, -1000f, 2134f, -1132f), func_1(vec4<bool>(false, false, true, false), vec3<bool>(false, true, true)).c.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-781f, -219f, -926f, 901f) - vec4<f32>(-440f, -1498f, -1000f, -1375f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f * -138f) + 1f), _wgslsmith_f_op_f32(936f * _wgslsmith_f_op_f32(f32(-1f) * -353f)), _wgslsmith_f_op_f32(-func_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, false)).c.a.c.x), 256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, 213f, false)))) * 637f) - -1049f), -select(-(i32(-1i) * -35001i), max(~var_1.x, _wgslsmith_clamp_i32(-2147483647i, var_0.a.x, u_input.a)), false), var_1.yy);
}

