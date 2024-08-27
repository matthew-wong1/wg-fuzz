struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    return u_input.d;
}

fn func_3() -> vec2<i32> {
    var var_0 = ~(~reverseBits(countOneBits(countOneBits(vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_1 = 0u;
    var var_2 = true;
    let var_3 = ~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, var_1, 35809u, 3174u), vec4<u32>(var_1, 25491u, var_1, var_0.x)) & ~vec4<u32>(0u, 1u, 75053u, var_0.x))) ^ ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(40155u, 41562u, 50994u, var_0.x), vec4<u32>(284u, 4294967295u, var_0.x, 0u))));
    var_2 = all(vec2<bool>(false, true));
    return ~(~u_input.e.xx);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = false;
    let var_1 = -1010f;
    global0 = firstTrailingBit(-_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2.b.a | vec3<i32>(global0.x, global0.x, -44528i), ~vec3<i32>(-2147483647i, u_input.e.x, arg_2.a.a.x)), u_input.e.zzy));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 624f)))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, _wgslsmith_f_op_f32(2262f + -1314f), _wgslsmith_f_op_f32(var_1 * 2731f), var_1))), ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.a), ~u_input.d)));
    var var_3 = 1i;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f))))));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_vec2_u32(~u_input.a, _wgslsmith_div_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, 50512u)) >> ((u_input.c << (max(min(u_input.a, vec2<u32>(0u, 4294967295u)), u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = arg_0;
    var var_2 = !any(vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), (arg_1.x | arg_1.x) >= 1i, any(vec3<bool>(false, true, false))));
    global0 = select(vec3<i32>(~abs(max(28265i, global0.x)), 0i, i32(-1i) * -max(-11i, u_input.e.x)), reverseBits(reverseBits(abs(u_input.b.yyx))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !all(vec4<bool>(false, false, false, false))));
    var var_3 = 30693u;
    return arg_1.yyz | abs(-firstLeadingBit(firstLeadingBit(vec3<i32>(20299i, -29685i, global0.x))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = u_input.b.yzy << (vec3<u32>(arg_0.x, u_input.d, 73154u) % vec3<u32>(32u));
    global0 = func_5(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec3<i32>(var_0.x, u_input.b.x, var_0.x), _wgslsmith_mult_u32(arg_2, u_input.a.x), -vec2<i32>(global0.x, global0.x), arg_0.x), Struct_1(firstTrailingBit(vec3<i32>(global0.x, var_0.x, u_input.b.x)), ~5548u, -vec2<i32>(1i, global0.x), ~u_input.d), Struct_1(vec3<i32>(57699i, -1i, 1i) & vec3<i32>(var_0.x, -2147483647i, var_0.x), 4294967295u, vec2<i32>(var_0.x, -1i), ~u_input.c.x), Struct_1(_wgslsmith_div_vec3_i32(u_input.e.yxw, u_input.b.ywy), max(26801u, arg_2), func_3(), _wgslsmith_dot_vec2_u32(u_input.c, arg_0.yz)), Struct_1(_wgslsmith_add_vec3_i32(u_input.b.xzw, vec3<i32>(var_0.x, u_input.e.x, 55546i)), 7680u, global0.zx, arg_2 & arg_0.x)), global0.xy, Struct_2(Struct_1(-u_input.e.yww, abs(arg_2), global0.zx ^ vec2<i32>(u_input.e.x, -69834i), 4294967295u), Struct_1(-u_input.e.zwz, arg_0.x << (1u % 32u), u_input.b.xy, ~arg_0.x), Struct_1(max(vec3<i32>(var_0.x, -2147483647i, -77583i), vec3<i32>(global0.x, global0.x, -2147483647i)), 1u, min(vec2<i32>(-1i, 58674i), vec2<i32>(global0.x, var_0.x)), ~1u), Struct_1(_wgslsmith_mult_vec3_i32(u_input.e.zww, u_input.b.yyy), arg_2, var_0.yx, arg_2), Struct_1(u_input.b.xxw, reverseBits(u_input.c.x), reverseBits(vec2<i32>(u_input.b.x, global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_0.x, 56555u, u_input.d), vec4<u32>(18908u, 10855u, arg_0.x, arg_2)))), arg_0.x)), ~vec4<i32>(-2147483647i, var_0.x, var_0.x, _wgslsmith_dot_vec3_i32(u_input.b.yww, ~vec3<i32>(0i, u_input.b.x, 1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -383f, -2864f))) * arg_1));
    global0 = vec3<i32>(~var_0.x, 21971i, 1i);
    var var_1 = (global0.x <= -1316i) | !any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1983f + arg_1.x))), _wgslsmith_f_op_f32(-1273f - arg_1.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)))))));
    return Struct_1(vec3<i32>(-1i, 19274i, global0.x >> (_wgslsmith_div_u32(firstTrailingBit(arg_2), _wgslsmith_mod_u32(arg_0.x, 11205u)) % 32u)), ~_wgslsmith_sub_u32(arg_2, _wgslsmith_dot_vec2_u32(max(vec2<u32>(16279u, arg_0.x), arg_0.yz), ~u_input.c)), u_input.b.wy, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_2(vec3<u32>(u_input.a.x, func_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1814f, 422f, -2074f) * vec4<f32>(505f, 1000f, 557f, -919f)), Struct_2(Struct_1(u_input.b.xxw, 1u, vec2<i32>(global0.x, 36223i), u_input.d), Struct_1(u_input.b.yxy, 70984u, vec2<i32>(0i, 1i), u_input.a.x), Struct_1(u_input.e.wxz, 60125u, u_input.b.wx, u_input.c.x), Struct_1(u_input.e.yzx, u_input.d, vec2<i32>(global0.x, 27920i), u_input.d), Struct_1(u_input.b.wyx, 1u, vec2<i32>(13185i, -2147483647i), 14929u)), u_input.b.zzz >> (vec3<u32>(u_input.d, u_input.c.x, u_input.d) % vec3<u32>(32u))), abs(~0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1338f, -781f, -1000f, -1743f), vec4<f32>(858f, 1000f, -765f, 997f), false)), vec4<f32>(-2184f, 576f, -302f, 1508f), vec4<bool>(true, true, true, true)))), 1u), func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(func_2(vec3<u32>(u_input.d, 0u, u_input.c.x), vec4<f32>(-1935f, 378f, 1000f, -1225f), u_input.a.x).b, ~0u, ~0u), select(vec3<u32>(4294967295u, 30581u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 39959u, 1u), vec3<u32>(u_input.a.x, 96342u, 0u)), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1000f))), _wgslsmith_f_op_f32(min(-1985f, _wgslsmith_f_op_f32(1489f - -858f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(542f))), _wgslsmith_f_op_f32(-267f - -1192f)), ~u_input.a.x), func_2(select(vec3<u32>(firstLeadingBit(13235u), ~u_input.c.x, 11070u), ~(~vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -151f, -1511f, 871f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1770f, 1124f, -988f, 906f)))))), 1u), Struct_1(_wgslsmith_mult_vec3_i32(-u_input.b.zww << (~vec3<u32>(1u, 0u, u_input.d) % vec3<u32>(32u)), u_input.e.yyz), 56462u, global0.zy, u_input.c.x), func_2(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.c.x, u_input.a.x, u_input.d), _wgslsmith_sub_vec3_u32(vec3<u32>(28042u, 62021u, 1u), vec3<u32>(11048u, 4294967295u, u_input.d)), false), abs(vec3<u32>(29746u, 4294967295u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-395f, 1398f, 1334f, -514f), vec4<f32>(107f, 538f, -454f, -594f)))), _wgslsmith_clamp_u32(45643u >> (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 4294967295u) % 32u), 31789u, 1u)));
    global0 = _wgslsmith_add_vec3_i32(-vec3<i32>(var_0.c.a.x, u_input.b.x, i32(-1i) * -21289i), vec3<i32>(2147483647i & firstTrailingBit(-42180i), _wgslsmith_mult_i32(global0.x, u_input.b.x) ^ global0.x, 75448i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1725f, 1000f) - vec2<f32>(1757f, 843f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-234f, -916f)) * vec2<f32>(737f, 1790f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(631f, -268f) * vec2<f32>(-1418f, 513f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(492f, 1000f), vec2<f32>(-1000f, -1000f)))))), true)));
    var var_2 = _wgslsmith_mult_u32(44854u, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, 14685u >> (var_0.d.b % 32u)), countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 46194u), u_input.d & u_input.a.x))));
    var_0 = Struct_2(var_0.e, func_2(vec3<u32>(1u, func_1(vec4<bool>(false, true, true, true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1806f, -434f, 135f, -899f))), Struct_2(var_0.c, var_0.c, var_0.c, var_0.b, var_0.a), ~var_0.d.a), _wgslsmith_dot_vec2_u32(min(u_input.c, u_input.a), ~u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), -514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(414f)) - var_1.x), 339f), max(abs(_wgslsmith_dot_vec2_u32(u_input.a, u_input.c)), firstLeadingBit(func_1(vec4<bool>(false, true, true, true), vec4<f32>(-2015f, var_1.x, 700f, 642f), Struct_2(Struct_1(var_0.d.a, 38845u, var_0.b.a.zz, var_0.b.b), Struct_1(u_input.b.yxz, var_0.d.b, u_input.e.zy, var_0.c.b), Struct_1(vec3<i32>(16487i, -1i, -11160i), 29355u, vec2<i32>(u_input.e.x, global0.x), u_input.a.x), var_0.e, Struct_1(vec3<i32>(32995i, 1i, -2147483647i), u_input.c.x, vec2<i32>(var_0.e.a.x, 35525i), 44935u)), vec3<i32>(-2147483647i, 19693i, var_0.d.c.x))))), Struct_1(vec3<i32>(-1i) * -vec3<i32>(1i, 35167i, global0.x), var_0.e.d, -u_input.b.yw, func_2(countOneBits(vec3<u32>(0u, 31005u, 1u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, 1000f, -653f), vec4<f32>(-820f, -799f, var_1.x, var_1.x))))), 450u).d), func_2(~abs(select(vec3<u32>(4294967295u, var_0.e.b, 2843u), vec3<u32>(0u, u_input.d, 52558u), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -416f, -1000f, var_1.x) + vec4<f32>(-1000f, -1479f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-226f, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, -260f, var_1.x, -1093f)))), 1u >> (var_0.e.d % 32u)), Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-var_0.b.a, -vec3<i32>(u_input.b.x, global0.x, 10527i)), u_input.b.xxw), abs(~1u), u_input.e.ww, ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x | 11024u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, var_1.x, var_1.x, -876f))))), var_0.d.a, 22134i, vec2<i32>(_wgslsmith_sub_i32(func_3().x, func_2(vec3<u32>(60763u, 1u, var_0.b.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1887f, -390f) - vec4<f32>(var_1.x, -198f, 551f, var_1.x)), min(4860u, 26915u)).c.x), u_input.b.x));
}

