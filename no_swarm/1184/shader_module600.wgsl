struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 20u)], 804f))));
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    let var_1 = Struct_4(select(vec3<bool>(arg_1.x, false, arg_1.x), !vec3<bool>(all(vec3<bool>(arg_1.x, arg_1.x, false)), !arg_1.x, true), !select(vec3<bool>(true, true, true), vec3<bool>(arg_1.x, arg_1.x, false), true)), ~reverseBits(vec3<u32>(1u, 1u, 1u)), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-arg_0.x)) * var_0)));
    global0 = array<f32, 20>();
    return var_0;
}

fn func_3() -> f32 {
    let var_0 = ~(~vec4<u32>(1u, 1u, 1u, 1u)) >> (~_wgslsmith_div_vec4_u32(~(~vec4<u32>(98058u, 30832u, 27986u, 60982u)), vec4<u32>(1u, abs(1u), 14899u, _wgslsmith_clamp_u32(0u, 68241u, 4294967295u))) % vec4<u32>(32u));
    global0 = array<f32, 20>();
    var var_1 = 4294967295u;
    let var_2 = true;
    var_1 = 1u & abs(max(65986u, var_0.x));
    return 1437f;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = ~firstTrailingBit(~2147483647i);
    let var_1 = true & ((_wgslsmith_f_op_f32(func_3()) < 2108f) && arg_2.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 20u)], -1235f, 2662f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(907f, global0[_wgslsmith_index_u32(0u, 20u)], -946f), vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(arg_0, 20u)]), arg_2))))))), vec3<i32>(_wgslsmith_add_i32(max(2147483647i, -u_input.a.x), -39598i), u_input.a.x, u_input.a.x), u_input.a.x);
    var var_3 = Struct_2(var_2.a, vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.b.x, -1i, 1i), vec3<i32>(0i, var_2.b.x, u_input.a.x) & vec3<i32>(u_input.a.x, 59864i, 12271i), vec3<i32>(u_input.a.x, 21223i, u_input.a.x)), ~_wgslsmith_mult_i32(countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.xx, var_2.b.zx)), -_wgslsmith_div_i32(-10056i, 56992i)));
    global0 = array<f32, 20>();
    return Struct_2(var_3.a, firstTrailingBit(vec3<i32>(_wgslsmith_mod_i32(-var_2.c, u_input.a.x), -9302i, ~0i)), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_2.c), ~vec2<i32>(var_2.c, -1i)) & 1i));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<i32>) -> i32 {
    global0 = array<f32, 20>();
    var var_0 = !(_wgslsmith_f_op_f32(-259f - arg_0.a.x) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f)))));
    global0 = array<f32, 20>();
    let var_1 = false;
    return -arg_1.x;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = min(vec2<i32>(firstLeadingBit(max(max(u_input.a.x, u_input.a.x), reverseBits(0i))), arg_0), ~vec2<i32>(-26532i >> ((14662u & arg_3.x) % 32u), arg_0));
    let var_1 = ~_wgslsmith_div_vec3_u32(~firstTrailingBit(~vec3<u32>(4294967295u, 4294967295u, 55709u)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, 7959u), vec3<u32>(arg_3.x, 16777u, 1u)), ~vec3<u32>(0u, 4294967295u, 0u)));
    let var_2 = Struct_4(vec3<bool>(arg_1.x, true, true), _wgslsmith_sub_vec3_u32(vec3<u32>(abs(1u) & (var_1.x & var_1.x), arg_3.x, ~firstTrailingBit(var_1.x)), abs(var_1)), 1u, 801f);
    global0 = array<f32, 20>();
    var var_3 = func_2(~min(~var_1.x, var_2.b.x), select(vec4<bool>(any(!var_2.a.xz), false, false, true), vec4<bool>(false, arg_1.x, arg_1.x, true), !all(!vec2<bool>(var_2.a.x, arg_1.x))), select(var_2.a, var_2.a, arg_1.x));
    return Struct_1(_wgslsmith_clamp_vec3_i32(select(var_3.b, var_3.b, !vec3<bool>(var_2.a.x, true, var_2.a.x)), u_input.a.wxy, ~_wgslsmith_sub_vec3_i32(vec3<i32>(16313i, 21244i, arg_0), u_input.a.ywx)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-633f, -779f, 532f, global0[_wgslsmith_index_u32(48289u, 20u)])) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(375f, -802f, global0[_wgslsmith_index_u32(70084u, 20u)], 685f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], 327f, -636f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, -383f, global0[_wgslsmith_index_u32(0u, 20u)], 762f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-813f, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), vec4<f32>(1918f, -464f, global0[_wgslsmith_index_u32(1u, 20u)], -1625f), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(960f, -130f, global0[_wgslsmith_index_u32(7676u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]) - vec4<f32>(1000f, global0[_wgslsmith_index_u32(76390u, 20u)], -1549f, global0[_wgslsmith_index_u32(1u, 20u)]))))));
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    var var_1 = arg_1;
    var_1 = func_5(~(-_wgslsmith_mod_i32(-1i, 1i)), select(arg_0, select(select(arg_0, vec3<bool>(false, arg_0.x, arg_0.x), true), arg_0, false), select(!arg_0, arg_0, select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x))), -arg_1.a >> (reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 1u), firstTrailingBit(vec3<u32>(1u, 0u, 0u)), ~vec3<u32>(1u, 0u, 2660u))) % vec3<u32>(32u)), firstTrailingBit(vec2<u32>(1u, 1u)));
    return Struct_3(arg_0.yx, u_input.a, arg_0.xz, var_0, 616f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1162f, global0[_wgslsmith_index_u32(46682u, 20u)], 1955f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(16111u, 20u)], global0[_wgslsmith_index_u32(7909u, 20u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(2942u, 20u)], -349f, global0[_wgslsmith_index_u32(1u, 20u)]) * vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], -268f, -469f)) * vec3<f32>(759f, global0[_wgslsmith_index_u32(22103u, 20u)], 472f))), vec2<bool>(true, true))) > 669f;
    var var_1 = func_6(select(select(select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(false, false, var_0), vec3<bool>(true, var_0, true)), select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, false), false), true), select(select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, var_0, true), false), !vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, true)), var_0), select(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, false, false), vec3<bool>(true, false, var_0)), !select(vec3<bool>(false, false, false), vec3<bool>(var_0, false, true), false), vec3<bool>(false, var_0 & var_0, true)), false | var_0), func_5(abs(-39417i), !select(!vec3<bool>(var_0, true, false), vec3<bool>(var_0, var_0, false), var_0), vec3<i32>(func_4(func_2(4294967295u, vec4<bool>(var_0, true, var_0, var_0), vec3<bool>(var_0, false, var_0)), u_input.a, -u_input.a.yzz), u_input.a.x, _wgslsmith_div_i32(~(-46300i), ~u_input.a.x)), countOneBits(abs(vec2<u32>(1u, 1u)))));
    global0 = array<f32, 20>();
    let var_2 = 9822i;
    let var_3 = _wgslsmith_div_i32(_wgslsmith_div_i32(var_2, min(u_input.a.x << (4718u % 32u), select(21792i, i32(-1i) * -15487i, true))), _wgslsmith_sub_i32(var_2 << (_wgslsmith_div_u32(34718u, 1u) % 32u), -42540i) >> (57191u % 32u));
    var var_4 = ~abs(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(19735u, 4294967295u, 96579u, 0u)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-547f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x + global0[_wgslsmith_index_u32(106314u, 20u)]), global0[_wgslsmith_index_u32(~4294967295u, 20u)]) - _wgslsmith_f_op_f32(f32(-1f) * -744f))), 1u);
}

