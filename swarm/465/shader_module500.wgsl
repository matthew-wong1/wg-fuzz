struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<i32>(1i, -11608i, 10054i), vec2<f32>(-1000f, -431f), vec2<bool>(true, true), vec4<u32>(0u, 1u, 12179u, 15109u), -122f), Struct_1(vec3<i32>(1i, 1i, 18288i), vec2<f32>(595f, -2363f), vec2<bool>(true, true), vec4<u32>(27518u, 0u, 43231u, 4294967295u), -806f), Struct_1(vec3<i32>(-1i, -733i, 0i), vec2<f32>(1582f, 756f), vec2<bool>(true, true), vec4<u32>(39900u, 63489u, 0u, 58913u), 1428f), Struct_1(vec3<i32>(2147483647i, 14434i, 2147483647i), vec2<f32>(-1000f, -113f), vec2<bool>(false, false), vec4<u32>(9535u, 39201u, 0u, 25854u), -3119f), Struct_1(vec3<i32>(i32(-2147483648), -21461i, 11116i), vec2<f32>(1252f, -265f), vec2<bool>(true, true), vec4<u32>(35260u, 451u, 1u, 38385u), -872f), Struct_1(vec3<i32>(1i, 1i, -3197i), vec2<f32>(1705f, -449f), vec2<bool>(true, false), vec4<u32>(1u, 0u, 21067u, 16066u), -1242f), Struct_1(vec3<i32>(26449i, -47544i, -39336i), vec2<f32>(-1359f, 2072f), vec2<bool>(true, false), vec4<u32>(4294967295u, 0u, 25291u, 1u), -229f), Struct_1(vec3<i32>(26732i, -35227i, 0i), vec2<f32>(-203f, 602f), vec2<bool>(true, true), vec4<u32>(11062u, 5032u, 1u, 22378u), -1000f), Struct_1(vec3<i32>(-25476i, i32(-2147483648), 61361i), vec2<f32>(428f, 565f), vec2<bool>(true, true), vec4<u32>(78078u, 11034u, 1u, 15439u), -1411f), Struct_1(vec3<i32>(i32(-2147483648), -7827i, 2147483647i), vec2<f32>(212f, -128f), vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 1643u, 71866u), -1118f), Struct_1(vec3<i32>(-1i, 1i, -19766i), vec2<f32>(-738f, 1276f), vec2<bool>(true, false), vec4<u32>(31759u, 37908u, 42066u, 31374u), 565f), Struct_1(vec3<i32>(-56803i, -1i, 1i), vec2<f32>(1841f, -351f), vec2<bool>(false, true), vec4<u32>(28957u, 78405u, 1u, 69350u), -1112f), Struct_1(vec3<i32>(i32(-2147483648), -66590i, 0i), vec2<f32>(227f, -1000f), vec2<bool>(false, false), vec4<u32>(23208u, 1u, 6894u, 1u), 1992f), Struct_1(vec3<i32>(-1i, -14895i, 16085i), vec2<f32>(-1000f, -1286f), vec2<bool>(true, false), vec4<u32>(36690u, 0u, 18118u, 0u), 850f), Struct_1(vec3<i32>(-1i, -91441i, 0i), vec2<f32>(-1381f, 156f), vec2<bool>(false, true), vec4<u32>(1u, 30855u, 0u, 51369u), -618f), Struct_1(vec3<i32>(46626i, i32(-2147483648), i32(-2147483648)), vec2<f32>(577f, -1222f), vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 1u, 0u), 1221f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    let var_0 = select(!vec3<bool>(all(!vec4<bool>(true, true, arg_0.c.x, false)), arg_0.c.x, select(any(arg_1.xzw), global0.x <= arg_0.e, arg_0.a.x == -1i)), select(arg_1.yzx, vec3<bool>(true, true, true), arg_1.xzz), arg_1.zwz);
    var var_1 = arg_0.d.xx;
    var var_2 = false;
    global1 = array<Struct_1, 17>();
    var_2 = var_0.x;
    return max(6911i, ~u_input.a.x << (var_1.x % 32u)) < arg_0.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    let var_1 = 444f;
    global2 = array<Struct_1, 16>();
    var var_2 = _wgslsmith_f_op_f32(step(1436f, var_1)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 541f)));
    var var_3 = Struct_1(~u_input.a.yyz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(-global0.zz))), select(vec2<bool>(var_1 != _wgslsmith_f_op_f32(global0.x - -347f), !func_3(global1[_wgslsmith_index_u32(43729u, 17u)], vec4<bool>(false, false, true, false))), vec2<bool>(_wgslsmith_div_f32(1000f, global0.x) >= global0.x, false), vec2<bool>(false, true)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(15309u, 4294967295u, 19695u, 1u), select(vec4<u32>(37148u, 64560u, 5497u, 1u), vec4<u32>(81134u, 37146u, 0u, 35864u), vec4<bool>(false, true, false, false)) | max(vec4<u32>(1u, 0u, 18638u, 63286u), vec4<u32>(42456u, 0u, 13863u, 65756u))), -150f);
    return Struct_1(-_wgslsmith_clamp_vec3_i32(abs(u_input.a.zzy), u_input.a.zzz, vec3<i32>(11364i, u_input.a.x, -24602i)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1528f, -229f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f * global0.x) + _wgslsmith_f_op_f32(821f - 177f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.e, var_3.e))) + vec2<f32>(global0.x, global0.x)))), vec2<bool>(true, true), _wgslsmith_add_vec4_u32(var_3.d, ~countOneBits(~var_3.d)), _wgslsmith_f_op_f32(var_1 * -2786f));
}

fn func_1() -> vec2<u32> {
    global2 = array<Struct_1, 16>();
    let var_0 = true;
    let var_1 = func_2();
    let var_2 = Struct_1(~var_1.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.e)) * _wgslsmith_f_op_f32(floor(global0.x))), -385f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(var_1.e, global0.x), false)))))), !(!(!var_1.c)), ~_wgslsmith_sub_vec4_u32(firstTrailingBit(firstLeadingBit(var_1.d)), ~vec4<u32>(88590u, var_1.d.x, var_1.d.x, var_1.d.x)), 1038f);
    global2 = array<Struct_1, 16>();
    return _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.d.x, 11682u) ^ var_1.d.xw, select(var_2.d.zz, vec2<u32>(0u, 5716u), vec2<bool>(var_0, true))), ~vec2<u32>(~var_1.d.x, func_2().d.x)), vec2<u32>(~68104u, ~(~var_2.d.x & ~var_2.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2();
    global0 = vec3<f32>(var_1.e, _wgslsmith_f_op_f32(min(func_2().b.x, var_1.e)), 354f);
    global1 = array<Struct_1, 17>();
    let var_2 = func_2();
    var var_3 = Struct_1(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.a.x, 2147483647i, 2147483647i), u_input.a), 0i, u_input.a.x)), _wgslsmith_mult_vec3_i32(~var_2.a, ~(~vec3<i32>(4925i, 0i, var_2.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 954f) * _wgslsmith_f_op_f32(max(713f, var_1.e))), var_2.b.x), var_1.c, ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 39020u, var_2.d.x, 11241u), _wgslsmith_sub_vec4_u32(~var_2.d, var_1.d)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.x + -1000f))))));
    let var_4 = max(vec2<i32>(_wgslsmith_mult_i32(var_1.a.x, -(~var_1.a.x)), var_3.a.x), max(-max(_wgslsmith_mult_vec2_i32(vec2<i32>(30651i, 11147i), var_1.a.xz), var_1.a.zy), var_3.a.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_2.b * _wgslsmith_f_op_vec2_f32(select(global0.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, var_3.b.x))), vec2<f32>(var_1.b.x, 881f)), !select(var_1.c.x, true, false)))), firstLeadingBit(max((vec2<i32>(u_input.a.x, var_4.x) | var_3.a.xy) << (vec2<u32>(62962u, var_1.d.x) % vec2<u32>(32u)), max(vec2<i32>(-6025i, var_4.x), _wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, 0i), u_input.a.zx)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.x)))), ~_wgslsmith_clamp_u32(var_3.d.x << (_wgslsmith_mod_u32(var_0.x, 15928u) % 32u), var_3.d.x >> (~4294967295u % 32u), var_2.d.x));
}

