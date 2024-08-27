struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(2147483647i, 12260i, 470i), vec3<i32>(-45265i, 13540i, -20361i), vec3<i32>(-1i, -5546i, 26743i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-10152i, 2147483647i, 2147483647i), vec3<i32>(1i, -3317i, -9110i), vec3<i32>(-13340i, -39297i, -46722i), vec3<i32>(-8524i, 1i, -7717i), vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 70803i, 41120i), vec3<i32>(-1i, -49080i, -932i), vec3<i32>(-11770i, -3047i, 10631i), vec3<i32>(-50506i, 12550i, 0i), vec3<i32>(-12367i, -1i, i32(-2147483648)), vec3<i32>(0i, -25252i, 2147483647i), vec3<i32>(29086i, 14134i, i32(-2147483648)));

var<private> global2: vec4<f32>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: vec2<u32> = vec2<u32>(14862u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, 3969u, 4294967295u, 0u), vec4<u32>(global4.x, 67125u, u_input.d.x, u_input.d.x)), ~vec4<u32>(4294967295u, 4294967295u, 0u, global4.x)), _wgslsmith_mod_u32(u_input.d.x, 0u));
    let var_1 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false)), select(vec2<bool>(global3.x, true), vec2<bool>(false, false), false), global3.x), any(vec4<bool>(false, false, true, false))), !select(vec2<bool>(false, global3.x), vec2<bool>(false, global3.x), select(vec2<bool>(global3.x, true), vec2<bool>(true, false), true)), global3.x);
    let var_2 = _wgslsmith_dot_vec2_i32(abs(select(arg_0.xy, _wgslsmith_mod_vec2_i32(arg_0.xx, arg_0.yx) | arg_0.yy, !(u_input.b <= 70837i))), abs(arg_0.yx));
    var var_3 = Struct_1(u_input.d, -4159i, max(u_input.d, u_input.d), vec3<f32>(-380f, 125f, global2.x), vec4<i32>(5306i, 23170i, -select(u_input.b, ~arg_0.x, all(vec3<bool>(var_1.x, var_1.x, var_1.x))), 1i));
    let var_4 = vec4<bool>(global3.x, true, any(!(!(!vec4<bool>(var_1.x, true, var_1.x, false)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x))) == -639f);
    return var_3.c;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(u_input.d, -max(u_input.c, -1i), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(reverseBits(vec2<u32>(u_input.d.x, 4294967295u))), func_3(-vec3<i32>(u_input.c, u_input.c, -1i))), vec2<u32>(~global4.x, 14706u) ^ _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global4.x, global4.x)), vec2<u32>(0u, global4.x)), select(vec2<u32>(u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, global4.x, 1u)), func_3(global1[_wgslsmith_index_u32(1u, 16u)]), select(select(vec2<bool>(global3.x, false), vec2<bool>(false, global3.x), vec2<bool>(false, true)), !vec2<bool>(global3.x, false), global4.x == u_input.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-154f, global2.x, global2.x), global2.yzy, vec3<bool>(true, true, global3.x)))), global2.wwz)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(-33049i, u_input.b, 13419i, -2147483647i)), abs(firstTrailingBit(vec4<i32>(u_input.c, 8269i, u_input.c, u_input.c))), vec4<i32>(-1i, 0i, ~u_input.c, 0i)), vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(2147483647i, 0i)), 0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(28075i, u_input.b, -60654i, 36086i), vec4<i32>(2147483647i, 10492i, u_input.c, 20244i)), countOneBits(u_input.c))));
    global1 = array<vec3<i32>, 16>();
    var var_1 = Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(u_input.d.x, var_0.a.x)), 8003u) >> (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.x, 28958u), vec2<u32>(71513u, 0u)), var_0.c), abs(firstTrailingBit(vec2<u32>(34830u, u_input.d.x)))) % vec2<u32>(32u)), ~var_0.b, var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.d))))), -var_0.e);
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(reverseBits(~var_1.b), firstTrailingBit(1i))), min(var_1.e.wx, var_0.e.zx | vec2<i32>(var_0.e.x, var_0.e.x)));
    global3 = !select(vec2<bool>(!(global3.x || global3.x), !global3.x), vec2<bool>(global3.x, true), vec2<bool>(!global3.x, global3.x));
    return -min(firstLeadingBit(var_0.b), u_input.c);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = arg_1.b;
    let var_1 = var_0;
    let var_2 = ~_wgslsmith_dot_vec2_u32(~arg_1.a, _wgslsmith_add_vec2_u32(min(firstLeadingBit(vec2<u32>(global4.x, arg_0)), firstLeadingBit(arg_1.c)), arg_1.c));
    let var_3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, ~10001i, func_2()), -(vec3<i32>(arg_1.e.x, 53068i, -2147483647i) ^ reverseBits(vec3<i32>(-41669i, -2147483647i, 13734i)))) | _wgslsmith_mult_i32(~(-59938i), -1i);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1201f, global2.x, -132f, global2.x))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, arg_1.d.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1554f, arg_1.d.x, global2.x, -218f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, arg_2, 546f, -396f) * vec4<f32>(-301f, 1550f, arg_1.d.x, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1.d.x, -716f, global2.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1422f)), global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global2.x)))), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-global2.x)))));
    return vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(190f, -1000f)) + arg_1.d.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * 277f), false, false, global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d.x, u_input.d.x, global4.x)), ~vec3<u32>(0u, global4.x, u_input.d.x)));
    var var_1 = !(!vec3<bool>(any(func_1(global4.x, Struct_1(vec2<u32>(global4.x, 1u), 1i, vec2<u32>(0u, global4.x), global2.xzz, vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a)), 1419f, vec4<i32>(14342i, u_input.c, -1i, 2147483647i))), all(!vec3<bool>(global3.x, global3.x, global3.x)), global3.x));
    let var_2 = 16701u;
    let var_3 = func_1(0u, Struct_1(vec2<u32>(~46298u, ~1u), -(~countOneBits(-1i)), vec2<u32>(global4.x, min(select(1u, 1u, global3.x), 0u)), global2.zzw, firstTrailingBit(vec4<i32>(select(8300i, u_input.a, true), _wgslsmith_clamp_i32(u_input.c, u_input.b, 7363i), max(-21935i, 2147483647i), u_input.a & u_input.c))), global2.x, firstLeadingBit(-reverseBits(~vec4<i32>(33055i, 0i, u_input.b, u_input.a))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - -762f), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(global2.x * -147f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -933f, 578f, 153f), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(645f, global2.x, 381f, global2.x)), select(vec4<bool>(true, true, false, global3.x), vec4<bool>(false, true, false, global3.x), vec4<bool>(true, var_3.x, var_1.x, true)))))) - vec4<f32>(_wgslsmith_f_op_f32(-1989f - _wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-456f, _wgslsmith_f_op_f32(round(245f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), -827f, -2207f));
    var var_4 = 1000f;
    var_4 = global2.x;
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b ^ (i32(-1i) * -1i), 1i), _wgslsmith_mult_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), global1[_wgslsmith_index_u32(global4.x, 16u)])), vec3<i32>(i32(-1i) * -9166i, 10272i, _wgslsmith_sub_i32(-41230i, u_input.a)))), vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, _wgslsmith_sub_i32(u_input.c, u_input.b)), -u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 9333i, -u_input.b, 17067i), abs(min(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.c), vec4<i32>(u_input.a, 41638i, 15290i, u_input.b))))));
    var var_5 = Struct_1(~(~vec2<u32>(var_2, 25007u) ^ vec2<u32>(abs(var_2), global4.x >> (var_2 % 32u))), 0i, _wgslsmith_div_vec2_u32(~u_input.d, vec2<u32>(~(~u_input.d.x), 55654u << (var_2 % 32u))), _wgslsmith_f_op_vec3_f32(-global2.yzw), vec4<i32>(-2147483647i, u_input.a, -2147483647i, 24139i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_5.d.x + global2.x))))) * 956f));
}

