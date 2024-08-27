struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_5 = Struct_5(vec4<bool>(true, false, false, true));

var<private> global2: array<vec3<bool>, 4>;

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = -540f;
    var var_1 = Struct_2(125f, Struct_1(!all(select(global1.a, vec4<bool>(false, false, global1.a.x, global0.b.a), arg_2.e.x)), u_input.a, vec4<u32>(~arg_2.a.a.c.x, 4294967295u, ~0u, ~_wgslsmith_clamp_u32(0u, arg_0, 4268u)), 1i, ~(~firstLeadingBit(9406u))), Struct_1(any(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(arg_2.a.a.c.xwy, vec3<u32>(0u, arg_2.a.c.e, 46067u))), 4u)]), global0.b.b, ~min(arg_2.a.a.c, arg_2.a.a.c) | ~firstLeadingBit(arg_2.a.a.c), _wgslsmith_add_i32(_wgslsmith_mult_i32(-7808i << (arg_0 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.a.d, -1i, arg_2.a.d, 2147483647i), vec4<i32>(9411i, 11480i, u_input.a, global0.d.x))), -_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.b, 2147483647i, -16159i), vec3<i32>(arg_2.a.c.d, -30667i, global0.d.x))), ~global0.c.c.x), global0.d, firstTrailingBit(arg_0));
    global2 = array<vec3<bool>, 4>();
    let var_2 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(firstTrailingBit(u_input.a), _wgslsmith_clamp_i32(firstTrailingBit(1i), global0.b.b, -1i), 60552i), ~vec3<i32>(u_input.a, 18039i, firstLeadingBit(u_input.a)), abs(abs(~reverseBits(vec3<i32>(47095i, arg_2.a.a.d, -16304i)))));
    let var_3 = 57110u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, -2863f, -618f, _wgslsmith_f_op_f32(f32(-1f) * -1234f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))))));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global1 = Struct_5(select(select(!global1.a, select(vec4<bool>(global1.a.x, false, true, global0.b.a), !global1.a, vec4<bool>(true, false, true, false)), !(!global1.a)), vec4<bool>(false, select(all(vec2<bool>(global1.a.x, true)), true | global0.c.a, true), true, global0.c.a), select(select(!global1.a, !global1.a, vec4<bool>(true, false, global0.b.a, global1.a.x)), !select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), global1.a, false), true)));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global0.a)) + _wgslsmith_f_op_vec4_f32(func_3(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -441f, -591f, global0.a)), Struct_4(Struct_3(global0.b, global0.c.a, Struct_1(true, -67601i, vec4<u32>(0u, 0u, 43821u, arg_0), global0.d.x, 1u), global0.c.b), vec2<f32>(1000f, 1918f), global3.x, vec2<bool>(true, global0.b.a), global1.a.xzw)))))));
    var var_1 = true;
    let var_2 = Struct_4(Struct_3(global0.b, any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, global1.a.x, false, false), global1.a), vec4<bool>(true, global0.c.a, false, false), global0.c.a)), Struct_1(false, 2147483647i, ~vec4<u32>(arg_0, 0u, 7750u, arg_0), u_input.a, min(1u, 1u)), u_input.a), _wgslsmith_f_op_vec4_f32(func_3(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-208f, 1071f, 747f, global3.x) * vec4<f32>(global0.a, global3.x, global0.a, -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-486f, 836f, global0.a, -2138f))))), Struct_4(Struct_3(Struct_1(global1.a.x, -73172i, vec4<u32>(4294967295u, 62917u, global0.c.e, global0.e), global0.c.b, 370u), all(global1.a.zz), Struct_1(global0.b.a, 24383i, vec4<u32>(0u, 0u, global0.c.e, 46302u), u_input.a, global0.e), abs(global0.b.d)), var_0.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -361f)), select(!global1.a.xz, select(vec2<bool>(global0.b.a, false), global1.a.xz, global1.a.x), vec2<bool>(global0.b.a, true)), global2[_wgslsmith_index_u32((global0.b.e & arg_0) >> (~14910u % 32u), 4u)]))).yy, 109f, select(select(!select(global1.a.yy, global1.a.wx, vec2<bool>(global1.a.x, global1.a.x)), vec2<bool>(true, true), global1.a.x || (global0.c.b != -3950i)), select(global1.a.zy, vec2<bool>(global0.c.a, global1.a.x), !global1.a.yz), !(!vec2<bool>(global0.c.a, false))), global1.a.wyx);
    return var_2.a.a.c.ww ^ ~vec2<u32>(_wgslsmith_mult_u32(4294967295u, global0.c.c.x | arg_0), global0.e);
}

fn func_4(arg_0: vec2<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) - global0.a), -1202f), global0.a, _wgslsmith_f_op_vec4_f32(func_3(global0.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, -508f, -545f, 753f) - vec4<f32>(global0.a, global3.x, global0.a, 949f))), Struct_4(Struct_3(Struct_1(false, 26997i, global0.b.c, u_input.a, 0u), global0.b.a, global0.c, global0.b.b), vec2<f32>(global0.a, -616f), global3.x, global1.a.wx, select(global1.a.yxx, vec3<bool>(global1.a.x, global0.c.a, false), vec3<bool>(global1.a.x, true, true))))).x));
    var var_1 = Struct_3(Struct_1(global1.a.x, ~2147483647i, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.c.x, 1u, global0.b.c.x), global0.c.c.zyw) >> (~global0.b.e % 32u), ~global0.b.c.x, _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(1u, arg_0.x)), max(20601u, global0.e >> (arg_0.x % 32u))), global0.c.d, reverseBits(63480u)), global1.a.x, global0.b, -(u_input.a >> (0u % 32u)) >> (arg_0.x % 32u));
    let var_2 = Struct_3(var_1.a, global1.a.x, var_1.a, reverseBits(firstLeadingBit(u_input.a)));
    var var_3 = var_2;
    var var_4 = global0.a;
    return Struct_5(vec4<bool>(var_2.c.a, !all(global1.a.yx), any(select(select(vec4<bool>(false, global0.b.a, var_1.a.a, true), vec4<bool>(false, var_1.b, true, false), true), !vec4<bool>(global0.c.a, var_2.b, var_3.c.a, var_2.a.a), select(true, false, false))), ((-2147483647i ^ u_input.a) & reverseBits(-14821i)) >= ~2147483647i));
}

fn func_1() -> Struct_1 {
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 636f)))), 1424f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_f_op_f32(-global0.a)) * vec2<f32>(_wgslsmith_div_f32(global3.x, -1219f), 1329f))));
    var var_0 = any(select(global1.a.zz, !global1.a.ww, !(!all(vec4<bool>(global0.c.a, true, global0.c.a, true)))));
    var var_1 = global0.c.c;
    global1 = func_4(~min(~reverseBits(vec2<u32>(global0.c.c.x, global0.c.c.x)), func_2(~102394u)));
    var var_2 = var_1.zy;
    return Struct_1(true, global0.c.b, ~(~vec4<u32>(var_1.x, 0u, var_2.x, 71128u)) ^ ~((vec4<u32>(global0.b.c.x, var_2.x, 546u, var_1.x) & vec4<u32>(4294967295u, var_1.x, global0.b.e, 4294967295u)) ^ ~vec4<u32>(global0.e, 0u, 25765u, 14129u)), u_input.a, global0.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = func_4(~global0.b.c.yz);
    let var_1 = Struct_2(-494f, func_1(), func_1(), abs(~global0.d), var_0.c.x);
    global0 = Struct_2(1000f, Struct_1(true, var_1.c.d, ~(~var_0.c ^ ~var_0.c), 2147483647i, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e, global0.e >> (4242u % 32u), firstTrailingBit(var_0.e), 17827u), global0.b.c)), Struct_1((var_1.b.a | func_4(var_1.b.c.zy).a.x) | all(global1.a.xz), var_1.d.x, min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.x, var_1.b.e, 4294967295u, var_1.e), func_1().c), var_0.c), max(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.d, var_1.c.b), vec2<i32>(u_input.a, var_0.b))), 31815i), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(25398u, global0.b.e), vec2<u32>(var_1.b.c.x, 4294967295u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(40931u, 4294967295u), global0.c.c.xw, var_0.c.xy), (vec2<u32>(global0.e, var_0.c.x) & vec2<u32>(4294967295u, 4294967295u)) >> ((var_1.c.c.wz ^ vec2<u32>(var_0.e, 6796u)) % vec2<u32>(32u)))), global0.d, 0u ^ select(_wgslsmith_dot_vec3_u32(global0.c.c.zzy, global0.b.c.ywy), var_0.c.x, false & select(global1.a.x, true, global1.a.x)));
    let var_2 = global1.a;
    global0 = var_1;
    global2 = array<vec3<bool>, 4>();
    let var_3 = Struct_1(false, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, _wgslsmith_mod_i32(var_1.b.b, global0.c.b)), -global0.d), ~(~var_0.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32((global0.d ^ vec2<i32>(var_0.d, -22423i)) >> (func_1().c.wy % vec2<u32>(32u)), max(countOneBits(vec2<i32>(var_1.c.d, var_1.b.b)), vec2<i32>(-2147483647i, var_0.b))), -2147483647i), global0.e | reverseBits(~1u));
    let var_4 = ~vec4<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-var_1.b.b, 1i, firstTrailingBit(2147483647i)), _wgslsmith_div_i32(countOneBits(-1i), 15529i)), _wgslsmith_dot_vec2_i32(vec2<i32>(~2033i, 1i), global0.d), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(926f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-884f, global0.a) + _wgslsmith_f_op_f32(1000f + -1563f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -744f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(trunc(global0.a))), -1379f);
}

