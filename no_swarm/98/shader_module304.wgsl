struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(361f, -317f, -661f, 784f, 1000f, -109f, -736f, 334f, 531f, 813f, 1000f, -381f, -633f, 399f, -1466f, 203f, 230f, 1969f, 1327f, 498f, 561f, -891f, 1198f, -148f, -205f, 1000f, 243f, -420f, 609f, 368f, 329f);

var<private> global1: array<Struct_4, 18>;

var<private> global2: Struct_3;

var<private> global3: u32 = 4294967295u;

var<private> global4: vec2<f32> = vec2<f32>(-528f, 654f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> vec2<i32> {
    var var_0 = max(select(vec4<i32>(0i, 16352i, _wgslsmith_div_i32(u_input.a, -1i) ^ global2.a.x, u_input.b.x), firstLeadingBit(global2.b.d) ^ vec4<i32>(abs(-2147483647i), ~global2.a.x, u_input.a, ~22172i), !select(!vec4<bool>(true, false, arg_2, global2.c.x), vec4<bool>(arg_2, true, arg_2, true), u_input.a > 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, countOneBits(abs(u_input.a)), _wgslsmith_mult_i32(global2.b.d.x, 2147483647i) | 0i, 2147483647i), firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, -4052i, global2.b.d.x) ^ global2.b.d)), max(-select(vec4<i32>(15765i, global2.b.d.x, 2147483647i, -2147483647i), vec4<i32>(u_input.b.x, global2.b.b.x, global2.b.d.x, global2.b.b.x), vec4<bool>(false, global2.b.a.x, true, true)), vec4<i32>(~global2.b.d.x, u_input.a, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), ~global2.a.x))));
    let var_1 = Struct_4(~_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global2.b.c.x, global2.b.c.x, global2.b.c.x), vec4<u32>(global2.b.c.x, 71157u, global2.b.c.x, global2.b.c.x))), max(vec4<u32>(21088u, global2.b.c.x, global2.b.c.x, global2.b.c.x), vec4<u32>(global2.b.c.x, global2.b.c.x, 0u, global2.b.c.x)) << (vec4<u32>(48961u, global2.b.c.x, 8644u, global2.b.c.x) % vec4<u32>(32u))), max(global2.b.c.x, global2.b.c.x));
    let var_2 = Struct_3(-(abs(vec3<i32>(var_0.x, u_input.b.x, u_input.a)) & vec3<i32>(~(-1i), -10144i >> (global2.b.c.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.a.x), u_input.b.xx))), global2.b, select(select(vec3<bool>(true, all(global2.b.a.yz), select(false, false, true)), !select(global2.c, global2.c, vec3<bool>(global2.b.a.x, global2.b.a.x, false)), select(!vec3<bool>(false, global2.c.x, true), select(global2.b.a, global2.c, false), !vec3<bool>(global2.b.a.x, true, true))), select(!global2.c, !(!vec3<bool>(arg_2, global2.c.x, true)), vec3<bool>(true, global2.c.x || arg_2, arg_2)), arg_2), -1482f);
    var_0 = -firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~u_input.b, select(vec4<i32>(var_2.b.d.x, var_2.a.x, -2147483647i, var_0.x), var_2.b.d, vec4<bool>(true, global2.b.a.x, var_2.c.x, false)), u_input.b | vec4<i32>(1i, -2147483647i, -26383i, 0i)), ~(vec4<i32>(u_input.a, global2.b.b.x, -31657i, -2681i) << (var_1.a % vec4<u32>(32u)))));
    var var_3 = var_2.b.b;
    return _wgslsmith_add_vec2_i32(vec2<i32>(~var_0.x, global2.b.b.x), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(global2.b.b), vec2<i32>(abs(u_input.a), _wgslsmith_mod_i32(0i, var_0.x))), var_2.b.b));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: u32) -> Struct_3 {
    var var_0 = -206f;
    let var_1 = global2.a;
    let var_2 = Struct_3(select(u_input.b.wzy, ~(-vec3<i32>(arg_1, arg_1, -49762i)), global2.b.a) << (vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global2.b.c.x, arg_0.x), ~vec3<u32>(global2.b.c.x, 18867u, 74328u)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, arg_2, 34957u), vec3<u32>(arg_2, 33796u, 13357u)), ~vec3<u32>(arg_0.x, global2.b.c.x, global2.b.c.x)), ~(~1u)) % vec3<u32>(32u)), global2.b, global2.b.a, -775f);
    let var_3 = 8323u;
    var var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.b.b.x, i32(-1i) * -10534i), vec2<i32>(41317i ^ countOneBits(arg_1), ~(-20763i)), max(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1477f, -662f, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(arg_0.x, 31u)])), _wgslsmith_f_op_f32(356f - global0[_wgslsmith_index_u32(var_3, 31u)]), all(vec3<bool>(var_2.c.x, var_2.b.a.x, false))), vec2<i32>(1976i, arg_1) & vec2<i32>(1i, 1i))) ^ vec2<i32>(1i, -60389i);
    return Struct_3(~global2.a, Struct_1(select(vec3<bool>(global2.b.a.x || global2.c.x, false && global2.c.x, !global2.c.x), vec3<bool>(true, !var_2.b.a.x, global2.c.x), true), u_input.b.yy, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~var_2.b.c, ~arg_0), ~_wgslsmith_div_vec2_u32(global2.b.c, vec2<u32>(4294967295u, 29178u))), -firstTrailingBit(abs(vec4<i32>(global2.b.b.x, 17791i, 0i, -1i)))), select(vec3<bool>(global2.b.a.x, -2147483647i >= _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.x, var_1.x, arg_1), u_input.b.yzy), true), var_2.b.a, !select(!global2.c, global2.c, select(global2.c, vec3<bool>(true, false, global2.c.x), var_2.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_2.b.c.x, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])), 1301f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(251f)), _wgslsmith_f_op_f32(min(-270f, global4.x))))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_1 {
    return global2.b;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec4<bool>(arg_0.x, true, !all(vec4<bool>(false, arg_0.x, !global2.b.a.x, !global2.b.a.x)), true);
    var var_1 = global2.b.c;
    let var_2 = global2.b;
    let var_3 = Struct_2(func_4(_wgslsmith_mult_vec4_i32(u_input.b, global2.b.d), 1322f, func_2(vec2<u32>(74863u, var_1.x ^ 7299u), min(-37928i, global2.b.b.x), ~(~72601u)), -vec4<i32>(_wgslsmith_dot_vec2_i32(global2.a.yx, global2.a.yz), _wgslsmith_div_i32(u_input.b.x, global2.b.b.x), 22337i, 80418i)), func_4(func_2(~var_2.c, _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(u_input.a, -2147483647i)), ~(global2.b.c.x | global2.b.c.x)).b.d, _wgslsmith_f_op_f32(-global4.x), Struct_3(_wgslsmith_div_vec3_i32(var_2.d.zwz & vec3<i32>(0i, var_2.b.x, u_input.a), max(var_2.d.yzx, vec3<i32>(-1i, -2147483647i, global2.b.b.x))), Struct_1(select(vec3<bool>(false, var_2.a.x, false), vec3<bool>(global2.c.x, false, true), global2.b.a.x), -vec2<i32>(-1i, -1i), countOneBits(vec2<u32>(global2.b.c.x, 29543u)), vec4<i32>(u_input.b.x, 0i, -34973i, 65612i)), select(arg_0, vec3<bool>(true, var_0.x, true), !vec3<bool>(var_2.a.x, var_2.a.x, global2.b.a.x)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_2.c.x, 31u)]))), select(vec4<i32>(56435i, firstTrailingBit(global2.b.d.x), 2147483647i, abs(global2.b.b.x)), vec4<i32>(0i, 0i, -42119i, -17154i) << (firstLeadingBit(vec4<u32>(var_2.c.x, var_2.c.x, var_1.x, 56271u)) % vec4<u32>(32u)), vec4<bool>(true, 445f == global4.x, true, true))));
    global2 = Struct_3(global2.a, Struct_1(vec3<bool>(true, _wgslsmith_clamp_i32(-25438i, 1i, var_2.d.x) > _wgslsmith_mod_i32(var_2.b.x, -2147483647i), all(!vec4<bool>(false, global2.c.x, true, false))), abs(countOneBits(~vec2<i32>(12330i, 1i))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.c.x, var_1.x), vec2<u32>(~var_2.c.x, 39292u)), min(-vec4<i32>(global2.a.x, -6933i, global2.a.x, 0i), var_3.b.d)), func_2(global2.b.c, ~func_2(vec2<u32>(global2.b.c.x, 17113u), i32(-1i) * -23190i, ~26550u).b.b.x, 13697u).c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * global2.d), -1204f)));
    return Struct_1(!select(func_4(_wgslsmith_clamp_vec4_i32(var_3.b.d, u_input.b, vec4<i32>(var_2.b.x, -5280i, var_3.a.b.x, global2.a.x)), global4.x, func_2(vec2<u32>(var_3.b.c.x, 35698u), u_input.a, var_3.b.c.x), vec4<i32>(-6583i, var_2.d.x, 2478i, -1i)).a, !(!var_3.a.a), var_3.a.a.x), vec2<i32>(-reverseBits(~global2.a.x), firstLeadingBit(~(-30534i))), var_2.c, var_3.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, !global2.c.x, true);
    var var_1 = Struct_2(func_1(!select(select(global2.c, global2.b.a, global2.b.a), vec3<bool>(global2.c.x, global2.c.x, false), !global2.b.a.x)), global2.b);
    var var_2 = Struct_1(func_1(global2.c).a, u_input.b.wx, var_1.a.c, -vec4<i32>(i32(-1i) * -32162i, global2.b.b.x, -(global2.a.x >> (var_1.b.c.x % 32u)), -var_1.b.d.x));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)))), ~vec3<u32>(var_1.b.c.x, var_2.c.x, _wgslsmith_mod_u32(~var_2.c.x, ~0u)), 577f);
}

