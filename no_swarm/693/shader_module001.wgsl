struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(0i, vec3<bool>(false, true, false), vec4<bool>(true, false, true, true)), vec3<i32>(-44440i, -48698i, 9749i), Struct_1(2147483647i, vec3<bool>(true, true, false), vec4<bool>(true, true, true, false))), Struct_2(Struct_1(i32(-2147483648), vec3<bool>(true, true, true), vec4<bool>(false, false, false, true)), vec3<i32>(16484i, i32(-2147483648), 33487i), Struct_1(0i, vec3<bool>(false, true, true), vec4<bool>(false, true, false, false))), Struct_2(Struct_1(-1i, vec3<bool>(false, true, false), vec4<bool>(true, true, true, true)), vec3<i32>(20619i, 0i, -1i), Struct_1(32497i, vec3<bool>(false, false, false), vec4<bool>(false, true, false, false))), Struct_2(Struct_1(1i, vec3<bool>(true, false, false), vec4<bool>(false, false, true, false)), vec3<i32>(-41276i, 20801i, -1i), Struct_1(i32(-2147483648), vec3<bool>(false, false, false), vec4<bool>(true, true, true, false))), Struct_2(Struct_1(2147483647i, vec3<bool>(true, false, false), vec4<bool>(true, false, true, false)), vec3<i32>(-48253i, -1i, -1200i), Struct_1(0i, vec3<bool>(true, true, true), vec4<bool>(true, false, false, false))), Struct_2(Struct_1(-1i, vec3<bool>(false, false, true), vec4<bool>(false, true, false, false)), vec3<i32>(-1i, 51096i, 1i), Struct_1(2147483647i, vec3<bool>(false, true, true), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-1i, vec3<bool>(false, false, true), vec4<bool>(true, false, false, false)), vec3<i32>(i32(-2147483648), 40045i, i32(-2147483648)), Struct_1(-1i, vec3<bool>(false, true, false), vec4<bool>(false, true, true, false))), Struct_2(Struct_1(86844i, vec3<bool>(true, true, true), vec4<bool>(false, false, false, false)), vec3<i32>(0i, -1i, 4300i), Struct_1(0i, vec3<bool>(true, false, false), vec4<bool>(false, false, true, false))), Struct_2(Struct_1(1i, vec3<bool>(true, true, true), vec4<bool>(true, true, false, true)), vec3<i32>(-27129i, -34619i, i32(-2147483648)), Struct_1(2147483647i, vec3<bool>(true, true, true), vec4<bool>(false, false, true, false))), Struct_2(Struct_1(-1167i, vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), vec3<i32>(30450i, 20891i, 1i), Struct_1(2147483647i, vec3<bool>(true, true, false), vec4<bool>(false, true, true, false))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = firstTrailingBit(firstLeadingBit(~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 1u), 1u, u_input.a.x, u_input.c.x)));
    global0 = array<vec3<f32>, 12>();
    global1 = array<Struct_2, 10>();
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 10u)];
    let var_2 = global1[_wgslsmith_index_u32(9177u, 10u)];
    return false;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<bool>) -> vec3<u32> {
    global1 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1498f, all(arg_3)))) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-580f)) * _wgslsmith_div_f32(-190f, -216f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1004f) * 1546f))) - -1377f), arg_2));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(firstLeadingBit(~0u), ~(~1u), 9546u), 10571u);
    let var_2 = ~(-u_input.b.xy);
    var_1 = u_input.a.x;
    return _wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32((vec3<u32>(25560u, u_input.a.x, arg_1.x) >> (vec3<u32>(4294967295u, u_input.c.x, 27178u) % vec3<u32>(32u))) << (u_input.a.yxz % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, 30122u), ~arg_1.x, countOneBits(u_input.a.x))), vec3<u32>(_wgslsmith_clamp_u32(min(abs(0u), ~0u), 34579u, arg_1.x), arg_1.x, _wgslsmith_mod_u32(u_input.c.x, 7055u)));
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = vec3<u32>(~u_input.a.x, 0u, u_input.c.x) | func_3(vec2<i32>(-38423i, _wgslsmith_mult_i32(u_input.b.x, 2147483647i)), countOneBits(~vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x)), true, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(Struct_1(-717i, vec3<bool>(false, false, true), vec4<bool>(true, false, true, true)), global1[_wgslsmith_index_u32(48243u, 10u)])));
    global0 = array<vec3<f32>, 12>();
    var var_1 = true || func_2(Struct_1(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) << (1u % 32u), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(var_0.x, 10u)]);
    let var_2 = Struct_1(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_clamp_i32(arg_0.x ^ _wgslsmith_clamp_i32(-2147483647i, -61447i, 0i), -2147483647i, arg_0.x)), vec3<bool>(true, true, true), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), vec4<bool>(all(vec4<bool>(false, false, true, true)), true, false, true), any(vec4<bool>(false, false, false, false))));
    var_1 = false;
    return !select(var_2.c, select(vec4<bool>(true, true, false, var_2.c.x), vec4<bool>(var_2.b.x, var_2.b.x, arg_0.x != var_2.a, !var_2.b.x), !(!var_2.c)), var_2.c);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), 2702f));
    var var_1 = abs(u_input.b);
    var var_2 = u_input.b.xw;
    var var_3 = Struct_1(-u_input.b.x, arg_3.zwx, arg_3);
    var var_4 = !var_3.c.zxx;
    return global1[_wgslsmith_index_u32(u_input.c.x, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(2147483647i, true, false, !select(func_1(_wgslsmith_add_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, u_input.b.x))), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    global1 = array<Struct_2, 10>();
    var var_1 = Struct_1(var_0.b.x, vec3<bool>(any(vec3<bool>(true, true, any(var_0.c.c))), countOneBits(countOneBits(u_input.c.x)) <= 4294967295u, func_1(var_0.b.xy).x), var_0.a.c);
    var var_2 = Struct_1(i32(-1i) * -countOneBits(countOneBits(var_1.a)), vec3<bool>(_wgslsmith_sub_i32(~u_input.b.x, u_input.b.x) < var_0.c.a, var_0.c.c.x, true), select(var_0.c.c, !select(select(vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.b.x), vec4<bool>(true, true, false, var_0.a.b.x), false), !vec4<bool>(false, false, var_0.c.c.x, var_1.c.x), var_0.a.c), true));
    var var_3 = Struct_1(_wgslsmith_div_i32(firstLeadingBit(var_1.a), _wgslsmith_sub_i32(2147483647i, ~var_0.b.x ^ u_input.b.x)), vec3<bool>(true, true, (firstLeadingBit(var_1.a) >> (1u % 32u)) != u_input.b.x), select(func_4(var_0.c.a, true, any(select(var_2.b.yz, vec2<bool>(true, var_1.b.x), true)), !select(var_2.c, var_0.a.c, var_2.b.x)).a.c, vec4<bool>(true, func_1(~u_input.b.zw).x, !var_2.b.x, any(select(vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.a.c.x), vec3<bool>(true, false, var_2.b.x), vec3<bool>(false, var_2.b.x, var_0.a.c.x)))), var_1.c));
    var var_4 = vec2<bool>(true, ((~u_input.c.x << (4294967295u % 32u)) << (_wgslsmith_add_u32(1u, u_input.a.x) % 32u)) == ((_wgslsmith_clamp_u32(4294967295u, 0u, 71847u) | 55697u) ^ reverseBits(u_input.c.x)));
    global0 = array<vec3<f32>, 12>();
    let var_5 = func_4(abs(var_0.a.a), func_1(u_input.b.zw).x, !(!var_1.b.x), var_1.c);
    var var_6 = reverseBits(0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-307f + 1863f), _wgslsmith_f_op_f32(-558f * -911f)) * vec2<f32>(_wgslsmith_f_op_f32(step(-1304f, 1042f)), _wgslsmith_f_op_f32(round(-1263f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -775f)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, 1041f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1726f, -2112f), vec2<f32>(-609f, 532f))))))), -(i32(-1i) * -1i), vec4<u32>(u_input.a.x, select(_wgslsmith_mod_u32(~4804u, u_input.c.x >> (u_input.c.x % 32u)), ~(~u_input.c.x), func_4(_wgslsmith_div_i32(-1i, var_1.a), any(var_1.c), any(vec3<bool>(false, var_0.c.b.x, var_3.b.x)), !var_5.a.c).c.b.x), ~0u, 1u | func_3(firstTrailingBit(u_input.b.zy), firstLeadingBit(u_input.a), var_4.x, !vec3<bool>(var_4.x, true, false)).x));
}

