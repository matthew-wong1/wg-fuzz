struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 14330i, -56486i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    global0 = array<vec2<i32>, 10>();
    let var_0 = !select(!vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(false, true & any(vec3<bool>(false, true, true))), true);
    let var_1 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(662f, arg_1.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    let var_3 = var_2;
    return Struct_2(Struct_1(var_0.x, any(select(vec3<bool>(var_0.x, true, true), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, var_0.x), var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, false), true))), (!var_0.x & (u_input.a <= 4336u)) || var_0.x, all(!vec4<bool>(var_0.x, false, false, var_0.x)) || true));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> Struct_2 {
    global0 = array<vec2<i32>, 10>();
    var var_0 = 21081i;
    let var_1 = Struct_1(!((false | arg_0.a.c) && !arg_0.a.d) && all(vec4<bool>(arg_0.a.c && false, all(vec4<bool>(false, arg_0.a.a, false, arg_0.a.d)), true, true)), func_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-21933i, global1.x), select(1i, -2147483647i, true)), _wgslsmith_f_op_vec2_f32(arg_2.xx * vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-1000f + arg_2.x))), abs(1i)).a.b, true, false);
    var var_2 = _wgslsmith_mod_vec2_i32(~(~global0[_wgslsmith_index_u32(~u_input.a, 10u)]), _wgslsmith_mod_vec2_i32(global1.yy, vec2<i32>(0i, 2147483647i)));
    let var_3 = arg_2.x;
    return func_2(-(select(-5845i, _wgslsmith_div_i32(var_2.x, -1i), var_1.c) & 1i), arg_2.zy, var_2.x);
}

fn func_1() -> vec2<bool> {
    global1 = ~_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(countOneBits(13120i), global1.x, ~global1.x)), max(vec3<i32>(~2147483647i, min(global1.x, global1.x), _wgslsmith_sub_i32(-2434i, global1.x)), vec3<i32>(~global1.x, ~(-72063i), _wgslsmith_div_i32(global1.x, global1.x))), -abs(firstLeadingBit(vec3<i32>(global1.x, global1.x, global1.x))));
    let var_0 = func_3(func_2(global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1788f, 463f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1553f, -405f) + vec2<f32>(618f, -105f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-926f, 722f))))), _wgslsmith_mult_i32(1i, 1i)), min(select(1u, 0u, !all(vec3<bool>(false, true, true))), _wgslsmith_clamp_u32(1u, u_input.a | firstLeadingBit(u_input.a), reverseBits(18824u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(747f, -1580f, -1000f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(153f, 1456f, 1322f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(304f, -129f, _wgslsmith_div_f32(-638f, 475f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1313f, 1064f, 674f))), var_0.a.d))));
    global1 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(max(~vec3<i32>(global1.x, 1i, -2147483647i), abs(vec3<i32>(global1.x, -27811i, -2147483647i))) & vec3<i32>(~global1.x, _wgslsmith_div_i32(global1.x, global1.x), -8858i), vec3<i32>(-(~2147483647i), global1.x, ~(-global1.x))), vec3<i32>(global1.x, max(global1.x, global1.x), (i32(-1i) * -global1.x) >> (u_input.a % 32u)));
    var var_2 = max(~vec4<u32>(select(0u, u_input.a, true), ~(~u_input.a), max(20700u ^ u_input.a, min(u_input.a, 52664u)), ~58048u), ~(~vec4<u32>(17741u, 0u, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(43457u, 4294967295u, u_input.a), vec3<u32>(36698u, u_input.a, 0u)))));
    return vec2<bool>(true, !(!any(vec4<bool>(var_0.a.d, var_0.a.a, true, var_0.a.a))) | all(vec4<bool>(true, var_0.a.a | var_0.a.c, func_2(-38036i, var_1.zx, global1.x).a.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-46317i == _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(global1.x, 1i, 15126i), vec3<i32>(global1.x, global1.x, global1.x)), ~vec3<i32>(1i, 33816i, global1.x) >> ((vec3<u32>(u_input.a, u_input.a, 0u) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), all(!(!func_1())), true, u_input.a < (~(~u_input.a) | ~(~u_input.a)));
    var var_1 = func_2(-1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2083f, -276f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) - vec2<f32>(-654f, 715f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1279f, 1563f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1056f, 1208f) + vec2<f32>(1769f, 1470f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(876f)), -1514f))), ~(-(0i & ~global1.x)));
    var var_2 = _wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(47260u, 26545u), vec2<u32>(u_input.a, 62073u)), _wgslsmith_mod_u32(u_input.a, u_input.a ^ 0u), u_input.a, 23241u), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 40114u, 37185u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 61737u))), true), vec4<u32>(max(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 74245u)) | ~53640u), 4774u, u_input.a, u_input.a));
    global0 = array<vec2<i32>, 10>();
    let var_3 = func_3(func_3(func_2(-2147483647i, vec2<f32>(_wgslsmith_f_op_f32(-370f - 779f), _wgslsmith_f_op_f32(f32(-1f) * -985f)), 42611i << (var_2.x % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(var_2.ww), var_2.yz), ~(vec2<u32>(36107u, 24570u) ^ var_2.xw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 734f, -582f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 340f, -999f), vec3<f32>(-892f, 1000f, 504f)))))), var_2.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1051f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(654f * -178f), _wgslsmith_f_op_f32(max(754f, -124f)), false)), 1000f)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-global1.x, global1.x ^ global1.x, ~global1.x, ~(-37936i)), vec4<i32>(_wgslsmith_mult_i32(global1.x ^ global1.x, firstTrailingBit(20262i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global1.x, global1.x), vec4<i32>(global1.x, global1.x, -110412i, global1.x)) & (i32(-1i) * -4067i), -(global1.x >> (var_2.x % 32u)), min(global1.x, 0i) & _wgslsmith_mult_i32(global1.x, 46645i)), vec4<i32>(i32(-1i) * -22155i, 1i, 1i, _wgslsmith_mult_i32(-29917i, global1.x)) | _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, global1.x, 1684i, 1i), vec4<i32>(global1.x, global1.x, -1i, -252i), vec4<i32>(global1.x, global1.x, 1i, 30789i)), vec4<i32>(global1.x, global1.x, -2147483647i, -2147483647i))), vec4<f32>(532f, _wgslsmith_f_op_f32(-880f - 1f), 191f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f), -1000f))));
}

