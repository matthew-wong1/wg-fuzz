struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 4>;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<f32>(-502f, 506f, 668f), Struct_1(true, vec4<bool>(true, true, false, false), -1638f, vec3<i32>(-28040i, 0i, 4151i))), Struct_2(vec3<f32>(-1000f, 394f, 1942f), Struct_1(true, vec4<bool>(false, false, false, false), 422f, vec3<i32>(5303i, 2147483647i, 16857i))), Struct_2(vec3<f32>(-868f, -836f, -457f), Struct_1(true, vec4<bool>(false, true, true, false), -186f, vec3<i32>(47953i, 2147483647i, 1i))), Struct_2(vec3<f32>(1077f, 1570f, 422f), Struct_1(true, vec4<bool>(true, false, false, true), -1217f, vec3<i32>(2147483647i, -1i, -8135i))), Struct_2(vec3<f32>(-1272f, 330f, 776f), Struct_1(false, vec4<bool>(false, false, false, false), -905f, vec3<i32>(19068i, 19310i, 1i))), Struct_2(vec3<f32>(588f, -238f, 1032f), Struct_1(true, vec4<bool>(false, false, false, false), -236f, vec3<i32>(1i, -8258i, -16118i))), Struct_2(vec3<f32>(-1001f, -1318f, 1148f), Struct_1(false, vec4<bool>(true, true, false, false), -1000f, vec3<i32>(16769i, i32(-2147483648), 0i))), Struct_2(vec3<f32>(1190f, 488f, 564f), Struct_1(false, vec4<bool>(true, false, false, true), 453f, vec3<i32>(-21641i, 1i, -22113i))), Struct_2(vec3<f32>(1135f, -554f, -549f), Struct_1(false, vec4<bool>(true, true, true, true), 1477f, vec3<i32>(27134i, -355i, 21981i))), Struct_2(vec3<f32>(-1791f, 1413f, 494f), Struct_1(false, vec4<bool>(false, false, true, true), -811f, vec3<i32>(0i, -1i, 1i))), Struct_2(vec3<f32>(-1831f, 799f, 471f), Struct_1(false, vec4<bool>(true, false, true, false), 2292f, vec3<i32>(1996i, 14419i, i32(-2147483648)))), Struct_2(vec3<f32>(-1022f, -110f, -1000f), Struct_1(true, vec4<bool>(true, true, false, false), 550f, vec3<i32>(27482i, -10840i, 2147483647i))), Struct_2(vec3<f32>(-417f, -1000f, -581f), Struct_1(false, vec4<bool>(true, false, false, true), -293f, vec3<i32>(3730i, -1i, 1i))), Struct_2(vec3<f32>(1000f, 244f, -1000f), Struct_1(true, vec4<bool>(false, true, false, false), -1719f, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)))), Struct_2(vec3<f32>(-1582f, -183f, 2762f), Struct_1(false, vec4<bool>(true, true, false, false), 1347f, vec3<i32>(i32(-2147483648), 2147483647i, 1i))), Struct_2(vec3<f32>(-1140f, 530f, -3105f), Struct_1(true, vec4<bool>(false, false, false, false), -1160f, vec3<i32>(-24798i, -27956i, -65002i))), Struct_2(vec3<f32>(-1245f, 129f, -169f), Struct_1(true, vec4<bool>(true, true, true, true), -1014f, vec3<i32>(2147483647i, -1i, -16169i))), Struct_2(vec3<f32>(-2233f, 1000f, 1147f), Struct_1(false, vec4<bool>(true, true, false, false), -1204f, vec3<i32>(-19339i, 2147483647i, -26340i))), Struct_2(vec3<f32>(-1000f, -1000f, 137f), Struct_1(true, vec4<bool>(false, true, true, true), -811f, vec3<i32>(-1i, 0i, -59494i))), Struct_2(vec3<f32>(1957f, 1850f, -240f), Struct_1(true, vec4<bool>(false, true, true, true), 1628f, vec3<i32>(-1i, -6840i, -1i))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    var var_0 = select(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(40538u, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(6046u, 4u)])) ^ (vec3<u32>(u_input.a.x, 94472u, u_input.a.x) & vec3<u32>(20431u, u_input.a.x, u_input.a.x)), max(reverseBits(vec3<u32>(0u, 0u, 1u)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16400u, 4u)], 4u)], 4u)], 1u, u_input.a.x))), min(vec3<u32>(~select(14354u, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global0.b.x), 4294967295u, ~u_input.a.x), reverseBits(vec3<u32>(reverseBits(1u), max(67635u, 4294967295u), ~54805u))), !select(global0.b.yyy, !(!global0.b.zwx), global0.b.xyw));
    var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.x ^ ~(~4294967295u), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, 0u, global1[_wgslsmith_index_u32(1u, 4u)]), vec3<u32>(4294967295u, 108231u, 48636u)), abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 25769u, u_input.a.x))))), ~(~(~(~vec3<u32>(u_input.a.x, 6665u, 18969u)))), ~(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(20748u, u_input.a.x, 46573u), vec3<u32>(4294967295u, u_input.a.x, var_0.x)), vec3<u32>(1u, 0u, 4294967295u)) >> (firstLeadingBit(vec3<u32>(var_0.x, 51198u, var_0.x)) % vec3<u32>(32u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(278f)), _wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c)))) * _wgslsmith_f_op_f32(-1000f - 768f)));
    global2 = array<Struct_2, 20>();
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(400f, -1448f, arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(102f * _wgslsmith_f_op_f32(-global0.c)))));
    return ~_wgslsmith_div_i32(_wgslsmith_sub_i32(min(global0.d.x, i32(-1i) * -2147483647i), -1i), -(~(-u_input.b.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = Struct_1(!arg_1.a, !select(!select(global0.b, vec4<bool>(global0.b.x, arg_1.b.x, global0.b.x, false), false), vec4<bool>(true, true, true, any(arg_2)), all(vec2<bool>(false, true))), global0.c, vec3<i32>(-1i << (~(68019u & global1[_wgslsmith_index_u32(21699u, 4u)]) % 32u), i32(-1i) * -1i, ~(~func_3(vec2<bool>(global0.a, arg_1.a), vec2<bool>(arg_1.a, true), arg_1.b.xz, global0.d.x))));
    let var_1 = 1u;
    let var_2 = global2[_wgslsmith_index_u32(~(var_1 & 1u), 20u)];
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(-629f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c))), -1620f), arg_1);
    var_0 = arg_1;
    return vec3<u32>(~76464u, var_1, min(u_input.a.x | ~var_1, 34074u));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec3_u32(func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(103f, global0.c))), arg_0, !vec3<bool>(global0.a, false, arg_0.a)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 4u)], 0u, 1u), vec3<u32>(arg_1, u_input.a.x, 4294967295u)))) ^ ~(~(~vec3<u32>(arg_1, 7729u, 30544u)) ^ vec3<u32>(u_input.a.x, u_input.a.x, arg_1));
    var var_1 = Struct_1(arg_0.b.x | true, select(select(select(select(vec4<bool>(true, true, true, true), arg_0.b, vec4<bool>(false, false, global0.a, arg_0.a)), !global0.b, !vec4<bool>(true, arg_0.a, global0.a, arg_0.b.x)), vec4<bool>(any(global0.b.zx), global0.a, true, any(vec4<bool>(false, global0.b.x, false, false))), global0.b.x), select(!vec4<bool>(global0.b.x, arg_0.b.x, false, true), global0.b, !vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)), select(!arg_0.b, select(select(global0.b, global0.b, false), select(arg_0.b, vec4<bool>(arg_0.b.x, false, arg_0.a, global0.b.x), arg_0.b), arg_0.b), true)), 477f, -firstTrailingBit(global0.d) ^ _wgslsmith_mod_vec3_i32(~u_input.b.xyw, max(vec3<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x), u_input.b.zwy) >> (~vec3<u32>(arg_1, 0u, 25445u) % vec3<u32>(32u))));
    var var_2 = select(var_1.b.zw, var_1.b.xy, vec2<bool>((~arg_1 <= var_0.x) || !(var_1.c >= 430f), false));
    var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(~(~1u), arg_1, ~func_2(vec2<f32>(1200f, arg_0.c), arg_0, arg_0.b.xxx).x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, _wgslsmith_clamp_u32(13539u, 4294967295u, var_0.x) ^ 13939u, var_0.x), reverseBits(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(37141u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(3412u, 4u)], 20131u), vec3<u32>(11429u, 43964u, arg_1))))));
    var var_3 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 70117u), u_input.a), _wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_1, u_input.a.x), u_input.a), ~vec2<u32>(0u, 112251u)) & (global1[_wgslsmith_index_u32(max(1u, var_0.x), 4u)] >> ((global1[_wgslsmith_index_u32(61307u, 4u)] >> (1u % 32u)) % 32u)), arg_1);
    return Struct_1(!(!var_2.x), !select(vec4<bool>(all(vec3<bool>(true, false, true)), global0.a, true || var_2.x, !var_1.a), select(select(var_1.b, vec4<bool>(var_1.a, false, false, var_2.x), var_1.b), !vec4<bool>(false, true, arg_0.b.x, global0.a), !global0.b.x), var_1.b.x), 1307f, vec3<i32>(-countOneBits(global0.d.x), -22053i, var_1.d.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> vec3<u32> {
    global0 = arg_1.b;
    global2 = array<Struct_2, 20>();
    var var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, ~(~4286u), 28u), vec3<u32>(~(~14991u), 6254u, select(_wgslsmith_clamp_u32(arg_0.x, u_input.a.x, u_input.a.x), 33000u, false)));
    let var_1 = select(global0.b, arg_1.b.b, global0.b);
    var var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(countOneBits(select(abs(_wgslsmith_add_u32(arg_0.x, global1[_wgslsmith_index_u32(36255u, 4u)])), 42400u, arg_1.b.a))), 20u)];
    return ~firstTrailingBit(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a.x), vec3<u32>(1u, 44693u, u_input.a.x), func_2(vec2<f32>(global0.c, 136f), var_2.b, global0.b.zzz)), ~(vec3<u32>(var_0.x, global1[_wgslsmith_index_u32(16022u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]) >> (vec3<u32>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 4u)]) % vec3<u32>(32u))), !func_1(var_2.b, 0u).b.xwy));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 20>();
    var var_0 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec3<u32>(0u, 4294967295u, 24337u)) << (func_4(vec2<u32>(4294967295u, 1u), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, -343f) - vec3<f32>(180f, global0.c, -1008f)), func_1(Struct_1(global0.b.x, global0.b, 1000f, vec3<i32>(1i, -2147483647i, 50751i)), 0u))) % vec3<u32>(32u)), u_input.b.x, vec3<i32>(25432i, ~u_input.b.x, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, 1000f))))), firstTrailingBit(vec2<i32>(func_3(select(vec2<bool>(true, false), vec2<bool>(var_0.x, global0.a), vec2<bool>(false, var_0.x)), !global0.b.wx, select(var_0.yz, global0.b.wx, true), 1i), func_3(vec2<bool>(true, global0.b.x), func_1(Struct_1(var_0.x, global0.b, global0.c, vec3<i32>(global0.d.x, 25243i, u_input.b.x)), 4294967295u).b.wx, !vec2<bool>(var_0.x, true), func_3(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), var_0.yx, global0.d.x)))));
}

