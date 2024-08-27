struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec2<u32>(38196u, 31186u), false, Struct_1(-1506i, 4294967295u, vec2<f32>(521f, -460f), 1259f), -1492f, vec2<bool>(true, false)), Struct_2(vec2<u32>(1u, 24427u), false, Struct_1(1i, 85515u, vec2<f32>(-1365f, 1171f), 613f), 112f, vec2<bool>(true, true)), Struct_2(vec2<u32>(4294967295u, 1u), false, Struct_1(-10414i, 4294967295u, vec2<f32>(-534f, -489f), 774f), 1538f, vec2<bool>(true, true)), Struct_2(vec2<u32>(41016u, 4294967295u), false, Struct_1(0i, 28316u, vec2<f32>(247f, 2010f), 227f), -3047f, vec2<bool>(true, true)), Struct_2(vec2<u32>(0u, 72459u), false, Struct_1(20342i, 74860u, vec2<f32>(937f, 861f), 215f), 536f, vec2<bool>(true, false)), Struct_2(vec2<u32>(51787u, 49496u), false, Struct_1(50025i, 55542u, vec2<f32>(553f, -906f), 1000f), -1000f, vec2<bool>(false, false)), Struct_2(vec2<u32>(22874u, 1u), false, Struct_1(6882i, 40277u, vec2<f32>(2597f, -988f), 1000f), 634f, vec2<bool>(true, true)), Struct_2(vec2<u32>(4294967295u, 1u), false, Struct_1(-1i, 0u, vec2<f32>(499f, -679f), -1607f), 1000f, vec2<bool>(true, false)), Struct_2(vec2<u32>(112539u, 19512u), true, Struct_1(6577i, 9028u, vec2<f32>(-335f, 179f), -1000f), 330f, vec2<bool>(false, true)), Struct_2(vec2<u32>(18663u, 4496u), false, Struct_1(i32(-2147483648), 0u, vec2<f32>(-877f, 276f), -1329f), -236f, vec2<bool>(false, false)), Struct_2(vec2<u32>(1u, 1u), false, Struct_1(1i, 48274u, vec2<f32>(-1116f, 1418f), -1000f), 244f, vec2<bool>(true, true)), Struct_2(vec2<u32>(2498u, 4294967295u), true, Struct_1(4822i, 4294967295u, vec2<f32>(730f, -738f), -459f), 613f, vec2<bool>(true, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(103f, -286f)), _wgslsmith_f_op_f32(max(-528f, -240f)), -1428f, _wgslsmith_f_op_f32(trunc(678f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-611f)), -753f, -492f, _wgslsmith_f_op_f32(f32(-1f) * -733f))))));
    var_0 = true;
    let var_2 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 23733u, u_input.b.x), vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, u_input.c.x)), ~(~vec4<u32>(19046u, u_input.c.x, 28967u, 2315u))), _wgslsmith_sub_vec4_u32(vec4<u32>(73115u << (u_input.c.x % 32u), countOneBits(1u), ~4294967295u, 26154u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(29617u, 754u, u_input.c.x, 4294967295u))));
    let var_3 = _wgslsmith_add_i32(firstTrailingBit(u_input.a) & -_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), ~vec4<i32>(u_input.a, 0i, 1i, u_input.a)), abs(~select(u_input.a, 1i, true)));
    return all(!vec2<bool>(false, any(vec2<bool>(true, false))));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return u_input.b.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> bool {
    let var_0 = true;
    var var_1 = Struct_1(37509i, min(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), u_input.b.x ^ ~u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(f32(-1f) * -556f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1040f, _wgslsmith_f_op_f32(trunc(-907f))) - 1441f))));
    var_1 = Struct_1(-1i, 4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -385f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, 1000f), vec2<f32>(360f, -225f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, 305f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c * vec2<f32>(-125f, 287f)))), _wgslsmith_f_op_f32(f32(-1f) * -2035f));
    global0 = array<Struct_2, 12>();
    var_1 = Struct_1(_wgslsmith_mult_i32(2147483647i, abs(u_input.a << (reverseBits(4294967295u) % 32u))), ~_wgslsmith_mod_u32(var_1.b, 24029u), var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.d * var_1.d))));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> vec2<f32> {
    global0 = array<Struct_2, 12>();
    var var_0 = arg_1.c;
    let var_1 = global0[_wgslsmith_index_u32(17159u, 12u)];
    global0 = array<Struct_2, 12>();
    var var_2 = max(reverseBits(~var_1.a.x ^ firstLeadingBit(u_input.b.x)), 1u) << (_wgslsmith_add_u32(1u, select(arg_1.a.x, ~firstLeadingBit(var_1.c.b), true)) % 32u);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1());
    let var_1 = Struct_1(-59691i, select(_wgslsmith_mod_u32(func_2(2147483647i), 82184u), ~50428u, u_input.a != -_wgslsmith_sub_i32(32950i, u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(func_4(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), Struct_2(firstTrailingBit(u_input.c), func_3(vec3<bool>(true, true, true), vec2<bool>(false, true)), Struct_1(2147483647i, 59286u, vec2<f32>(1385f, 319f), -1000f), -1000f, vec2<bool>(false, false)), min(u_input.a, 2147483647i)))), 1076f);
    let var_2 = u_input.b.x;
    var var_3 = !(!(!(var_1.d < _wgslsmith_div_f32(-114f, var_1.c.x))));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~select(~126975u, 1u, 34389i != u_input.a), firstLeadingBit(0u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-792f, var_1.d, var_1.c.x), vec3<f32>(743f, -2239f, var_1.c.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.d, var_1.c.x, var_1.c.x), vec3<f32>(var_1.d, -1508f, var_1.d)))))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, 627f, var_1.c.x) + vec3<f32>(var_1.d, var_1.c.x, 310f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, -103f, var_1.c.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c.x, 1268f, var_1.c.x), vec3<f32>(-206f, -932f, -226f), true)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * var_1.d) * _wgslsmith_f_op_f32(var_1.c.x + -1315f)), vec4<u32>(~var_1.b, _wgslsmith_mult_u32(0u, ~20966u), _wgslsmith_add_u32(u_input.b.x, var_1.b) & _wgslsmith_add_u32(u_input.b.x, var_2), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 1562u, var_2, var_1.b), vec4<u32>(var_2, u_input.c.x, var_1.b, 1u)))) ^ _wgslsmith_div_vec4_u32(max(vec4<u32>(41204u, var_1.b, var_2, 4294967295u), vec4<u32>(var_2, 60764u, 1u, 24u)) << (vec4<u32>(var_1.b, 47237u, var_1.b, var_1.b) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(var_2, 4294967295u, 1u, 15253u) & vec4<u32>(var_2, 4294967295u, 45749u, 84900u))));
}

