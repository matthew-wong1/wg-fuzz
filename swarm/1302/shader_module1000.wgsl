struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_3(vec2<u32>(79135u, 56893u), vec3<u32>(1u, 48481u, 1u), vec4<i32>(1i, i32(-2147483648), 15974i, 32738i), Struct_2(1u, vec3<f32>(-2137f, -1276f, -1839f))), vec2<i32>(-1i, 0i)), Struct_4(Struct_3(vec2<u32>(7664u, 40273u), vec3<u32>(1u, 1u, 4294967295u), vec4<i32>(0i, 1i, i32(-2147483648), 2147483647i), Struct_2(0u, vec3<f32>(-413f, -1012f, -378f))), vec2<i32>(54801i, 2147483647i)));

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global3: array<Struct_2, 26>;

var<private> global4: vec3<i32> = vec3<i32>(-7049i, 36705i, 1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    let var_0 = -(abs(countOneBits(~vec4<i32>(-23672i, u_input.a, global4.x, u_input.d.x))) >> (min((u_input.c & vec4<u32>(u_input.b.x, 4294967295u, u_input.e.x, arg_0.a)) ^ ~vec4<u32>(arg_0.a, 106487u, arg_0.a, arg_0.a), ~vec4<u32>(17026u, 45023u, arg_0.a, arg_0.a)) % vec4<u32>(32u)));
    let var_1 = vec3<i32>(68824i, 30205i, -2147483647i);
    global0 = array<Struct_4, 2>();
    var var_2 = Struct_2(1u, _wgslsmith_f_op_vec3_f32(step(arg_0.b, arg_0.b)));
    var var_3 = _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xz, _wgslsmith_mult_vec2_i32(var_1.yy, vec2<i32>(var_1.x, -1i))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, var_0.x), var_1.yy), global4.x, 1i)), var_0);
    return u_input.c;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = select(vec2<bool>(any(vec4<bool>(!arg_2, true, arg_2, false)), !(!any(vec3<bool>(arg_2, arg_0, false)))), vec2<bool>(!(u_input.a <= ~36925i), all(!(!vec3<bool>(arg_0, arg_2, false)))), vec2<bool>(any(!vec4<bool>(arg_0, arg_2, arg_0, arg_0)) & (false && arg_2), true));
    let var_1 = u_input.e.x;
    let var_2 = Struct_3(u_input.b.yy, vec3<u32>(min(u_input.c.x & 0u, select(1u, 6409u, arg_0)), var_1 >> (var_1 % 32u), _wgslsmith_dot_vec4_u32(func_3(Struct_2(37798u, arg_3.zyz), arg_1), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(4294967295u, u_input.e.x, 73085u, 18527u)))) ^ ~abs(max(u_input.c.yzw, vec3<u32>(u_input.e.x, var_1, 0u))), -(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -18172i, u_input.d.x, 0i), vec4<i32>(global4.x, 57441i, -2147483647i, u_input.a)) & vec4<i32>(global4.x, global4.x, 73570i, 2147483647i)) & _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 15606i, u_input.a, global4.x), vec4<i32>(global4.x, 1i, global4.x, global4.x)), abs(reverseBits(vec4<i32>(-2147483647i, 0i, u_input.d.x, 17879i)))), Struct_2(1u, arg_3.zxw));
    var var_3 = u_input.b.x;
    var var_4 = Struct_5(vec3<u32>(~(~17480u) | reverseBits(~u_input.c.x), 4294967295u, abs(~_wgslsmith_div_u32(46734u, 16117u))), _wgslsmith_f_op_vec3_f32(select(var_2.d.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1048f, var_2.d.b.x, arg_3.x), arg_3.www))))), -2683f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, 1218f))))), ~func_3(Struct_2(firstTrailingBit(0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-797f, arg_3.x, arg_3.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x)))).x, global0[_wgslsmith_index_u32(var_1, 2u)], _wgslsmith_mult_i32(~_wgslsmith_div_i32(global4.x, countOneBits(1i)), global4.x));
    return Struct_2(var_1, var_2.d.b);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_4, 2>();
    var var_0 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, ~select(u_input.e.x, 25575u, false)), u_input.c.x), u_input.c.wxz, vec4<i32>(2147483647i, ~global4.x, -2147483647i, reverseBits(~(arg_0 | u_input.d.x))), func_2(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(667f, _wgslsmith_f_op_f32(-arg_2.x))), 734f, false)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-365f, -393f, 108f, arg_2.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(341f, -571f, 664f, arg_2.x)))))));
    let var_1 = Struct_4(Struct_3(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.b.x, var_0.d.a), vec2<u32>(4294967295u, 0u)), ~u_input.c.zy), u_input.e, vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.c.wzw, vec3<i32>(25941i, var_0.c.x, arg_0)) >> (var_0.b.x % 32u), 51902i, (arg_0 >> (u_input.e.x % 32u)) & -1i, -53496i), func_2(true, arg_2.x, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -108f, arg_1))))), -vec2<i32>(_wgslsmith_sub_i32(-1i | arg_0, var_0.c.x), _wgslsmith_dot_vec2_i32(u_input.d.xz << (u_input.b.xz % vec2<u32>(32u)), global4.zx)));
    var var_2 = Struct_1(~_wgslsmith_mult_i32(24762i, select(-4149i, 15706i, all(vec4<bool>(true, true, false, true)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, _wgslsmith_f_op_f32(1337f + -1000f), _wgslsmith_f_op_f32(select(arg_1, -1820f, true)), var_1.a.d.b.x))));
    return Struct_1(i32(-1i) * -57980i);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = true;
    global0 = array<Struct_4, 2>();
    var var_1 = global0[_wgslsmith_index_u32(~(~u_input.b.x), 2u)];
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    return func_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(func_1(-global4.x, -2253f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.d.b.x, -109f, var_1.a.d.b.x), var_1.a.d.b, false))).a, countOneBits(var_1.b.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(var_1.a.c.x, 0i), global4.xy), _wgslsmith_sub_vec2_i32(u_input.d.xy, var_1.b)), _wgslsmith_mod_vec2_i32(~global4.zz, firstLeadingBit(vec2<i32>(0i, global4.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.d.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.d.b.x - _wgslsmith_f_op_f32(var_1.a.d.b.x - var_1.a.d.b.x)) - var_1.a.d.b.x)), var_1.a.d.b).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-469f))) + _wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_f_op_f32(f32(-1f) * -1274f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1582f), _wgslsmith_f_op_f32(abs(-1658f))))));
    global0 = array<Struct_4, 2>();
    let var_1 = func_4(func_1(-21737i, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(max(var_0.b.x, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-924f, -1338f, 608f))));
    global4 = vec3<i32>(i32(-1i) * -(_wgslsmith_mult_i32(12532i, global4.x) << (var_0.a % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -(u_input.a | var_1)), global4.zz | (u_input.d.zy << (u_input.e.zz % vec2<u32>(32u)))), ~min(0i, global4.x));
    let var_2 = func_1(~2147483647i, 3216f, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x));
    var var_3 = true;
    var var_4 = -2147483647i;
    var_0 = func_2(true, var_0.b.x, false, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(284f, 1168f, var_0.b.x, var_0.b.x) + vec4<f32>(var_0.b.x, var_0.b.x, 456f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-453f + var_0.b.x), _wgslsmith_f_op_f32(1437f + 987f), _wgslsmith_f_op_f32(f32(-1f) * -1290f), _wgslsmith_f_op_f32(max(232f, var_0.b.x))), vec4<bool>(true, true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 214f))))))), vec3<i32>(-min(global4.x, -47581i), ~(-40838i), var_1), -498f);
}

