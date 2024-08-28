struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<bool>, 12>;

var<private> global2: bool = false;

var<private> global3: vec2<i32> = vec2<i32>(5820i, -16682i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> bool {
    var var_0 = arg_1.a;
    let var_1 = min(_wgslsmith_mult_i32(-38743i, ~(-1i)), ~32215i);
    var var_2 = firstTrailingBit(97053u) >> (81440u % 32u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(706f)))) - arg_1.b)));
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(any(arg_0.xyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, 614f, arg_1.b) - arg_3.d.xxx))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.a.d.xyx), vec3<f32>(-656f, -284f, arg_3.d.x), select(vec3<bool>(false, false, false), arg_0.xxy, arg_0.x)))))), _wgslsmith_mod_u32(~1u, 4294967295u) << (_wgslsmith_div_u32(arg_2.x, 0u) % 32u), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b.x), -185f, -540f, _wgslsmith_f_op_f32(exp2(arg_1.a.d.x))), ~countOneBits(29809u));
    var var_1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, ~global3.x, global3.x, _wgslsmith_add_i32(global3.x, global3.x)) ^ (vec4<i32>(u_input.a.x, u_input.a.x, -1i, abs(-3773i)) | (vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, 0i) | ~vec4<i32>(-73207i, u_input.a.x, -8604i, global3.x))), vec4<i32>(~(-12318i), _wgslsmith_clamp_i32(-1i, -min(-28045i, global3.x), -_wgslsmith_sub_i32(arg_1.d.x, -35525i)), _wgslsmith_sub_i32(u_input.a.x, arg_1.e & -24337i) >> (_wgslsmith_clamp_u32(~4294967295u, 13266u, countOneBits(arg_1.a.e)) % 32u), -global3.x));
    let var_2 = arg_3;
    var var_3 = Struct_2(Struct_1(abs(-2147483647i) > _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, var_1.x), -32724i), _wgslsmith_f_op_vec3_f32(trunc(var_2.b)), arg_1.a.c, var_0.d, ~arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b)))) - var_0.b.x), reverseBits(~(~(~1u))), _wgslsmith_sub_vec2_i32(vec2<i32>(72088i, ~(~u_input.a.x)), select(vec2<i32>(firstTrailingBit(26212i), -37369i), u_input.a.xy, !arg_0.yx)), abs(i32(-1i) * -u_input.a.x));
    global1 = array<vec3<bool>, 12>();
    return _wgslsmith_f_op_f32(var_3.a.b.x + var_3.a.b.x);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(abs(_wgslsmith_div_u32(~0u, ~12620u)), 70910u), arg_2.x);
    let var_1 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-805f, -180f, -403f), vec3<f32>(-704f, 438f, 700f), false))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1032f, 1464f, -806f))), any(vec3<bool>(false, true, true)))), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1406f, 185f, -788f, 662f))) - vec4<f32>(-1178f, 566f, 658f, -1565f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, 1643f, -1478f, -2381f)))), 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(true, vec3<f32>(-552f, -689f, -1499f), arg_1.x, vec4<f32>(183f, -1935f, -137f, 226f), arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1288f), arg_2.x | arg_1.x, u_input.a.yy, min(14017i, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 3950u, arg_1.x), vec4<u32>(11528u, 16056u, arg_1.x, arg_1.x)), Struct_1(true, vec3<f32>(1007f, 573f, -1096f), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, -616f, 1718f, 164f)), ~45047u))))), 21514u & firstTrailingBit(~arg_1.x), -u_input.a.xy, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a >> (vec3<u32>(arg_2.x, arg_2.x, arg_2.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(u_input.a, u_input.a)), ~(i32(-1i) * -2147483647i)) << (~53576u % 32u));
    global3 = var_1.d & firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(9063i, var_1.e) ^ u_input.a.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.e, u_input.a.x), var_1.d)));
    var var_2 = var_1.a.d;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f * var_2.x)));
    return vec3<u32>(54526u >> (_wgslsmith_add_u32(42406u, arg_2.x) % 32u), ~(select(13270u, 4294967295u, all(vec3<bool>(false, false, var_1.a.a))) & var_1.c), var_1.a.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~29024u, 12u)];
    global3 = select(select(u_input.a.zx, u_input.a.yz, any(select(vec2<bool>(true, arg_1.a.a), select(vec2<bool>(var_0.x, true), var_0.zz, vec2<bool>(var_0.x, false)), select(false, arg_1.a.a, true)))), _wgslsmith_mult_vec2_i32(vec2<i32>(-13370i, -1i), arg_1.d), any(global1[_wgslsmith_index_u32(~(reverseBits(arg_1.c) ^ _wgslsmith_div_u32(80835u, arg_0.x)), 12u)]));
    var var_1 = ~0i;
    var var_2 = arg_1.a.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.b) - vec3<f32>(-1439f, -477f, arg_1.a.d.x)));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~_wgslsmith_clamp_u32(43699u, 37830u, 65475u) >> (~4294967295u % 32u)));
    let var_1 = Struct_2(func_4(func_2(select(-u_input.a.x, min(global3.x, global3.x), func_1(vec2<u32>(47791u, 23718u), Struct_2(Struct_1(false, vec3<f32>(875f, -1405f, 1999f), 29436u, vec4<f32>(617f, 1318f, 994f, 509f), 8547u), -171f, 90248u, u_input.a.zx, u_input.a.x), vec4<f32>(-601f, -1186f, 448f, -136f), true)), vec3<u32>(~1u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 29771u), vec4<u32>(1u, 1u, 1u, 27701u))), vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1190f, 1207f, -464f)), 57694u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-837f, -660f, -817f, -759f)), ~15727u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-229f + 1448f), -337f), ~0u, _wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>(12144i, global3.x)), u_input.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-939f)), _wgslsmith_f_op_f32(floor(260f))))))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, countOneBits(4294967295u), firstTrailingBit(27619u), select(915u, ~8706u, true))), _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global3.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(global3.x, u_input.a.x) >> (vec2<u32>(44993u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(reverseBits(u_input.a.yy << (vec2<u32>(40096u, 30208u) % vec2<u32>(32u))), vec2<i32>(u_input.a.x, 2290i))), 1i);
    var var_2 = _wgslsmith_div_u32(var_1.c, 4294967295u);
    var_2 = max(12898u, var_1.a.c);
    let var_3 = select(select(!select(select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(true, var_1.a.a), var_1.a.a), select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(true, false), false), vec2<bool>(var_1.a.a, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(var_1.a.a, true), false), select(vec2<bool>(var_1.a.a, true), vec2<bool>(false, true), vec2<bool>(false, var_1.a.a)), !vec2<bool>(var_1.a.a, var_1.a.a)), !select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(var_1.a.a, false)), true), var_1.a.a), !select(select(vec2<bool>(var_1.a.a, false), vec2<bool>(true, true), vec2<bool>(var_1.a.a, true)), vec2<bool>(var_1.a.a | true, true), select(select(vec2<bool>(true, false), vec2<bool>(var_1.a.a, true), vec2<bool>(true, false)), select(vec2<bool>(true, var_1.a.a), vec2<bool>(true, var_1.a.a), var_1.a.a), vec2<bool>(true, true))), false);
    var var_4 = var_3;
    let var_5 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(7745u, 0u), vec2<u32>(var_1.a.e, var_1.a.c)))), global3.x, select(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global3.x, 9694i)), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, global3.x), -vec3<i32>(global3.x, global3.x, u_input.a.x), abs(u_input.a)), select(select(select(vec3<bool>(true, var_3.x, var_4.x), global1[_wgslsmith_index_u32(4294967295u, 12u)], var_4.x), select(global1[_wgslsmith_index_u32(var_1.c, 12u)], global1[_wgslsmith_index_u32(var_1.c, 12u)], true), vec3<bool>(true, var_3.x, false)), select(global1[_wgslsmith_index_u32(select(10649u, 56813u, false), 12u)], vec3<bool>(true, var_1.a.a, true), select(global1[_wgslsmith_index_u32(4294967295u, 12u)], vec3<bool>(var_1.a.a, true, var_4.x), vec3<bool>(var_1.a.a, var_3.x, false))), global1[_wgslsmith_index_u32(var_1.a.e, 12u)])), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5)))));
}

