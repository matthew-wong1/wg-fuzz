struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-47443i, -5071i);

var<private> global1: vec3<u32>;

var<private> global2: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-412f - 436f), _wgslsmith_f_op_f32(sign(328f)))), 180f, -460f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(187f, 743f)), -287f, _wgslsmith_f_op_f32(select(1263f, 1000f, true)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-296f, 2009f, 268f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1592f, 1277f, 200f), vec3<f32>(1201f, -366f, 1659f), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-525f, -1208f, -1646f))))))));
    var var_1 = ~vec2<u32>(~max(_wgslsmith_div_u32(global1.x, 36988u), 1u), ~global1.x);
    let var_2 = vec4<u32>(0u, 0u, firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1233u, global1.x, var_1.x, 4294967295u), vec4<u32>(24501u, global1.x, 52193u, 18102u)), vec4<u32>(global1.x, 44825u, var_1.x, 1u) & vec4<u32>(var_1.x, u_input.a, global1.x, 33917u))), 69089u) & (~vec4<u32>(28782u, ~global1.x, 15049u, ~0u) | _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(global1.x, 1u, u_input.a, 1u)) & abs(vec4<u32>(u_input.a, var_1.x, 3275u, 91944u)), countOneBits(countOneBits(vec4<u32>(0u, u_input.a, global1.x, u_input.a)))));
    var var_3 = Struct_2(4294967295u, countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), select(global1.yy, var_2.yx, u_input.a <= var_1.x), vec2<u32>(~var_2.x, 29964u ^ var_1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(800f, _wgslsmith_f_op_f32(1334f - -1991f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 116f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1149f, 1615f) + vec4<f32>(798f, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(-var_0.x)), max(_wgslsmith_div_i32((i32(-1i) * -27338i) | reverseBits(global0.x), -1i), min(global0.x, 2147483647i)), Struct_1(var_0.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, -1614f, -1668f, 1212f) - vec4<f32>(1000f, 260f, 679f, -1963f)))), var_0.x));
    var var_4 = Struct_4(Struct_3(Struct_1(var_0.xz, _wgslsmith_f_op_vec4_f32(var_3.c.b * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(191f, var_0.x, var_3.e.a.x, -1884f)))), var_0.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(2983u, u_input.a, global1.x), _wgslsmith_sub_vec3_u32(select(vec3<u32>(73401u, 40685u, 4294967295u), vec3<u32>(global1.x, var_2.x, 4294967295u), false), vec3<u32>(0u, 0u, 0u)))), vec2<i32>(_wgslsmith_clamp_i32(~(~2147483647i), (i32(-1i) * -3186i) | (-2147483647i ^ var_3.d), 2147483647i), var_3.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 189f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -1281f))), 1000f)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_4.c.x, 512f)))) - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))) - var_4.c.xz);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = select(select(~1i, _wgslsmith_mult_i32(-23057i, global0.x ^ -1i), ~u_input.a == _wgslsmith_sub_u32(88073u, u_input.a)) & 2147483647i, -39292i, !all(vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)), true)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(-arg_1.wx), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(657f, -1336f, -234f, -799f)), _wgslsmith_div_vec4_f32(arg_1, arg_1))))), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1182f)))))), vec3<u32>(4294967295u, 1u, 39910u));
    global1 = vec3<u32>(1u, 1u, u_input.a);
    let var_2 = false;
    var var_3 = vec4<f32>(var_1.a.c, -1401f, arg_2.x, arg_2.x);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(26634u, global1.x, global1.x, u_input.a), vec4<u32>(47601u, 0u, global1.x, global1.x))), abs(vec4<u32>(max(67227u, u_input.a), _wgslsmith_sub_u32(35225u, var_1.b.x), ~45193u, ~70017u))), ~countOneBits(select(reverseBits(vec4<u32>(var_1.b.x, 10231u, u_input.a, 11619u)), reverseBits(vec4<u32>(4814u, global1.x, 14378u, u_input.a)), var_2)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<f32> {
    global1 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(18420u, 1u, 1u), ~abs(reverseBits(vec3<u32>(1u, u_input.a, 46164u))));
    var var_0 = Struct_2(~(~abs(func_2(arg_1.e.a, arg_1.c.b, arg_1.c.a))), firstTrailingBit(global1.yy), Struct_1(vec2<f32>(869f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f - arg_1.e.b.x) * _wgslsmith_f_op_f32(arg_1.e.a.x - 370f))), _wgslsmith_f_op_vec4_f32(sign(arg_1.c.b)), arg_1.e.c), firstTrailingBit(_wgslsmith_clamp_i32(~(-19187i), _wgslsmith_dot_vec2_i32(-vec2<i32>(18659i, arg_1.d), max(vec2<i32>(1i, -9718i), vec2<i32>(global0.x, arg_1.d))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.x, -88002i), vec3<i32>(-1i, -2147483647i, global0.x)), 1i))), arg_1.e);
    let var_1 = true;
    let var_2 = var_0.c;
    let var_3 = false;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-848f, var_0.c.b.x, -591f) * var_2.b.zxz))) + arg_1.e.b.yxw) * var_0.e.b.wzy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1653f, -126f, -859f))), _wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(false, true, true, false), Struct_2(global1.x, vec2<u32>(global1.x, 71465u), Struct_1(vec2<f32>(270f, -958f), vec4<f32>(455f, -275f, -2876f, 1381f), -336f), global0.x, Struct_1(vec2<f32>(1322f, -378f), vec4<f32>(-907f, 778f, -631f, 174f), -386f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(min(-146f, -612f)), -344f, _wgslsmith_f_op_f32(-1557f * -579f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1212f, -938f, 202f), vec3<f32>(215f, -1731f, 421f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-114f, 1550f, 203f), vec3<f32>(1636f, 563f, 988f))))))));
    var var_1 = _wgslsmith_mod_i32(26970i, _wgslsmith_div_i32(-global0.x, _wgslsmith_dot_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -9243i, 2147483647i, 2147483647i), vec4<i32>(global0.x, -1i, global0.x, global0.x)), vec4<i32>(global0.x, global0.x, 17422i, 0i)), -max(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, global0.x, -31260i, global0.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.xy, var_0.zz))), _wgslsmith_f_op_vec2_f32(trunc(var_0.yx)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, 1226f))), -966f, _wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-698f, var_0.x)) - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1000f * 1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -1i, 2147483647i, ~0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -56499i, 0i, global0.x) >> (vec4<u32>(u_input.a, 24874u, u_input.a, global1.x) % vec4<u32>(32u)), -vec4<i32>(-20468i, -1i, -2147483647i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, global0.x, 1i, 0i), vec4<i32>(global0.x, global0.x, -1i, global0.x)))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-22334i, global0.x, 11975i, -43302i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, 10852i), vec4<i32>(21113i, 55692i, 0i, 32207i), vec4<i32>(-49395i, 50128i, global0.x, global0.x))))));
}

