struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 15>;

var<private> global4: Struct_2 = Struct_2(false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1712f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1208f))) * _wgslsmith_div_f32(-999f, _wgslsmith_f_op_f32(f32(-1f) * -662f))), _wgslsmith_f_op_f32(-336f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1784f))))))), true));
    global3 = array<vec2<u32>, 15>();
    let var_1 = Struct_2(!(arg_2 > ~_wgslsmith_div_i32(-1i, u_input.a.x)));
    var var_2 = Struct_2(false);
    let var_3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1206f));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(56670u, 14u)], select(vec4<bool>(false, global4.a, global2.a, true), vec4<bool>(global4.a, global2.a, global4.a, global4.a), false), u_input.a.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(328f))))), _wgslsmith_f_op_f32(-541f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1363f) - -831f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-802f, -839f, 960f) + vec3<f32>(684f, 1988f, -1028f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(786f, 383f, -1520f) + vec3<f32>(-1890f, 367f, 597f))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1476f * 665f), -704f, -699f)))))));
    var var_1 = true;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1070f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -190f) - var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -160f));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -217f) - vec3<f32>(var_0.x, -1000f, var_0.x)) - vec3<f32>(539f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1836f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, 165f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(835f, var_0.x, var_0.x), vec3<f32>(-1529f, 1100f, -1000f)))))));
    return ~_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 16u)], 28411u)), vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46969u, 16u)], 16u)], 16u)], 16u)], ~79576u, _wgslsmith_dot_vec3_u32(vec3<u32>(92708u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49410u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46529u, 16u)], 16u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(0u, 16u)], 31195u)))), _wgslsmith_sub_u32(34628u, max(global0[_wgslsmith_index_u32(45904u, 16u)], ~global0[_wgslsmith_index_u32(4294967295u, 16u)])));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.wwz, arg_0.xwz), ~arg_0.xzz), abs(arg_0.zxy), arg_0.xyy);
    var var_1 = var_0.yx;
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~1u, 30113u), select(vec3<u32>(~0u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], func_2()), vec3<u32>(~100377u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], 0u, global0[_wgslsmith_index_u32(40079u, 16u)]), vec4<u32>(54297u, global0[_wgslsmith_index_u32(1u, 16u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)])), reverseBits(global0[_wgslsmith_index_u32(42538u, 16u)])), vec3<bool>(global2.a, true, !arg_1.a)));
    global2 = Struct_1(any(!(!(!vec2<bool>(arg_1.a, true)))));
    return Struct_2(arg_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1731f) * _wgslsmith_div_f32(1132f, 1000f)) * -163f), _wgslsmith_f_op_f32(func_3(Struct_1(arg_2.a), select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_2.a, true, arg_0.a)), !vec4<bool>(global2.a, arg_0.a, arg_1, global2.a), vec4<bool>(false, global4.a, arg_0.a, arg_0.a)), 1i))))));
    global4 = Struct_2(arg_1);
    var var_1 = vec4<i32>(1i, firstLeadingBit(~u_input.a.x), 31569i, ~1i);
    var_1 = vec4<i32>(-22578i, abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.x, 0i) & firstTrailingBit(var_1.x), u_input.a.x | -var_1.x, ~select(-5227i, u_input.a.x, false))), var_1.x, u_input.a.x);
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-(~var_1.wyw), (var_1.wzx ^ vec3<i32>(u_input.a.x, var_1.x, u_input.a.x)) & max(var_1.zwy, vec3<i32>(u_input.a.x, u_input.a.x, var_1.x))) << (~6609u % 32u), -1i);
    return select(select(vec2<bool>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) < 1i, any(!vec4<bool>(true, arg_2.a, global2.a, arg_1))), !select(vec2<bool>(true, true), vec2<bool>(arg_2.a, true), vec2<bool>(false, arg_1)), !vec2<bool>(arg_3 <= 5860u, true)), vec2<bool>(arg_1, !(!arg_2.a)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(global4.a | any(!vec3<bool>(global4.a, false, global4.a))), any(!(!(!vec4<bool>(global2.a, false, global4.a, global2.a)))));
    var_0 = !select(vec2<bool>(!global4.a, var_0.x), func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16795u, 16u)], 16u)], global0[_wgslsmith_index_u32(51493u, 16u)]) << (vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)]) % vec3<u32>(32u)), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 44725u, 1u)), 14u)], true, func_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(true)), ~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)])), !(!any(vec4<bool>(global4.a, var_0.x, global2.a, true))));
    let var_1 = vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 82854u, 1u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 69067u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)]), vec3<u32>(0u, 0u, 2819u), vec3<bool>(global2.a, true, false)), select(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11239u, 16u)], 16u)], 40135u), false))), ~_wgslsmith_dot_vec2_u32(~global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 15u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~2584u, 16u)], 15u)]), any(select(!vec3<bool>(false, global2.a, global4.a), vec3<bool>(true, false, false), var_0.x != var_0.x))), global0[_wgslsmith_index_u32(36079u, 16u)], 4294967295u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 47134u) << (~4294967295u % 32u), 16u)] & 0u, 16u)]);
    var var_2 = global4.a;
    var var_3 = func_1(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 0i), vec4<i32>(-35690i, u_input.a.x, -2147483647i, -3398i)) ^ abs(abs(u_input.a.x)), max(-(u_input.a.x ^ u_input.a.x), abs(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), -_wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_sub_i32(-31509i, u_input.a.x)), _wgslsmith_add_i32(-2147483647i, u_input.a.x)), func_1(~firstLeadingBit(vec4<i32>(u_input.a.x, 39588i, u_input.a.x, 1i)), func_1(-(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 0i) & vec4<i32>(1i, 47062i, u_input.a.x, u_input.a.x)), func_1(~vec4<i32>(1i, 22003i, -2147483647i, u_input.a.x), func_1(vec4<i32>(-58458i, 1i, u_input.a.x, 0i), Struct_2(global2.a))))));
    let var_4 = vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(~max(vec3<i32>(-34142i, u_input.a.x, -65892i), vec3<i32>(u_input.a.x, -1i, 2147483647i)), ~max(vec3<i32>(29964i, u_input.a.x, 37038i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    let var_5 = func_1(select(_wgslsmith_mult_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(0i, 0i, -1i, -2147483647i))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(46195i, 14787i, 52985i, -2147483647i), vec4<i32>(var_4.x, u_input.a.x, -2147483647i, 11572i), vec4<i32>(var_4.x, var_4.x, 0i, u_input.a.x)))), ~(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 43024i), vec4<i32>(1i, 1i, 2147483647i, u_input.a.x), vec4<bool>(false, var_3.a, true, var_0.x)) >> (min(vec4<u32>(1u, 4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 30092u, var_1.x, 32495u)) % vec4<u32>(32u))), var_0.x), Struct_2(func_4(global1[_wgslsmith_index_u32(var_1.x, 14u)], any(!vec3<bool>(var_0.x, true, true)), Struct_2(true), ~countOneBits(40177u)).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(Struct_1(global4.a), !(!vec4<bool>(var_3.a, global2.a, global2.a, false)), abs(var_4.x | _wgslsmith_mod_i32(1i, u_input.a.x)))), 5858i, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(~3822i, 48965i)), global0[_wgslsmith_index_u32(~((max(var_1.x, 1u) << (abs(25899u) % 32u)) >> (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(24305u, 16u)]), 16u)], 16u)] % 32u)), 16u)], _wgslsmith_add_i32(~_wgslsmith_mod_i32(firstTrailingBit(var_4.x), 1i), max(countOneBits(abs(var_4.x)), -_wgslsmith_mult_i32(var_4.x, u_input.a.x))));
}

