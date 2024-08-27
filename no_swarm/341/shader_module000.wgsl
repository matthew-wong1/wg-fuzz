struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: vec4<f32> = vec4<f32>(-1214f, -433f, 277f, 1643f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = min(_wgslsmith_div_u32(reverseBits(u_input.c.x), 16317u), ~_wgslsmith_sub_u32(1u, u_input.c.x));
    var_0 = ~select(91805u, 1u, u_input.c.x < u_input.c.x);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, -368f, arg_1.a.x, arg_1.a.x), vec4<f32>(arg_0.a.x, 591f, arg_0.a.x, arg_3.c.a))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.x, 1491f, 794f, -258f))))), arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, arg_1.a.x, -245f, -2193f)))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(942f + 2124f), -268f, -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, -1000f, -1957f, arg_3.c.a))) + _wgslsmith_div_vec4_f32(vec4<f32>(874f, arg_0.a.x, arg_3.c.a, arg_3.e.a.x), vec4<f32>(global0.a, global2.x, arg_3.b.x, global0.a))))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -567f), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-123f + -364f), var_1.x)), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_div_f32(-972f, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-296f, 273f)))), _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + arg_0.a.x) * _wgslsmith_f_op_f32(max(global0.a, -1132f))))), !(!(!(!vec4<bool>(arg_2.x, false, false, false))))));
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, _wgslsmith_f_op_f32(ceil(1544f)), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(trunc(global2.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-525f, arg_0.a.x, global0.a, 1314f) * vec4<f32>(1241f, global2.x, global0.a, -339f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, arg_1.a.x, _wgslsmith_f_op_f32(sign(-1422f)), _wgslsmith_f_op_f32(-1027f - _wgslsmith_f_op_f32(select(global0.a, global2.x, arg_2.x))))), arg_2.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-270f, 687f, arg_0.a.x, -368f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(min(arg_1.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(var_1.x - -521f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 290f, global2.x, global0.a), vec4<f32>(-1302f, 608f, 2172f, 1173f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2422f, arg_1.a.x, global2.x, 1000f))))));
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    global2 = _wgslsmith_f_op_vec4_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 3056f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(263f, global0.a), vec2<f32>(1735f, -1000f), false))))), arg_0, !(!vec4<bool>(true, false, true, all(vec4<bool>(false, true, true, false)))), Struct_3(_wgslsmith_div_i32(_wgslsmith_sub_i32(-16926i, u_input.a.x) >> (1u % 32u), u_input.a.x << (1u % 32u)), global2.wzw, Struct_1(global2.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global2.x))), arg_0)));
    global1 = array<vec3<bool>, 16>();
    global1 = array<vec3<bool>, 16>();
    var var_0 = vec2<f32>(236f, arg_0.a.x);
    global1 = array<vec3<bool>, 16>();
    return _wgslsmith_f_op_vec2_f32(abs(global2.zz));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.wx))))));
    global0 = Struct_1(_wgslsmith_div_f32(-124f, _wgslsmith_f_op_f32(-var_0.a.x)));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(-731f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<f32>(var_0.a.x, global0.a)), Struct_2(var_0.a), vec4<bool>(true, true, false, true), Struct_3(u_input.b, global2.xxz, Struct_1(global2.x), Struct_1(153f), Struct_2(vec2<f32>(var_0.a.x, -1187f))))).x, _wgslsmith_f_op_f32(-1000f - global0.a))) * var_0.a.x)));
    var_0 = Struct_2(var_0.a);
    var var_2 = vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 4294967295u), _wgslsmith_add_u32(_wgslsmith_mod_u32(26343u, 85334u), ~u_input.c.x)), ~_wgslsmith_sub_u32(~1u, min(u_input.c.x, 41964u))) | _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(42411u, u_input.c.x, u_input.c.x) | vec3<u32>(4294967295u, 16916u, u_input.c.x)), ~min(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, 1u, 65244u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, 0u), 4294967295u, u_input.c.x ^ u_input.c.x), ~countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, 24525u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 27298u), vec3<u32>(u_input.c.x, 62261u, u_input.c.x))));
    return Struct_3(-24623i ^ firstTrailingBit(u_input.b), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), -948f)), 1000f, _wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global2.x + -176f), _wgslsmith_f_op_f32(1932f - global0.a), _wgslsmith_f_op_f32(select(var_1.a.x, global0.a, true))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a)))), Struct_1(1117f), Struct_2(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(global2.zw)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> Struct_3 {
    global0 = arg_0.d;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1123f, global2.x, global2.x)))));
    global1 = array<vec3<bool>, 16>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a, u_input.b, 2147483647i, arg_2), vec4<i32>(arg_0.a, u_input.a.x, -2147483647i, 2147483647i)) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(0i, arg_2, arg_2, 43332i), vec4<i32>(arg_0.a, 67444i, 0i, arg_0.a)), vec4<i32>(2147483647i, max(36176i, select(arg_0.a, -1i, arg_1)), _wgslsmith_sub_i32(_wgslsmith_add_i32(-25468i, 2403i), -var_0.a), -6609i)), abs(~(max(vec4<i32>(58868i, u_input.a.x, u_input.a.x, 8232i), vec4<i32>(u_input.d.x, arg_0.a, u_input.d.x, u_input.b)) | vec4<i32>(6441i, 0i, -5339i, var_0.a))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), any(select(!global1[_wgslsmith_index_u32(4294967295u, 16u)], vec3<bool>(false, any(vec2<bool>(false, true)), true), any(vec3<bool>(true, true, false)))), -u_input.b);
    let var_1 = var_0.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1171f))))))), _wgslsmith_f_op_f32(f32(-1f) * -506f));
    global0 = func_4(func_4(func_4(Struct_3(2147483647i, vec3<f32>(-1640f, 1000f, 537f), var_0.d, func_4(Struct_3(var_0.a, vec3<f32>(268f, 1663f, -805f), var_0.d, Struct_1(730f), var_0.e), true, -58912i).c, Struct_2(global2.yw)), true, 1i), any(vec2<bool>(true, true)), ~func_1().a), select(true, all(vec4<bool>(false, true, true, true)), true), var_0.a).c;
    var var_3 = u_input.c.x;
    global2 = vec4<f32>(global2.x, -392f, -618f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))))));
    let var_4 = true;
    let var_5 = vec4<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-1270f * _wgslsmith_f_op_f32(func_4(var_0, var_4, -46748i).b.x * _wgslsmith_f_op_f32(select(global0.a, var_2.x, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1999f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(select(vec4<i32>(1773i, u_input.a.x, 1i, ~var_0.a), vec4<i32>(34656i, var_1 | var_0.a, 6323i, _wgslsmith_mult_i32(var_0.a, -1i)), vec4<bool>(true, var_4 != var_4, !var_4, all(vec2<bool>(var_4, var_4)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-27549i, 0i, -4664i, _wgslsmith_mod_i32(var_0.a, 37676i)), vec4<i32>(var_1, -var_1, _wgslsmith_sub_i32(10966i, 1i), 1i))), ~vec3<u32>((u_input.c.x << (6735u % 32u)) | firstLeadingBit(u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x), reverseBits(~20536u)), _wgslsmith_mult_u32(u_input.c.x, 9872u), _wgslsmith_div_f32(1146f, -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(var_0.b.zx))).x)));
}

