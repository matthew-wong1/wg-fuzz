struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(0u, 46454u, 15924u, 77855u), vec4<u32>(0u, 40811u, 4294967295u, 7461u), vec4<u32>(36972u, 1u, 21600u, 9663u));

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(1u, vec2<f32>(-393f, 241f), vec2<bool>(false, false), Struct_1(vec2<u32>(88770u, 4294967295u), vec2<u32>(0u, 1u), 28643i, vec3<f32>(632f, 299f, 107f))), Struct_2(55211u, vec2<f32>(2030f, -312f), vec2<bool>(true, false), Struct_1(vec2<u32>(0u, 132710u), vec2<u32>(1u, 48961u), -14171i, vec3<f32>(501f, 665f, -347f))), Struct_2(13673u, vec2<f32>(741f, -147f), vec2<bool>(false, true), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(18324u, 1u), -21600i, vec3<f32>(249f, 1053f, -989f))), Struct_2(13569u, vec2<f32>(1000f, 120f), vec2<bool>(false, true), Struct_1(vec2<u32>(40695u, 16333u), vec2<u32>(0u, 21596u), 1i, vec3<f32>(430f, -354f, -1404f))), Struct_2(0u, vec2<f32>(-721f, -797f), vec2<bool>(true, true), Struct_1(vec2<u32>(84382u, 23426u), vec2<u32>(56154u, 4294967295u), i32(-2147483648), vec3<f32>(-430f, 1650f, 653f))), Struct_2(0u, vec2<f32>(889f, 1011f), vec2<bool>(true, true), Struct_1(vec2<u32>(18150u, 1u), vec2<u32>(7812u, 128726u), -31945i, vec3<f32>(200f, 134f, 883f))), Struct_2(44146u, vec2<f32>(-826f, 999f), vec2<bool>(true, true), Struct_1(vec2<u32>(5636u, 4294967295u), vec2<u32>(0u, 8307u), 1i, vec3<f32>(-193f, -1794f, 738f))), Struct_2(1u, vec2<f32>(430f, -726f), vec2<bool>(true, true), Struct_1(vec2<u32>(1u, 40060u), vec2<u32>(0u, 0u), 2147483647i, vec3<f32>(587f, -1916f, 358f))), Struct_2(0u, vec2<f32>(-1949f, -628f), vec2<bool>(false, false), Struct_1(vec2<u32>(1u, 0u), vec2<u32>(4213u, 32841u), -8053i, vec3<f32>(-1473f, 699f, 1529f))), Struct_2(26497u, vec2<f32>(694f, 127f), vec2<bool>(true, false), Struct_1(vec2<u32>(4294967295u, 55811u), vec2<u32>(153639u, 1u), 47683i, vec3<f32>(413f, -747f, -156f))), Struct_2(79370u, vec2<f32>(-989f, 703f), vec2<bool>(false, true), Struct_1(vec2<u32>(4294967295u, 75104u), vec2<u32>(4294967295u, 0u), -9816i, vec3<f32>(1848f, 226f, 242f))), Struct_2(8970u, vec2<f32>(-351f, 1166f), vec2<bool>(false, true), Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(85018u, 37397u), 1i, vec3<f32>(151f, -1130f, 784f))), Struct_2(1u, vec2<f32>(-968f, -1220f), vec2<bool>(true, true), Struct_1(vec2<u32>(132773u, 43680u), vec2<u32>(4294967295u, 63913u), 5580i, vec3<f32>(206f, 1000f, 1338f))), Struct_2(0u, vec2<f32>(-626f, -928f), vec2<bool>(false, true), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), 8141i, vec3<f32>(279f, 771f, -2346f))), Struct_2(4294967295u, vec2<f32>(1560f, 623f), vec2<bool>(true, false), Struct_1(vec2<u32>(14162u, 5673u), vec2<u32>(15899u, 1u), -4213i, vec3<f32>(-1977f, 900f, -568f))), Struct_2(4294967295u, vec2<f32>(154f, 110f), vec2<bool>(true, false), Struct_1(vec2<u32>(0u, 3566u), vec2<u32>(40665u, 1u), 1i, vec3<f32>(-2308f, -417f, 1615f))));

var<private> global3: vec4<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>) -> vec2<u32> {
    global1 = global2[_wgslsmith_index_u32(~(~0u & firstTrailingBit(_wgslsmith_sub_u32(arg_1.x, ~arg_1.x))), 16u)];
    global0 = array<vec4<u32>, 3>();
    let var_0 = global1.c;
    global1 = Struct_2(firstTrailingBit(min(30385u, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.x, 0u), 1u))), global1.b, global1.c, Struct_1(vec2<u32>(~(30952u >> (arg_1.x % 32u)), _wgslsmith_dot_vec2_u32(min(global1.d.a, arg_0.zy), arg_0.xy)), _wgslsmith_sub_vec2_u32(global1.d.b, arg_1.yx << (vec2<u32>(66804u, 1u) % vec2<u32>(32u))) | ~select(vec2<u32>(u_input.a, 79363u), vec2<u32>(1u, arg_0.x), var_0.x), reverseBits(~global1.d.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.x, global1.d.d.x, 1621f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global3.x, 483f) * vec3<f32>(global3.x, -895f, -1171f)))))));
    global3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global1.d.d.x, global1.d.d.x, global1.b.x) + vec4<f32>(-1781f, 239f, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, -1063f, 253f, 267f), vec4<f32>(-970f, -2566f, -2325f, -213f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-674f * -2878f), _wgslsmith_f_op_f32(ceil(-1516f)), global1.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 756f, -1285f, global3.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, global3.x, global3.x, 654f), vec4<f32>(160f, -1761f, -1297f, global1.d.d.x), vec4<bool>(global1.c.x, false, global1.c.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -991f, global1.d.d.x, global3.x)))))))));
    return _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, global1.a) | vec2<u32>(global1.a, 0u), abs(arg_0.xx ^ arg_1.zx)), ~min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(0u, arg_0.x), arg_1.zz), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.xy, arg_1.zx), arg_1.zy)));
}

fn func_2(arg_0: Struct_4) -> vec2<f32> {
    global1 = Struct_2(u_input.a, arg_0.c.d.xy, global1.c, Struct_1(~vec2<u32>(global1.a, 0u) ^ func_3(_wgslsmith_add_vec3_u32(vec3<u32>(49022u, 4294967295u, 4930u), vec3<u32>(22318u, 0u, 57931u)), vec3<u32>(5158u, 4294967295u, 1u)), abs(~vec2<u32>(global1.a, 38124u)), ~(-2147483647i), global3.wxz));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.d.xz)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    let var_0 = all(vec4<bool>(true, true, any(global1.c) || global1.c.x, !global1.c.x));
    let var_1 = -151f;
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.a.x, 1u), global1.d.a | vec2<u32>(13971u, u_input.a)), 3u)];
    global0 = array<vec4<u32>, 3>();
    var var_3 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~0u, firstLeadingBit(~global1.a), min(1u, arg_0.a.x)), arg_0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.d.x, var_1), vec2<f32>(1172f, global3.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.b)) + _wgslsmith_f_op_vec2_f32(func_2(Struct_4(arg_0.c, global1.d.b.x, Struct_1(arg_0.a, arg_0.a, arg_0.c, vec3<f32>(-303f, arg_0.d.x, -1000f)))))), all(vec4<bool>(true, true, global1.c.x, false)))) * global1.b), !(!(!select(global1.c, global1.c, true))), global1.d);
    return vec4<i32>(_wgslsmith_mult_i32(arg_1, 1937i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~countOneBits(vec2<i32>(1414i, global1.d.c)), select(vec2<i32>(0i, global1.d.c), vec2<i32>(-2147483647i, 43051i), true)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-22749i, u_input.b)), vec2<i32>(global1.d.c, u_input.b)) | countOneBits(-vec2<i32>(32402i, 9971i))), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.c, u_input.b), vec3<i32>(-2147483647i, arg_1, -2147483647i) ^ vec3<i32>(19682i, -7392i, 23277i)) | (var_3.d.c << (4294967295u % 32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(-31455i, 44650i)), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(1i, 2147483647i)), min(vec2<i32>(arg_0.c, 15746i), vec2<i32>(-1118i, global1.d.c)))) | countOneBits(var_3.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.d, firstLeadingBit(-(~(-21163i & global1.d.c))));
    let var_1 = var_0.zzw;
    let var_2 = Struct_3(global1.d, vec4<bool>(!global1.c.x, !global1.c.x, 15462u < (4659u ^ u_input.a), all(vec4<bool>(global1.a == global1.d.b.x, global1.c.x, global1.c.x, var_0.x < var_0.x))), var_0, _wgslsmith_f_op_vec2_f32(global1.b - global3.zy));
    global3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.d.x, var_2.a.d.x, var_2.a.d.x, -394f))), vec4<f32>(1130f, global1.d.d.x, var_2.a.d.x, global3.x))))));
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(var_2.a.d.x * global3.x), _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(-586f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a.d.x, var_2.a.d.x)) * _wgslsmith_f_op_f32(floor(global3.x))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(447f, 820f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.d.x - var_2.d.x), _wgslsmith_f_op_f32(sign(492f))) + global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-756f * 1247f), _wgslsmith_f_op_f32(var_2.d.x * 550f))) - _wgslsmith_f_op_f32(-global1.d.d.x))));
    var var_3 = var_2.a.b.x;
    var var_4 = -var_0.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(-486f, var_2.a.d.x, countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(var_1.xx, reverseBits(var_0.zz)), var_2.c.wy)), vec2<i32>(firstTrailingBit(select(u_input.b ^ var_0.x, max(var_0.x, global1.d.c), any(vec3<bool>(false, global1.c.x, false)))), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.d.d.x, 1035f))) + _wgslsmith_f_op_f32(-var_2.a.d.x))));
}

