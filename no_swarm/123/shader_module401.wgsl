struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(1i), Struct_1(-11135i), vec3<i32>(-1i, 13188i, 35706i), 104214u, false), Struct_2(Struct_1(-1i), Struct_1(17509i), vec3<i32>(-4066i, -17422i, 2088i), 1u, false), Struct_2(Struct_1(23039i), Struct_1(-24944i), vec3<i32>(25885i, 0i, -43753i), 4294967295u, true), Struct_2(Struct_1(2147483647i), Struct_1(0i), vec3<i32>(20400i, 0i, 2147483647i), 37521u, true), Struct_2(Struct_1(1i), Struct_1(-1i), vec3<i32>(57463i, 1i, i32(-2147483648)), 51019u, true), Struct_2(Struct_1(-1i), Struct_1(-40646i), vec3<i32>(-41727i, i32(-2147483648), 0i), 1u, false), Struct_2(Struct_1(-56933i), Struct_1(1i), vec3<i32>(1i, -1i, 0i), 0u, false), Struct_2(Struct_1(27140i), Struct_1(1i), vec3<i32>(-2290i, 1i, -1i), 9495u, false), Struct_2(Struct_1(2421i), Struct_1(0i), vec3<i32>(50899i, -1i, 37781i), 15103u, false), Struct_2(Struct_1(66753i), Struct_1(-47495i), vec3<i32>(i32(-2147483648), 24408i, 1i), 27031u, false), Struct_2(Struct_1(-14979i), Struct_1(-16174i), vec3<i32>(i32(-2147483648), -48548i, 0i), 28166u, true), Struct_2(Struct_1(-10044i), Struct_1(6702i), vec3<i32>(-12397i, 33715i, 1i), 98596u, false), Struct_2(Struct_1(2147483647i), Struct_1(i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -67589i), 0u, true), Struct_2(Struct_1(1i), Struct_1(337i), vec3<i32>(2147483647i, 10243i, 21817i), 4294967295u, true), Struct_2(Struct_1(-1i), Struct_1(-24644i), vec3<i32>(-18502i, 34772i, -1i), 1u, true), Struct_2(Struct_1(2147483647i), Struct_1(1i), vec3<i32>(9795i, 1i, -8588i), 0u, true), Struct_2(Struct_1(14528i), Struct_1(1i), vec3<i32>(-20841i, 1i, -1i), 4294967295u, true), Struct_2(Struct_1(i32(-2147483648)), Struct_1(7334i), vec3<i32>(-70141i, i32(-2147483648), -15525i), 22741u, true), Struct_2(Struct_1(-1i), Struct_1(1i), vec3<i32>(i32(-2147483648), 49719i, 6752i), 24218u, false), Struct_2(Struct_1(-48190i), Struct_1(i32(-2147483648)), vec3<i32>(24308i, -29318i, -18113i), 4294967295u, true), Struct_2(Struct_1(33980i), Struct_1(26497i), vec3<i32>(7846i, 5319i, 13155i), 1u, false), Struct_2(Struct_1(2147483647i), Struct_1(248i), vec3<i32>(-38075i, 1i, 14637i), 4294967295u, false), Struct_2(Struct_1(i32(-2147483648)), Struct_1(27163i), vec3<i32>(11553i, 2147483647i, 0i), 70431u, false), Struct_2(Struct_1(-1i), Struct_1(-14045i), vec3<i32>(-61500i, -1i, 2147483647i), 1u, true), Struct_2(Struct_1(27506i), Struct_1(2147483647i), vec3<i32>(1i, i32(-2147483648), -32452i), 76003u, false));

var<private> global2: array<Struct_2, 31>;

var<private> global3: vec4<f32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = (global3.x == _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1010f * global0[_wgslsmith_index_u32(1u, 12u)])), u_input.d.x != select(u_input.d.x, u_input.d.x, false)))) & false;
    let var_1 = global3.x;
    var var_2 = Struct_1(min(arg_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), countOneBits(58944i)), _wgslsmith_clamp_vec2_i32(select(u_input.a.xy, vec2<i32>(-26511i, 36454i), false), ~u_input.c.yx, u_input.c.zz))));
    var var_3 = global2[_wgslsmith_index_u32(~(1u & u_input.d.x), 31u)];
    var var_4 = firstTrailingBit(~(~vec3<u32>(_wgslsmith_add_u32(u_input.d.x, 8902u), _wgslsmith_div_u32(u_input.d.x, var_3.d), u_input.d.x)));
    return false;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = Struct_1(arg_1.x);
    global2 = array<Struct_2, 31>();
    var var_1 = ~(~arg_0.d);
    let var_2 = vec4<f32>(global3.x, 476f, global0[_wgslsmith_index_u32(u_input.d.x, 12u)], _wgslsmith_f_op_f32(1000f + -1144f));
    global0 = array<f32, 12>();
    return select(-vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.yyw, vec3<i32>(u_input.c.x, var_0.a, 1i)), arg_1.x, -2147483647i | var_0.a), _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_div_i32(arg_1.x, var_0.a)), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-19196i, -2147483647i, -2147483647i, u_input.e)) ^ -2147483647i), arg_1, vec3<bool>(arg_0.e, arg_0.e, true));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global0 = array<f32, 12>();
    global2 = array<Struct_2, 31>();
    let var_0 = vec3<i32>(~(-arg_2.a.a >> (min(u_input.d.x, ~4294967295u) % 32u)), u_input.a.x, u_input.c.x);
    global2 = array<Struct_2, 31>();
    let var_1 = countOneBits(abs(~u_input.d.xw)) ^ u_input.d.zw;
    return u_input.d.x;
}

fn func_1() -> vec3<bool> {
    var var_0 = ~u_input.d.x;
    var var_1 = global2[_wgslsmith_index_u32(u_input.d.x, 31u)];
    var_0 = 1u;
    var var_2 = global2[_wgslsmith_index_u32(func_4(vec4<bool>(!func_2(var_1.b, Struct_1(-1i)) && var_1.e, any(vec2<bool>(var_1.e, var_1.e)) != false, !var_1.e, false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.d, 12u)]))))), Struct_2(Struct_1(-1i), Struct_1(_wgslsmith_sub_i32(-u_input.b, i32(-1i) * -1i)), abs(func_3(Struct_2(var_1.b, var_1.a, vec3<i32>(u_input.c.x, 0i, 1i), 4294967295u, var_1.e), var_1.c, vec3<bool>(true, true, true))) >> (vec3<u32>(firstTrailingBit(17338u), ~0u, _wgslsmith_mult_u32(83013u, var_1.d)) % vec3<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32657u, var_1.d, u_input.d.x, u_input.d.x), u_input.d) | ~var_1.d, u_input.d.x), !all(vec4<bool>(var_1.e, var_1.e, var_1.e, var_1.e)) | !all(vec2<bool>(var_1.e, var_1.e))), var_1.a), 31u)];
    let var_3 = select(vec3<bool>(!any(vec3<bool>(false, false, var_2.e)), any(!vec2<bool>(var_2.e, true)) & all(vec2<bool>(true, true)), var_2.e), vec3<bool>(!var_1.e | false, var_2.e, true), false);
    return vec3<bool>(true, false, _wgslsmith_mod_u32(0u, ~var_2.d) < firstTrailingBit(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.zzx;
    let var_1 = !select(!vec3<bool>(select(false, false, false), all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true))), vec3<bool>(true, true, true), select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), !func_1()));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -985f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_f_op_f32(max(-528f, -650f)))), -1638f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2313f * _wgslsmith_f_op_f32(trunc(global3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(896f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(2446f, global0[_wgslsmith_index_u32(1u, 12u)], var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = firstLeadingBit(_wgslsmith_mod_vec3_i32(-(u_input.c.wxz | u_input.a.xwy), ~u_input.a.wwz));
    let var_3 = ~1u;
    var var_4 = global1[_wgslsmith_index_u32(~(~firstLeadingBit(~4294967295u)), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec2_f32(exp2(global3.xw)));
}

