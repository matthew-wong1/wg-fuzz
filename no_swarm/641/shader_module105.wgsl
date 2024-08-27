struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: array<i32, 4> = array<i32, 4>(2147483647i, 63434i, 0i, 38088i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: u32) -> i32 {
    global0 = array<vec2<bool>, 17>();
    global0 = array<vec2<bool>, 17>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-202f * 135f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-685f + -1016f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(275f - -122f)))));
    return -u_input.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(abs(0i), arg_0), -max(u_input.a.zz | u_input.b.ww, ~u_input.e.yz));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_i32(u_input.e, u_input.b.zzz), _wgslsmith_dot_vec2_u32(abs(~min(vec2<u32>(46980u, 62422u), u_input.d.zy)), u_input.d.xy >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, arg_1.a.c) | u_input.d.yz, reverseBits(u_input.d.zw)) % vec2<u32>(32u))), Struct_2(Struct_1(-1i != abs(u_input.a.x), _wgslsmith_f_op_vec2_f32(arg_1.a.b - vec2<f32>(arg_1.a.b.x, 401f)), _wgslsmith_dot_vec3_u32(u_input.d.xxw, u_input.d.wxx))), ~41008u, Struct_2(arg_1.a));
    global0 = array<vec2<bool>, 17>();
    let var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.b)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.a.b), _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.b)), !vec2<bool>(false, var_0.e.a.a)))), _wgslsmith_f_op_vec2_f32(var_0.e.a.b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b.x, 200f)))));
    var var_3 = any(!(!vec4<bool>(arg_1.a.a, true, !var_0.c.a.a, true)));
    return select(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(20615u, 47223u, 4294967295u), ~var_1, arg_1.a.c), ~(vec3<u32>(var_0.b, 39551u, u_input.d.x) & vec3<u32>(1u, 4294967295u, arg_1.a.c)))), 17u)], global0[_wgslsmith_index_u32(arg_1.a.c, 17u)], all(vec2<bool>(all(select(vec3<bool>(true, arg_1.a.a, arg_1.a.a), vec3<bool>(false, true, var_0.e.a.a), vec3<bool>(true, false, false))), var_0.e.a.c == reverseBits(u_input.d.x))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(arg_2.a);
    var var_1 = var_0;
    global1 = array<i32, 4>();
    var_1 = Struct_2(Struct_1(!all(!vec3<bool>(var_0.a.a, false, false)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.a.b.x)))), var_1.a.b.x), _wgslsmith_add_u32(~abs(1u), ~(~1u))));
    var var_2 = arg_2;
    return Struct_2(var_1.a);
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 4>();
    var var_0 = func_4((max(41100i, abs(global1[_wgslsmith_index_u32(u_input.d.x, 4u)])) << (u_input.d.x % 32u)) & func_2(-(global1[_wgslsmith_index_u32(0u, 4u)] ^ global1[_wgslsmith_index_u32(u_input.d.x, 4u)]), ~u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-228f, 411f, -175f, -2131f) + vec4<f32>(747f, 698f, -1640f, -1348f)))) * vec4<f32>(1162f, -265f, 344f, 1613f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(307f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(853f - 506f), -1000f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-552f, -229f, 714f, 1043f), vec4<f32>(1644f, -533f, -597f, 615f))))), Struct_2(Struct_1(all(func_3(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], Struct_2(Struct_1(false, vec2<f32>(1429f, 1377f), u_input.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1267f, -2196f))), u_input.d.x)));
    let var_1 = !(!(!vec4<bool>(false, func_3(global1[_wgslsmith_index_u32(var_0.a.c, 4u)], Struct_2(var_0.a)).x, any(vec4<bool>(var_0.a.a, var_0.a.a, false, var_0.a.a)), !var_0.a.a)));
    var var_2 = func_4(global1[_wgslsmith_index_u32(~5050u, 4u)] | _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, global1[_wgslsmith_index_u32(var_0.a.c, 4u)], 1i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, -507f, var_0.a.b.x, var_0.a.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-742f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.a.b.x)))), var_0.a.b.x)), Struct_2(Struct_1(~1u > _wgslsmith_mod_u32(1u, var_0.a.c), vec2<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(min(var_0.a.b.x, var_0.a.b.x))), u_input.d.x))).a.a;
    let var_3 = Struct_3(~_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(~(-1i), _wgslsmith_clamp_i32(u_input.a.x, u_input.b.x, 2147483647i))), 0u, func_4(-23338i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, 305f))))), Struct_2(var_0.a)), 58130u, func_4(-33786i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-687f, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<f32>(var_0.a.b.x, var_0.a.b.x, -403f, var_0.a.b.x), true)))), vec4<f32>(448f, _wgslsmith_f_op_f32(325f + -399f), _wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1732f))), func_4(u_input.e.x, vec4<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(var_0.a.b.x * 1187f), func_4(global1[_wgslsmith_index_u32(10429u, 4u)], vec4<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), Struct_2(Struct_1(var_0.a.a, vec2<f32>(-126f, var_0.a.b.x), 1u))).a.b.x, func_4(u_input.e.x, vec4<f32>(1000f, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), Struct_2(Struct_1(false, vec2<f32>(var_0.a.b.x, var_0.a.b.x), 20283u))).a.b.x), Struct_2(Struct_1(false, var_0.a.b, u_input.d.x)))));
    return func_4(u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, var_0.a.b.x, _wgslsmith_div_f32(var_3.e.a.b.x, var_3.c.a.b.x), -683f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-413f, var_3.c.a.b.x, var_3.e.a.b.x, 770f)))))), Struct_2(var_3.c.a));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = Struct_1(all(select(select(select(vec3<bool>(arg_1.a.a, true, false), vec3<bool>(false, arg_1.a.a, true), false), !vec3<bool>(true, false, arg_0.a.a), true), select(!vec3<bool>(arg_0.a.a, arg_1.a.a, arg_1.a.a), vec3<bool>(true, arg_1.a.a, arg_0.a.a), func_4(1i, vec4<f32>(722f, 1340f, arg_0.a.b.x, -800f), Struct_2(arg_1.a)).a.a), true)), arg_0.a.b, 44164u);
    global0 = array<vec2<bool>, 17>();
    global1 = array<i32, 4>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1231f, var_0.b.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b.x, -1382f, arg_1.a.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, arg_1.a.b.x, var_0.b.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.b.x, -342f, -102f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -118f, -1000f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.b.x, arg_1.a.b.x, -223f), vec3<f32>(-374f, 1238f, -707f))))))));
    let var_2 = func_1();
    return vec4<f32>(arg_0.a.b.x, var_1.x, 452f, 725f);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = global0[_wgslsmith_index_u32(abs(u_input.d.x) & _wgslsmith_add_u32(~arg_2.e.a.c, ~_wgslsmith_sub_u32(4294967295u << (u_input.d.x % 32u), ~u_input.d.x)), 17u)];
    var var_1 = 4294967295u;
    let var_2 = select(vec3<bool>(arg_2.c.a.a, arg_1.e.a.a || all(vec2<bool>(arg_1.e.a.a, arg_1.c.a.a)), var_0.x && !(!var_0.x)), !vec3<bool>(arg_2.c.a.a, all(select(vec3<bool>(true, false, true), vec3<bool>(true, arg_1.c.a.a, false), vec3<bool>(true, arg_1.e.a.a, arg_2.e.a.a))), (u_input.a.x >> (4294967295u % 32u)) < -421i), vec3<bool>(all(select(!vec4<bool>(false, arg_2.c.a.a, true, false), !vec4<bool>(true, arg_2.e.a.a, true, false), true)), true, !(true != arg_2.c.a.a)));
    let var_3 = reverseBits(-(~(~vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_1.d, 4u)], 8263i, arg_1.a) ^ select(u_input.b, vec4<i32>(-32084i, global1[_wgslsmith_index_u32(arg_1.d, 4u)], 19063i, 8911i), true))));
    var var_4 = !var_2.xy;
    return StorageBuffer(_wgslsmith_div_u32(func_1().a.c, min(select(arg_2.e.a.c, arg_1.b, var_4.x), arg_2.b) >> (1u % 32u)), 22120u, 30650u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true))), (_wgslsmith_clamp_i32(u_input.b.x, u_input.e.x, -2147483647i) != firstTrailingBit(-13675i)) | all(vec3<bool>(true, true, true)), true);
    let var_1 = -1856f;
    var var_2 = -2555i;
    var var_3 = -(29246i ^ global1[_wgslsmith_index_u32(u_input.d.x, 4u)]);
    let var_4 = false;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(915f, var_1, var_1, var_1) + vec4<f32>(-567f, var_1, -684f, var_1))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(519f, var_1, -1001f, -637f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1014f, -2940f, var_1, 2245f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1524f, _wgslsmith_f_op_f32(floor(213f)), _wgslsmith_f_op_f32(var_1 - 170f), _wgslsmith_f_op_f32(min(var_1, 2165f))) * _wgslsmith_f_op_vec4_f32(func_5(func_1(), func_4(u_input.e.x, vec4<f32>(105f, -1428f, -1669f, var_1), Struct_2(Struct_1(var_0.x, vec2<f32>(741f, 345f), 4294967295u))))))), Struct_3(global1[_wgslsmith_index_u32(abs(~(u_input.d.x >> (1u % 32u))), 4u)], 41300u, func_1(), _wgslsmith_mod_u32(~u_input.d.x & select(59056u, u_input.d.x, false), max(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), ~1u)), Struct_2(Struct_1(!var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 237f)), max(u_input.d.x, 4294967295u)))), Struct_3(_wgslsmith_dot_vec2_i32(u_input.b.yz, firstTrailingBit(vec2<i32>(1178i, u_input.c))), u_input.d.x, func_1(), 1u << (firstTrailingBit(u_input.d.x) % 32u), Struct_2(func_1().a)));
}

