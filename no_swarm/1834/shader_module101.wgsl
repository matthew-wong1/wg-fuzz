struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<u32, 9>;

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(492f, 316f, 468f, -232f), vec4<f32>(-2162f, -1646f, -797f, -175f), vec4<f32>(1246f, -1000f, 1000f, -1312f), vec4<f32>(130f, -2624f, 1012f, -733f), vec4<f32>(485f, -371f, -570f, 1125f), vec4<f32>(651f, -518f, -1000f, -1383f), vec4<f32>(-289f, -2210f, -1875f, -139f), vec4<f32>(-390f, 804f, -1207f, 276f), vec4<f32>(1015f, -727f, -1524f, 679f), vec4<f32>(-678f, 785f, 1734f, 2334f), vec4<f32>(640f, -845f, 617f, 504f), vec4<f32>(1434f, -329f, 876f, 789f), vec4<f32>(-1000f, -852f, 1684f, -1145f), vec4<f32>(121f, 359f, 286f, -246f), vec4<f32>(716f, 1239f, -1000f, -665f), vec4<f32>(212f, -1267f, -357f, -886f), vec4<f32>(904f, -1591f, 330f, 647f), vec4<f32>(-1000f, -162f, -1012f, 1116f), vec4<f32>(-1574f, 1612f, -1070f, -1000f), vec4<f32>(-307f, -286f, -735f, -358f), vec4<f32>(344f, 391f, -768f, -101f), vec4<f32>(-1163f, -1138f, -828f, -436f), vec4<f32>(-2257f, 487f, -460f, 1211f), vec4<f32>(465f, 524f, 1571f, 712f));

var<private> global3: Struct_1 = Struct_1(1u, vec4<f32>(746f, -862f, -557f, -1038f), false, vec3<f32>(-685f, -104f, 492f), vec3<f32>(689f, 471f, 572f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<f32> {
    global2 = array<vec4<f32>, 24>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1383f, global3.b.x)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(-200f, 838f, arg_0.b.x, 1645f), arg_1.b)), _wgslsmith_div_vec4_f32(arg_1.b, _wgslsmith_f_op_vec4_f32(-arg_1.b)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(635f - arg_1.e.x) + _wgslsmith_f_op_f32(abs(694f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global3.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1486f)), _wgslsmith_f_op_f32(-461f + _wgslsmith_div_f32(arg_0.d.x, arg_1.e.x))))));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global2 = array<vec4<f32>, 24>();
    let var_0 = vec4<bool>(!(!(true && global3.c)), false, global3.c, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-global3.b);
    let var_2 = Struct_1(4294967295u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(-453f))), _wgslsmith_div_f32(366f, _wgslsmith_f_op_f32(global3.d.x - global3.e.x)), global3.d.x, global3.b.x), _wgslsmith_f_op_vec4_f32(global3.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(4294967295u, vec4<f32>(var_1.x, -335f, 2919f, var_1.x), var_0.x, vec3<f32>(194f, global3.d.x, var_1.x), global3.e), Struct_1(15176u, vec4<f32>(-1000f, var_1.x, global3.e.x, 386f), false, vec3<f32>(global3.b.x, -504f, -705f), vec3<f32>(var_1.x, var_1.x, var_1.x)), vec3<i32>(-3765i, u_input.b, u_input.b))) + _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 24u)] - vec4<f32>(var_1.x, 2359f, -1276f, global3.e.x))))), global3.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1670f, _wgslsmith_f_op_f32(f32(-1f) * -1488f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.b.x + 1282f), _wgslsmith_f_op_f32(select(692f, 616f, var_0.x)))) * 1380f), 178f), _wgslsmith_f_op_vec3_f32(var_1.ywy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.e))));
    global0 = -12311i;
    return reverseBits(0u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.e.x;
    var var_1 = Struct_1(~(~(~global3.a << (min(global1[_wgslsmith_index_u32(65100u, 9u)], 10104u) % 32u))), _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(~0u, 24u)], global3.b, u_input.b > (min(1i, u_input.c) >> (~u_input.a.x % 32u)))), global3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3.b.xzz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.d.x, arg_0.d.x, global3.e.x), arg_0.d)) + arg_0.e))), vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(arg_0.e.x * -112f)))), 1948f));
    global3 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.d.zx), _wgslsmith_f_op_vec2_f32(-var_1.b.yx), !vec2<bool>(global3.c, false))) + vec2<f32>(var_0, _wgslsmith_f_op_f32(abs(474f)))));
    let var_3 = max(firstLeadingBit(~(~vec4<i32>(-1i, u_input.c, -2147483647i, u_input.c) | -vec4<i32>(10454i, 2147483647i, -48835i, u_input.c))), abs(vec4<i32>(max(-23063i, u_input.b), -1375i, _wgslsmith_div_i32(u_input.c, max(132749i, 48133i)), 2147483647i)));
    return Struct_1(70723u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1458f, _wgslsmith_f_op_vec4_f32(func_3(arg_0, Struct_1(global3.a, vec4<f32>(global3.b.x, -228f, var_2.x, -820f), false, vec3<f32>(-469f, arg_0.b.x, 630f), arg_0.e), vec3<i32>(u_input.b, 1i, var_3.x))).x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_1.b.x)))))), all(!select(vec3<bool>(true, arg_0.c, false), vec3<bool>(false, var_1.c, global3.c), !vec3<bool>(true, var_1.c, var_1.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(1450f, var_1.d.x), _wgslsmith_f_op_f32(select(549f, var_1.e.x, false)), -1146f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.b.xxx * var_1.e))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b.zxz)));
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = func_4(Struct_1(~func_2(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 9u)], global3.a)), vec4<f32>(595f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1071f + global3.b.x), _wgslsmith_f_op_f32(global3.d.x + global3.e.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.e.x, global3.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1081f)))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.b.x + -109f), -128f, _wgslsmith_f_op_f32(max(1024f, global3.e.x))) + vec3<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(global3.d.x + -757f), global3.b.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(360f)))), _wgslsmith_f_op_f32(-1002f * global3.d.x), global3.e.x)));
    let var_1 = select(abs(firstTrailingBit(abs(vec4<i32>(u_input.b, -11353i, -2147483647i, -2147483647i)))), ~firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, 0i, 1i) << (vec4<u32>(1u, u_input.d, global3.a, global1[_wgslsmith_index_u32(0u, 9u)]) % vec4<u32>(32u))), -2147483647i > _wgslsmith_dot_vec3_i32(-(vec3<i32>(1i, u_input.b, 61215i) & vec3<i32>(u_input.b, 0i, 0i)), abs(vec3<i32>(-2147483647i, u_input.c, u_input.c))));
    global0 = 1i;
    let var_2 = func_4(var_0);
    var var_3 = !(true != (-abs(var_1.x) < 1i));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global3.a;
    let var_1 = min(min(~u_input.b, 0i), u_input.c);
    global2 = array<vec4<f32>, 24>();
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(25339u, select(u_input.d, _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_sub_u32(4294967295u, u_input.d)), all(func_1(vec2<bool>(global3.c, global3.c))))), ~vec2<u32>(28472u, 48614u), u_input.a);
    let var_3 = 429f;
    global0 = -_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(var_1), u_input.b | var_1, u_input.c, var_1), ~vec4<i32>(70634i, 0i, 0i, u_input.b)));
    let var_4 = Struct_1(~firstLeadingBit(u_input.d << (~global3.a % 32u)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 9u)], 24u)], global3.c, global3.e, global3.b.wwy);
    var var_5 = var_4;
    let var_6 = Struct_1(u_input.d, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1858f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f + var_5.b.x) * 1720f)), _wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - -756f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_5.d.x, 966f)) + var_5.d.x), _wgslsmith_f_op_f32(step(global3.b.x, -794f))), any(!(!select(vec2<bool>(false, false), vec2<bool>(true, var_5.c), var_5.c))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(371f, _wgslsmith_f_op_f32(floor(251f))), 426f, -451f))), var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer((var_0 << (~u_input.a.x % 32u)) & ~_wgslsmith_div_u32(~52643u, 33993u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(580f, var_5.b.x, var_3) * vec3<f32>(-1700f, var_3, global3.d.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.d.x, 1189f, var_6.d.x), vec3<f32>(var_6.d.x, var_4.d.x, -377f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(675f)), _wgslsmith_div_f32(907f, var_4.e.x), _wgslsmith_f_op_f32(floor(-318f)))))), vec4<i32>(var_1, countOneBits(u_input.c), 13374i & var_1, 0i));
}

