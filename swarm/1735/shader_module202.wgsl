struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: array<vec3<f32>, 27>;

var<private> global2: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<f32> {
    global1 = array<vec3<f32>, 27>();
    let var_0 = global1[_wgslsmith_index_u32(~33208u, 27u)];
    global0 = array<Struct_3, 30>();
    let var_1 = Struct_2(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.x ^ arg_1.a.x, i32(-1i) * -2147483647i, -21327i & arg_1.a.x), ~(~vec3<i32>(7705i, u_input.b, -2147483647i))), arg_1.b, vec2<u32>(arg_1.c.x, 37896u));
    let var_2 = _wgslsmith_clamp_i32(select(i32(-1i) * -u_input.b, u_input.b, false), u_input.b, 23745i) ^ _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-20110i, -51137i, arg_1.a.x)), min(vec3<i32>(i32(-1i) * -2147483647i, abs(var_1.a.x), u_input.b | var_1.a.x), vec3<i32>(-var_1.a.x, ~49820i, _wgslsmith_mod_i32(var_1.a.x, 0i))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.a.x + arg_0.x))), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + 1000f)))))));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global1 = array<vec3<f32>, 27>();
    var var_0 = Struct_2(~(~select(select(vec3<i32>(10325i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, arg_0.d.x, true)), vec3<i32>(1i, -1i, u_input.b), !vec3<bool>(true, arg_0.d.x, arg_0.d.x))), arg_0, abs(~vec2<u32>(u_input.c.x, 34910u) & ~countOneBits(u_input.c.zx)));
    var var_1 = _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -u_input.b, _wgslsmith_add_i32(u_input.b, var_0.a.x)), ~(~var_0.a))) & var_0.a.x;
    var var_2 = ~(~_wgslsmith_clamp_vec2_i32(-vec2<i32>(26873i, -8730i), _wgslsmith_div_vec2_i32(var_0.a.zz, var_0.a.zy), -var_0.a.yx)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.c, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), var_0.c >> (~(~u_input.c.wy) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_2 = -_wgslsmith_mod_vec2_i32(abs(var_0.a.xy), max(reverseBits(var_0.a.zz), ~(~vec2<i32>(u_input.b, var_0.a.x))));
    return abs(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(10097u, arg_0.c, arg_0.c, arg_0.c), select(vec4<u32>(4294967295u, 4294967295u, 27440u, 4294967295u), u_input.c, global2[_wgslsmith_index_u32(var_0.c.x, 20u)])) >> (u_input.c % vec4<u32>(32u))));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(arg_1, 27u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, -1263f, 1601f))) + _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1857f, 219f)), Struct_2(vec3<i32>(-9463i, arg_0.x, u_input.b), Struct_1(vec3<f32>(-1312f, 754f, -686f), arg_2, u_input.c.x, vec2<bool>(arg_2, arg_2)), u_input.c.zw)))), !arg_2, ~arg_1, !select(vec2<bool>(true, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true), false), true)));
    let var_1 = Struct_2(arg_0.wxz, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(var_0.x, 27u)] + vec3<f32>(1615f, 763f, 1066f)), global1[_wgslsmith_index_u32(10392u, 27u)]))), u_input.b >= u_input.b, reverseBits(_wgslsmith_mult_u32(var_0.x, arg_1) | arg_1), vec2<bool>(false, !(arg_0.x < arg_0.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a, reverseBits(~0u)), ~u_input.c.wx));
    let var_2 = firstTrailingBit(arg_0);
    let var_3 = 55344i ^ u_input.b;
    let var_4 = select(vec4<bool>(arg_2, all(vec2<bool>(true, true)), arg_2, !(false == all(vec3<bool>(true, arg_2, false)))), vec4<bool>(arg_2, var_1.b.d.x, u_input.b > ~u_input.b, !select(true, var_1.b.b, any(vec4<bool>(var_1.b.d.x, var_1.b.d.x, false, false)))), false && !(!(var_1.b.a.x > -895f)));
    return ~var_0.x;
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(761f, 325f, -1324f), vec3<f32>(-957f, -1115f, -266f)), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(1u, 27u)]), vec3<bool>(arg_0.x, false, arg_0.x))) * global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), true, func_2(-vec4<i32>(-2147483647i, 1i, 545i << (u_input.c.x % 32u), 2147483647i), 0u >> (firstLeadingBit(u_input.c.x) % 32u), !(u_input.b == 25002i) & !(false || arg_0.x)), arg_0);
    let var_1 = var_0;
    let var_2 = global0[_wgslsmith_index_u32(~var_0.c, 30u)];
    let var_3 = ~u_input.c.www;
    let var_4 = var_1;
    return 22602i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 30>();
    let var_0 = global2[_wgslsmith_index_u32(~(~(~(u_input.c.x << (select(10352u, u_input.a, false) % 32u)))), 20u)];
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(~(-30840i), reverseBits(func_1(var_0.yy))), func_1(vec2<bool>(all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.www, var_0.x)), _wgslsmith_f_op_f32(floor(1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = Struct_2(min(~vec3<i32>(1i, 1i, -48480i), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, u_input.b, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(21447i, u_input.b, u_input.b), vec3<i32>(var_1, 1i, -2147483647i)))) | -(vec3<i32>(-62665i, 2147483647i, var_1) ^ ~vec3<i32>(var_1, -4234i, u_input.b)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, 1564f, -1132f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(424f, -453f, 1508f) + vec3<f32>(-1527f, -588f, 887f)))), (_wgslsmith_sub_i32(u_input.b, -30680i) >> (abs(1987u) % 32u)) >= var_1, max(u_input.a, _wgslsmith_div_u32(~60802u, u_input.a)), var_0.wx), ~(~(u_input.c.wz ^ countOneBits(vec2<u32>(u_input.c.x, u_input.a)))));
    global0 = array<Struct_3, 30>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -294f) < var_2.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(-var_1 | u_input.b), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.a.x) - var_2.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f + var_2.b.a.x) - _wgslsmith_f_op_f32(-var_2.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.a.x * var_2.b.a.x), _wgslsmith_f_op_f32(-var_2.b.a.x)))), -_wgslsmith_mult_i32(var_2.a.x, ~(~var_1)), var_2.b.a.x, countOneBits(-_wgslsmith_sub_i32(-2147483647i, var_2.a.x) << (1u % 32u)));
}

