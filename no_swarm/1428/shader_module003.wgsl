struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1u, vec4<f32>(-1506f, -974f, 663f, 1204f), 19832u), Struct_1(0u, vec4<f32>(-367f, 632f, -238f, -1000f), 19832u), Struct_1(5727u, vec4<f32>(1695f, 119f, 436f, 229f), 0u), Struct_1(0u, vec4<f32>(-116f, 791f, 495f, -658f), 4294967295u), Struct_1(30786u, vec4<f32>(804f, -2870f, 208f, -421f), 4946u), Struct_1(1u, vec4<f32>(938f, -165f, -734f, 956f), 35540u), Struct_1(0u, vec4<f32>(-344f, -374f, 1152f, 2631f), 51861u), Struct_1(0u, vec4<f32>(-1389f, 609f, 740f, -167f), 46679u), Struct_1(1u, vec4<f32>(-447f, 1676f, 1052f, 1197f), 18734u), Struct_1(6800u, vec4<f32>(-211f, -1215f, -156f, -1000f), 4294967295u), Struct_1(6108u, vec4<f32>(-1160f, 916f, 1177f, 1000f), 7415u));

var<private> global2: array<u32, 13>;

var<private> global3: vec3<u32> = vec3<u32>(54662u, 16670u, 73821u);

var<private> global4: vec4<f32> = vec4<f32>(-125f, 1307f, -857f, 333f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1077f);
    global0 = array<bool, 3>();
    var var_1 = Struct_3(arg_1.a, 11666i);
    var var_2 = global1[_wgslsmith_index_u32(arg_1.a.a, 11u)];
    var var_3 = vec4<bool>(false, all(vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 3u)] && arg_0.x, -1000f >= _wgslsmith_f_op_f32(trunc(-567f)), any(arg_0.xw))), var_2.c != _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 71578u >> (1u % 32u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_1.a.a, global3.x)), abs(arg_1.a.a)), ~vec4<u32>(1u, var_2.a, arg_1.a.c, 39197u)), arg_2.a.x);
    return var_3.x;
}

fn func_4(arg_0: bool) -> u32 {
    global0 = array<bool, 3>();
    let var_0 = -2147483647i;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, abs(_wgslsmith_clamp_u32(1u, ~global3.x, 1u)), u_input.a.x), 3u)];
    var_1 = any(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(~global3.x, 3u)], all(vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(global3.x, 3u)], arg_0)), false), !vec4<bool>(false, true, arg_0, !arg_0), !vec4<bool>(global0[_wgslsmith_index_u32(~global3.x, 3u)], !arg_0, !arg_0, arg_0)));
    var var_2 = Struct_2(vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true, any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(global0[_wgslsmith_index_u32(global3.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<bool>(true, arg_0)))), all(vec3<bool>(true, select(true, false, global0[_wgslsmith_index_u32(0u, 3u)]), true)), arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(255f * 1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global4.x))))) * global4.zz));
    return ~global2[_wgslsmith_index_u32(~(~u_input.a.x), 13u)];
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_div_vec2_u32(u_input.a, select(firstTrailingBit(abs(vec2<u32>(21186u, global2[_wgslsmith_index_u32(61771u, 13u)]) >> (global3.zx % vec2<u32>(32u)))), u_input.a, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global4.x, -1793f))))) - _wgslsmith_f_op_f32(-700f + 181f));
    let var_2 = Struct_3(Struct_1(min(select(var_0.x, 19227u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 70840u, 1u, 84049u), vec4<u32>(var_0.x, 70178u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 1u))) >> ((_wgslsmith_add_u32(global2[_wgslsmith_index_u32(var_0.x, 13u)], 1u) >> (abs(70648u) % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1551f, -430f, -782f, 1332f)))), global2[_wgslsmith_index_u32(1u >> (firstTrailingBit(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_0.x, 13u)], 50868u)) % 32u), 13u)]), -1i);
    let var_3 = vec4<u32>(abs(~global2[_wgslsmith_index_u32(1u, 13u)] >> (1u % 32u)), _wgslsmith_mult_u32(~(~1u), func_4(func_3(vec4<bool>(false, arg_0.a.x, false, global0[_wgslsmith_index_u32(var_2.a.c, 3u)]), Struct_3(global1[_wgslsmith_index_u32(0u, 11u)], -2147483647i), Struct_2(vec3<bool>(false, true, false), vec2<f32>(var_2.a.b.x, var_2.a.b.x))))), _wgslsmith_clamp_u32(select(reverseBits(0u), global2[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(123227u, 3u)]), global3.x, ~(~50728u)), ~(~global3.x)) << (_wgslsmith_mult_vec4_u32(~min(_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(27018u, 13u)], 4294967295u, var_0.x, 57204u), vec4<u32>(global3.x, global3.x, global2[_wgslsmith_index_u32(global3.x, 13u)], u_input.a.x)), vec4<u32>(0u, 22000u, 0u, global2[_wgslsmith_index_u32(4294967295u, 13u)])), ~vec4<u32>(var_2.a.a ^ global3.x, global3.x, ~u_input.a.x, u_input.a.x)) % vec4<u32>(32u));
    var var_4 = Struct_3(global1[_wgslsmith_index_u32(21244u, 11u)], -17360i);
    return _wgslsmith_f_op_f32(-var_4.a.b.x);
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.x - -1868f), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x + 1559f))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(269f, -1261f, var_0.x, var_0.x), vec4<f32>(122f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 2137f) * _wgslsmith_f_op_f32(1117f - -972f)), -631f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x) * var_0.x)), vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -38948i, -76084i), vec3<i32>(-2147483647i, 11648i, 2747i)) != -32378i, false, true, all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(3556u, 3u)], false, arg_0.a.x), vec4<bool>(true, arg_0.a.x, true, true), arg_0.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(315f, _wgslsmith_div_f32(688f, -3630f), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(func_2(Struct_2(vec3<bool>(arg_0.a.x, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22978u, 13u)], 3u)]), global4.xw), Struct_2(arg_0.a, vec2<f32>(global4.x, global4.x)), -582f))), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-arg_0.b.x))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.b.x, 842f, -811f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-383f, 1012f, var_0.x, var_0.x) * vec4<f32>(arg_0.b.x, 195f, 164f, var_0.x)))))));
    var var_2 = arg_0;
    let var_3 = Struct_3(Struct_1(~28593u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, 220f, 440f, 1083f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -174f, 296f, -1064f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, var_2.b.x, var_0.x, -754f)))), reverseBits(global3.x)), 1i);
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = 0i;
    let var_1 = Struct_2(!arg_0.yzx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.ww)));
    let var_2 = max(_wgslsmith_add_u32(10339u, func_4(false)), min(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, global3.x, 4294967295u)), ~(~vec3<u32>(global2[_wgslsmith_index_u32(0u, 13u)], u_input.a.x, global2[_wgslsmith_index_u32(47993u, 13u)]))), global2[_wgslsmith_index_u32(u_input.a.x, 13u)]));
    global3 = min(vec3<u32>(36844u, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x), min(select(~(~vec3<u32>(u_input.a.x, 4294967295u, 0u)), abs(firstTrailingBit(vec3<u32>(0u, 1u, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]))), !(!arg_1.a)), ~vec3<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(17840u, 13u)]) << (((vec3<u32>(u_input.a.x, 1u, 4294967295u) | vec3<u32>(global3.x, global3.x, u_input.a.x)) | reverseBits(vec3<u32>(global3.x, 0u, 0u))) % vec3<u32>(32u))));
    let var_3 = Struct_3(Struct_1((global2[_wgslsmith_index_u32(~278u, 13u)] | 0u) ^ 1u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, global4.x, arg_1.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-254f, var_1.b.x, global4.x, arg_1.b.x) - vec4<f32>(arg_1.b.x, -782f, 2209f, global4.x))))), countOneBits(min(1u, global3.x))), _wgslsmith_sub_i32(-(~_wgslsmith_clamp_i32(-1i, 12397i, 7198i)), -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -29943i), vec2<i32>(1i, 14025i)), _wgslsmith_div_i32(1i, 26213i))));
    return _wgslsmith_f_op_vec4_f32(var_3.a.b * var_3.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2[_wgslsmith_index_u32(~(~1u), 13u)];
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(vec4<bool>(func_1(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(global3.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], false), vec2<f32>(134f, -510f))), true, global0[_wgslsmith_index_u32(abs(u_input.a.x), 3u)], !all(vec2<bool>(true, global0[_wgslsmith_index_u32(17405u, 3u)]))), Struct_2(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(12111u, 3u)])), _wgslsmith_f_op_vec2_f32(ceil(global4.yx))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, 1234f, global4.x, global4.x), vec4<f32>(global4.x, global4.x, -1000f, 1959f))))) + vec4<f32>(590f, -1845f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19664u, 13u)], 3u)], true, global0[_wgslsmith_index_u32(var_0, 3u)]), global4.wy), Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(5726u, 3u)]), vec2<f32>(-1158f, -649f)), global4.x)), _wgslsmith_f_op_f32(trunc(global4.x))), 337f)));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~u_input.a), global3.xz) | reverseBits(select(global2[_wgslsmith_index_u32(4294967295u, 13u)] & 4294967295u, _wgslsmith_div_u32(9654u, 1u), all(vec2<bool>(global0[_wgslsmith_index_u32(12050u, 3u)], global0[_wgslsmith_index_u32(34544u, 3u)])))), 11u)], -2147483647i);
    var var_2 = 22890u;
    global2 = array<u32, 13>();
    global0 = array<bool, 3>();
    var var_3 = _wgslsmith_mult_u32(103777u, 12029u);
    global3 = min(~vec3<u32>(29713u, global2[_wgslsmith_index_u32(~68950u, 13u)], ~59962u), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 1437u, global2[_wgslsmith_index_u32(57387u, 13u)]))))) << (firstLeadingBit(~min(vec3<u32>(26375u, var_1.a.c, 1u) ^ vec3<u32>(1u, 4294967295u, var_1.a.a), abs(vec3<u32>(global3.x, 1u, 0u)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(min(var_1.b, -11768i), var_1.b, true) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.b, var_1.b, var_1.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, var_1.b, var_1.b), vec4<i32>(8435i, var_1.b, var_1.b, var_1.b))), ~(~global2[_wgslsmith_index_u32(~u_input.a.x, 13u)]), var_1.b, -countOneBits(_wgslsmith_clamp_i32(var_1.b, ~var_1.b, -2147483647i)));
}

