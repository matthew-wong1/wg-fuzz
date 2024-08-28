struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    let var_0 = all(arg_1);
    let var_1 = ~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 1u), ~u_input.b.wyz));
    let var_2 = 15532i;
    var var_3 = var_2;
    var var_4 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(927f, 1208f, -1040f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(603f, 1222f, 1026f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-502f, -1543f, 374f), vec3<f32>(-153f, -1095f, 793f), arg_1.x))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(1449f)), _wgslsmith_f_op_f32(select(955f, 249f, false)), -578f))), -2147483647i, ~(-_wgslsmith_dot_vec2_i32(u_input.c, u_input.c))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1531f + 404f), -2252f)), _wgslsmith_f_op_f32(-1771f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + 103f), -1974f, _wgslsmith_f_op_f32(trunc(-233f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1018f, -298f, 420f))), vec3<f32>(1f, 1f, 1f))), -16581i, -_wgslsmith_dot_vec2_i32(~u_input.e, u_input.c)));
    return ~0u;
}

fn func_3(arg_0: i32) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-846f, 105f, 723f), vec3<f32>(1544f, -798f, 610f)) + vec3<f32>(-790f, 478f, 275f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 897f, 909f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-166f, -723f, 799f), vec3<f32>(413f, -228f, -554f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1973f, -712f, -283f))), -_wgslsmith_add_i32(arg_0, u_input.e.x) << (u_input.a % 32u), -abs(u_input.c.x)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-164f - 1000f), 207f, -618f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, 312f, 213f)))), u_input.c.x, 2147483647i));
    var var_1 = u_input.d;
    var var_2 = Struct_3(Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(1496f, var_0.a.a.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(abs(var_0.b.b.x))), var_0.a.b, _wgslsmith_sub_i32(-2642i, arg_0), var_0.a.c), Struct_1(vec3<f32>(-207f, -201f, -887f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, -3261f, var_0.a.a.x)) + var_0.a.a), _wgslsmith_sub_i32(~0i, 21893i), u_input.e.x)), Struct_2(var_0.a, var_0.a));
    var var_3 = vec3<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) & true, !(!(arg_0 >= 1i)), true);
    let var_4 = ~1u | (u_input.d & 4294967295u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, var_2.a.a.a.x, _wgslsmith_f_op_f32(round(-842f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.b.b.x, var_0.b.b.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = vec4<u32>(0u, u_input.d, ~u_input.a, max(u_input.a, u_input.a));
    var var_1 = _wgslsmith_sub_vec2_u32(~var_0.yx, abs(vec2<u32>(~_wgslsmith_clamp_u32(4294967295u, 31224u, u_input.d), func_2(arg_0.x, select(vec3<bool>(false, arg_0.x, false), vec3<bool>(true, true, arg_0.x), true), u_input.e.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1039f - -382f))), _wgslsmith_f_op_f32(trunc(553f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(-2147483647i)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-670f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, -1281f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-593f, 200f)))), -1000f))));
    var var_1 = ~(~_wgslsmith_add_u32(~101709u, ~u_input.b.x)) != u_input.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, var_0, 1334f), vec3<f32>(var_0, 734f, -691f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 118f) - vec3<f32>(var_0, var_0, 829f)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), -471f, vec2<f32>(-587f, var_0), var_0)), _wgslsmith_f_op_f32(trunc(1000f)), -721f), vec3<bool>(true, true, any(vec3<bool>(true, false, true))))), vec3<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 - -388f)), -1610f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2136f)), _wgslsmith_f_op_f32(var_0 - var_0))), 1i, -select(-55077i, _wgslsmith_clamp_i32(u_input.e.x, 1i, u_input.e.x), true)), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -457f, 929f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(475f, var_0, 695f) - vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, -124f, -2578f), vec3<f32>(620f, var_0, 1599f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + vec3<f32>(-1166f, -1095f, 460f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -958f) * vec3<f32>(-1219f, -643f, 410f)))), select(u_input.c.x, abs(u_input.e.x) ^ (0i >> (u_input.a % 32u)), true), ~(~u_input.e.x << (~u_input.a % 32u))));
    var_1 = true != !(!(!all(vec3<bool>(true, false, false))));
    let var_3 = ~countOneBits(u_input.e);
    let var_4 = vec4<bool>(select(!(!all(vec3<bool>(true, false, true))), true, all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), all(vec3<bool>(false, true, ~u_input.a > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 4294967295u), vec3<u32>(3093u, u_input.a, u_input.a)))), all(select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), -515f >= var_0), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), ~u_input.e.x < firstLeadingBit(u_input.c.x))), all(!vec4<bool>(true, true, var_0 <= -398f, true)));
    var var_5 = vec2<bool>(var_4.x, !(!(!all(var_4.xw))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 0u, 35674u, 4974u))), ~vec3<u32>(u_input.b.x, 58694u, u_input.b.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, abs(u_input.a), abs(u_input.d)), select(u_input.b.yyx, firstLeadingBit(vec3<u32>(0u, u_input.a, 31202u)), var_4.x)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, 510u, u_input.a)), firstLeadingBit(u_input.b.zzx << (vec3<u32>(21407u, 33205u, 94037u) % vec3<u32>(32u))))), -countOneBits(firstTrailingBit(max(vec3<i32>(u_input.c.x, 2328i, -42040i), vec3<i32>(1i, var_3.x, var_2.b.c)))), ~(-92769i), _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(select(var_2.a.d, 0i, false)), u_input.e.x, ~(~u_input.c.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_3.x, var_3.x, var_3.x), vec3<i32>(var_3.x, var_3.x, var_3.x))), vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(var_3.x), min(var_2.b.d, var_3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, -2147483647i), u_input.e)), i32(-1i) * -1i, var_3.x, -2147483647i << (~u_input.a % 32u))));
}

