struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, 17965i, 2147483647i, i32(-2147483648)), vec4<f32>(917f, 1816f, -425f, -240f));

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: vec2<bool>;

var<private> global4: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 12495u, 72097u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 25185u, 60476u), vec3<u32>(19244u, 28575u, 4294967295u), vec3<u32>(0u, 17437u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 6283u, 0u), vec3<u32>(6749u, 85076u, 9513u), vec3<u32>(0u, 38609u, 48815u), vec3<u32>(36614u, 0u, 0u), vec3<u32>(79018u, 60891u, 45505u), vec3<u32>(1568u, 11942u, 4294967295u), vec3<u32>(0u, 73116u, 1u), vec3<u32>(32038u, 102989u, 0u), vec3<u32>(39254u, 42508u, 1u), vec3<u32>(90056u, 1u, 0u), vec3<u32>(48370u, 30141u, 4294967295u), vec3<u32>(4294967295u, 10589u, 5607u), vec3<u32>(3171u, 4294967295u, 25950u), vec3<u32>(5923u, 0u, 27924u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = vec2<bool>(select(global3.x, global3.x, select(global3.x, true && global3.x, any(vec2<bool>(false, global3.x)) && !global3.x)), global3.x);
    global0 = Struct_1(~countOneBits(global0.a), _wgslsmith_f_op_vec4_f32(-arg_0.b));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = arg_0;
    return var_0.x;
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = u_input.a;
    var var_1 = !select(select(vec3<bool>(true, global3.x, all(vec4<bool>(global3.x, global3.x, true, true))), select(!vec3<bool>(global3.x, false, false), !vec3<bool>(global3.x, global3.x, false), !vec3<bool>(global3.x, global3.x, global3.x)), any(vec3<bool>(false, global3.x, global3.x))), vec3<bool>(false, func_3(Struct_1(vec4<i32>(-7199i, -62545i, global0.a.x, u_input.b), vec4<f32>(424f, arg_0.x, arg_0.x, global0.b.x))), any(!vec4<bool>(global3.x, false, false, global3.x))), global3.x);
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.a.x ^ firstTrailingBit(max(u_input.b, u_input.c)), firstTrailingBit(-2147483647i)), -2147483647i);
    var var_3 = !(!vec3<bool>(~global0.a.x <= _wgslsmith_add_i32(0i, global0.a.x), true, _wgslsmith_div_f32(-1694f, global0.b.x) > _wgslsmith_f_op_f32(arg_0.x - arg_0.x)));
    var var_4 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(global4[_wgslsmith_index_u32(45477u, 22u)] ^ global4[_wgslsmith_index_u32(~65699u, 22u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 624u, u_input.a.x, 9560u) ^ vec4<u32>(u_input.a.x, 70688u, 1u, 42020u), vec4<u32>(35008u, var_0.x, 19278u, 0u)), 22u)]), vec3<u32>(37796u ^ u_input.a.x, ~firstLeadingBit(25990u), u_input.a.x)), global4[_wgslsmith_index_u32(~15550u, 22u)]), 22u)];
    return select(vec3<bool>(all(select(select(vec3<bool>(true, var_3.x, var_1.x), vec3<bool>(false, var_3.x, true), global3.x), select(vec3<bool>(false, true, var_3.x), vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_3.x, true)), !vec3<bool>(false, var_1.x, false))), global3.x, !(global3.x | var_1.x) & !var_3.x), vec3<bool>(true, all(vec3<bool>(global3.x, any(vec2<bool>(var_3.x, true)), all(var_1.xz))), 25587u < firstTrailingBit(var_0.x & var_4.x)), !select(select(select(vec3<bool>(false, true, global3.x), vec3<bool>(true, var_1.x, global3.x), global3.x), !vec3<bool>(var_3.x, var_1.x, false), var_1.x), select(select(vec3<bool>(true, true, false), vec3<bool>(true, global3.x, false), true), !vec3<bool>(false, global3.x, var_3.x), select(vec3<bool>(false, global3.x, false), vec3<bool>(global3.x, var_3.x, true), vec3<bool>(global3.x, var_3.x, var_3.x))), func_3(Struct_1(vec4<i32>(3675i, global0.a.x, u_input.c, u_input.b), global0.b))));
}

fn func_1() -> vec3<u32> {
    let var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.b.x - global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1572f * global0.b.x) * global0.b.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2024f, global0.b.x), global0.b.xx)))))));
    var var_2 = !select(vec3<bool>(true, any(!vec4<bool>(global3.x, true, false, global3.x)), global3.x), select(vec3<bool>(false, global3.x, true), select(!vec3<bool>(global3.x, false, global3.x), select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, global3.x, true), true), !vec3<bool>(global3.x, false, global3.x)), func_2(_wgslsmith_f_op_vec2_f32(min(global0.b.zx, vec2<f32>(var_1.x, -893f))))), !(!(!vec3<bool>(global3.x, false, global3.x))));
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(global0.a, global0.a), global0.a & global0.a)), vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(global0.a.zwx, vec3<i32>(u_input.c, -21458i, u_input.c)), i32(-1i) * -2147483647i, firstTrailingBit(global0.a.x) << (max(u_input.a.x, 4294967295u) % 32u))), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(105f * var_1.x)) - global0.b.x), var_1.x, 134f));
    var_3 = Struct_1(vec4<i32>(max(var_3.a.x, var_3.a.x), ~max(-39612i, 2147483647i), _wgslsmith_mod_i32(global0.a.x, abs(-1i) ^ var_0.x), ~(~(-1633i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), -487f, var_3.b.x, -163f))) + var_3.b));
    return firstTrailingBit(_wgslsmith_mod_vec3_u32(global4[_wgslsmith_index_u32(~6199u, 22u)], vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6545u, u_input.a.x, u_input.a.x), global4[_wgslsmith_index_u32(reverseBits(u_input.a.x), 22u)]), u_input.a.x, 11317u)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(251f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(601f + _wgslsmith_f_op_f32(-global0.b.x))))));
    var var_1 = global0.a.xz;
    let var_2 = u_input.b;
    global1 = 469f;
    var var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(max(_wgslsmith_clamp_vec3_i32(global0.a.zxy, vec3<i32>(global0.a.x, u_input.c, var_1.x), vec3<i32>(var_2, 65972i, 56478i)), _wgslsmith_clamp_vec3_i32(global0.a.zyy, global0.a.wyx, global0.a.xyx))), vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(var_1.x), reverseBits(-52114i)), ~(-7097i | global0.a.x), _wgslsmith_add_i32(abs(global0.a.x), 0i))), reverseBits(-1i));
    return !vec3<bool>(global3.x & arg_0, true, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !vec2<bool>(true, !any(vec3<bool>(true, false, global3.x)));
    var var_0 = select(select(func_4(any(!vec2<bool>(true, global3.x)), ~u_input.a.x >> (~u_input.a.x % 32u), func_1()), vec3<bool>(global3.x, all(func_4(global3.x, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 8374u)).xx), !(u_input.b != 27148i)), true), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global0.b.wy, vec2<f32>(global0.b.x, 200f)))))), any(func_2(global0.b.yz)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1070f, global0.b.x) - _wgslsmith_f_op_f32(global0.b.x * 139f)));
    global3 = !select(vec2<bool>(all(func_2(global0.b.xy)), false), vec2<bool>(var_0.x, _wgslsmith_f_op_f32(step(global0.b.x, global0.b.x)) > -2197f), !var_0.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.c) | global0.a.xx), global0.a.xw), (_wgslsmith_sub_i32(53011i, _wgslsmith_sub_i32(global0.a.x, 2147483647i)) << (~(~59372u) % 32u)) >> (~(u_input.a.x | u_input.a.x) % 32u));
}

