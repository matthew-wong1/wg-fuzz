struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 35973i;

var<private> global1: u32 = 15569u;

var<private> global2: vec4<u32>;

var<private> global3: bool;

var<private> global4: array<bool, 30> = array<bool, 30>(true, false, false, false, true, true, true, false, true, false, true, false, false, false, true, false, true, true, true, true, false, false, true, false, true, false, false, true, false, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(u_input.c, all(select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 30u)], false), vec2<bool>(true, true), !vec2<bool>(global4[_wgslsmith_index_u32(global2.x, 30u)], global4[_wgslsmith_index_u32(global2.x, 30u)]))) && ((true & (global2.x >= 23490u)) || true));
    var var_1 = abs(u_input.d);
    var var_2 = vec3<bool>(true, u_input.a.x > u_input.a.x, select(any(select(select(vec2<bool>(global4[_wgslsmith_index_u32(52389u, 30u)], true), vec2<bool>(true, global4[_wgslsmith_index_u32(var_0.a.x, 30u)]), vec2<bool>(false, var_0.b)), vec2<bool>(true, true), true)), any(vec3<bool>(true, true, var_0.b)), false));
    let var_3 = true;
    var var_4 = select(select(select(vec2<bool>(true, true), vec2<bool>(!global4[_wgslsmith_index_u32(4294967295u, 30u)], !var_2.x), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), ~1u), 30u)]), select(select(var_2.xy, var_2.zx, any(vec3<bool>(true, false, true))), var_2.yx, select(!vec2<bool>(true, var_2.x), vec2<bool>(var_0.b, true), true)), vec2<bool>(true, var_3)), var_2.zx, vec2<bool>(!global4[_wgslsmith_index_u32(1u, 30u)], !(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.d), vec4<i32>(15637i, -1i, -1i, 1i)) >= ~u_input.b)));
    return !vec4<bool>(var_3, true, true, any(vec4<bool>(var_2.x, false, false, !var_2.x)));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = arg_0;
    let var_0 = false;
    var var_1 = !(!select(func_3(), !select(vec4<bool>(var_0, global4[_wgslsmith_index_u32(u_input.c.x, 30u)], var_0, true), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 30u)], true, true, true), vec4<bool>(false, var_0, global4[_wgslsmith_index_u32(u_input.c.x, 30u)], var_0)), var_0));
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(55615u, u_input.c.x), u_input.c.wy)), ~(~1u)), firstTrailingBit(global2.wz) >> (vec2<u32>(max(u_input.c.x, _wgslsmith_mod_u32(0u, u_input.c.x)), _wgslsmith_mult_u32(u_input.c.x, 32721u)) % vec2<u32>(32u)));
    var var_3 = vec4<bool>(false || func_3().x, var_1.x, !(!global4[_wgslsmith_index_u32(u_input.c.x, 30u)]), !all(vec3<bool>(global4[_wgslsmith_index_u32(var_2.x, 30u)] && var_0, !var_0, var_0)));
    return _wgslsmith_dot_vec3_u32(global2.zzw, vec3<u32>(firstTrailingBit(~_wgslsmith_mult_u32(var_2.x, u_input.c.x)), 52422u, u_input.c.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: bool) -> Struct_4 {
    var var_0 = select(vec4<bool>(arg_2, global4[_wgslsmith_index_u32(11162u, 30u)], !global4[_wgslsmith_index_u32(u_input.c.x, 30u)], !arg_2), !vec4<bool>(!global4[_wgslsmith_index_u32(20494u, 30u)], arg_2, u_input.d > -u_input.a.x, true), !global4[_wgslsmith_index_u32(u_input.c.x, 30u)]);
    var var_1 = !select(vec3<bool>(~30381u == arg_1, global4[_wgslsmith_index_u32(func_2(u_input.d), 30u)], any(vec2<bool>(false, arg_2))), vec3<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(8884u, 30u)], global4[_wgslsmith_index_u32(arg_1, 30u)], false, true)), any(!var_0.xx), all(!vec4<bool>(true, arg_2, true, false))), !select(!arg_2, !arg_2, var_0.x));
    var var_2 = arg_0.yyx;
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.wwx, arg_0.ywy), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -609f, var_2.x) + vec3<f32>(478f, var_2.x, var_2.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, 157f, var_2.x))), arg_0.zyx))), vec3<f32>(_wgslsmith_div_f32(-702f, arg_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1520f)), 444f)), arg_0.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(arg_0.zyy, arg_0.xzy));
    return Struct_4(max(~(firstLeadingBit(u_input.c) ^ vec4<u32>(global2.x, 4294967295u, arg_1, u_input.c.x)), abs((u_input.c | vec4<u32>(u_input.c.x, 8988u, arg_1, 4294967295u)) << (u_input.c % vec4<u32>(32u)))), false);
}

fn func_4(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2105f * -1311f) + -246f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1685f, -2228f), vec2<f32>(1064f, -1479f))))));
    let var_1 = Struct_1(func_3(), -2147483647i);
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -1288f, -1141f, 261f), vec4<f32>(283f, var_0.x, -1911f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -371f, var_0.x))))))), ~(global2.x ^ _wgslsmith_mult_u32(17207u, ~4294967295u)), func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_0.x, var_0.x, 688f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -3048f, var_0.x, -198f))), !var_1.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, -1000f, -990f)))))), 129184u, true).b);
    let var_3 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(40750u, arg_0.a.x, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 10128u, 1u), var_2.a), _wgslsmith_mod_u32(global2.x, 15728u), 84188u | arg_0.a.x)), _wgslsmith_div_vec4_u32(abs(reverseBits(vec4<u32>(var_2.a.x, global2.x, arg_0.a.x, u_input.c.x))), arg_0.a), ~vec4<u32>(var_2.a.x, ~23339u, 1u, ~var_2.a.x)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(abs(var_2.a.yzz)), ~arg_0.a.wxw), 1u, func_2(_wgslsmith_mult_i32(u_input.b, u_input.b) << (~u_input.c.x % 32u)), ~firstTrailingBit(reverseBits(4294967295u)));
    var var_4 = reverseBits(vec4<i32>(u_input.a.x, 40489i, var_1.b, ~(~min(var_1.b, u_input.b))));
    return _wgslsmith_f_op_f32(select(var_0.x, var_0.x, all(var_1.a.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = Struct_1(!vec4<bool>(true, all(vec3<bool>(true, false, global4[_wgslsmith_index_u32(8796u, 30u)])), global4[_wgslsmith_index_u32(1u, 30u)], select(2147483647i, 2147483647i, global4[_wgslsmith_index_u32(global2.x, 30u)]) < (u_input.a.x | u_input.d)), i32(-1i) * -(~(-2147483647i ^ u_input.d)));
    var_1 = Struct_1(var_1.a, _wgslsmith_add_i32(-1i, ~(-31488i)));
    global3 = !(_wgslsmith_div_u32(_wgslsmith_add_u32(global2.x, var_0) ^ ~global2.x, var_0) < var_0);
    var var_2 = -15762i;
    var var_3 = u_input.b;
    let var_4 = -1620f;
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4), var_4)), _wgslsmith_f_op_f32(func_4(func_1(vec4<f32>(var_4, var_4, 938f, 173f), 36644u, global4[_wgslsmith_index_u32(u_input.c.x, 30u)]))))), 468f, -463f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(global2.zx, u_input.c.xz), func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4, var_4, var_4, -2034f), vec4<f32>(-1773f, 1501f, var_4, var_5.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.x, var_5.x, -638f, var_4) + vec4<f32>(-2715f, -738f, 438f, var_5.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, var_5.x, 1536f, var_4)))), ~func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4, var_5.x, var_4, 245f), vec4<f32>(-754f, 493f, -284f, var_4))), 1u, var_4 == var_4).a.x, true).a, global2.yyy, abs(~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, 0i, 42962i, -9911i), vec4<i32>(var_1.b, u_input.a.x, u_input.d, u_input.a.x)) << ((1770u << (0u % 32u)) % 32u))), u_input.a);
}

