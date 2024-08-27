struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_3 = Struct_3(-462f, true, Struct_2(vec4<bool>(true, true, true, true), Struct_1(-2232f, vec3<bool>(false, false, true), 325f, vec2<u32>(11152u, 44302u), 0u), Struct_1(758f, vec3<bool>(true, false, true), 540f, vec2<u32>(40145u, 0u), 0u)));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 87563u, 1u);

var<private> global3: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = arg_0 > 1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c.b.c, global1.c.c.a)));
    let var_2 = Struct_2(vec4<bool>(all(!select(vec3<bool>(false, true, global1.c.c.b.x), vec3<bool>(false, global1.c.c.b.x, false), global1.c.a.yxw)), false, true, any(select(global0.b.b.b, global0.d.c.c.b, !global1.b))), global0.b.c, global1.c.c);
    var var_3 = Struct_4(any(vec3<bool>(!global1.b, true, select(var_2.c.b.x || global1.b, true | global1.b, true))), all(!vec2<bool>(false, !var_2.a.x)), var_2.a.xx, max(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.c), -vec4<i32>(12064i, 2147483647i, 14422i, u_input.d)), _wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(40192i >> (var_2.c.e % 32u), u_input.c.x))), Struct_1(-827f, global1.c.b.b, -597f, abs(~vec2<u32>(0u, 27803u)), 4294967295u));
    global3 = array<vec2<bool>, 27>();
    return -1000f;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> vec2<f32> {
    var var_0 = !select(vec2<bool>(global0.d.b, true), !select(!global1.c.a.xw, !global3[_wgslsmith_index_u32(u_input.a.x, 27u)], select(vec2<bool>(false, true), global1.c.b.b.yx, true)), vec2<bool>(select(true, !global0.d.b, !global1.b), false));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.d.c.c.e)) + -688f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -336f), -1872f)), 1f)), _wgslsmith_f_op_f32(arg_1 - 804f));
    var var_2 = Struct_4(global1.c.a.x && global0.d.b, false, !global0.b.b.b.yx, -(-1i >> (_wgslsmith_add_u32(u_input.b, u_input.a.x) % 32u)) << (_wgslsmith_dot_vec4_u32(~u_input.a, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 0u, global0.d.c.b.e, global0.a.x), vec4<u32>(global1.c.b.d.x, global1.c.c.d.x, 4294967295u, global2.x), u_input.a)) % 32u), global1.c.b);
    global3 = array<vec2<bool>, 27>();
    var_0 = select(vec2<bool>(!var_2.a, _wgslsmith_f_op_f32(810f - _wgslsmith_f_op_f32(var_2.e.c + 749f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.e.a)) + var_2.e.a)), !global3[_wgslsmith_index_u32(2477u, 27u)], !var_2.e.b.xz);
    return _wgslsmith_f_op_vec2_f32(var_1.zz * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yz - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 1628f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-409f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(select(-107f, _wgslsmith_f_op_f32(-global1.c.c.a), all(global1.c.a))), -477f)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0.x & ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 7529i, u_input.c.x), vec3<i32>(-2147483647i, -27538i, u_input.d)));
    global3 = array<vec2<bool>, 27>();
    let var_1 = 1u;
    var var_2 = global1.c.b.b.xy;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(-1088f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f * -194f)))), _wgslsmith_f_op_vec2_f32(func_2(min(vec3<i32>(max(arg_0.x, 1i), -1i, firstTrailingBit(u_input.d)), abs(vec3<i32>(0i, -1i, 1i)) | u_input.c.zzz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -383f)))));
    return global0.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = u_input.a.zyz;
    var var_1 = u_input.b;
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.c.c, var_2.c.c.a, var_2.c.c.c, 1241f), vec4<f32>(610f, -2189f, -1543f, global1.c.c.c), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, arg_1.c.b.a, 362f, -1110f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a, -744f, global1.c.c.c, global0.b.c.c), vec4<f32>(global0.b.b.c, 1430f, var_2.a, -1000f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a, var_2.a, global1.c.b.a, -159f), vec4<f32>(global0.d.c.c.c, 238f, global1.a, arg_1.c.c.a)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.a, arg_1.a, arg_1.c.c.c) + vec4<f32>(global1.c.b.c, 1044f, global1.a, -2131f))) * vec4<f32>(global0.b.b.a, global1.c.c.a, _wgslsmith_f_op_f32(var_2.c.b.c * 2466f), 246f))));
    var var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~countOneBits(u_input.e), abs(~vec2<u32>(60739u, global1.c.c.e))), global1.c.b.d);
    return _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.wxz, u_input.c.yxz, ~(~_wgslsmith_div_vec3_i32(u_input.c.xzw, u_input.c.xyx))), abs(u_input.c.xyx));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_5) -> Struct_4 {
    global0 = Struct_5(arg_2.b.d, arg_3.d.c, _wgslsmith_dot_vec3_u32(~u_input.a.wzz, u_input.a.wzy), Struct_3(1645f, all(select(select(global1.c.c.b.zz, global0.d.c.a.zy, vec2<bool>(false, arg_3.d.b)), global1.c.b.b.yx, false || global1.c.a.x)), Struct_2(vec4<bool>(true, false && arg_2.b.b.x, false, false), func_1(~u_input.c).c, global0.b.b)));
    global0 = Struct_5(vec2<u32>(~countOneBits(global2.x), abs(countOneBits(firstLeadingBit(9342u)))), func_1(-select(vec4<i32>(38820i, arg_1.x, arg_1.x, 61290i), vec4<i32>(1i, arg_1.x, u_input.d, arg_1.x), vec4<bool>(arg_2.b.b.x, arg_3.b.b.b.x, arg_3.b.c.b.x, true))), abs(~arg_2.b.e >> (_wgslsmith_clamp_u32(global2.x, 32933u, arg_2.b.d.x) % 32u)), Struct_3(-670f, false && (global0.d.b && true), Struct_2(vec4<bool>(any(vec3<bool>(arg_3.d.b, arg_2.b.b.x, arg_3.b.a.x)), any(global0.d.c.a.wzz), true, select(false, false, global1.b)), func_1(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, u_input.d)).c, func_1(vec4<i32>(-25839i, -21606i, u_input.c.x, arg_1.x)).b)));
    global2 = vec3<u32>(u_input.b, _wgslsmith_div_u32(4294967295u, ~1u), global1.c.b.d.x);
    let var_0 = select(select(-vec2<i32>(abs(-22299i), u_input.c.x), vec2<i32>(abs(_wgslsmith_sub_i32(5251i, u_input.d)), -u_input.c.x), any(select(func_1(vec4<i32>(u_input.d, -1i, 1i, -1i)).c.b.zx, global0.d.c.b.b.yx, all(global1.c.a.zzw)))), -vec2<i32>(~_wgslsmith_clamp_i32(-52691i, 15932i, 0i), i32(-1i) * -1i), global0.d.c.a.ww);
    var var_1 = (false && any(select(arg_3.d.c.a, vec4<bool>(true, true, true, false), !vec4<bool>(true, global1.c.c.b.x, global0.d.c.c.b.x, false)))) || true;
    return Struct_4(any(vec4<bool>(func_1(vec4<i32>(-1i, arg_1.x, var_0.x, 0i)).c.b.x, global1.c.b.b.x, global1.b, !global1.b || global1.b)), all(select(select(global1.c.a, vec4<bool>(global0.d.c.b.b.x, global0.b.c.b.x, true, arg_2.c.b.x), vec4<bool>(false, false, false, arg_2.b.b.x)), func_1(u_input.c).a, arg_3.b.b.b.x || (565f > global1.c.c.c))), func_1(u_input.c).c.b.xy, max(0i, _wgslsmith_sub_i32(max(min(-33809i, arg_1.x), _wgslsmith_dot_vec3_i32(u_input.c.xxw, arg_1)), u_input.c.x)), func_1(vec4<i32>(~u_input.c.x | ~2147483647i, ~u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -1i, 2147483647i), _wgslsmith_mod_vec3_i32(u_input.c.wzw, vec3<i32>(u_input.c.x, var_0.x, var_0.x))), max(49842i, -1i))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~u_input.a.wwx;
    var var_0 = func_5(0u, func_4(global0.b.b.b.xx, Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.b.c), _wgslsmith_div_f32(global0.b.b.c, 154f), true)), ~u_input.c.x == abs(u_input.c.x), func_1(select(u_input.c, u_input.c, false))), select(global3[_wgslsmith_index_u32(firstTrailingBit(104497u), 27u)], !(!global3[_wgslsmith_index_u32(0u, 27u)]), global1.c.a.yy)), global0.b, Struct_5(global0.b.b.d, Struct_2(func_1(vec4<i32>(u_input.d, u_input.c.x, -1i, u_input.d)).a, func_1(-u_input.c).b, global1.c.c), global2.x, Struct_3(func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, u_input.c.x, u_input.d), u_input.c)).b.a, true, func_1(-vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x)))));
    let var_1 = -(min(-32721i, u_input.c.x << (u_input.e.x % 32u)) | -(~u_input.d)) > _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, -_wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), ~(-vec2<i32>(503i, var_0.d)));
    global2 = ~_wgslsmith_sub_vec3_u32(~u_input.a.xzx >> (vec3<u32>(_wgslsmith_mod_u32(global1.c.b.e, 11236u), global2.x, 4294967295u) % vec3<u32>(32u)), vec3<u32>(countOneBits(_wgslsmith_mult_u32(4294967295u, global0.a.x)), global1.c.b.e, _wgslsmith_clamp_u32(global2.x, 4294967295u, 10941u) & _wgslsmith_dot_vec4_u32(vec4<u32>(14193u, 16684u, 4294967295u, global1.c.b.d.x), u_input.a)));
    var var_2 = global1.c.a.wyx;
    let var_3 = global0.d;
    let var_4 = -486f;
    let var_5 = -43596i;
    var var_6 = Struct_3(_wgslsmith_f_op_f32(var_0.e.a - 350f), true, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xzz, -countOneBits(select(u_input.c.yyx << (u_input.a.zyx % vec3<u32>(32u)), min(vec3<i32>(var_5, var_0.d, 23287i), vec3<i32>(var_0.d, 2147483647i, -20489i)), select(vec3<bool>(false, var_2.x, true), var_6.c.a.xyy, global1.c.a.xyx))), ~(~global0.c));
}

