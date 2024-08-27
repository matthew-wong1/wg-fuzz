struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: u32;

var<private> global2: Struct_4;

var<private> global3: i32 = 22306i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = Struct_1(global2.b.xw, !(!global0[_wgslsmith_index_u32(0u, 6u)]), u_input.a.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(global2.a.x, arg_1.c.x, !arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x)), _wgslsmith_f_op_f32(-1372f - -132f), -731f))));
    global2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(min(-164f, _wgslsmith_f_op_f32(1751f - _wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) - _wgslsmith_f_op_f32(global2.a.x * 1f))), global2.b, _wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(1742f, global2.d.x, all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(ceil(1000f)))))), var_0.d.xxx);
    global3 = min(select(2147483647i, -23871i, !(-300f == _wgslsmith_f_op_f32(var_0.d.x + -499f))), firstTrailingBit(abs(firstLeadingBit(u_input.a.x))));
    var var_1 = 1466f;
    var var_2 = global2.b.wyy;
    return (abs(~min(vec4<i32>(2147483647i, -1i, var_0.c, 1i), vec4<i32>(52i, var_0.c, -37929i, -44294i))) >> (~global2.b % vec4<u32>(32u))) & vec4<i32>(var_0.c, -38179i, _wgslsmith_mod_i32(u_input.a.x, 56499i), 10933i);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> vec4<f32> {
    let var_0 = vec2<i32>(~(-u_input.a.x), _wgslsmith_dot_vec4_i32(max(func_3(false, Struct_3(arg_1, vec3<bool>(true, false, false), vec4<f32>(764f, 785f, -1160f, 1819f), 698f)), vec4<i32>(~u_input.a.x, -43085i, abs(u_input.a.x), ~u_input.a.x)), vec4<i32>(max(u_input.a.x, u_input.a.x), abs(u_input.a.x), -1i << (reverseBits(arg_0.x) % 32u), min(_wgslsmith_sub_i32(1i, u_input.a.x), -24571i))));
    let var_1 = Struct_4(global2.a, ~(~vec4<u32>(~arg_0.x, arg_1, arg_1, _wgslsmith_dot_vec2_u32(global2.b.wy, vec2<u32>(0u, 1u)))), _wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_vec2_f32(global2.a + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global2.c * 392f), -520f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_div_f32(global2.a.x, global2.c)), global2.c, -542f), global2.e));
    let var_2 = Struct_1(_wgslsmith_mult_vec2_u32(~reverseBits(firstLeadingBit(var_1.b.yz)), _wgslsmith_div_vec2_u32(global2.b.xx, reverseBits(vec2<u32>(4294967295u, arg_0.x)))), !vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, false)), select(false, select(false, true, false), select(true, true, false))), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.c, -557f, global2.e.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, global2.c, -939f, 412f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1763f, 2288f, 667f, 634f) * vec4<f32>(1000f, global2.d.x, var_1.c, 1240f))))));
    var var_3 = min(vec4<i32>(-u_input.a.x, u_input.a.x, ~var_0.x, -37304i) << (~(~min(global2.b, var_1.b)) % vec4<u32>(32u)), vec4<i32>(1i, 2147483647i, 68029i, var_0.x));
    var_3 = firstLeadingBit(~vec4<i32>(abs(2147483647i), -15975i, -(var_2.c << (16741u % 32u)), _wgslsmith_sub_i32(-4001i, u_input.a.x) >> (arg_0.x % 32u)));
    return vec4<f32>(-270f, var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.e.x)))) + _wgslsmith_f_op_f32(var_1.e.x * 1175f)), _wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(select(var_1.c, 186f, false))));
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    let var_0 = Struct_2(Struct_1(reverseBits(vec2<u32>(18459u, 0u) ^ arg_0.b.wx), !select(select(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), -_wgslsmith_clamp_i32(u_input.a.x, firstLeadingBit(u_input.a.x), 1i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2(~vec2<u32>(global2.b.x, arg_0.b.x), countOneBits(global2.b.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, arg_0.a.x, 1493f, arg_0.d.x))))))), u_input.a.x);
    var var_1 = firstTrailingBit(vec2<i32>(~(-1i), -abs(~(-58i))));
    return vec3<bool>(true, all(select(!global0[_wgslsmith_index_u32(var_0.a.a.x, 6u)], vec3<bool>(false, var_0.a.b.x, var_0.a.b.x), vec3<bool>(true, var_0.a.b.x, var_0.a.b.x))) | all(!select(vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, var_0.a.b.x), vec4<bool>(var_0.a.b.x, true, false, var_0.a.b.x), true)), true && var_0.a.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<bool>) -> Struct_4 {
    global1 = _wgslsmith_div_u32(25929u, firstTrailingBit(_wgslsmith_dot_vec3_u32(~(~global2.b.wzy), vec3<u32>(global2.b.x, 59288u, ~0u))));
    global3 = u_input.a.x;
    let var_0 = arg_2;
    var var_1 = 0i;
    global3 = abs(-1i) << (~global2.b.x % 32u);
    return Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2(~vec2<u32>(1u, 1u), _wgslsmith_mult_u32(abs(77461u), firstTrailingBit(0u)))).yx, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global2.e.zy, _wgslsmith_f_op_vec2_f32(min(global2.a, vec2<f32>(-863f, global2.a.x))), arg_2.xx))))), global2.b, global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(877f, arg_1, arg_2.x)), -1065f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.e.zx))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) - arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-659f * global2.d.x))), -1158f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(~u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(980f * global2.a.x) + global2.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1024f - global2.d.x)), _wgslsmith_div_f32(650f, -1041f))))), select(global0[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_mult_u32(global2.b.x, 4294967295u))), 6u)], select(select(func_1(Struct_4(vec2<f32>(global2.a.x, global2.d.x), vec4<u32>(global2.b.x, global2.b.x, 1u, 0u), global2.c, vec2<f32>(global2.d.x, global2.a.x), vec3<f32>(-1049f, 391f, -2387f))), global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(firstTrailingBit(20272u), 6u)]), vec3<bool>(true, false, all(vec2<bool>(true, false))), select(global0[_wgslsmith_index_u32(firstTrailingBit(6348u), 6u)], select(global0[_wgslsmith_index_u32(39429u, 6u)], global0[_wgslsmith_index_u32(global2.b.x, 6u)], false), -1i == u_input.a.x)), !select(select(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(1u, 6u)], vec3<bool>(false, false, false)), vec3<bool>(true, true, true), func_1(Struct_4(vec2<f32>(global2.e.x, global2.a.x), global2.b, global2.c, global2.e.zy, vec3<f32>(891f, global2.c, global2.d.x))))));
    let var_0 = select(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, -53300i) & vec4<i32>(23990i, u_input.a.x, -11068i, u_input.a.x), firstTrailingBit(vec4<i32>(-21678i, -1i, 19205i, 1i))), firstLeadingBit(_wgslsmith_div_i32(1i, -10237i))), firstTrailingBit(select(u_input.a.xy, ~u_input.a.xx, func_1(Struct_4(global2.d, vec4<u32>(global2.b.x, global2.b.x, global2.b.x, 0u), global2.c, vec2<f32>(global2.c, global2.e.x), vec3<f32>(global2.d.x, global2.c, global2.c))).xz)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, max(u_input.a.zy, u_input.a.yx)), select(reverseBits(2147483647i), 1i, true))), select(-(~u_input.a.yy), vec2<i32>(u_input.a.x, u_input.a.x), all(vec2<bool>(true, any(vec2<bool>(false, true))))), true);
    let var_1 = abs(~(global2.b.x | firstLeadingBit(~0u)));
    global0 = array<vec3<bool>, 6>();
    var var_2 = Struct_1(select(select(func_4(-u_input.a, _wgslsmith_f_op_f32(-global2.c), global0[_wgslsmith_index_u32(~var_1, 6u)]).b.yw, ~abs(vec2<u32>(global2.b.x, 6035u)), false), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global2.b.x, 0u), ~vec2<u32>(global2.b.x, 1u) >> (global2.b.xw % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(abs(global2.b.yz), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.b.x, 42074u), global2.b.yy))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, select(true, true, true)), true)), global0[_wgslsmith_index_u32(~(1u << (_wgslsmith_div_u32(var_1, ~103911u) % 32u)), 6u)], 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-765f, -626f, 2716f, 1241f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.c, 2255f, global2.e.x, global2.e.x))))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.x - var_2.d.x), -1712f))) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-235f)), var_2.d.x), -769f));
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~global2.b.xxz, -(~0i), _wgslsmith_mod_vec3_i32(~firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a)), u_input.a), countOneBits(firstTrailingBit(select(vec3<u32>(global2.b.x, 2669u, var_2.a.x) | vec3<u32>(global2.b.x, var_1, 4294967295u), global2.b.wwx, any(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x))))));
}

