struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: vec2<i32>;

var<private> global2: array<u32, 16> = array<u32, 16>(927u, 112123u, 348u, 0u, 1u, 38574u, 21380u, 4294967295u, 0u, 4294967295u, 24820u, 1u, 0u, 4294967295u, 4294967295u, 1u);

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(620f, 962f, -1498f), vec3<f32>(944f, -1160f, -202f), vec3<f32>(-966f, 937f, -906f), vec3<f32>(-1478f, 760f, -1000f), vec3<f32>(150f, 1371f, -816f), vec3<f32>(491f, 824f, 430f), vec3<f32>(381f, -361f, 747f), vec3<f32>(-432f, -190f, 593f), vec3<f32>(-2135f, 965f, -218f), vec3<f32>(-326f, -579f, 186f), vec3<f32>(-510f, -1000f, 1815f), vec3<f32>(-1000f, 819f, -1747f), vec3<f32>(-836f, -1517f, 1280f), vec3<f32>(-1000f, 694f, -1496f), vec3<f32>(996f, 248f, 1664f), vec3<f32>(1861f, -1535f, 327f), vec3<f32>(103f, -757f, 654f), vec3<f32>(-344f, -2065f, 560f), vec3<f32>(-754f, 2198f, -928f), vec3<f32>(1731f, -1152f, -1056f), vec3<f32>(1513f, 1531f, -347f), vec3<f32>(1000f, 177f, -247f), vec3<f32>(680f, 2052f, 951f), vec3<f32>(633f, -1324f, -221f), vec3<f32>(-294f, -1535f, 517f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> i32 {
    return global0[_wgslsmith_index_u32(26198u, 1u)];
}

fn func_3() -> vec3<bool> {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-161f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-124f, -138f, false)) + -274f)), true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3[_wgslsmith_index_u32(19237u, 25u)])) * vec3<f32>(-408f, -637f, _wgslsmith_f_op_f32(f32(-1f) * -115f))), select(select(vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, all(vec4<bool>(var_0.x, false, true, var_0.x)), true), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), select(!vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, false, var_0.x, false), -2147483647i > global0[_wgslsmith_index_u32(55263u, 1u)])), select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x))), vec4<bool>(var_0.x, var_0.x, true, true), !vec4<bool>(var_0.x, false, var_0.x, false)), !(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, true, true, var_0.x), vec4<bool>(false, true, true, var_0.x)))), vec4<f32>(1f, 1f, 1f, 1f));
    global3 = array<vec3<f32>, 25>();
    let var_2 = Struct_1(global3[_wgslsmith_index_u32(firstTrailingBit(12168u | ~(13799u << (global2[_wgslsmith_index_u32(1u, 16u)] % 32u))), 25u)], select(select(vec4<bool>(true, true, all(var_1.b.xxw), all(vec2<bool>(false, true))), select(!var_1.b, vec4<bool>(var_1.b.x, var_0.x, false, var_0.x), !var_0.x), var_0.x), !var_1.b, !((var_1.c.x < 1918f) != any(var_1.b.ywy))), var_1.c);
    let var_3 = Struct_2(var_1, -2147483647i, u_input.b >> ((18178u >> (firstTrailingBit(4294967295u | u_input.e.x) % 32u)) % 32u), Struct_1(var_2.a, select(var_2.b, !var_1.b, all(!vec3<bool>(var_1.b.x, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(242f, 764f, var_1.a.x, var_2.a.x))) * vec4<f32>(var_2.c.x, _wgslsmith_div_f32(521f, 167f), _wgslsmith_f_op_f32(sign(1391f)), _wgslsmith_f_op_f32(-var_2.c.x)))));
    return !(!select(select(!vec3<bool>(var_3.d.b.x, var_1.b.x, var_2.b.x), var_3.d.b.yxx, true), !(!vec3<bool>(false, true, var_3.a.b.x)), vec3<bool>(true || var_1.b.x, var_1.b.x, var_1.b.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1035f * 151f));
    var var_1 = global2[_wgslsmith_index_u32(1u, 16u)];
    let var_2 = firstTrailingBit(~max(~abs(u_input.a), firstTrailingBit(u_input.a)));
    global1 = vec2<i32>(func_1(), abs(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.b, 1u)], -global0[_wgslsmith_index_u32(29193u, 1u)])));
    global1 = vec2<i32>(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -2147483647i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(min(var_2.x, 0u), 1u)], reverseBits(u_input.d.x))), ~firstLeadingBit(vec4<i32>(-1i, -46994i, -4443i, 2675i))));
    return _wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(u_input.e, vec2<u32>(4294967295u, var_2.x), vec2<u32>(0u, var_2.x))) ^ u_input.a.zy, _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~firstLeadingBit(var_2.yy), var_2.zx, vec2<u32>(firstLeadingBit(4294967295u), ~var_2.x)), u_input.e));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global3[_wgslsmith_index_u32(1u, 25u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -715f, 1323f)))))), vec4<bool>(true, true, func_3().x, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2, 21893u), 1u)], global1.x | 20196i) > _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 28355i, 0i, 5691i), vec4<i32>(-27298i, global1.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 1u)])), global1.x)), vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = vec2<u32>(2346u, arg_2 ^ ~arg_2);
    let var_2 = Struct_1(var_0.a, !vec4<bool>(true, select(true, var_0.b.x || arg_0.x, true), arg_0.x, false), var_0.c);
    var var_3 = vec4<bool>(true, !(var_2.a.x > _wgslsmith_f_op_f32(var_2.a.x * -1468f)), select(select(arg_0.x, var_0.b.x, var_0.b.x && true), true, true), true);
    global1 = _wgslsmith_div_vec2_i32(vec2<i32>(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1.x, 1u, 43124u)), 1u)], -(~10104i)) >> (~u_input.a.xz % vec2<u32>(32u)), countOneBits(~vec2<i32>(2147483647i, global1.x) << (var_1 % vec2<u32>(32u))) | ((u_input.d >> ((vec2<u32>(arg_1.x, 7526u) >> (u_input.a.xy % vec2<u32>(32u))) % vec2<u32>(32u))) << (vec2<u32>(~12858u, u_input.a.x) % vec2<u32>(32u))));
    return var_2.c.x;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = !(arg_2.b.x && true);
    var var_1 = 1i;
    global0 = array<i32, 1>();
    var var_2 = arg_2;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + -1507f))), arg_2.c.x, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.x), 2107f))), _wgslsmith_f_op_f32(func_5(arg_2.b.zx, ~vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26867u, 16u)], 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), func_4(arg_2.c, _wgslsmith_f_op_f32(max(var_2.a.x, _wgslsmith_f_op_f32(-237f + var_2.a.x))), select(func_3(), !vec3<bool>(true, true, arg_2.b.x), var_2.b.yzy)))), _wgslsmith_f_op_f32(trunc(arg_1)));
    return abs(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 0i, -1i, global1.x), min(vec4<i32>(global1.x, u_input.d.x, global1.x, 26002i), vec4<i32>(u_input.d.x, 1i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 16u)], 1u)], 7752i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(70006u, 16u)], 95513u, 4294967295u, 60682u), vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.b)) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(581f, 802f) + vec2<f32>(709f, 967f)), vec2<f32>(-338f, 720f)) + vec2<f32>(_wgslsmith_f_op_f32(-350f + 1604f), _wgslsmith_f_op_f32(min(1202f, 742f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(223f, 105f) + vec2<f32>(-694f, -1264f))), vec2<f32>(_wgslsmith_div_f32(-160f, 1308f), -401f)))));
    global2 = array<u32, 16>();
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = vec2<i32>(~min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(19229i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 16u)], 1u)], global1.x, 0i), -vec4<i32>(1i, -299i, u_input.d.x, global1.x))), -func_1());
    var_2 = -1159f;
    global2 = array<u32, 16>();
    var var_4 = vec3<bool>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-u_input.c, u_input.d.x), ~1i) <= 1i, -abs(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0.x, Struct_1(vec3<f32>(1769f, var_0.x, var_0.x), vec4<bool>(true, false, false, false), vec4<f32>(var_0.x, var_0.x, 811f, -2110f)))) <= u_input.c, true);
    var var_5 = Struct_1(global3[_wgslsmith_index_u32(~u_input.a.x, 25u)], !select(select(vec4<bool>(true, false, var_4.x, true), select(vec4<bool>(false, true, false, false), vec4<bool>(var_4.x, true, var_4.x, false), var_4.x), !vec4<bool>(var_4.x, false, var_4.x, var_4.x)), vec4<bool>(true, true, true, true), select(!vec4<bool>(true, var_4.x, false, var_4.x), !vec4<bool>(true, var_4.x, var_4.x, var_4.x), vec4<bool>(false, true, true, var_4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 768f, var_0.x, -606f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_5.c.ywx - _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(20453u, 25u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(1u, 25u)], vec3<f32>(2148f, var_0.x, var_5.c.x))))), u_input.a.xy, u_input.e, ~4294967295u, var_0.x);
}

