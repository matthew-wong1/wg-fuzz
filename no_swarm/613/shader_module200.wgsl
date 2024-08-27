struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<f32, 21> = array<f32, 21>(-357f, -1829f, -1000f, 670f, -1000f, -801f, -640f, 278f, -157f, -213f, -666f, 593f, 1689f, -737f, 933f, -181f, 1410f, -1022f, 912f, 227f, -1078f);

var<private> global2: array<bool, 24>;

var<private> global3: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    let var_1 = arg_0.a.yw;
    let var_2 = firstLeadingBit(max(_wgslsmith_mod_i32(u_input.a, 69931i), u_input.a));
    let var_3 = -(i32(-1i) * -firstTrailingBit(_wgslsmith_add_i32(var_2, 2147483647i)));
    var var_4 = arg_0.c.x;
    return ~arg_0.a.x;
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    global3 = true;
    global2 = array<bool, 24>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_f32(f32(-1f) * -2300f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(280u, 21u)]))) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(12206u, 21u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, func_3(Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, arg_0.a.x, u_input.c), global1[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_f_op_vec4_f32(-arg_0.c)), u_input.c, arg_0)), 21u)]);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstTrailingBit(21502u), 21u)] * -1633f))), _wgslsmith_f_op_f32(f32(-1f) * -910f)));
    global3 = global2[_wgslsmith_index_u32(max(u_input.b.x, abs(48870u)), 24u)];
    return ~vec2<u32>(arg_0.a.x, 36416u);
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = func_2(Struct_2(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 51280u, 87549u)), 4294967295u), u_input.c >> (u_input.c % 32u), max(u_input.b.x, u_input.b.x), 16987u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))), arg_0));
    var var_1 = var_0.x;
    var var_2 = Struct_1(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(13882u, 21u)], _wgslsmith_div_f32(1388f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + -516f)))), !global2[_wgslsmith_index_u32(select(firstTrailingBit(55u), ~6433u, ~var_0.x < (1u << (u_input.c % 32u))), 24u)]);
    var_0 = vec2<u32>(var_0.x, select(_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(4294967295u, 0u, var_0.x), max(u_input.c, 0u)), var_0.x, any(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 24u)], var_2.b)))) | _wgslsmith_mod_vec2_u32(u_input.b, min(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 15219u), func_2(Struct_2(vec4<u32>(var_0.x, 13491u, u_input.b.x, u_input.c), 1373f, vec4<f32>(-705f, global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)], -1384f)))), u_input.b >> (firstLeadingBit(u_input.b) % vec2<u32>(32u))));
    var var_3 = vec3<bool>(var_2.b, !(!(11203i != u_input.a)) != !global2[_wgslsmith_index_u32(~(u_input.c ^ 11108u), 24u)], true);
    return !all(!(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(94487u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(var_3.x, false, true), false)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    global2 = array<bool, 24>();
    let var_0 = Struct_2(~vec4<u32>(4294967295u, _wgslsmith_mod_u32(~arg_1, min(4294967295u, u_input.c)), max(7509u, arg_1), arg_1), _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -640f))), any(select(!vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(858f, global1[_wgslsmith_index_u32(arg_1, 21u)], -1000f, arg_2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -323f, arg_2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1098f, arg_2.x, -569f, arg_2.x)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -958f));
    global2 = array<bool, 24>();
    let var_2 = true;
    return Struct_1(_wgslsmith_f_op_f32(step(638f, -908f)), any(!(!vec3<bool>(false, arg_0, var_2))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = 613f;
    let var_1 = func_4(false, arg_1.a.x, arg_1.c.yxw);
    var var_2 = select(vec4<bool>(all(select(vec4<bool>(false, var_1.b, false, var_1.b), !vec4<bool>(var_1.b, true, global2[_wgslsmith_index_u32(46079u, 24u)], true), vec4<bool>(arg_0.b, arg_0.b, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], var_1.b))), arg_0.b, all(vec4<bool>(true, !var_1.b, !arg_0.b, false)), true), select(vec4<bool>(true && any(vec4<bool>(var_1.b, false, true, true)), true, false, false), vec4<bool>(!arg_0.b, u_input.b.x > u_input.b.x, global2[_wgslsmith_index_u32(arg_1.a.x, 24u)], var_1.b), select(!(!vec4<bool>(global2[_wgslsmith_index_u32(arg_1.a.x, 24u)], var_1.b, var_1.b, false)), !select(vec4<bool>(var_1.b, true, false, arg_0.b), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 24u)], var_1.b, true, var_1.b), true), global2[_wgslsmith_index_u32(max(arg_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.c, 41447u))), 24u)])), vec4<bool>(true, global2[_wgslsmith_index_u32(max(~u_input.b.x | ~arg_1.a.x, ~3064u), 24u)], arg_1.a.x <= ~u_input.c, any(!vec2<bool>(true, global2[_wgslsmith_index_u32(38675u, 24u)]))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(arg_1.a.x, 21u)], -121f, var_0, -948f), vec4<f32>(1f, _wgslsmith_f_op_f32(-arg_0.a), -1410f, global1[_wgslsmith_index_u32(~1671u, 21u)]), vec4<bool>(var_2.x, !arg_0.b, arg_0.b, arg_0.b))))));
    global0 = u_input.a;
    return Struct_2(select(arg_1.a, ~countOneBits(_wgslsmith_add_vec4_u32(arg_1.a, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 42735u))), select(!vec4<bool>(var_1.b, global2[_wgslsmith_index_u32(arg_1.a.x, 24u)], var_1.b, arg_0.b), !select(vec4<bool>(arg_0.b, true, var_1.b, var_2.x), vec4<bool>(var_1.b, var_2.x, var_2.x, false), false), vec4<bool>(true, true, all(vec2<bool>(var_2.x, arg_0.b)), all(vec4<bool>(true, true, arg_0.b, false))))), arg_1.b, arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, u_input.c, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.c), vec3<u32>(0u, u_input.c, u_input.b.x))), vec3<u32>(_wgslsmith_sub_u32(u_input.c, 6737u) ^ u_input.c, 74029u ^ (46317u << (u_input.b.x % 32u)), u_input.c));
    let var_1 = func_5(func_4(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)], 1291f))), reverseBits(51986u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(1139u, 21u)], -1460f, 1000f), vec3<f32>(-979f, global1[_wgslsmith_index_u32(var_0, 21u)], 1000f), false))))), Struct_2((vec4<u32>(34291u, 1u, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.c, var_0, var_0, 1u) % vec4<u32>(32u))) & vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(0u, var_0)), ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(641f, 421f))) * global1[_wgslsmith_index_u32(countOneBits(var_0), 21u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(var_0, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 219f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 21u)], -344f, 771f, global1[_wgslsmith_index_u32(var_0, 21u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(22234u, 24u)], true))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1457f, 576f, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)])))))));
    let var_2 = _wgslsmith_div_i32(25280i, u_input.a << (min(reverseBits(_wgslsmith_add_u32(37512u, var_0)), ~var_0 & ~4294967295u) % 32u));
    global2 = array<bool, 24>();
    let var_3 = select(~abs(~0i), var_2, true == global2[_wgslsmith_index_u32(select(var_1.a.x, 1u, true), 24u)]) | ~abs(var_2 | _wgslsmith_div_i32(-7281i, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.a.xxw), abs(var_1.a.x), vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a.x, ~var_0), 21u)], var_1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-501f)), -1243f))), _wgslsmith_div_f32(442f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(max(var_1.b, global1[_wgslsmith_index_u32(0u, 21u)])))))), 2147483647i);
}

