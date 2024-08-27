struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: vec3<u32>;

var<private> global2: u32 = 40062u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_1.c.b.zzx;
    global2 = ~(~1u);
    var var_1 = Struct_3(arg_1.a, _wgslsmith_add_u32(2243u, 1u), arg_3.c);
    var var_2 = arg_1.a.b;
    var var_3 = firstLeadingBit(~(~abs(u_input.e))) >> ((global1.x ^ abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(85008u, 67845u), u_input.b))) % 32u);
    return ~_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(~(~1u), 19u)], 42452u);
}

fn func_3() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 19u)] & reverseBits(~countOneBits(1u & global0[_wgslsmith_index_u32(global1.x, 19u)]));
    global0 = array<u32, 19>();
    var var_1 = Struct_2(4294967295u != _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 70149u, 1u), vec3<u32>(28033u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27515u, 19u)], 19u)], u_input.e)), abs(~vec3<u32>(u_input.a, global1.x, 24249u))), select(vec4<u32>(28063u, ~global1.x, ~(~global0[_wgslsmith_index_u32(2828u, 19u)]), _wgslsmith_div_u32(3857u, min(global1.x, 4294967295u))), min(~(~vec4<u32>(50631u, global0[_wgslsmith_index_u32(1u, 19u)], 43173u, global1.x)), abs(select(vec4<u32>(1u, 12786u, global1.x, 4294967295u), vec4<u32>(1u, global1.x, global1.x, 162136u), vec4<bool>(true, false, true, false)))), true), ~_wgslsmith_sub_u32(63622u, 35252u), -1489f);
    let var_2 = Struct_2(all(vec2<bool>(!var_1.a, !select(false, false, true))), ~(~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_1.b.x, 0u, 17004u, u_input.a)), ~var_1.b)), _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(firstTrailingBit(var_1.b))), var_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(920f)), _wgslsmith_f_op_f32(floor(var_1.d)))))));
    var_0 = global0[_wgslsmith_index_u32(~(global1.x & ~1u) ^ global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), 19u)], 19u)] >> (~0u % 32u);
    return u_input.d << (34649u % 32u);
}

fn func_2() -> f32 {
    var var_0 = max(-_wgslsmith_sub_i32(func_3(), i32(-1i) * -u_input.d), _wgslsmith_mult_i32(i32(-1i) * -1i, firstLeadingBit(-1696i & _wgslsmith_clamp_i32(u_input.d, u_input.c, u_input.c))));
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_dot_vec2_u32(max(firstLeadingBit(u_input.b), ~global1.xy), u_input.b), ~0u), vec3<u32>(min(abs(1141u) & _wgslsmith_dot_vec2_u32(vec2<u32>(46400u, 1u), vec2<u32>(global1.x, global0[_wgslsmith_index_u32(1u, 19u)])), ~(0u | global0[_wgslsmith_index_u32(global1.x, 19u)])), 6740u, ~35619u));
    global1 = _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, global1.x, 28575u) & vec3<u32>(global0[_wgslsmith_index_u32(u_input.e, 19u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7938u, 19u)], 19u)], 19u)] % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(66430u, global1.x), global1.yx), firstTrailingBit(7806u)), ~vec3<u32>(51051u, u_input.e, func_1(true, Struct_3(Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec4<u32>(global1.x, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), true), global0[_wgslsmith_index_u32(1u, 19u)], Struct_2(false, vec4<u32>(global0[_wgslsmith_index_u32(42993u, 19u)], global0[_wgslsmith_index_u32(global1.x, 19u)], global1.x, global1.x), 4294967295u, -1511f)), vec3<i32>(15616i, 2147483647i, u_input.d), Struct_3(Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 19u)], global1.x, u_input.e, u_input.b.x), false), 4294967295u, Struct_2(true, vec4<u32>(1u, global1.x, global1.x, global1.x), 0u, -542f))))) >> (vec3<u32>(~_wgslsmith_clamp_u32(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), u_input.a, _wgslsmith_add_u32(26356u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 19u)], 19u)], 19u)])), ~1u, abs(~0u)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1290f, -285f), vec3<f32>(1446f, 1340f, -361f))) * vec3<f32>(-1417f, -279f, -608f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1004f, 1159f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1406f, -300f, 532f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1016f, -130f, 525f), vec3<f32>(541f, -1000f, 942f)))))), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -294f, -1267f), vec3<f32>(432f, 252f, -442f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-129f, 782f, -977f)))) + vec3<f32>(_wgslsmith_f_op_f32(step(-497f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -450f), 1f)), vec3<f32>(397f, _wgslsmith_f_op_f32(abs(-1596f)), _wgslsmith_f_op_f32(676f * -1021f)))));
    let var_2 = Struct_2(66247u >= (54937u >> ((abs(68756u) >> (~u_input.b.x % 32u)) % 32u)), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global0[_wgslsmith_index_u32(69255u, 19u)], global1.x, u_input.e, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]) << (vec4<u32>(0u, 1u, 38034u, global1.x) % vec4<u32>(32u))), ~vec4<u32>(1u, global1.x, global1.x, 1u)), 19u)], ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(1u, 19u)], 1u), vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 19u)], 19u)], 1u)) | 45554u), _wgslsmith_clamp_u32(~reverseBits(1u), ~global1.x, global1.x), u_input.e), u_input.a, 993f);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-236f))))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> Struct_4 {
    var var_0 = ~(~(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 37678i, u_input.c, arg_1), vec4<i32>(u_input.c, 54440i, -38043i, u_input.d)) ^ vec4<i32>(_wgslsmith_mod_i32(u_input.d, arg_1), u_input.d, ~2147483647i, -arg_1)));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(arg_0.b.x, max(~global1.x, global1.x)), _wgslsmith_add_u32(global1.x, abs(countOneBits(~5226u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(845f, arg_2), vec2<f32>(1351f, 1000f)))))))));
    let var_3 = _wgslsmith_f_op_f32(floor(arg_0.d));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(173f * _wgslsmith_f_op_f32(ceil(-191f))), arg_0.d);
    return Struct_4(Struct_3(Struct_1(select(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), !vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), !vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)), vec2<bool>(true, true), vec4<u32>(1u, arg_0.b.x << (arg_0.b.x % 32u), _wgslsmith_add_u32(var_1.x, global0[_wgslsmith_index_u32(2566u, 19u)]), _wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(26160u, 4294967295u, 4294967295u, 8719u))), arg_0.a & !arg_0.a), ~(~(arg_0.c << (var_1.x % 32u))), Struct_2(arg_0.a, ~vec4<u32>(1u, global1.x, 8096u, global0[_wgslsmith_index_u32(48129u, 19u)]), _wgslsmith_sub_u32(var_1.x, 4294967295u) | var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(550f * arg_0.d))))), Struct_3(Struct_1(vec4<bool>(arg_0.a, arg_0.a, false, true), !select(vec2<bool>(false, arg_0.a), vec2<bool>(true, false), vec2<bool>(arg_0.a, false)), select(arg_0.b | arg_0.b, arg_0.b, !vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)), any(select(vec4<bool>(true, true, arg_0.a, true), vec4<bool>(true, arg_0.a, arg_0.a, false), false))), ~1u, Struct_2(arg_0.a, arg_0.b, 0u, 183f)), Struct_3(Struct_1(vec4<bool>(arg_0.a, arg_0.a, arg_0.a && arg_0.a, arg_0.a), select(vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(false, arg_0.a)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(arg_0.c, 23256u, var_1.x, 27103u)), reverseBits(vec4<u32>(1u, global1.x, var_1.x, var_1.x))), true), 4294967295u, Struct_2(arg_0.a, ~arg_0.b, select(0u, ~53675u, true), _wgslsmith_f_op_f32(func_2()))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    var var_0 = func_4(Struct_2(!(!all(vec4<bool>(false, false, true, false))), vec4<u32>(_wgslsmith_div_u32(23230u, _wgslsmith_mod_u32(1u, 4294967295u)), ~(~4294967295u), 79732u, global1.x & func_1(false, Struct_3(Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec4<u32>(global1.x, global1.x, 57486u, 12688u), true), u_input.e, Struct_2(false, vec4<u32>(1u, 4294967295u, global1.x, global1.x), global1.x, 1538f)), vec3<i32>(u_input.d, 0i, u_input.c), Struct_3(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec4<u32>(u_input.b.x, 43744u, 39190u, global0[_wgslsmith_index_u32(98795u, 19u)]), true), u_input.b.x, Struct_2(true, vec4<u32>(2912u, global1.x, 4294967295u, 4294967295u), 0u, -460f)))), 0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f - 1293f) * 1893f)))), 21496i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-243f, -1248f, true)))))));
    var var_1 = func_4(Struct_2(false, select(~vec4<u32>(u_input.e, 1u, var_0.b.c.b.x, 68397u), var_0.b.c.b, var_0.a.a.b.x), global1.x, 247f), -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.c, u_input.c, 40513i, u_input.d), vec4<i32>(3212i, u_input.d, u_input.c, -1i), vec4<bool>(true, var_0.a.c.a, false, false)), firstTrailingBit(vec4<i32>(u_input.d, 878i, 15017i, 1156i))), -(~vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1107f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.d) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.c.d * _wgslsmith_f_op_f32(trunc(var_0.c.c.d))), -1000f))))).a.c;
    var var_2 = true;
    var var_3 = -638f;
    let var_4 = var_1.c;
    var var_5 = func_4(Struct_2(false, var_0.a.a.c, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.b.x, 0u), 4294967295u), _wgslsmith_f_op_f32(367f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.c.d, 1111f) * _wgslsmith_f_op_f32(-var_1.d)))), ~u_input.c, _wgslsmith_f_op_f32(select(-284f, -547f, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_sub_u32(~11766u, _wgslsmith_sub_u32(72641u, global1.x))));
}

