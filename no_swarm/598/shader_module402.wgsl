struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, vec2<f32>(-910f, -775f), 4294967295u, true, vec4<f32>(1869f, 1031f, -374f, -2323f)), Struct_1(true, vec2<f32>(347f, 1473f), 109716u, true, vec4<f32>(-202f, 1057f, -213f, -261f)), Struct_1(true, vec2<f32>(-1142f, -1000f), 44047u, true, vec4<f32>(1000f, 1245f, 1482f, -1000f)), Struct_1(true, vec2<f32>(550f, 202f), 1u, true, vec4<f32>(-1196f, 1000f, -441f, 1540f)), Struct_1(true, vec2<f32>(1423f, 381f), 0u, true, vec4<f32>(-280f, -1598f, -1000f, -640f)), Struct_1(false, vec2<f32>(-1222f, 614f), 97923u, false, vec4<f32>(639f, 2576f, 238f, 294f)), Struct_1(false, vec2<f32>(1346f, -734f), 1u, false, vec4<f32>(691f, 1539f, -1594f, -310f)), Struct_1(false, vec2<f32>(-1649f, 738f), 29290u, false, vec4<f32>(129f, -378f, -500f, -1320f)), Struct_1(true, vec2<f32>(-1445f, 2403f), 9615u, true, vec4<f32>(168f, -856f, -186f, -1509f)), Struct_1(true, vec2<f32>(-897f, -202f), 16785u, true, vec4<f32>(-812f, -706f, -743f, -188f)), Struct_1(false, vec2<f32>(1000f, 346f), 64538u, true, vec4<f32>(-804f, 234f, -1000f, -765f)));

var<private> global1: array<Struct_2, 2>;

var<private> global2: bool;

var<private> global3: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global0 = array<Struct_1, 11>();
    let var_0 = vec4<u32>(u_input.b, min(u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(73464u, u_input.b, u_input.b), firstTrailingBit(reverseBits(vec3<u32>(u_input.b, 13717u, u_input.b))))), _wgslsmith_dot_vec2_u32(~select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 26004u), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(1u, u_input.b)), !arg_0.a.yx), countOneBits(~firstTrailingBit(vec2<u32>(69316u, 4294967295u)))), u_input.b);
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(var_0.x, 2u)], false, Struct_2(_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, 12835i) | (vec2<i32>(u_input.a, -2147483647i) << (var_0.yx % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_clamp_i32(1i, 42371i, -83641i))), all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, true)), vec3<i32>(reverseBits(1i), _wgslsmith_add_i32(3647i, u_input.a) >> (_wgslsmith_sub_u32(2912u, u_input.b) % 32u), abs(firstTrailingBit(u_input.a))), global0[_wgslsmith_index_u32(u_input.b, 11u)]), vec3<bool>(true, false, false), u_input.a);
    let var_2 = Struct_2(var_1.a.a, false, ~var_1.a.c, Struct_1(true, var_1.c.d.e.yw, abs(_wgslsmith_dot_vec3_u32(var_0.yzx, var_0.xwy) << (_wgslsmith_clamp_u32(u_input.b, 1u, var_0.x) % 32u)), select(!any(vec4<bool>(false, arg_0.a.x, true, false)), var_1.d.x, var_1.c.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(max(-730f, 1000f)), -502f, _wgslsmith_div_f32(var_1.a.d.e.x, -594f))))));
    let var_3 = vec2<i32>(-4209i, 2147483647i);
    return 103854u;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_5(arg_0.c.b | !(func_3(Struct_4(vec4<bool>(arg_0.c.b, false, true, true))) < abs(arg_0.a.d.c)), -782f, u_input.a);
    global1 = array<Struct_2, 2>();
    global2 = false;
    global0 = array<Struct_1, 11>();
    global1 = array<Struct_2, 2>();
    return _wgslsmith_f_op_f32(548f * _wgslsmith_f_op_f32(-var_0.b));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global3 = array<vec3<bool>, 13>();
    global3 = array<vec3<bool>, 13>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(964f, _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(vec2<i32>(u_input.a, u_input.a), true, vec3<i32>(10952i, 1i, 2147483647i), Struct_1(false, vec2<f32>(670f, -2180f), u_input.b, true, vec4<f32>(-510f, 332f, -1000f, 538f))), false, Struct_2(vec2<i32>(u_input.a, -2147483647i), false, vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(true, vec2<f32>(1661f, 749f), 4294967295u, false, vec4<f32>(-556f, -106f, -539f, -1267f))), global3[_wgslsmith_index_u32(4294967295u, 13u)], -13437i), 0u, global1[_wgslsmith_index_u32(arg_0.x, 2u)], vec2<i32>(-17243i, u_input.a))))) - _wgslsmith_f_op_f32(max(-103f, _wgslsmith_f_op_f32(363f * 1237f)))), _wgslsmith_f_op_f32(min(-677f, _wgslsmith_div_f32(-590f, _wgslsmith_f_op_f32(max(-770f, 800f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_2 = Struct_4(vec4<bool>(firstLeadingBit(_wgslsmith_mult_i32(u_input.a, u_input.a)) == abs(u_input.a), !select(all(vec2<bool>(false, true)), select(true, true, false), true), !(true & select(true, false, true)), true));
    return var_1.x;
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: f32) -> Struct_5 {
    global3 = array<vec3<bool>, 13>();
    global2 = arg_1.a;
    var var_0 = Struct_2(vec2<i32>(u_input.a, 0i), 83258i != firstTrailingBit(abs(u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(min(arg_1.c, select(u_input.a, arg_1.c, true)), _wgslsmith_add_i32(arg_1.c | 24163i, -16109i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a, -1i)), -vec2<i32>(0i, u_input.a))), vec3<i32>(~(u_input.a & u_input.a), -2147483647i, -1i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 931f)) >= 1813f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, 1000f), vec2<f32>(arg_0, 2062f), true)))))), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(u_input.b | 1u, func_3(Struct_4(vec4<bool>(arg_1.a, false, false, true))), 0u)), all(vec3<bool>(all(vec2<bool>(arg_1.a, arg_1.a)), true, 1u < u_input.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-514f, 1967f, arg_0, arg_2), vec4<f32>(arg_0, 911f, 671f, arg_1.b)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-392f, arg_2, arg_2, -372f) + vec4<f32>(arg_0, -505f, -320f, arg_0)), vec4<f32>(arg_1.b, 552f, arg_1.b, arg_1.b))), false))));
    var var_1 = global3[_wgslsmith_index_u32(50258u, 13u)];
    let var_2 = !vec4<bool>(all(vec3<bool>(arg_0 <= 360f, true & arg_1.a, true)), false, arg_1.a, arg_1.b <= _wgslsmith_f_op_f32(f32(-1f) * -530f));
    return Struct_5(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -504f), -arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f + 622f)))), Struct_5(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(56991u, u_input.b, u_input.b))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -8041i, -7778i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, 49060i))), reverseBits(-u_input.a))), -1755f);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.b)), 1594f) - vec2<f32>(var_0.b, var_0.b)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-220f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1515f * 240f)))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -711f) * _wgslsmith_div_f32(889f, 601f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - 852f))))), _wgslsmith_f_op_f32(-var_1.x), -803f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.b)))) + _wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(4294967295u), min(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1354f), func_4(413f, func_4(var_1.x, Struct_5(true, 454f, -37012i), var_0.b), 824f), var_2.x).c, reverseBits(u_input.a)));
}

