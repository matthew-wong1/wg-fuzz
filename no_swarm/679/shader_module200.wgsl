struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<i32, 26>;

var<private> global3: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(0i, -1i, -1i), vec3<i32>(1i, 7196i, 2147483647i), vec3<i32>(-13353i, i32(-2147483648), 1i));

var<private> global4: f32 = -408f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = arg_1.c;
    global2 = array<i32, 26>();
    global4 = arg_1.c.b.x;
    global2 = array<i32, 26>();
    var var_1 = !arg_1.c.a.zz;
    return !select(arg_1.c.c, var_0.c, true);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = all(!(!arg_0.a.xx));
    let var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(~1i, _wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(0i, u_input.a, -22385i)), _wgslsmith_add_i32(-1i ^ u_input.a, i32(-1i) * -2147483647i)), vec3<i32>(abs(select(max(global2[_wgslsmith_index_u32(34253u, 26u)], u_input.a), -u_input.a, true)), _wgslsmith_div_i32(abs(global2[_wgslsmith_index_u32(0u, 26u)] >> (u_input.b % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, -28807i), 69851i)), ~(~(-1i))));
    return Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(34836i, 7916i, 21447i, 1i)), -vec4<i32>(u_input.a, -2353i, 14114i, global2[_wgslsmith_index_u32(u_input.b, 26u)])), ~(-abs(vec4<i32>(var_1, var_1, -1i, 51215i)))), vec4<i32>(global2[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_mod_i32(reverseBits(0i), max(u_input.a, global2[_wgslsmith_index_u32(18950u, 26u)]) << (~0u % 32u)), 0i, 20874i), Struct_1(arg_0.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.b))), !select(select(vec3<bool>(global1.x, true, arg_0.c.x), vec3<bool>(arg_0.c.x, true, global1.x), var_0), vec3<bool>(true, arg_0.a.x, var_0), vec3<bool>(false, false, false))), min(u_input.a, var_1), any(select(select(select(vec4<bool>(arg_0.c.x, true, global1.x, global1.x), vec4<bool>(var_0, false, false, arg_0.c.x), global1.x), select(vec4<bool>(false, arg_0.c.x, global1.x, false), vec4<bool>(global1.x, var_0, global1.x, global1.x), true), arg_0.c.x), !vec4<bool>(global1.x, false, arg_0.c.x, global1.x), all(vec4<bool>(true, var_0, var_0, var_0)) & true)));
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<f32>(-334f, 1040f, -538f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -185f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 397f))))));
    let var_1 = ~(~min(22865u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 10267u, 6743u), vec3<u32>(u_input.b, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, u_input.b, u_input.b))));
    let var_2 = ~63833u;
    let var_3 = _wgslsmith_f_op_f32(1000f + global0.x) >= var_0.x;
    let var_4 = func_3(Struct_1(select(vec3<bool>(all(vec3<bool>(false, global1.x, var_3)), true, all(vec4<bool>(global1.x, false, var_3, var_3))), select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, global1.x, var_3), vec3<bool>(true, true, global1.x)), !vec3<bool>(global1.x, global1.x, global1.x), func_2(var_3, Struct_2(vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(5381u, 26u)], -28229i, u_input.a), vec4<i32>(global2[_wgslsmith_index_u32(6898u, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], -33861i, u_input.a), Struct_1(vec3<bool>(true, false, var_3), vec2<f32>(var_0.x, var_0.x), vec3<bool>(global1.x, true, true)), u_input.a, false), 10165u, Struct_5(Struct_2(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(-1920i, u_input.a, -2147483647i, u_input.a), Struct_1(vec3<bool>(global1.x, global1.x, true), var_0.xx, vec3<bool>(true, true, false)), 92454i, global1.x), var_2, Struct_3(Struct_1(vec3<bool>(global1.x, true, var_3), vec2<f32>(413f, global0.x), vec3<bool>(true, global1.x, false)), Struct_2(vec4<i32>(u_input.a, u_input.a, -41038i, 1i), vec4<i32>(global2[_wgslsmith_index_u32(26774u, 26u)], -34963i, 2147483647i, 29863i), Struct_1(vec3<bool>(true, true, false), vec2<f32>(var_0.x, -612f), vec3<bool>(false, false, false)), global2[_wgslsmith_index_u32(var_2, 26u)], false), vec2<f32>(global0.x, 1421f)), vec2<u32>(1u, var_2)))), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2617f, -1000f))), -1014f), vec3<bool>(!(false || var_3), 1u >= (var_1 << (var_1 % 32u)), !var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1569f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(global0.x, -2163f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, 338f))));
    return Struct_3(var_4.c, func_3(var_4.c, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))), var_4.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1886f * -2447f);
    var var_1 = func_1();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, func_3(var_1.b.c, global0.x, 427f).c.b.x, global0.x, 1000f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.c.b.x, global0.x, 828f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -1123f, var_1.c.x, var_0)))), select(select(vec4<bool>(var_1.b.c.a.x, var_1.a.c.x, false, global1.x), vec4<bool>(true, global1.x, true, false), vec4<bool>(var_1.b.e, true, global1.x, var_1.a.a.x)), select(vec4<bool>(false, true, global1.x, var_1.a.c.x), vec4<bool>(global1.x, global1.x, var_1.a.c.x, false), true), all(vec2<bool>(false, true)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c.b.x), _wgslsmith_f_op_f32(582f + -797f), 1721f, global0.x), vec4<f32>(_wgslsmith_f_op_f32(max(334f, -785f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(var_0))))))));
    var_1 = Struct_3(Struct_1(func_1().b.c.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.b) * global0.yy), !(!(!var_1.a.a))), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(51354i, var_1.b.a.x, countOneBits(2147483647i), ~0i), func_1().b.a), -_wgslsmith_mult_vec4_i32(var_1.b.a >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) % vec4<u32>(32u)), var_1.b.b), func_1().a, -1i, false), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(391f)), -1096f) + var_1.c), var_1.b.c.b, true)));
    let var_2 = var_1.c.x;
    global1 = select(var_1.b.c.c.zz, var_1.b.c.a.yz, var_1.b.c.a.yy);
    let var_3 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, max(vec3<i32>(-89486i, global2[_wgslsmith_index_u32(u_input.b, 26u)], var_1.b.a.x), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.b.b.xxz, vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(u_input.a, var_1.b.b.x, 28548i)) << (select(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(4294967295u, 98812u, u_input.b), var_1.a.c.x) % vec3<u32>(32u)), vec3<i32>(-u_input.a, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(39007u, 26u)], var_1.b.d), global2[_wgslsmith_index_u32(u_input.b, 26u)]))), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(20952i, abs(var_1.b.d), ~0i, global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 26u)]), -func_3(var_1.b.c, 866f, 467f).a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.wyy - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.wwx), vec3<f32>(-335f, 530f, -138f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, var_0, global0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, global0.x, -1000f))), global0.wzz, var_1.b.c.c)))), vec4<u32>(u_input.b, countOneBits(countOneBits(4294967295u)), 1u, _wgslsmith_add_u32(firstLeadingBit(37198u | u_input.b), u_input.b)));
}

