struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(1404f, vec4<u32>(38911u, 40963u, 0u, 9767u), vec4<i32>(2147483647i, 14164i, 16425i, -30069i), false), Struct_1(-1401f, vec4<u32>(2958u, 22199u, 4294967295u, 6083u), vec4<i32>(1i, -1i, 976i, -1i), true), Struct_1(558f, vec4<u32>(1984u, 56977u, 8325u, 0u), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 0i), true), Struct_1(1860f, vec4<u32>(18298u, 43087u, 39419u, 17475u), vec4<i32>(28427i, -1i, -1i, 10292i), false), Struct_1(423f, vec4<u32>(55130u, 17518u, 4294967295u, 13540u), vec4<i32>(-8122i, -15099i, 7424i, i32(-2147483648)), true), Struct_1(283f, vec4<u32>(4294967295u, 42457u, 0u, 4294967295u), vec4<i32>(1i, -35007i, 0i, 1i), true), Struct_1(202f, vec4<u32>(48021u, 4294967295u, 4294967295u, 45326u), vec4<i32>(-18834i, 2147483647i, 33633i, i32(-2147483648)), true), Struct_1(721f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 24819u), vec4<i32>(5893i, -18953i, -1i, 37294i), true), Struct_1(137f, vec4<u32>(2540u, 19754u, 5717u, 0u), vec4<i32>(0i, i32(-2147483648), 0i, 0i), false), Struct_1(-589f, vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<i32>(-21237i, 1i, i32(-2147483648), 27429i), false));

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-145i, 0i, 1i), vec3<i32>(1i, 8066i, -8093i), vec3<i32>(28698i, 0i, 2147483647i), vec3<i32>(0i, 0i, 3936i), vec3<i32>(55448i, 17786i, 11455i), vec3<i32>(i32(-2147483648), -13432i, 2147483647i), vec3<i32>(-32699i, 61732i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -23214i, i32(-2147483648)), vec3<i32>(148i, 50640i, 18588i), vec3<i32>(2147483647i, 22964i, -1i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1i, 33348i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(19726i, -1i, -1i), vec3<i32>(-17005i, -12209i, i32(-2147483648)), vec3<i32>(51638i, -8670i, -33929i), vec3<i32>(-1i, i32(-2147483648), -2594i), vec3<i32>(28659i, 2147483647i, -36172i), vec3<i32>(0i, 11787i, 2147483647i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(-13849i, -1i, 2147483647i), vec3<i32>(2147483647i, 1i, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    global0 = select(select(!(!vec4<bool>(global0.x, global0.x, global0.x, false)), !select(vec4<bool>(global0.x, global0.x, false, true), select(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x)), true), _wgslsmith_mult_i32(~u_input.b, max(u_input.d, u_input.d)) == u_input.d), select(vec4<bool>(!global0.x || any(vec4<bool>(global0.x, global0.x, global0.x, true)), !any(vec3<bool>(global0.x, global0.x, global0.x)), false, !global0.x), !vec4<bool>(any(global0.yw), any(global0.zy), select(global0.x, true, global0.x), true), select(select(!vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(false, global0.x, global0.x, false), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), true)), !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, false, global0.x, global0.x)), global0.x)), false);
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-940f)) - _wgslsmith_f_op_f32(-arg_0)), -2626f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-174f, -116f)), _wgslsmith_f_op_f32(abs(-685f))))))), vec4<u32>(~(~_wgslsmith_sub_u32(68490u, u_input.a.x)), 4294967295u, 1u, firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, 0u) | u_input.c.x)), -vec4<i32>(836i, u_input.b, ~u_input.d << (4294967295u % 32u), -abs(u_input.b)), all(vec2<bool>(any(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x))), false)));
    let var_1 = Struct_4(~86260u << (firstLeadingBit(~1u) % 32u), vec4<u32>(u_input.a.x, var_0.b.x, u_input.c.x, ~(~0u)));
    global0 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f - 708f) * _wgslsmith_f_op_f32(var_0.a * -2001f)) == arg_0, true, 55657u >= ~min(u_input.a.x, var_0.b.x), any(vec3<bool>(global0.x, var_0.d, !var_0.d))), select(select(vec4<bool>(true, false, var_0.d, any(vec4<bool>(true, true, false, false))), select(select(vec4<bool>(false, var_0.d, true, global0.x), vec4<bool>(true, true, false, var_0.d), vec4<bool>(var_0.d, true, global0.x, false)), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, global0.x, global0.x, false)), !vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d)), select(!select(vec4<bool>(global0.x, true, var_0.d, global0.x), vec4<bool>(var_0.d, false, var_0.d, global0.x), global0.x), vec4<bool>(!var_0.d, select(true, global0.x, false), -1i == var_0.c.x, true), vec4<bool>(var_0.d, var_0.d || false, global0.x, true)), global0.x), vec4<bool>(var_0.d, !all(vec2<bool>(global0.x, global0.x)) && (31270u != firstTrailingBit(var_0.b.x)), var_0.d, false));
    return _wgslsmith_div_vec4_u32(firstLeadingBit(var_0.b & max(~var_1.b, _wgslsmith_clamp_vec4_u32(var_1.b, vec4<u32>(var_0.b.x, u_input.a.x, var_0.b.x, var_1.a), u_input.a))), u_input.a);
}

fn func_2(arg_0: i32, arg_1: Struct_5, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_5(u_input.d, arg_1.b, vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-37415i, arg_1.a, 2147483647i, u_input.d), arg_1.c), -_wgslsmith_add_i32(u_input.b, arg_0), u_input.b, _wgslsmith_div_i32(21372i, 1i)) & vec4<i32>(reverseBits(arg_0), 18077i, i32(-1i) * -14573i, u_input.d), Struct_1(arg_1.d.a, func_3(-562f), countOneBits(arg_1.d.c), all(global0.xxy)));
    return !(true && any(select(vec3<bool>(arg_1.d.d, global0.x, global0.x), global0.yxz, true)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> vec2<f32> {
    global0 = select(select(vec4<bool>(global0.x, all(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(false, false, global0.x), global0.wxy, vec3<bool>(global0.x, false, false)))), vec4<bool>(u_input.b <= 2147483647i, global0.x, false, global0.x), select(vec4<bool>(!global0.x, !global0.x, select(true, true, false), false), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(func_2(arg_0, Struct_5(1i, Struct_4(13375u, vec4<u32>(arg_1.x, 0u, u_input.c.x, arg_1.x)), vec4<i32>(-44222i, arg_0, u_input.b, arg_0), Struct_1(-194f, vec4<u32>(arg_1.x, u_input.c.x, 0u, u_input.c.x), vec4<i32>(arg_0, 1i, u_input.b, arg_0), true)), vec4<f32>(155f, -587f, -1730f, 200f)), select(global0.x, true, true), u_input.a.x < u_input.c.x, false))), select(select(select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, false, false), vec4<bool>(global0.x, true, global0.x, true)), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, global0.x, true, false), vec4<bool>(global0.x, false, global0.x, false)), vec4<bool>(false, true, global0.x, false)), !select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x), !global0.x), vec4<bool>(global0.x, global0.x, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(select(global0.x, false, true), global0.x, global0.x, true), func_2(u_input.b, Struct_5(2147483647i, Struct_4(38041u, arg_1), vec4<i32>(u_input.d, -4949i, 4981i, 5424i), global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-280f, -206f, 143f, 1187f), vec4<f32>(798f, -1065f, 734f, 2811f), vec4<bool>(false, global0.x, global0.x, false)))))), select(!select(!vec4<bool>(true, false, global0.x, false), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, true, false), global0.x), !vec4<bool>(global0.x, false, false, false)), vec4<bool>(global0.x, all(!vec3<bool>(global0.x, global0.x, true)), all(global0.yyw), (u_input.b ^ arg_0) > u_input.d), false));
    var var_0 = u_input.d;
    var var_1 = Struct_1(-159f, func_3(-2290f), vec4<i32>(13394i, u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(-25615i, arg_0) << (vec2<u32>(0u, arg_1.x) % vec2<u32>(32u))), i32(-1i) * -26352i) | -((vec4<i32>(arg_0, arg_0, 0i, 0i) ^ vec4<i32>(-26887i, arg_0, u_input.d, arg_0)) ^ -vec4<i32>(-2147483647i, u_input.b, -11541i, arg_0)), (true && all(!vec3<bool>(global0.x, global0.x, true))) | global0.x);
    global0 = select(select(select(select(select(vec4<bool>(true, var_1.d, true, global0.x), vec4<bool>(var_1.d, var_1.d, var_1.d, global0.x), vec4<bool>(global0.x, var_1.d, var_1.d, global0.x)), vec4<bool>(global0.x, true, global0.x, true), !vec4<bool>(var_1.d, true, true, true)), !select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x), var_1.d), vec4<bool>(true, true, true, all(global0.wzz))), vec4<bool>(u_input.c.x <= (1u >> (u_input.c.x % 32u)), true, global0.x, true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(global0.x, false, true, var_1.d), var_1.d), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(var_1.d, global0.x, global0.x, false)), vec4<bool>(var_1.d | false, global0.x, false, true), false)), select(vec4<bool>(!(var_1.a == -845f), var_1.d, global0.x, var_1.d), !(!select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(var_1.d, true, global0.x, true), true)), !vec4<bool>(true, !global0.x, true, false)), global0.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, _wgslsmith_f_op_f32(step(1000f, -294f)), _wgslsmith_f_op_f32(var_1.a + 1142f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1473f, -2130f, 1336f), vec3<f32>(-1135f, -1021f, var_1.a), global0.xzw)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, -209f, var_1.a)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 454f, var_1.a) - vec3<f32>(var_1.a, -1000f, 1231f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, -1076f, var_1.a), vec3<f32>(var_1.a, var_1.a, 1499f))))))));
    return _wgslsmith_f_op_vec2_f32(var_2.zx * var_2.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.zzy;
    let var_1 = vec4<u32>(abs(0u), u_input.a.x, 0u, ~u_input.a.x);
    global2 = array<vec3<i32>, 22>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(15951i, ~vec4<u32>(1u, 1u, u_input.c.x, 65566u))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 268f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1346f))), global0.x))))), global1[_wgslsmith_index_u32((~abs(4294967295u) >> (_wgslsmith_mult_u32(reverseBits(0u), func_3(-307f).x) % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(131004u, var_1.x, var_1.x, 12994u), select(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(var_0.x, var_0.x, true, global0.x), global0.x))) % 32u), 10u)], !select(global0.xzz, select(!global0.wzy, vec3<bool>(global0.x, global0.x, false), !global0.x), !(!vec3<bool>(var_0.x, global0.x, false))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(520f + 1000f), _wgslsmith_f_op_f32(1000f * 103f)) + _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_i32(u_input.d, u_input.b), var_1))), select(!select(vec4<bool>(global0.x, global0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, global0.x), vec4<bool>(var_0.x, global0.x, true, true)), !vec4<bool>(var_0.x, global0.x, false, global0.x), select(select(vec4<bool>(var_0.x, global0.x, global0.x, true), vec4<bool>(true, false, var_0.x, global0.x), vec4<bool>(var_0.x, global0.x, global0.x, global0.x)), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(global0.x, false, false, false), var_0.x), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, true, global0.x, true), global0.x))), 1709f));
    var_2 = Struct_3(var_2.d.a, Struct_1(_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.c - var_2.d.c))), countOneBits(vec4<u32>(~u_input.c.x, max(27955u, var_2.b.b.x), 92149u, 4294967295u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b.c.x, 64655i, var_2.b.c.x, u_input.b), ~vec4<i32>(var_2.b.c.x, u_input.d, -1932i, var_2.b.c.x)), !var_0.x), var_2.c, var_2.d);
    global0 = vec4<bool>(!(!(_wgslsmith_mult_i32(var_2.b.c.x, 2147483647i) != abs(u_input.b))), !any(select(vec2<bool>(true, true), vec2<bool>(false, global0.x), select(var_0.xx, global0.wx, vec2<bool>(false, global0.x)))), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 61119u, var_1.x), vec4<u32>(30248u, var_1.x, 4294967295u, var_1.x))) < var_1.x, all(select(!select(var_2.c, global0.zwx, global0.zww), !select(vec3<bool>(var_2.d.b.x, true, false), var_2.c, true), vec3<bool>(true, true, true))));
    global1 = array<Struct_1, 10>();
    let var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + _wgslsmith_f_op_vec2_f32(-var_2.a))), vec2<f32>(var_2.d.c, _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(var_2.d.a.x * var_2.a.x)))), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_sub_u32(31472u & u_input.c.x, var_2.b.b.x)), 10u)], global0.wzw, var_2.d);
    var var_4 = ~(var_3.b.b.x << (_wgslsmith_dot_vec2_u32(reverseBits(var_3.b.b.xw), firstTrailingBit(_wgslsmith_add_vec2_u32(var_1.yx, var_1.xw))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(var_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-773f, var_2.b.a)), var_3.a.x)), _wgslsmith_f_op_vec2_f32(func_1(var_3.b.c.x & 2147483647i, reverseBits(vec4<u32>(1u, var_2.b.b.x, 26313u, var_3.b.b.x) | var_1))).x, _wgslsmith_f_op_f32(min(var_2.d.c, var_2.b.a))), u_input.d, ~1i, _wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(-506f + var_3.d.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_i32(select(-1098i, var_3.b.c.x, false), -2147483647i), abs(var_2.b.b))).x)));
}

