struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648), vec3<u32>(28503u, 0u, 41138u));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(1736i, vec3<u32>(4819u, 59409u, 88020u)), Struct_2(-1i, vec3<u32>(1u, 2520u, 16244u)), Struct_2(-13673i, vec3<u32>(59664u, 1u, 11648u)), Struct_2(23435i, vec3<u32>(1u, 1u, 80133u)), Struct_2(0i, vec3<u32>(44127u, 13285u, 0u)), Struct_2(9199i, vec3<u32>(2964u, 0u, 0u)), Struct_2(-1i, vec3<u32>(1u, 35057u, 0u)), Struct_2(-5231i, vec3<u32>(32293u, 3166u, 14443u)), Struct_2(0i, vec3<u32>(79215u, 4294967295u, 4294967295u)), Struct_2(-1i, vec3<u32>(47986u, 50248u, 16560u)), Struct_2(0i, vec3<u32>(6836u, 4294967295u, 0u)), Struct_2(-10175i, vec3<u32>(4294967295u, 34977u, 65541u)), Struct_2(i32(-2147483648), vec3<u32>(769u, 0u, 24125u)), Struct_2(30187i, vec3<u32>(13273u, 44877u, 43484u)), Struct_2(0i, vec3<u32>(0u, 1u, 1u)), Struct_2(17194i, vec3<u32>(35095u, 4294967295u, 4294967295u)), Struct_2(0i, vec3<u32>(88629u, 19543u, 0u)), Struct_2(-34278i, vec3<u32>(8798u, 0u, 29151u)), Struct_2(i32(-2147483648), vec3<u32>(1u, 73678u, 16375u)), Struct_2(i32(-2147483648), vec3<u32>(0u, 23609u, 0u)), Struct_2(-1i, vec3<u32>(69571u, 32259u, 65145u)), Struct_2(7917i, vec3<u32>(4294967295u, 10929u, 0u)), Struct_2(-87254i, vec3<u32>(1u, 22198u, 4294967295u)), Struct_2(0i, vec3<u32>(0u, 96077u, 29864u)), Struct_2(2147483647i, vec3<u32>(32652u, 1u, 1u)), Struct_2(-23991i, vec3<u32>(1u, 1u, 31809u)), Struct_2(-1i, vec3<u32>(14478u, 24541u, 0u)), Struct_2(1i, vec3<u32>(1u, 1u, 0u)), Struct_2(13725i, vec3<u32>(1u, 0u, 47145u)), Struct_2(-12808i, vec3<u32>(41836u, 47413u, 0u)), Struct_2(8191i, vec3<u32>(24508u, 1682u, 27560u)), Struct_2(-27705i, vec3<u32>(4294967295u, 4294967295u, 41067u)));

var<private> global2: array<u32, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    let var_0 = u_input.d.yy;
    var var_1 = u_input.d.xx | vec2<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(-18544i, var_0.x, u_input.d.x, -1i), vec4<i32>(2147483647i, global0.a, u_input.d.x, -2147483647i)) >> ((global0.b.x | global0.b.x) % 32u)), _wgslsmith_add_i32(_wgslsmith_add_i32(~u_input.b, global0.a), reverseBits(_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(-13884i, 49648i)))));
    let var_2 = ~vec4<i32>(_wgslsmith_clamp_i32(~(var_0.x >> (1u % 32u)), 2147483647i, _wgslsmith_clamp_i32(firstTrailingBit(var_0.x), -var_0.x, _wgslsmith_add_i32(u_input.d.x, var_0.x))), -_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, 0i, -44700i, u_input.b), -vec4<i32>(var_0.x, 1i, var_1.x, 2147483647i)), _wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(-var_1.x, 160i)), -1i);
    return ~global0.b.yy;
}

fn func_2() -> vec3<u32> {
    global2 = array<u32, 25>();
    global0 = global1[_wgslsmith_index_u32(~0u, 32u)];
    var var_0 = Struct_2(global0.a, reverseBits(~vec3<u32>(global0.b.x, 732u, 74770u)));
    var_0 = Struct_2(~1i, reverseBits(var_0.b) ^ global0.b);
    var var_1 = _wgslsmith_div_vec2_u32(func_3(), u_input.c.wy);
    return _wgslsmith_div_vec3_u32(u_input.c.yyx, max(var_0.b ^ vec3<u32>(global0.b.x, 49228u, var_1.x), vec3<u32>(global2[_wgslsmith_index_u32(1u, 25u)], 21929u, 34816u)) & min(vec3<u32>(var_0.b.x, global0.b.x, 16815u), abs(vec3<u32>(u_input.a, u_input.a, 1u)))) << (vec3<u32>(_wgslsmith_mult_u32(var_0.b.x, global0.b.x), 32946u, _wgslsmith_div_u32(~select(u_input.a, global2[_wgslsmith_index_u32(0u, 25u)], true), _wgslsmith_add_u32(countOneBits(30045u), ~var_1.x))) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    global2 = array<u32, 25>();
    var var_0 = select(countOneBits(vec3<u32>(~7395u, ~u_input.c.x, 15387u)), func_2(), arg_1);
    global0 = Struct_2(~global0.a, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~35566u, u_input.a), _wgslsmith_mult_u32(global0.b.x, 17096u), reverseBits(u_input.a)), func_2()));
    global0 = global1[_wgslsmith_index_u32(u_input.c.x >> (_wgslsmith_add_u32(1u, var_0.x) % 32u), 32u)];
    var var_1 = 0u;
    return Struct_1(all(arg_0), u_input.d, select(arg_0.wwx, select(vec3<bool>(u_input.a > 29269u, true, arg_0.x), vec3<bool>(arg_0.x, u_input.d.x < 64244i, arg_0.x), vec3<bool>(true, true, true)), arg_1), u_input.c.xxx);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(0i, _wgslsmith_add_vec3_u32(~vec3<u32>(1u, arg_1.d.x, arg_0.b.x), ~((vec3<u32>(31110u, u_input.a, 39910u) | arg_0.b) >> (~u_input.c.yxx % vec3<u32>(32u)))));
    var var_1 = Struct_2(u_input.d.x, ~var_0.b);
    var var_2 = 4294967295u;
    let var_3 = abs(vec3<i32>(0i, arg_1.b.x, reverseBits(global0.a) >> (_wgslsmith_clamp_u32(arg_1.d.x, _wgslsmith_add_u32(40441u, var_1.b.x), global0.b.x ^ var_0.b.x) % 32u)));
    var var_4 = select(select(!vec4<bool>(true, !arg_1.a, arg_1.c.x, any(vec3<bool>(arg_1.c.x, arg_1.c.x, false))), vec4<bool>(arg_1.c.x, arg_1.c.x, !arg_1.a, u_input.c.x >= ~1u), false), select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(arg_1.c.x, true, true, true), true)), vec4<bool>(all(select(arg_1.c.zy, arg_1.c.yy, arg_1.c.zx)), arg_1.c.x && arg_1.a, arg_1.c.x, false), !(!vec4<bool>(false, arg_1.a, false, arg_1.a))), arg_1.c.x);
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-u_input.b <= _wgslsmith_add_i32(_wgslsmith_mod_i32(global0.a, ~1i), -2147483647i), vec3<i32>(_wgslsmith_sub_i32(u_input.b, 1i), -2147483647i, _wgslsmith_sub_i32(43154i, global0.a)), vec3<bool>(func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.b.x, 1u) | global0.b.x, 32u)], func_1(vec4<bool>(true, true, true, true), all(vec2<bool>(false, false)))), select(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), select(false, all(vec3<bool>(false, true, false)), true)), global0.b);
    var var_1 = ~u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(319f))));
    let var_3 = func_1(select(!select(select(vec4<bool>(var_0.c.x, true, var_0.a, var_0.a), vec4<bool>(false, var_0.a, var_0.a, false), true), !vec4<bool>(var_0.c.x, var_0.a, var_0.c.x, true), true), select(!(!vec4<bool>(false, false, var_0.c.x, false)), select(select(vec4<bool>(var_0.c.x, true, true, var_0.c.x), vec4<bool>(var_0.c.x, true, var_0.a, var_0.a), vec4<bool>(true, true, var_0.c.x, false)), vec4<bool>(true, true, false, false), !vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x)), select(select(vec4<bool>(false, var_0.c.x, false, var_0.a), vec4<bool>(var_0.c.x, true, var_0.a, var_0.c.x), true), !vec4<bool>(var_0.a, var_0.a, false, false), !vec4<bool>(false, var_0.a, var_0.c.x, var_0.c.x))), var_0.c.x & (var_0.a | var_0.c.x)), any(vec2<bool>(true, any(vec2<bool>(var_0.c.x, var_0.a)))));
    let var_4 = u_input.d;
    global0 = global1[_wgslsmith_index_u32(global0.b.x, 32u)];
    global1 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(977f - _wgslsmith_div_f32(-130f, _wgslsmith_div_f32(-395f, 1544f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -565f))), -298f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1188f - _wgslsmith_f_op_f32(step(1350f, 346f))))), 262f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(606f, 2879f, 156f, -111f) - vec4<f32>(-1630f, -1645f, 1623f, -699f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(372f, -101f, -184f, 875f) * vec4<f32>(956f, 815f, 233f, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-877f, -1000f, -825f, 1783f), vec4<f32>(697f, 222f, 2571f, 1668f))), select(select(vec4<bool>(true, true, true, var_0.a), vec4<bool>(true, var_3.a, var_0.a, true), vec4<bool>(true, var_0.c.x, true, var_3.a)), vec4<bool>(true, true, true, true), vec4<bool>(true, var_3.c.x, var_0.a, var_0.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(146f, 114f, 648f, -1391f), vec4<f32>(-350f, 1000f, 1885f, -1154f), false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-321f, 949f, 1000f, -573f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-854f, 544f, 1855f, 158f)), all(vec3<bool>(false, true, true)))))), func_1(vec4<bool>(false && func_1(vec4<bool>(true, var_3.c.x, var_0.a, var_0.a), false).a, select(true, !var_0.a, var_0.d.x >= global2[_wgslsmith_index_u32(var_0.d.x, 25u)]), select(var_3.c.x, all(var_3.c), func_4(Struct_2(var_3.b.x, vec3<u32>(var_0.d.x, u_input.c.x, var_3.d.x)), var_3)), true), ~(~4294967295u) <= var_3.d.x).b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1030f)))), _wgslsmith_f_op_f32(min(635f, -689f))));
}

