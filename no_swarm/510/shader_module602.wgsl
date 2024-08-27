struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = ~min(max(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(57309u, 16u)], arg_1), vec4<u32>(4294967295u, 51651u, 30688u, global0[_wgslsmith_index_u32(17175u, 16u)])), _wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_1, 0u, global0[_wgslsmith_index_u32(17050u, 16u)], global0[_wgslsmith_index_u32(33699u, 16u)])), ~vec4<u32>(1u, 52358u, 0u, 1u))), min(vec4<u32>(~global0[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, arg_1)), _wgslsmith_div_u32(0u, u_input.a), ~1u), vec4<u32>(1u, 51939u, ~36517u, arg_1 & 1u)));
    var var_1 = abs(vec3<i32>(1i, -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, arg_0)))) ^ vec3<i32>(arg_0, -1492i, 1i);
    var var_2 = Struct_2(vec4<u32>(select(arg_1, abs(0u), true), ~0u, min(_wgslsmith_mod_u32(~0u, ~arg_1), firstTrailingBit(1u)), u_input.a), _wgslsmith_clamp_i32(min(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, -2147483647i, 23775i), vec4<i32>(-12590i, 1665i, 14932i, var_1.x)), var_1.x), -82970i, u_input.b));
    var var_3 = 4294967295u;
    let var_4 = ~(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(31773u, var_0.x, 1u, 1u)), max(vec4<u32>(1u, 0u, u_input.a, u_input.a), vec4<u32>(var_2.a.x, var_0.x, var_0.x, var_0.x))));
    return !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-547f * 740f) - arg_2.x) < 1261f, (i32(-1i) * -2147483647i) == _wgslsmith_add_i32(var_2.b, 1i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = 31008u;
    var var_1 = !all(arg_0.a.xz);
    var_1 = arg_0.b;
    let var_2 = arg_0;
    let var_3 = Struct_4(vec3<i32>(u_input.b, arg_0.c, i32(-1i) * -1i), var_2, false, arg_0);
    return ~(~_wgslsmith_clamp_i32(arg_0.c & 19641i, var_2.c, _wgslsmith_add_i32(13742i, -14721i))) | _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(arg_0.c, var_2.c)), vec2<i32>(i32(-1i) * -18803i, var_3.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: f32) -> vec4<bool> {
    global0 = array<u32, 16>();
    var var_0 = false;
    var var_1 = any(func_2(1i, arg_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, _wgslsmith_f_op_f32(arg_3 + -1000f), arg_3, _wgslsmith_f_op_f32(select(789f, arg_3, arg_0.a.x))))));
    let var_2 = Struct_4(select(~(~vec3<i32>(arg_0.c, u_input.b, arg_0.c)), vec3<i32>(~2147483647i, _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b), !arg_0.a) & vec3<i32>(arg_0.c, 5506i, 0i), arg_0, !arg_0.a.x, Struct_1(vec3<bool>(false, u_input.b >= func_3(arg_0, arg_0.b), arg_0.a.x), arg_0.b, -2147483647i, min(1u, u_input.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, arg_3) + _wgslsmith_f_op_f32(round(-451f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-933f + arg_3))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-312f, arg_3), vec2<f32>(-394f, -1343f))))))));
    return !select(!(!select(vec4<bool>(arg_0.a.x, arg_0.b, var_2.c, arg_0.a.x), vec4<bool>(false, arg_0.a.x, true, false), var_2.d.a.x)), vec4<bool>(true, any(!vec4<bool>(arg_0.a.x, arg_0.b, true, var_2.d.b)), !all(vec3<bool>(arg_0.b, true, true)), false), arg_0.a.x | !(false & var_2.c));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(vec3<bool>(all(vec4<bool>(any(vec2<bool>(arg_1.x, arg_1.x)), true, arg_0.a.x <= 15410u, arg_1.x | false)), true, arg_1.x), arg_1.x, u_input.b, 41988u);
    global0 = array<u32, 16>();
    var var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, var_0.c, abs(30145i), u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(~1i, u_input.b, -1i >> (arg_0.a.x % 32u), u_input.b), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(var_0.c, -2147483647i, 10641i, arg_0.b)), vec4<i32>(-1i, 2147483647i, var_0.c, -2147483647i))) | vec4<i32>(1i, abs(firstTrailingBit(0i)), min(~(-43336i), arg_0.b), arg_0.b));
    var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.xwx, vec3<i32>(var_0.c, -(16179i & u_input.b), var_1.x)), _wgslsmith_sub_i32(~min(u_input.b, -1i), -var_0.c), 1i, ~firstLeadingBit(-2147483647i) >> (arg_0.a.x % 32u));
    var var_2 = Struct_2((vec4<u32>(u_input.a, max(4294967295u, arg_0.a.x), ~var_0.d, global0[_wgslsmith_index_u32(1u, 16u)]) >> (arg_0.a % vec4<u32>(32u))) | ~vec4<u32>(abs(4294967295u), _wgslsmith_add_u32(arg_0.a.x, 4294967295u), ~4294967295u, 79139u >> (arg_0.a.x % 32u)), var_1.x);
    return (firstLeadingBit(~(-var_0.c)) & u_input.b) | select(53516i, 2147483647i, !(!(!arg_1.x)));
}

fn func_5(arg_0: i32) -> Struct_4 {
    let var_0 = Struct_2(min(~_wgslsmith_div_vec4_u32(vec4<u32>(9746u, 0u, 1u, 0u), select(vec4<u32>(48101u, 17714u, 78693u, 0u), vec4<u32>(24181u, u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<bool>(true, true, true, true))), vec4<u32>(~global0[_wgslsmith_index_u32(abs(u_input.a), 16u)], 5752u, 1u, u_input.a)), _wgslsmith_div_i32(45824i, -33543i));
    var var_1 = Struct_1(!func_1(Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), false, u_input.b, ~var_0.a.x), var_0.a, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) * -954f)).xyy, any(select(vec3<bool>(func_1(Struct_1(vec3<bool>(false, false, false), false, var_0.b, global0[_wgslsmith_index_u32(4294967295u, 16u)]), var_0.a, vec4<u32>(var_0.a.x, 19462u, u_input.a, global0[_wgslsmith_index_u32(42732u, 16u)]), 144f).x, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false), true))), _wgslsmith_mult_i32(22271i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, var_0.b, var_0.b, 70207i)), vec4<i32>(1i, u_input.b, arg_0, 29357i)) ^ (select(var_0.b, var_0.b, false) << (4294967295u % 32u))), global0[_wgslsmith_index_u32(30990u, 16u)]);
    var var_2 = Struct_1(var_1.a, !var_1.b, abs(var_0.b) ^ var_0.b, ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(60467u, var_0.a.x, u_input.a), abs(vec3<u32>(global0[_wgslsmith_index_u32(var_1.d, 16u)], 0u, 71118u))), 16u)], _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(38882u, 16u)], 4294967295u)));
    global0 = array<u32, 16>();
    var var_3 = countOneBits(firstTrailingBit(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(firstTrailingBit(var_0.a.x), 4294967295u ^ global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(39239u, var_2.d), vec2<u32>(var_2.d, 4294967295u)), 16u)]))));
    return Struct_4(vec3<i32>(-28797i, _wgslsmith_div_i32(_wgslsmith_mod_i32(~var_0.b, -58761i << (u_input.a % 32u)), 2147483647i), 25071i), Struct_1(func_1(Struct_1(vec3<bool>(true, true, true), var_1.a.x && false, -1i, var_0.a.x), ~select(var_0.a, var_0.a, vec4<bool>(var_1.b, var_2.b, var_2.a.x, var_1.a.x)), var_0.a, 2468f).wwy, !any(vec2<bool>(var_1.a.x, false)) | var_2.a.x, ~_wgslsmith_div_i32(~arg_0, -var_0.b), var_1.d), abs(var_2.d) <= var_0.a.x, Struct_1(!vec3<bool>(true, select(false, var_2.a.x, var_2.b), var_2.a.x), false, u_input.b, ~51524u));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1073f, -924f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -141f), 428f) + vec2<f32>(_wgslsmith_f_op_f32(ceil(753f)), _wgslsmith_f_op_f32(f32(-1f) * -187f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-429f - 661f), -1453f))));
    let var_1 = arg_0.b.a.xy;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1037f, _wgslsmith_f_op_f32(sign(260f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 366f), vec2<f32>(1000f, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1528f, var_0.x) - vec2<f32>(-188f, -905f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-404f, -589f) + vec2<f32>(1156f, -565f)))))));
    let var_2 = Struct_2(~(firstLeadingBit(~vec4<u32>(4682u, arg_0.b.d, arg_0.b.d, global0[_wgslsmith_index_u32(2713u, 16u)])) >> (reverseBits(vec4<u32>(1u, 26361u, u_input.a, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_mod_i32(u_input.b | ~(i32(-1i) * -1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(15030i, arg_1.a), ~_wgslsmith_div_i32(arg_0.d.c, u_input.b))));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-600f)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(Struct_2(vec4<u32>(4294967295u, u_input.a, 4294967295u, 3350u), i32(-1i) * -2147483647i), select(func_1(Struct_1(vec3<bool>(true, true, false), true, u_input.b, 0u), vec4<u32>(0u, 1u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43563u, 16u)], 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 16u)], 80357u), -209f), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), Struct_3(2147483647i >> (~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5470u, 16u)], 16u)] >> (4294967295u % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-829f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-227f, 1000f) + vec2<f32>(-222f, 855f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, 241f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(516f, -263f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1774f, 232f, 392f, 1871f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1275f, 772f, -1031f, 781f))))))));
}

