struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: vec3<u32>;

var<private> global2: bool;

var<private> global3: vec4<i32> = vec4<i32>(0i, 38932i, -22094i, 0i);

var<private> global4: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-844f, 178f, -1000f), vec3<f32>(519f, -1329f, 1129f), vec3<f32>(-941f, -1182f, -1154f), vec3<f32>(999f, -675f, -492f), vec3<f32>(1808f, -1000f, -1000f), vec3<f32>(-423f, -978f, -1000f), vec3<f32>(1240f, 217f, -230f), vec3<f32>(1090f, 965f, -1788f), vec3<f32>(668f, 1839f, 1193f), vec3<f32>(989f, 896f, 1478f), vec3<f32>(198f, -1163f, 427f), vec3<f32>(-1120f, -725f, -528f), vec3<f32>(1843f, -581f, -1775f), vec3<f32>(-295f, 1703f, -847f), vec3<f32>(-1073f, -1903f, 971f), vec3<f32>(-1000f, -536f, -219f), vec3<f32>(-1649f, 614f, -409f), vec3<f32>(-1815f, 455f, -174f), vec3<f32>(453f, -489f, 1010f), vec3<f32>(-1638f, -668f, -1000f), vec3<f32>(297f, 606f, -620f), vec3<f32>(1000f, -637f, 546f), vec3<f32>(1749f, 1681f, -830f), vec3<f32>(998f, 502f, 894f), vec3<f32>(-2027f, 408f, -1669f), vec3<f32>(-193f, 394f, 510f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(199f, 1287f)))));
    var var_1 = u_input.e;
    var_0 = -1000f;
    let var_2 = abs(~43634u | _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, global0[_wgslsmith_index_u32(2285u, 20u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], var_1.x, global0[_wgslsmith_index_u32(1u, 20u)], 8227u), vec4<u32>(0u, u_input.e.x, global0[_wgslsmith_index_u32(var_1.x, 20u)], 4293u)) & (vec4<u32>(1032u, 122053u, var_1.x, u_input.a) >> (vec4<u32>(u_input.b, 4294967295u, u_input.c, u_input.b) % vec4<u32>(32u))), ~(~vec4<u32>(var_1.x, 0u, 67553u, u_input.a))));
    global4 = array<vec3<f32>, 26>();
    return ~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 20u)], var_2, 4294967295u), vec4<u32>(var_1.x, var_1.x, var_2, var_2)) | _wgslsmith_sub_vec4_u32(vec4<u32>(72271u, 27494u, 97265u, var_2), vec4<u32>(global1.x, u_input.a, global1.x, 0u))) & ~abs(~(vec4<u32>(u_input.c, var_2, var_2, 22823u) ^ vec4<u32>(18002u, global0[_wgslsmith_index_u32(u_input.c, 20u)], u_input.e.x, var_2)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(arg_0.b));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~global1.zz ^ ~u_input.e.zz), ~u_input.e.yz), ~global1.zx);
    var var_2 = select(func_2(), select(vec4<u32>(~1u, abs(global1.x), ~abs(arg_1.b), 1u << (~u_input.b % 32u)), arg_1.a, vec4<bool>(any(vec3<bool>(false, false, true)), 0u != _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, arg_1.b), vec2<u32>(global1.x, u_input.c)), true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)))), vec4<bool>(true, ((arg_0.c.x & 1i) >= _wgslsmith_add_i32(global3.x, -20053i)) || true, true, false));
    let var_3 = max(vec3<i32>(abs(_wgslsmith_mod_i32(global3.x, _wgslsmith_div_i32(-2147483647i, arg_0.d.x))), 32615i, -global3.x ^ _wgslsmith_clamp_i32(global3.x << (u_input.a % 32u), ~(-2147483647i), -32232i)), vec3<i32>(-1i) * -vec3<i32>(~arg_0.d.x, i32(-1i) * -29350i, 33142i));
    var var_4 = abs(0i) & arg_0.c.x;
    return arg_0.c;
}

fn func_3(arg_0: Struct_3) -> bool {
    global2 = all(!select(select(!vec4<bool>(false, true, arg_0.a, true), !vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), arg_0.a)), !select(vec4<bool>(true, arg_0.a, false, false), vec4<bool>(false, arg_0.a, false, arg_0.a), arg_0.a), !select(vec4<bool>(false, false, arg_0.a, true), vec4<bool>(true, arg_0.a, true, arg_0.a), arg_0.a)));
    global2 = false;
    var var_0 = select(reverseBits(~(~global3.x)) & (~global3.x << (28234u % 32u)), global3.x << (global0[_wgslsmith_index_u32(~(~global1.x), 20u)] % 32u), arg_0.a);
    let var_1 = global3.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x))), arg_0.b.x), arg_0.b.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-405f, 1144f)))));
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(-1727f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2366f, -2095f)) - -1000f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1042f)), _wgslsmith_f_op_f32(-530f - 2173f), any(vec2<bool>(true, arg_1.x))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(407f - 333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(583f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(1147f)))), func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(175f)) * 408f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-937f, -1727f, 2309f, -234f))))), ~vec4<i32>(global3.x, global3.x, global3.x, -29986i), abs(-vec3<i32>(10470i, -2147483647i, global3.x))), arg_0), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(global3.x, func_1(Struct_1(-1469f, vec4<f32>(-1496f, -1039f, 307f, -700f), vec4<i32>(-25968i, -51261i, global3.x, global3.x), vec3<i32>(2147483647i, global3.x, global3.x)), arg_0).x, -44163i)), global3.wzx));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) < var_0.b.x, _wgslsmith_f_op_vec2_f32(floor(var_0.b.wx)));
    var var_2 = reverseBits(global1.yy);
    var var_3 = abs(u_input.e.yz);
    var var_4 = _wgslsmith_mod_i32(abs(~26322i), abs(reverseBits(~(~var_0.c.x))));
    return -18234i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(max(_wgslsmith_dot_vec4_i32(-vec4<i32>(global3.x, global3.x, 2147483647i, 8147i), func_1(Struct_1(116f, vec4<f32>(535f, -208f, 664f, -705f), vec4<i32>(-31468i, global3.x, global3.x, global3.x), vec3<i32>(-12389i, 0i, -7755i)), Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 20u)], 20u)], u_input.d, u_input.e.x, u_input.e.x), u_input.e.x))) >> (71538u % 32u), global3.x), ~func_4(Struct_2(~vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 20u)], u_input.b, global0[_wgslsmith_index_u32(u_input.e.x, 20u)]), select(51004u, 33641u, false)), vec3<bool>(true, any(vec3<bool>(false, false, true)), func_3(Struct_3(true, vec2<f32>(-553f, -1000f))))), 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 304f, 473f, -1119f) - vec4<f32>(1875f, -796f, -1225f, 573f)) - vec4<f32>(397f, 340f, -672f, 1196f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2455f), -912f, _wgslsmith_f_op_f32(sign(475f)), -199f)) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(857f - 1705f))), -693f, 182f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -207f))))), true));
    let var_2 = u_input.e.zy;
    var var_3 = false;
    var var_4 = ~global3.yyy;
    let var_5 = 0i;
    var_4 = vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_4.x, var_5), _wgslsmith_add_i32(var_5, var_0.x)), ~(-17799i >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] % 32u))), _wgslsmith_mult_i32(global3.x, countOneBits(var_5)), 1i);
    var var_6 = select(!vec4<bool>(any(vec4<bool>(true, true, true, true)), 900f >= _wgslsmith_f_op_f32(var_1.x * 1000f), ~37964u >= _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 38968u, u_input.d), vec4<u32>(25097u, 4294967295u, global1.x, global0[_wgslsmith_index_u32(global1.x, 20u)])), true), vec4<bool>(true, true, true, true), !(all(vec2<bool>(false, false)) && true) & false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i), vec3<i32>(global3.x, min(min(0i, 1i), 1i), _wgslsmith_dot_vec3_i32(-(vec3<i32>(1i, var_0.x, var_0.x) | var_0), global3.wyw)), max(firstTrailingBit(~vec4<i32>(global3.x, 0i, 18993i, var_4.x) | -vec4<i32>(1i, var_5, -2147483647i, -2147483647i)), -(_wgslsmith_mod_vec4_i32(vec4<i32>(var_5, -2147483647i, 13353i, var_5), vec4<i32>(-1i, global3.x, var_4.x, var_5)) << (countOneBits(vec4<u32>(4294967295u, u_input.a, var_2.x, 67806u)) % vec4<u32>(32u)))), ~_wgslsmith_div_vec4_i32(-vec4<i32>(var_4.x, var_5, -13789i, 45448i), vec4<i32>(reverseBits(var_5), 2147483647i, ~(-2593i), var_0.x)), global4[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(select(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 20u)], 20u)] > 24301u), 20u)] << (global0[_wgslsmith_index_u32(~global1.x, 20u)] % 32u)), 26u)]);
}

