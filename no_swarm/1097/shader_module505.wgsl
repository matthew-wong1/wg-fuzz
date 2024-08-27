struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-548f, 883f, -924f, -708f, -1129f, -300f, -201f, 1000f);

var<private> global1: Struct_1 = Struct_1(1u, vec2<u32>(4294967295u, 1u), 650f, i32(-2147483648));

var<private> global2: Struct_1;

var<private> global3: f32 = 1641f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = vec3<i32>(global2.d, 2147483647i, 2147483647i);
    let var_1 = countOneBits(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(91952u, 1u), arg_0 << (vec2<u32>(0u, global1.b.x) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~vec2<u32>(61550u, 27740u), abs(vec2<u32>(global1.b.x, 0u)))));
    var var_2 = _wgslsmith_add_vec3_u32((~vec3<u32>(var_1.x, 4294967295u, 44400u) << ((vec3<u32>(global1.a, global2.b.x, var_1.x) >> (vec3<u32>(4294967295u, arg_0.x, 7233u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ ~(~vec3<u32>(42831u, arg_0.x, 4294967295u)), ~(~vec3<u32>(4294967295u, var_1.x, 32977u))) << (~firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a, global1.b.x, global2.b.x), vec3<u32>(global1.b.x, 0u, 67827u)), vec3<u32>(4294967295u, var_1.x, global1.b.x))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * 189f)));
    let var_4 = Struct_1(27361u, reverseBits(global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global1.a, 8u)]))))), _wgslsmith_div_i32(36057i, ~global2.d ^ min(-22441i, max(global1.d, global2.d))));
    return 23517u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(~(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.b, vec2<u32>(19632u, global2.a), global2.b), global2.b ^ vec2<u32>(global1.b.x, global1.a)) | ~(~39217u)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global2.b.x, global2.a) & vec2<u32>(global2.b.x, 20539u), abs(global2.b))), global2.c, global1.d);
    global0 = array<f32, 8>();
    return Struct_1(func_3(select(vec2<u32>(global1.a, global2.a), global2.b | var_0.b, select(false, false, true))) >> (0u % 32u), ~(~(~select(vec2<u32>(var_0.b.x, 1u), var_0.b, vec2<bool>(true, true)))), _wgslsmith_f_op_f32(sign(-559f)), ~(-13726i));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    global2 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1617f, -578f, -2270f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(199f, 736f, arg_0)))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1146f), _wgslsmith_f_op_f32(arg_1.c + global1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -239f, arg_1.c))), true)));
    let var_0 = -vec4<i32>(-1i, min(~_wgslsmith_mod_i32(-25026i, 30807i), -1i), global1.d, reverseBits(countOneBits(-2147483647i)));
    let var_1 = _wgslsmith_dot_vec3_i32(var_0.wyz, vec3<i32>(max(abs(_wgslsmith_mod_i32(-38740i, -6258i)), -51182i), 2147483647i, global1.d));
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(23118u, 8u)] * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 8u)]) * _wgslsmith_f_op_f32(-arg_1.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-816f + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, arg_1.a, 63083u), 8u)]))))));
    global0 = array<f32, 8>();
    return -1108f;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = (vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.d, 60762i, global2.d), vec3<i32>(-2147483647i, -28344i, 0i)), vec3<i32>(1385i, global2.d, 2147483647i)), _wgslsmith_clamp_i32(-20354i, global1.d, i32(-1i) * -39459i)) | _wgslsmith_add_vec2_i32(-select(vec2<i32>(global1.d, -20970i), u_input.a, true), max(vec2<i32>(-1i, arg_1.d), abs(vec2<i32>(2147483647i, arg_1.d))))) ^ firstLeadingBit(~(vec2<i32>(-1i, global1.d) & u_input.a));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32((global1.a ^ arg_1.b.x) ^ 1u, 8u)], func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, global2.c, arg_1.c))), ~vec2<i32>(32687i, ~global1.d))), global2.c);
    let var_2 = Struct_1(4294967295u | abs(global2.b.x), arg_0.yy | vec2<u32>(func_3(~vec2<u32>(4294967295u, 1u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.b.x, global1.a, 44612u)), reverseBits(vec3<u32>(global2.b.x, 31932u, global2.a)))), global2.c, -2147483647i);
    var var_3 = abs(abs(~vec3<i32>(global2.d, 38535i, -u_input.a.x)));
    let var_4 = var_2;
    return Struct_1(max(9237u, arg_0.x), _wgslsmith_add_vec2_u32(arg_1.b << (global2.b % vec2<u32>(32u)), min(~var_4.b, ~global1.b)) >> (vec2<u32>(4294967295u | (var_4.a << (var_2.b.x % 32u)), ~global2.b.x) % vec2<u32>(32u)), var_4.c, 62939i);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = arg_2.c == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c));
    let var_1 = -29326i;
    var var_2 = func_1(select(vec3<u32>(abs(reverseBits(1u)), ~18935u | arg_0, arg_2.a), min(abs(vec3<u32>(4294967295u, 0u, arg_2.b.x)), ~(vec3<u32>(4294967295u, 4294967295u, global2.a) ^ vec3<u32>(4294967295u, 45441u, global2.b.x))), select(select(vec3<bool>(arg_3, true, true), !vec3<bool>(arg_3, arg_3, arg_3), select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, true, false), true)), select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, var_0), vec3<bool>(true, true, true)), vec3<bool>(false, true, any(vec4<bool>(true, true, arg_3, arg_3))))), Struct_1(1u, ~vec2<u32>(global1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.x, 76653u, 1u), vec3<u32>(arg_0, arg_0, 4294967295u))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(181f, global1.c, global2.c) + vec3<f32>(-421f, 364f, -1493f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 811f, 1485f) - vec3<f32>(1445f, 806f, -104f)))).c, u_input.a.x));
    let var_3 = true;
    var_2 = Struct_1(var_2.b.x, vec2<u32>(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(global2.b.x, 42030u, arg_2.a), ~vec3<u32>(59841u, arg_2.b.x, 7146u), !vec3<bool>(var_3, var_3, var_0)), ~(vec3<u32>(1u, arg_0, global1.b.x) | vec3<u32>(global2.a, 30884u, 1u))), 49413u), 1f, -2147483647i);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.a, 1u), ~global2.b.x), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(global2.b.x, 27887u), global1.b, vec2<bool>(false, false)), ~vec2<u32>(global1.b.x, global1.b.x))), global2.b, global1.c, -19336i);
    global2 = Struct_1(~func_5(~_wgslsmith_div_u32(0u, global1.b.x), ~46i, func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1.a, global1.b.x), vec3<u32>(global1.a, 0u, global1.b.x)), Struct_1(global2.a, global1.b, -244f, var_0.d)), any(vec2<bool>(true, true))), vec2<u32>(global2.b.x ^ var_0.b.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.a, 1u, global2.b.x, 25266u) | vec4<u32>(global2.a, 81944u, 1u, 46299u)), abs(firstTrailingBit(vec4<u32>(42503u, 46246u, var_0.a, var_0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(732f)) + _wgslsmith_f_op_f32(global2.c + global1.c)))) - _wgslsmith_f_op_f32(trunc(-347f))), global2.d);
    var var_1 = Struct_1(0u, vec2<u32>(global1.a, var_0.b.x ^ var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(962f - global0[_wgslsmith_index_u32(23083u, 8u)]))))), _wgslsmith_f_op_f32(-var_0.c)), abs(-(2147483647i | (u_input.a.x >> (42969u % 32u)))));
    let var_2 = _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_1.c, Struct_1(global2.b.x, global1.b, global1.c, var_1.d), u_input.a)) - _wgslsmith_f_op_f32(f32(-1f) * -312f))))));
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1984f, global1.c, -1246f), vec3<f32>(-189f, 1538f, 1000f)) - vec3<f32>(-1027f, var_1.c, global2.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-754f, global2.c, 131f), vec3<f32>(-672f, 842f, var_0.c))))));
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, global2.c, -1027f), vec3<f32>(471f, 1132f, var_1.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, var_0.c, global2.c) - vec3<f32>(1000f, -432f, 712f)))), vec3<bool>(true, true, true))) - vec3<f32>(var_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-354f + var_2), -924f)), var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1203f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f) * -707f), _wgslsmith_f_op_f32(abs(func_2(vec3<f32>(global1.c, var_3.c, 1176f)).c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.c)), _wgslsmith_f_op_f32(1012f - 165f))) * _wgslsmith_f_op_f32(1429f - var_0.c)), vec2<i32>((i32(-1i) * -7127i) | -var_1.d, -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(132f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.b.x, 8u)]))))));
}

