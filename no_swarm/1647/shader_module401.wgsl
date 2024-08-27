struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -1i, 33399i, i32(-2147483648));

var<private> global1: Struct_3 = Struct_3(1275f, vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(22946u, 40194u), vec4<i32>(-16574i, 2147483647i, 0i, -34561i)));

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(1043f, vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(380u, 40546u), vec4<i32>(-37226i, 4263i, 1i, 2147483647i))), Struct_3(391f, vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(16197u, 0u), vec4<i32>(2147483647i, 5735i, 1i, -60826i))), Struct_3(1000f, vec4<bool>(false, true, true, true), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(-1i, 25477i, 2147483647i, -18390i))), Struct_3(-600f, vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(19463u, 39367u), vec4<i32>(-56359i, 1i, -1i, -48631i))), Struct_3(740f, vec4<bool>(true, true, true, false), Struct_1(vec2<u32>(15729u, 23882u), vec4<i32>(19105i, 2147483647i, 0i, -8384i))), Struct_3(-192f, vec4<bool>(true, true, true, true), Struct_1(vec2<u32>(1u, 9482u), vec4<i32>(-10426i, 19603i, i32(-2147483648), -30531i))), Struct_3(-784f, vec4<bool>(false, false, false, false), Struct_1(vec2<u32>(105141u, 41305u), vec4<i32>(-40973i, 12595i, -1i, 32319i))), Struct_3(644f, vec4<bool>(true, false, false, true), Struct_1(vec2<u32>(0u, 1u), vec4<i32>(0i, -31547i, 18038i, -6971i))), Struct_3(1359f, vec4<bool>(false, false, true, true), Struct_1(vec2<u32>(29069u, 0u), vec4<i32>(2147483647i, 14097i, 19409i, 1i))), Struct_3(-1000f, vec4<bool>(true, false, false, false), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(42984i, i32(-2147483648), 0i, 1i))), Struct_3(360f, vec4<bool>(false, true, true, true), Struct_1(vec2<u32>(4294967295u, 38428u), vec4<i32>(-59358i, 2147483647i, 0i, -24314i))), Struct_3(-722f, vec4<bool>(false, false, true, true), Struct_1(vec2<u32>(1u, 12899u), vec4<i32>(2147483647i, i32(-2147483648), -30084i, -19394i))), Struct_3(-761f, vec4<bool>(true, false, false, true), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(1i, 0i, 1i, -65548i))), Struct_3(-836f, vec4<bool>(false, false, false, false), Struct_1(vec2<u32>(4294967295u, 60346u), vec4<i32>(-47784i, i32(-2147483648), -18856i, -1i))), Struct_3(124f, vec4<bool>(true, true, false, false), Struct_1(vec2<u32>(36367u, 0u), vec4<i32>(-20783i, 21854i, 1i, i32(-2147483648)))), Struct_3(1000f, vec4<bool>(false, true, false, false), Struct_1(vec2<u32>(1u, 93462u), vec4<i32>(0i, 2147483647i, -13103i, 1i))), Struct_3(998f, vec4<bool>(false, false, false, false), Struct_1(vec2<u32>(53295u, 4294967295u), vec4<i32>(i32(-2147483648), 34944i, 0i, 0i))), Struct_3(223f, vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(-1i, 1i, 1i, 2147483647i))), Struct_3(-2035f, vec4<bool>(false, false, true, true), Struct_1(vec2<u32>(66328u, 0u), vec4<i32>(48090i, -2635i, -1i, -15646i))), Struct_3(-596f, vec4<bool>(false, false, true, false), Struct_1(vec2<u32>(63660u, 1u), vec4<i32>(-37258i, -9133i, -45032i, i32(-2147483648)))), Struct_3(-2084f, vec4<bool>(false, true, true, true), Struct_1(vec2<u32>(40326u, 23075u), vec4<i32>(17608i, -1i, 1i, -3344i))), Struct_3(-1000f, vec4<bool>(true, false, true, false), Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(-21659i, 39576i, 2867i, 41828i))), Struct_3(2381f, vec4<bool>(true, true, true, false), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(i32(-2147483648), -1i, 1i, 41797i))), Struct_3(-1323f, vec4<bool>(true, true, false, false), Struct_1(vec2<u32>(1794u, 0u), vec4<i32>(0i, 0i, 0i, i32(-2147483648)))));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global1 = global3[_wgslsmith_index_u32(~(~(~global2.b)), 24u)];
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-113f, 2527f)))) + _wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a)) + _wgslsmith_f_op_f32(-global1.a)))));
    global2 = Struct_2(_wgslsmith_dot_vec2_i32(~(~global0.wz), abs(global0.wz)), global2.b & ~((8291u | global1.c.a.x) ^ 45354u));
    return select(firstLeadingBit(77797u), 16635u, false);
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = Struct_2(~_wgslsmith_mult_i32(1i, -arg_0.a), func_3());
    global2 = arg_0;
    var var_1 = global3[_wgslsmith_index_u32(~global2.b, 24u)];
    var var_2 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i << (global1.c.a.x % 32u)), countOneBits(2147483647i), 35209i), firstLeadingBit(global1.c.b.zzy)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.a)))) + -1607f))), global1.b, var_1.c);
    return ~(~(vec4<i32>(-1i) * -global1.c.b)) ^ global1.c.b;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = _wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.b.x, arg_0.x), vec2<i32>(global0.x, -1i)), min(arg_0.x, -9182i)), u_input.a, ~arg_0.x, arg_0.x), ~select(global1.c.b, select(func_2(Struct_2(global1.c.b.x, 2917u)), global1.c.b, !global1.b.x), !select(vec4<bool>(true, global1.b.x, global1.b.x, false), vec4<bool>(global1.b.x, false, false, true), global1.b)));
    var var_0 = Struct_5(Struct_2(_wgslsmith_mod_i32(~global1.c.b.x << (u_input.b.x % 32u), arg_0.x), 0u | ~_wgslsmith_div_u32(global2.b, 4294967295u)), !global1.b, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, 13013u), u_input.c.x) << (vec2<u32>(4689u, global2.b) % vec2<u32>(32u)), u_input.c.ww));
    var var_1 = select(-vec3<i32>(_wgslsmith_sub_i32(firstTrailingBit(arg_0.x), global0.x), select(~(-4157i), _wgslsmith_clamp_i32(u_input.a, -40881i, global1.c.b.x), global1.b.x), firstTrailingBit(~arg_0.x)), vec3<i32>(-2147483647i, -4812i, _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(arg_0, vec3<i32>(2147483647i, 646i, 29337i)), arg_0)), false);
    return Struct_1(vec2<u32>(select(max(_wgslsmith_dot_vec4_u32(u_input.b, u_input.c), _wgslsmith_mod_u32(4294967295u, global2.b)), func_3(), true), ~max(global2.b ^ 4294967295u, 1u)), vec4<i32>(_wgslsmith_clamp_i32((global0.x >> (var_0.c.x % 32u)) >> (countOneBits(4294967295u) % 32u), i32(-1i) * -global0.x, ~(global0.x | var_0.a.a)), _wgslsmith_sub_i32(u_input.a, -1i), 2147483647i, arg_0.x));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = -vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(-59695i, -1i, 31088i, 2147483647i)), _wgslsmith_mult_i32(-2147483647i, arg_0.b.x)), firstLeadingBit(arg_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 26937i, -global2.a, select(u_input.a, global2.a, global1.b.x)), ~(~vec4<i32>(global2.a, u_input.a, global1.c.b.x, 792i))));
    global0 = ~select(vec4<i32>(~_wgslsmith_clamp_i32(1i, 0i, 0i), -1i, 1i, 1i), global1.c.b, vec4<bool>(u_input.c.x == abs(u_input.c.x), true, !global1.b.x, all(vec2<bool>(true, true)) | (-28716i < global0.x)));
    let var_1 = max(1u, _wgslsmith_sub_u32(global1.c.a.x, abs(~_wgslsmith_sub_u32(global1.c.a.x, global2.b))));
    var var_2 = Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, func_1(global1.c.b.wxy).b.x, i32(-1i) * -1i, ~_wgslsmith_dot_vec2_i32(arg_0.b.zw, vec2<i32>(u_input.a, 2147483647i))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global0.x, 2147483647i), 0i, _wgslsmith_mod_i32(global1.c.b.x, -12772i), global2.a), firstTrailingBit(vec4<i32>(global1.c.b.x, u_input.a, 0i, arg_0.b.x)))), vec4<bool>(global1.c.a.x > var_1, global1.b.x && false, !(_wgslsmith_div_f32(global1.a, global1.a) > -709f), any(!global1.b.xyz)), global3[_wgslsmith_index_u32(arg_0.a.x, 24u)]);
    return Struct_3(-976f, global1.b, Struct_1(_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(var_2.c.c.a, var_2.c.c.a), var_2.c.c.a), vec4<i32>(firstTrailingBit(-2147483647i), var_0.x, ~_wgslsmith_add_i32(-38556i, -9177i), -20502i)));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    let var_0 = arg_2.c.b.xy;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, 1000f, arg_0.b.x)) + -1430f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.a, _wgslsmith_f_op_f32(arg_0.a * -942f)), vec2<f32>(_wgslsmith_f_op_f32(max(295f, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -448f)))));
    global2 = Struct_2(arg_2.c.c.b.x, func_1(vec3<i32>(firstTrailingBit(0i), ~u_input.a << (global1.c.a.x % 32u), func_1(global0.xxy & global0.xzx).b.x)).a.x);
    let var_2 = -249f;
    let var_3 = -2360f;
    return Struct_2(u_input.a, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.x, ~global2.b);
    global2 = func_5(func_4(func_1(abs(~global1.c.b.ywx))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.a)) * _wgslsmith_f_op_f32(f32(-1f) * -417f)), _wgslsmith_f_op_f32(min(global1.a, global1.a)))), Struct_4(vec4<i32>(func_1(global0.zxz).b.x, ~abs(u_input.a), global0.x, _wgslsmith_dot_vec2_i32(global0.yw | vec2<i32>(-33241i, -47203i), global1.c.b.zy & global0.yy)), !vec4<bool>(global1.b.x, !global1.b.x, true == global1.b.x, !global1.b.x), func_4(Struct_1(u_input.c.wz, -vec4<i32>(-1i, 2147483647i, u_input.a, global2.a)))), ~global2.b);
    global2 = Struct_2(1i, 23939u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a, 923f), vec2<f32>(-861f, global1.a))), _wgslsmith_div_vec2_f32(vec2<f32>(563f, -335f), vec2<f32>(global1.a, global1.a))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 2452f) * vec2<f32>(global1.a, global1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 1438f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a, global1.a), vec2<f32>(188f, 1130f)))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, global1.b.x)), vec2<bool>(false, true), true))))));
}

