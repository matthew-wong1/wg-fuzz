struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(1u, 1094u, 13743u, 36242u), vec4<u32>(37088u, 1u, 4294967295u, 61440u), vec4<u32>(0u, 15410u, 1u, 1u), vec4<u32>(4294967295u, 1u, 13427u, 4294967295u), vec4<u32>(1680u, 4294967295u, 61111u, 0u), vec4<u32>(55567u, 9173u, 0u, 1632u), vec4<u32>(4486u, 0u, 1u, 35949u), vec4<u32>(1u, 4294967295u, 50306u, 55696u), vec4<u32>(27614u, 16818u, 20342u, 10721u), vec4<u32>(0u, 0u, 1u, 99160u), vec4<u32>(15713u, 1u, 26418u, 16764u), vec4<u32>(16743u, 0u, 4294967295u, 11601u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(4294967295u, 0u, 63366u, 1u), vec4<u32>(1u, 91787u, 33328u, 4294967295u), vec4<u32>(4294967295u, 10610u, 14169u, 1u), vec4<u32>(47446u, 1442u, 5396u, 64817u), vec4<u32>(53755u, 26899u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 33165u), vec4<u32>(41090u, 34768u, 0u, 4294967295u), vec4<u32>(15130u, 4294967295u, 59848u, 13931u), vec4<u32>(29241u, 1u, 40493u, 14253u), vec4<u32>(27256u, 0u, 96609u, 0u), vec4<u32>(4294967295u, 5145u, 1u, 0u), vec4<u32>(25249u, 0u, 1u, 97903u), vec4<u32>(22209u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 41109u, 1u, 1740u));

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = arg_1;
    var var_1 = arg_1.b.x;
    global2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-220f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-834f, -984f)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, 181f), arg_2.zw)))))));
    global1 = arg_3.e;
    let var_2 = ~vec2<i32>(0i, reverseBits(global1.e));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(810f, arg_1.b.x)) + _wgslsmith_div_f32(var_0.b.x, arg_1.a.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, -719f))))), 138f) - vec2<f32>(_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-arg_2.x))));
}

fn func_2() -> Struct_5 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true, Struct_3(vec4<f32>(2061f, -1483f, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, global2.x, global2.x))), Struct_1(global1.c.x, 1i, vec4<bool>(global1.a, global1.c.x, global1.c.x, false), 17479u, 2147483647i), Struct_2(Struct_1(global1.c.x, global1.e, global1.c, global1.d, u_input.b.x), global1.c.zy, Struct_1(false, 2147483647i, vec4<bool>(true, global1.c.x, false, global1.c.x), 14610u, u_input.a.x)), Struct_1(global1.c.x, -23437i, global1.c, global1.d, global1.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1097f, 686f, global2.x, 429f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x))), Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, -3596f, global2.x, 398f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, global2.x, -454f)), Struct_1(global1.c.x, u_input.a.x, global1.c, global1.d, -12748i), Struct_2(Struct_1(global1.a, 1i, vec4<bool>(false, true, true, true), global1.d, -1i), global1.c.wx, Struct_1(true, u_input.c, global1.c, 0u, u_input.c)), Struct_1(global1.a, -1i, vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x), global1.d, -1i)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(854f, _wgslsmith_f_op_f32(global2.x * global2.x)))) * vec2<f32>(global2.x, global2.x));
    return Struct_5(_wgslsmith_add_u32(firstTrailingBit(~global1.d), 4294967295u ^ select(global1.d, 51483u, true)) ^ countOneBits(4294967295u), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(global2.x, -463f, global2.x, -945f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), global2.x) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 255f, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 1648f) * vec3<f32>(global2.x, global2.x, 1331f)))), Struct_1(all(select(vec3<bool>(global1.a, false, global1.a), global1.c.wyy, global1.c.zyy)), global1.e >> (firstLeadingBit(6110u) % 32u), global1.c, _wgslsmith_div_u32(9110u, global1.d), -(u_input.a.x ^ global1.b)), Struct_2(Struct_1(true, u_input.c, global1.c, 1u, 2147483647i), select(global1.c.yw, select(global1.c.xz, vec2<bool>(true, false), true), global1.c.zx), Struct_1(true, global1.e, !global1.c, firstLeadingBit(global1.d), -1i)), Struct_1(true, firstTrailingBit(~42617i), select(vec4<bool>(false, global1.c.x, false, false), select(global1.c, global1.c, global1.c), true), global1.d, _wgslsmith_dot_vec2_i32(select(u_input.a.xx, vec2<i32>(global1.b, 14874i), false), u_input.a.yz))), ~_wgslsmith_mult_u32(global1.d, 1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-159f, global2.x, -918f, global2.x), vec4<f32>(308f, global2.x, 1318f, global2.x))))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = -2147483647i;
    let var_1 = func_2();
    let var_2 = func_2().b.d;
    global0 = array<vec4<u32>, 27>();
    global2 = arg_2.d.zz;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-332f, 730f)))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = array<vec4<u32>, 27>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_4(608f, vec3<bool>(false, false, arg_0.a.a), vec3<i32>(0i, -21209i, -2147483647i), Struct_3(vec4<f32>(-667f, global2.x, 825f, global2.x), vec3<f32>(global2.x, -276f, -785f), arg_0.c, arg_0, Struct_1(false, 76687i, vec4<bool>(true, true, arg_0.b.x, false), 26246u, arg_0.a.b)), 0u), global0[_wgslsmith_index_u32(global1.d, 27u)], func_2(), func_2().b)))) + vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().b.a.x * -349f), -619f)));
    let var_0 = _wgslsmith_sub_i32(-countOneBits(~1i), -2147483647i ^ abs(u_input.b.x));
    let var_1 = -u_input.a.xy;
    let var_2 = select(any(select(vec2<bool>(all(vec3<bool>(arg_0.c.a, global1.a, false)), true), vec2<bool>(true, arg_0.b.x), select(select(global1.c.ww, arg_0.c.c.wz, global1.c.x), global1.c.wy, global1.a && arg_0.a.c.x))), false, global1.c.x);
    return ~4294967295u;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> Struct_1 {
    global1 = Struct_1(any(select(arg_1.c.c.xzz, vec3<bool>(false, any(arg_1.c.c.xyz), true), arg_1.c.c.xyy)), global1.e, vec4<bool>(-9048i <= select(-u_input.c, _wgslsmith_sub_i32(global1.e, arg_1.d.a.e), true), !global1.a, any(vec3<bool>(true, true, true)) | false, true), ~(~abs(_wgslsmith_sub_u32(0u, arg_0))), -func_2().b.d.a.b);
    var var_0 = 1000f;
    let var_1 = true;
    var var_2 = Struct_4(-1000f, global1.c.yyz, vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global1.b, arg_1.d.a.e, -1i), vec3<i32>(u_input.c, u_input.c, global1.e), arg_1.e.c.xww), -vec3<i32>(2147483647i, u_input.b.x, -1i)) << (1u % 32u), 0i, -abs(-u_input.b.x)), arg_1, _wgslsmith_mult_u32(~arg_3, arg_1.e.d));
    let var_3 = vec4<bool>(true, all(global1.c.yyx), true, true);
    return func_2().b.d.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(global1.d, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -321f, global2.x, global2.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global2.x, 1012f, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)), global1.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.x + -991f), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(188f * -318f))), Struct_1(true, -11971i, !select(global1.c, vec4<bool>(global1.a, global1.a, false, global1.c.x), vec4<bool>(false, false, global1.a, global1.a)), ~func_1(Struct_2(Struct_1(true, global1.e, global1.c, global1.d, -1i), global1.c.yz, Struct_1(global1.a, u_input.b.x, vec4<bool>(global1.c.x, false, false, global1.c.x), global1.d, -8799i))), 1i), func_2().b.d, Struct_1(!all(global1.c.wzx), abs(-u_input.a.x), !select(global1.c, global1.c, global1.c), global1.d, -5915i)), 856f, _wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(1u, 27u)] ^ ~global0[_wgslsmith_index_u32(abs(global1.d), 27u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global1.d, global1.d), 27u)]));
    var var_0 = !global1.c.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2().d.zw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1916f, _wgslsmith_f_op_f32(abs(global2.x))), vec2<f32>(_wgslsmith_div_f32(308f, global2.x), -1125f))))));
    let var_2 = Struct_2(func_5(~1u, func_2().b, _wgslsmith_f_op_f32(f32(-1f) * -1282f), global1.d), global1.c.xw, Struct_1(false, u_input.c, global1.c, 1u, -18657i));
    global1 = Struct_1(false, _wgslsmith_mod_i32(_wgslsmith_add_i32(44108i, -6806i), var_2.a.e), var_2.a.c, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_2.c.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.c.d, global1.d), vec3<u32>(var_2.c.d, global1.d, 61182u))), ~4294967295u), ~_wgslsmith_div_i32(-43564i, u_input.b.x));
    let var_3 = func_2();
    var var_4 = _wgslsmith_div_f32(var_3.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b.b.x, var_1.x))));
    let var_5 = reverseBits(abs(6386i ^ -global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, select(~(~global1.e), ~(var_3.b.e.e ^ var_3.b.c.b), !(!var_3.b.e.c.x)), 0i, var_2.a.e), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_2.a.d, 27u)], global0[_wgslsmith_index_u32(var_3.a, 27u)]), var_3.d.x, select(_wgslsmith_sub_u32(~min(global1.d, 1471u), ~var_2.a.d), _wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(global1.d), 30928u ^ global1.d), max(81184u, global1.d | var_3.a)), all(var_2.b)), var_3.b.a.yz);
}

