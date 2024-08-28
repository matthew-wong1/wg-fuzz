struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

var<private> global1: array<vec4<i32>, 13>;

var<private> global2: array<vec2<i32>, 24>;

var<private> global3: array<u32, 1>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<vec2<bool>, 19>();
    var var_0 = abs(vec2<i32>(u_input.c.x, u_input.a.x) >> (~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 1u)], 1u), vec2<u32>(0u, u_input.b)), countOneBits(vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)));
    global1 = array<vec4<i32>, 13>();
    let var_1 = Struct_3(1u, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, arg_0.d.x)) - arg_0.d.x), arg_0, arg_0, !vec3<bool>(all(vec2<bool>(true, arg_0.c.x)), arg_0.c.x, false), arg_0), false, countOneBits(~(~vec3<u32>(11076u, 0u, arg_0.b))));
    let var_2 = vec4<i32>(max(~24610i >> (firstTrailingBit(~4294967295u) % 32u), -2712i), -19957i, var_0.x, -_wgslsmith_add_i32(~1i, -1i));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.b.c.a.yx, vec2<f32>(-189f, var_1.b.a))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -208f)), _wgslsmith_f_op_vec2_f32(-arg_1.wy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_1.zww, 40094u, vec2<bool>(false, false), arg_1.wxx))) * _wgslsmith_f_op_vec2_f32(-arg_1.xy)))), Struct_1(arg_1.zxw, ~abs(u_input.b), global0[_wgslsmith_index_u32(101559u, 19u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.xyz) * _wgslsmith_f_op_vec3_f32(round(arg_1.yxy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, arg_1.x, -2092f)))), select(!vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(true, false, arg_2), vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, false, arg_2)))))));
    var var_1 = vec2<u32>(~u_input.b, 25917u);
    var_1 = _wgslsmith_mult_vec2_u32(select(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 17629u), vec2<u32>(1u, arg_0)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(77391u, 4294967295u), vec2<u32>(u_input.b, 49687u)), select(vec2<u32>(var_0.b.b, global3[_wgslsmith_index_u32(1u, 1u)]), vec2<u32>(1u, u_input.b), true) & ~vec2<u32>(var_1.x, u_input.b)), vec2<u32>(34491u, ~var_1.x), arg_2), vec2<u32>(1u, ~_wgslsmith_div_u32(1u << (0u % 32u), abs(var_0.b.b))));
    global2 = array<vec2<i32>, 24>();
    let var_2 = Struct_1(arg_1.zzw, 12623u, select(vec2<bool>(true, !arg_2), vec2<bool>(var_0.b.c.x, var_0.b.c.x), select(select(select(global0[_wgslsmith_index_u32(4294967295u, 19u)], vec2<bool>(var_0.b.c.x, true), vec2<bool>(false, var_0.b.c.x)), select(vec2<bool>(arg_2, true), global0[_wgslsmith_index_u32(1u, 19u)], vec2<bool>(arg_2, arg_2)), !global0[_wgslsmith_index_u32(28069u, 19u)]), select(global0[_wgslsmith_index_u32(var_1.x, 19u)], vec2<bool>(arg_2, arg_2), vec2<bool>(true, var_0.b.c.x)), var_0.b.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.d * _wgslsmith_f_op_vec3_f32(-arg_1.wxw)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(f32(-1f) * -452f), arg_1.x)));
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = arg_1.x >= _wgslsmith_f_op_f32(func_2(u_input.b, _wgslsmith_f_op_vec4_f32(-arg_1), true));
    var_0 = all(global0[_wgslsmith_index_u32(11993u, 19u)]);
    let var_1 = u_input.e.xxx;
    var var_2 = global1[_wgslsmith_index_u32(127492u, 13u)];
    let var_3 = vec4<u32>(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 1u)]), arg_2.x, global3[_wgslsmith_index_u32(~(~min(~u_input.b, ~arg_0.b)), 1u)], _wgslsmith_clamp_u32(~arg_0.b, 54909u, ~71662u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1085f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(max(1046f, arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 13>();
    let var_0 = ~min(1i, 1i) >> (0u % 32u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1023f + _wgslsmith_f_op_f32(677f - _wgslsmith_f_op_f32(f32(-1f) * -917f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(436f, -582f, 1404f), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33379u, 1u)], 1u)], vec2<bool>(false, false), vec3<f32>(-338f, -152f, 613f)), vec4<f32>(218f, -277f, 1095f, 912f), vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 1u)], u_input.b))))) + -654f)), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(4294967295u, vec4<f32>(141f, -1372f, -523f, -172f), true)), -480f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(171f + -2153f)))), countOneBits(~(45899u << (u_input.b % 32u))), select(select(select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 1u)], 19u)], vec2<bool>(true, false)), vec2<bool>(true, true), 77042u < u_input.b), !global0[_wgslsmith_index_u32(32691u | global3[_wgslsmith_index_u32(u_input.b, 1u)], 19u)], true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-251f, _wgslsmith_f_op_f32(f32(-1f) * -322f), _wgslsmith_f_op_f32(416f + -1043f)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1235f)))), 247f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(391f))))), 25892u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 48932u), vec2<u32>(global3[_wgslsmith_index_u32(17940u, 1u)], u_input.b)), select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 28753u), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), 19u)], vec3<f32>(-939f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -895f)), !vec3<bool>(true, !select(false, false, false), all(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, -1000f, 951f))), 0u, vec2<bool>(false, !select(true, true, true)), vec3<f32>(-281f, 1046f, 220f)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-463f, -433f) * _wgslsmith_f_op_vec2_f32(step(var_1.e.d.yy, var_1.e.a.xy)))), var_1.b);
    global3 = array<u32, 1>();
    var var_3 = vec4<i32>(u_input.d, ~firstLeadingBit(u_input.d), 1348i, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(u_input.e.x, u_input.d), var_0) ^ var_0);
    global2 = array<vec2<i32>, 24>();
    global0 = array<vec2<bool>, 19>();
    let var_4 = select(vec3<i32>(-1i) * -var_3.yzw, abs(abs(vec3<i32>(var_0, -66857i, 38178i)) ^ u_input.e.ywx), var_1.c.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.zyx, var_1.b.b, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(1i, -1i, var_0)), -select(var_4, u_input.e.wyx, true)), -vec3<i32>(~var_0, _wgslsmith_sub_i32(u_input.e.x, var_0), var_0), vec3<i32>(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(22663u, 13u)] & global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 1u)], 13u)], ~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 1u)], 13u)]), 1i, 1i)), ~((~vec2<u32>(4294967295u, var_1.c.b) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(var_2.b.b, 1u)], 4294967295u), vec2<u32>(u_input.b, global3[_wgslsmith_index_u32(var_1.b.b, 1u)]), vec2<u32>(11108u, 1u))) << (abs(firstLeadingBit(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.b, 1u)]))) % vec2<u32>(32u))));
}

