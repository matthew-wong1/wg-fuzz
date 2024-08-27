struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(392f, -645f, 988f), vec3<f32>(-1000f, -990f, 1378f), vec3<f32>(550f, 186f, -2681f), vec3<f32>(-596f, -164f, -754f), vec3<f32>(-242f, 382f, 1000f), vec3<f32>(-1459f, -1014f, -2288f), vec3<f32>(495f, -1761f, -1694f), vec3<f32>(-213f, 798f, 766f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<vec3<bool>, 19>();
    var var_0 = any(!global0[_wgslsmith_index_u32(86189u, 19u)]);
    var_0 = true;
    let var_1 = Struct_4(vec3<i32>(2147483647i, -2324i, 17989i), vec2<u32>(max(1u >> (_wgslsmith_div_u32(arg_1.x, u_input.a) % 32u), 0u), u_input.a), arg_2);
    let var_2 = Struct_5(vec4<bool>(!(1u > _wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(39563u, arg_1.x))), all(!select(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], vec3<bool>(true, true, true))), true, var_1.a.x < reverseBits(-57454i)), vec3<f32>(-234f, -451f, _wgslsmith_f_op_f32(216f - -449f)));
    return vec4<bool>(-1i <= _wgslsmith_sub_i32(-var_1.a.x, var_1.a.x), all(vec3<bool>(true, any(!vec3<bool>(false, false, var_2.a.x)), var_2.a.x | var_2.a.x)), true, (var_2.a.x & all(select(var_2.a.xy, var_2.a.zy, vec2<bool>(false, var_2.a.x)))) || !var_2.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: Struct_1) -> i32 {
    global1 = array<vec3<f32>, 8>();
    global1 = array<vec3<f32>, 8>();
    var var_0 = max(~(~_wgslsmith_mod_u32(~0u, ~0u)), min(91643u, countOneBits(25543u)) << (_wgslsmith_mod_u32(4294967295u, arg_1.x) % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(global1[_wgslsmith_index_u32(abs(20495u), 8u)], _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(arg_0.b.c.x, 8u)] - _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(1u, 8u)] * vec3<f32>(arg_2.b.x, -1017f, arg_3.d.x))))))));
    var_0 = 40946u;
    return arg_0.b.a;
}

fn func_2() -> vec3<i32> {
    global1 = array<vec3<f32>, 8>();
    let var_0 = Struct_4(vec3<i32>(func_4(Struct_3(114782u >> (0u % 32u), Struct_1(45386i, vec2<i32>(1i, 1351i), vec3<u32>(u_input.a, 16604u, 0u), vec2<f32>(-2004f, 178f))), ~(~vec3<u32>(0u, u_input.a, u_input.a)), Struct_5(func_3(vec4<f32>(-968f, 888f, -628f, 466f), vec3<u32>(u_input.a, 4294967295u, u_input.a), Struct_2(global1[_wgslsmith_index_u32(1791u, 8u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-327f, -779f, -240f) + global1[_wgslsmith_index_u32(u_input.a, 8u)])), Struct_1(firstLeadingBit(45124i), select(vec2<i32>(2147483647i, 11356i), vec2<i32>(1i, 0i), false), _wgslsmith_add_vec3_u32(vec3<u32>(8639u, 1u, u_input.a), vec3<u32>(u_input.a, 57848u, u_input.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(159f, -310f))))), select(i32(-1i) * -25881i, abs(_wgslsmith_clamp_i32(-41405i, 0i, 2147483647i)), true), -31742i), vec2<u32>(~u_input.a, 1u), Struct_2(global1[_wgslsmith_index_u32(1u, 8u)]));
    var var_1 = var_0.c;
    global0 = array<vec3<bool>, 19>();
    let var_2 = Struct_3(~0u, Struct_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.a.x, _wgslsmith_mod_i32(var_0.a.x, 3973i), _wgslsmith_sub_i32(14273i, -1i)), ~2147483647i), vec2<i32>(var_0.a.x, var_0.a.x), ~(~(vec3<u32>(1u, u_input.a, u_input.a) | vec3<u32>(4294967295u, var_0.b.x, 4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1250f), var_0.c.a.x)));
    return ~var_0.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = arg_0;
    var var_1 = Struct_4(_wgslsmith_sub_vec3_i32(~func_2(), ~arg_0), vec2<u32>(abs((u_input.a & u_input.a) & reverseBits(arg_1)), select(firstLeadingBit(firstLeadingBit(u_input.a)), arg_1, select(arg_0.x, 2147483647i, true) != -57311i)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, 1586f, 935f) * vec3<f32>(-204f, 515f, -992f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.a.x, var_1.c.a.x)) - var_1.c.a.x), var_1.c.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(-1178f, _wgslsmith_f_op_f32(abs(var_1.c.a.x)), -1144f), vec3<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(-775f - 256f), _wgslsmith_div_f32(-1095f, -202f))))) * global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, ~(~var_1.b.x), ~55014u), 8u)]);
    var_1 = Struct_4(max(vec3<i32>(i32(-1i) * -var_1.a.x, ~(-1i), -1i), vec3<i32>(var_1.a.x, i32(-1i) * -60798i, (i32(-1i) * -48896i) >> (0u % 32u))), _wgslsmith_clamp_vec2_u32(max(~(~var_1.b), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(70604u, 10734u), var_1.b, var_1.b), _wgslsmith_mod_vec2_u32(var_1.b, vec2<u32>(29613u, u_input.a)))), var_1.b, ~(~vec2<u32>(u_input.a, 63504u))), Struct_2(vec3<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c.a.x))), var_2.x)));
    var var_3 = var_1.c;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 8>();
    let var_0 = -select(~(i32(-1i) * -1814i), _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 15283i, 20132i), vec3<i32>(-12031i, -1i, 2147483647i)), vec3<i32>(_wgslsmith_add_i32(2147483647i, -13846i), func_1(vec3<i32>(1i, -1i, 1194i), u_input.a), i32(-1i) * -1i)), false);
    let var_1 = max(~vec2<u32>(abs(firstTrailingBit(4294967295u)), ~u_input.a), ~vec2<u32>(_wgslsmith_sub_u32(41147u, 0u), 4294967295u) | vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 42390u, 1u, 20330u), vec4<u32>(u_input.a, 631u, u_input.a, 31242u), vec4<bool>(false, false, true, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 40510u), vec4<u32>(33725u, u_input.a, u_input.a, 21154u))), 0u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(112f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1176f, -1508f))))) * -426f);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(516f, 1051f, -152f, var_2))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1553f, var_2, -815f, var_2))) - _wgslsmith_div_vec4_f32(vec4<f32>(332f, var_2, 1383f, 876f), vec4<f32>(1274f, var_2, var_2, 2134f))) + vec4<f32>(804f, -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 + var_2), _wgslsmith_f_op_f32(-var_2))), var_2)), ~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(110f, 1330f) + vec2<f32>(var_2, var_2)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(721f, -1275f) * vec2<f32>(-930f, 607f))))) - vec2<f32>(var_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(715f)))))), select(max(firstTrailingBit(abs(vec3<u32>(40364u, u_input.a, 4294967295u))), reverseBits(~vec3<u32>(39004u, u_input.a, var_1.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(62617u, u_input.a, 29388u) << (vec3<u32>(1u, u_input.a, var_1.x) % vec3<u32>(32u)), min(vec3<u32>(u_input.a, var_1.x, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a))) ^ vec3<u32>(0u, 0u & var_1.x, ~u_input.a), any(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, -215f) + vec4<f32>(-1000f, -2009f, -2837f, var_2)), vec3<u32>(114616u, 1u, 1u) | vec3<u32>(1u, u_input.a, u_input.a), Struct_2(vec3<f32>(var_2, var_2, var_2))).yxw)));
}

