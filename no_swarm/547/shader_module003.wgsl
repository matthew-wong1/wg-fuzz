struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec3<bool> {
    global0 = array<vec3<u32>, 18>();
    var var_0 = u_input.d.x;
    let var_1 = 1i;
    var var_2 = Struct_1(countOneBits(countOneBits(1u)), 4294967295u, ~(~(-vec4<i32>(u_input.c.x, 0i, var_1, 17510i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))));
    let var_3 = ~(~vec2<u32>(4294967295u, (u_input.a.x | var_2.b) << (~var_2.b % 32u)));
    return select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, select(true, select(true, true, true), true)), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), vec3<bool>(u_input.b.x < 340u, true, all(vec3<bool>(false, false, true)))), any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))))), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec2<i32> {
    global0 = array<vec3<u32>, 18>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.wwz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(arg_1.ywz, arg_1.wwz), _wgslsmith_f_op_vec3_f32(-arg_1.yyz)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.xzz), _wgslsmith_f_op_vec3_f32(floor(arg_1.xzz)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yxx - arg_1.xxy) - _wgslsmith_f_op_vec3_f32(vec3<f32>(881f, 1118f, -1000f) + arg_1.xxy)))), !select(!select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false)), vec3<bool>(true, true, true), func_3())));
    let var_1 = _wgslsmith_clamp_u32(~(~0u), 0u, _wgslsmith_mult_u32(~31584u, arg_0.b << (u_input.a.x % 32u)));
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], Struct_1(u_input.b.x, ~(0u | abs(var_1)), select(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.c.x, u_input.d.x, arg_0.c.x, u_input.c.x)), -arg_0.c), arg_0.c, !select(true, true, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1327f) + -858f))), -40044i, -2147483647i);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d + 528f), _wgslsmith_f_op_f32(f32(-1f) * -426f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1025f, -383f)), 222f)))));
    return select(-vec2<i32>(arg_0.c.x, (arg_0.c.x | -5306i) & _wgslsmith_dot_vec3_i32(var_2.b.c.yzw, arg_0.c.wyw)), -(~_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(var_2.b.c.x, 0i)), u_input.d)), arg_2);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_5 {
    let var_0 = ~arg_1.c.c.c.wz;
    global0 = array<vec3<u32>, 18>();
    global0 = array<vec3<u32>, 18>();
    let var_1 = -251f;
    var var_2 = select(vec4<bool>(false, any(vec2<bool>(false, true)) == true, any(select(vec4<bool>(false, false, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, true, false, false))) == false, true), select(vec4<bool>(select(5138i >= u_input.c.x, all(arg_2), select(false, arg_2.x, false)), u_input.b.x >= ~31951u, any(func_3()), (arg_2.x || arg_2.x) != (false | arg_2.x)), !select(!vec4<bool>(arg_2.x, true, false, arg_2.x), select(vec4<bool>(arg_2.x, true, true, true), vec4<bool>(arg_2.x, true, true, false), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(true, false, false, true)), true && any(!vec3<bool>(false, true, arg_2.x))), (any(select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), false)) && (~1u >= arg_1.c.c.b)) | false);
    return Struct_5(arg_1.c.a.zyy);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_5(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), arg_0.x, -184f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -2906f))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 1260f) - -1704f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-604f * -807f))));
    let var_3 = func_4(select(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(41892i), u_input.c.x), -(~vec2<i32>(u_input.d.x, u_input.c.x))), func_2(Struct_1(u_input.b.x, 0u, -vec4<i32>(-18783i, u_input.d.x, u_input.c.x, u_input.c.x), 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_1.a.x, -927f, arg_0.x) + vec4<f32>(-310f, arg_0.x, arg_0.x, var_1.a.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 1079f), vec4<f32>(arg_0.x, -907f, var_1.a.x, 580f), vec4<bool>(false, false, true, true)))), vec2<bool>(true, false)), _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x) <= 29250u), Struct_4(Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 70395u), vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x)) | firstLeadingBit(vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_add_u32(27114u, u_input.b.x), firstLeadingBit(u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, u_input.c.x), vec4<i32>(1i, u_input.d.x, -27623i, -40366i), vec4<i32>(1i, u_input.d.x, u_input.d.x, 15451i)), _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_clamp_i32(u_input.d.x, u_input.c.x, u_input.d.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(-34851i, u_input.c.x), vec2<i32>(u_input.d.x, -22946i)), -9711i), firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.a.x, 1u)) & (22119u ^ u_input.b.x), 18u)]), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-634f - var_1.a.x), 936f, var_1.a.x), _wgslsmith_f_op_f32(-381f + -1734f), Struct_1(~u_input.a.x, countOneBits(1u), abs(vec4<i32>(u_input.c.x, u_input.c.x, -22727i, 2147483647i)), -290f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), -1000f)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 72478i) & vec3<i32>(-4588i, 2147483647i, u_input.d.x), ~vec3<i32>(1i, -14818i, 42361i))), _wgslsmith_f_op_vec2_f32(-arg_0)), vec2<bool>(true, !(!(2147483647i <= u_input.c.x))));
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], Struct_1(abs(~_wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x)), ~(~u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(-14916i, -u_input.d.x, -u_input.d.x, -41279i << (u_input.a.x % 32u)), countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, -25463i, u_input.d.x))), arg_0.x), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d), u_input.d.x << (4294967295u % 32u));
    return var_4.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 18>();
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(628f, -1134f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(326f, -326f), vec2<f32>(1086f, -298f))))) * vec2<f32>(154f, _wgslsmith_f_op_f32(floor(-1549f)))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1870f - -660f))) + _wgslsmith_f_op_f32(1080f - _wgslsmith_f_op_f32(-1471f - 809f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(122f - -989f) - -158f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f)))) + 1237f)));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(978f, var_1, false)) + _wgslsmith_f_op_f32(max(252f, var_1))))), var_1, -926f, _wgslsmith_f_op_f32(f32(-1f) * -296f)), _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(var_1 - 2237f))), Struct_1(22484u, 4294967295u, ~abs(vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x)), var_1), var_1, _wgslsmith_dot_vec2_i32(~u_input.d, ~_wgslsmith_add_vec2_i32(u_input.d, u_input.d)));
    let var_3 = var_2.c.c.xzx;
    var_0 = -1i;
    var_0 = var_2.c.c.x;
    var var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1707f))), 937f, var_1, _wgslsmith_f_op_f32(min(var_1, -834f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d, var_1)) * _wgslsmith_f_op_f32(var_1 + var_2.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + 332f) + var_2.c.d)), var_2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b)))), _wgslsmith_f_op_f32(trunc(var_1)), false)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(firstLeadingBit(var_4.c.b), 4294967295u, var_2.c.a ^ 69394u) & ~(~global0[_wgslsmith_index_u32(108098u, 18u)])), _wgslsmith_div_f32(var_2.a.x, 836f), vec3<u32>(~_wgslsmith_mult_u32(87856u, 1989u), 77945u, 0u), 1f, -487f);
}

