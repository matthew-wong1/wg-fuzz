struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<f32>;

var<private> global2: i32;

var<private> global3: array<vec2<i32>, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, -1884f, arg_3.b));
    global1 = vec3<f32>(global1.x, -175f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.b)) - arg_3.b), _wgslsmith_div_f32(684f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b - arg_3.b)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1356f - arg_3.b), global1.x, _wgslsmith_div_f32(-130f, -342f), 453f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1312f, 1047f, 338f, global1.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b, global1.x, 479f, -136f))))))));
    let var_1 = _wgslsmith_f_op_f32(1176f * global1.x);
    global2 = _wgslsmith_mod_i32(~firstLeadingBit(arg_2.c.x), _wgslsmith_clamp_i32(27076i << (global0.x % 32u), -arg_3.e, _wgslsmith_dot_vec4_i32((vec4<i32>(0i, 4313i, 0i, -2147483647i) >> (vec4<u32>(4294967295u, 70627u, global0.x, global0.x) % vec4<u32>(32u))) >> (~vec4<u32>(28404u, 4270u, u_input.a, global0.x) % vec4<u32>(32u)), (vec4<i32>(-2147483647i, -41156i, arg_2.e, 10670i) & vec4<i32>(13473i, -1i, -1i, arg_2.e)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, -3998i, arg_3.c.x), vec4<i32>(arg_3.e, -26338i, -1i, -2147483647i), vec4<i32>(36596i, arg_2.e, arg_2.c.x, arg_0)))));
    return ~(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(11994i, arg_2.e), 1i), 19723i) << (54708u % 32u));
}

fn func_2() -> Struct_2 {
    global3 = array<vec2<i32>, 9>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x + 497f), global1.x) * vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, global1.x)), -1455f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 306f) + global1.zy), vec2<f32>(global1.x, 656f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global1.x))))))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -295f, global1.x), vec3<f32>(-769f, global1.x, -315f), vec3<bool>(false, false, true))) - vec3<f32>(global1.x, 1995f, var_0.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(476f, 2123f, -1949f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-217f, global1.x, -373f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1338f, _wgslsmith_f_op_f32(-global1.x), var_0.x))));
    let var_1 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -13554i, 36214i), vec4<i32>(1i, -1i, 0i, 38519i)), 0i, func_3(1i, vec4<bool>(true, true, true, true), Struct_1(false, 1477f, vec3<i32>(-54219i, -14492i, -35150i), vec3<bool>(true, true, true), -20825i), Struct_1(true, global1.x, vec3<i32>(-15492i, 0i, -2147483647i), vec3<bool>(false, false, true), 2147483647i))), reverseBits(vec3<i32>(1i, 2147483647i, i32(-1i) * -3130i))), 2147483647i, !all(vec4<bool>(false, false, true, true)));
    let var_2 = _wgslsmith_mult_vec2_i32(global3[_wgslsmith_index_u32(~((global0.x << (global0.x % 32u)) & abs(1u)), 9u)], global3[_wgslsmith_index_u32(global0.x, 9u)]) >> (vec2<u32>(1u, ~global0.x) % vec2<u32>(32u));
    return Struct_2(_wgslsmith_f_op_f32(trunc(1000f)) != _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(max(-1614f, global1.x))))), 6170i, min(abs(firstLeadingBit(max(var_1, 48086i))), -12191i), select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), true), vec4<bool>(all(vec3<bool>(true, false, true)), true, any(vec3<bool>(true, true, true)) | true, true), false), true);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(2572f)), global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)));
    let var_1 = reverseBits(-vec4<i32>(reverseBits(arg_1.b), 1i, firstLeadingBit(min(0i, 1i)), -1i));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_0.x, 153f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1164f, 972f, global1.x) - vec3<f32>(global1.x, -1689f, 1537f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, -975f, var_0.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -1160f, -397f), vec3<f32>(var_0.x, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -550f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2421f, global1.x, -531f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-287f)), 1000f, global0.x < 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, global1.x))), _wgslsmith_f_op_f32(global1.x - 1271f))));
    return arg_1;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = func_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global0.x, global0.x), 4294967295u | global0.x, reverseBits(u_input.a), u_input.a), vec4<u32>(u_input.a, ~u_input.a, 63622u, 7272u)), func_2());
    var var_1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1230f)), _wgslsmith_f_op_f32(floor(-700f)))), -1565f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -891f, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-306f, var_1.x, global1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f + 1173f)) * 748f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(791f))))))));
    var var_2 = var_0;
    var var_3 = firstTrailingBit(_wgslsmith_add_vec3_i32(countOneBits(~reverseBits(vec3<i32>(arg_0, var_0.c, 19078i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(-83587i, 1i, -1i), vec3<i32>(-36111i, 41945i, 52368i) >> (global0.xwz % vec3<u32>(32u)))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(~global0.x, ~global0.x, ~global0.x, u_input.a | _wgslsmith_clamp_u32(36513u >> (u_input.a % 32u), min(global0.x, global0.x), 45140u)), (abs(~vec4<u32>(1u, u_input.a, global0.x, 4284u)) << (max(vec4<u32>(1u, 18737u, 0u, 38421u) ^ vec4<u32>(4579u, u_input.a, global0.x, 9835u), vec4<u32>(global0.x, u_input.a, global0.x, 1u) | vec4<u32>(global0.x, u_input.a, global0.x, u_input.a)) % vec4<u32>(32u))) & ~vec4<u32>(~1u, _wgslsmith_add_u32(u_input.a, u_input.a), ~global0.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = 1i;
    global0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, countOneBits(0u), global0.x, _wgslsmith_mod_u32(4294967295u, global0.x)), ~vec4<u32>(34815u, global0.x, 56282u, 83286u)) | ~((func_1(0i) >> (abs(vec4<u32>(1u, 4275u, u_input.a, global0.x)) % vec4<u32>(32u))) | vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.a, 31037u), vec4<u32>(global0.x, u_input.a, u_input.a, 38344u)), _wgslsmith_dot_vec2_u32(global0.xx, global0.xw), _wgslsmith_mod_u32(u_input.a, 57149u)));
    var var_2 = !(_wgslsmith_clamp_i32(firstLeadingBit(firstLeadingBit(-1i)), _wgslsmith_mod_i32(firstLeadingBit(-46201i), select(-2147483647i, 9131i, false)), 1i) > _wgslsmith_dot_vec2_i32(vec2<i32>(-1708i << (u_input.a % 32u), -29408i), reverseBits(global3[_wgslsmith_index_u32(60971u, 9u)] << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(reverseBits(select(~vec4<i32>(-2147483647i, -2147483647i, 20222i, -19896i), max(vec4<i32>(2147483647i, -58299i, 2147483647i, 1i), vec4<i32>(-1i, -2147483647i, -33923i, -44379i)), true)), vec4<i32>(-2147483647i, _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 8813i, -1i), vec4<i32>(1i, -55171i, -12229i, 14211i))), -1i, ~(-2147483647i))), i32(-1i) * -57559i, 4294967295u << (global0.x % 32u), 583f, global0.x >> (global0.x % 32u));
}

