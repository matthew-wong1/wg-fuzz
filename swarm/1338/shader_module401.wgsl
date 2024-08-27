struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(0u, 21688u, 49544u, 47907u, 0u, 12142u, 53077u, 1u, 4294967295u, 4294967295u, 40359u, 1u, 4294967295u, 51666u, 14778u, 35931u);

var<private> global1: Struct_3 = Struct_3(-24587i);

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = 4294967295u;
    var var_1 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, all(vec3<bool>(true, true, false))), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), false), true), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, (-34182i ^ global1.a) == -1i, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), true), vec4<bool>(true || (global2.e < global0[_wgslsmith_index_u32(global2.e, 16u)]), !(6468u > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)]), 0i <= _wgslsmith_div_i32(global2.c.a, -14859i), any(vec2<bool>(true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), vec4<bool>(false, true, true, false));
    var var_2 = ~vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.e, 7625u), vec2<u32>(global2.e, global2.e)), ~47935u) & 1u, ~max(~30803u, _wgslsmith_add_u32(global2.e, 14560u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d, -594f) - -542f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1700f, _wgslsmith_f_op_f32(select(660f, -1815f, var_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, global2.d))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.d)) - _wgslsmith_f_op_f32(global2.d - -538f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(765f, _wgslsmith_f_op_f32(-global2.d))))));
    global0 = array<u32, 16>();
    return select(global2.e >= ~(~0u), var_1.x, var_1.x | all(select(var_1.wz, !var_1.wz, var_1.zy)));
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> i32 {
    let var_0 = 36930u;
    var var_1 = !(!vec4<bool>(arg_0.d.x, func_3(), false, true));
    var var_2 = ~(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(55948u, 1u), vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 16u)])))));
    var var_3 = min(55342i, -12835i);
    let var_4 = _wgslsmith_div_vec2_i32(global2.a.yy >> (~vec2<u32>(1u, ~4201u) % vec2<u32>(32u)), vec2<i32>(~(arg_0.c.a & 1i), ~global1.a));
    return ~2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = 51871i;
    global2 = Struct_2(vec4<i32>(global1.a, _wgslsmith_clamp_i32(arg_0.a, func_2(Struct_4(695f, arg_0.a, Struct_1(2147483647i), vec3<bool>(true, true, true)), ~global2.e), 6447i), firstTrailingBit(var_0), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, 54525i)), -u_input.b.zwz)), -select(-func_2(Struct_4(global2.d, 1i, Struct_1(u_input.b.x), vec3<bool>(false, false, false)), global2.e), func_2(Struct_4(1000f, global1.a, arg_0, vec3<bool>(false, false, true)), 74021u), false), arg_0, -948f, _wgslsmith_div_u32(55661u, select(global2.e, ~4294967295u, true)));
    var var_1 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-511i, arg_0.a, arg_0.a, var_0), u_input.b), arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -17414i, var_0, 2451i), vec4<i32>(0i, var_0, -2147483647i, 2147483647i)), abs(70828i)), _wgslsmith_clamp_vec4_i32(global2.a, reverseBits(global2.a), vec4<i32>(2147483647i, -1i, u_input.c, 16874i) >> (vec4<u32>(global0[_wgslsmith_index_u32(global2.e, 16u)], 14066u, 0u, 20241u) % vec4<u32>(32u))), abs(global2.a)), (_wgslsmith_mod_vec4_i32(u_input.b, u_input.b) << (firstTrailingBit(vec4<u32>(4294967295u, global2.e, 4294967295u, 40573u)) % vec4<u32>(32u))) << (reverseBits(select(vec4<u32>(13607u, global2.e, global2.e, 54994u), vec4<u32>(0u, 27086u, 41096u, 0u), vec4<bool>(true, true, false, true))) % vec4<u32>(32u))), func_2(Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.d - global2.d), arg_1.x)), max(var_0, u_input.a.x), Struct_1(-2147483647i), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), global0[_wgslsmith_index_u32(0u, 16u)]), global2.c, _wgslsmith_f_op_f32(1f + global2.d), ~(~firstLeadingBit(global2.e)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -812f))) - _wgslsmith_f_op_f32(-var_1.d)), 578f, arg_1.x, 425f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, global2.d, 1707f, var_1.d)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.d, var_1.d, 1045f, arg_1.x), vec4<f32>(595f, -1000f, 132f, 1921f))))))));
    var var_3 = false || select(any(vec3<bool>(true, false, true)) | !all(vec2<bool>(false, true)), false, all(vec4<bool>(true, true, true, true)));
    return global2.c;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_3(1i);
    var var_1 = _wgslsmith_mod_i32(reverseBits(-select(arg_2.a, -arg_0.c.a, 53230i > arg_0.c.a)), _wgslsmith_div_i32(func_2(arg_0, select(1u, min(arg_3, 4294967295u), !arg_0.d.x)), _wgslsmith_dot_vec3_i32(global2.a.zwx, firstTrailingBit(global2.a.xzz))));
    var var_2 = Struct_2(vec4<i32>(0i, global2.a.x >> (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(20879u, global0[_wgslsmith_index_u32(arg_3, 16u)] << (arg_3 % 32u)), 16u)] % 32u), global2.c.a, -u_input.c), -((-1i | arg_2.a) | (_wgslsmith_div_i32(-1i, u_input.c) ^ (arg_0.b << (0u % 32u)))), arg_0.c, _wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d))), firstLeadingBit(firstTrailingBit(global0[_wgslsmith_index_u32(max(~arg_3, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global2.e, 16u)], 16u)]), 16u)])));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(sign(507f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1056f, -196f))) + _wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2634f, global2.d)))))), u_input.b.x, global2.c, vec3<bool>(func_3(), all(!select(arg_0.d.yz, vec2<bool>(arg_0.d.x, arg_0.d.x), vec2<bool>(true, false))), 0u < arg_3));
    var var_4 = 573f;
    return Struct_2(max(-_wgslsmith_div_vec4_i32(vec4<i32>(15545i, -166i, 18353i, -58801i), var_2.a), -select(max(vec4<i32>(18303i, global2.a.x, var_3.b, -1i), vec4<i32>(arg_1.a, global1.a, -32253i, u_input.c)), vec4<i32>(global1.a, -2147483647i, -1i, 16629i), vec4<bool>(false, arg_0.d.x, arg_0.d.x, true))), -select(47794i, ~global2.a.x ^ countOneBits(arg_2.a), !select(true, false, var_3.d.x)), var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(889f)))))), _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~1u), _wgslsmith_clamp_u32(arg_3 | global2.e, firstLeadingBit(global0[_wgslsmith_index_u32(1u, 16u)]), ~36792u)), ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e, 41945u, global0[_wgslsmith_index_u32(77501u, 16u)]), vec3<u32>(5765u, global0[_wgslsmith_index_u32(42725u, 16u)], 33443u)), ~var_2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global2.d, 1i, Struct_1(global1.a), vec3<bool>(true, any(vec2<bool>(43621i >= global2.c.a, true)), -922f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.d)))));
    global0 = array<u32, 16>();
    global2 = func_4(Struct_4(_wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(round(-152f))), ~_wgslsmith_div_i32(2147483647i >> (global0[_wgslsmith_index_u32(0u, 16u)] % 32u), u_input.c), Struct_1(_wgslsmith_add_i32(global1.a, -var_0.c.a)), var_0.d), func_1(global2.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global2.d), vec2<f32>(-780f, var_0.a)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.d, 781f)))))), _wgslsmith_add_vec2_i32(vec2<i32>(firstLeadingBit(-17176i), -var_0.b), ~vec2<i32>(2147483647i, var_0.b))), var_0.c, ~_wgslsmith_add_u32(abs(global0[_wgslsmith_index_u32(global2.e, 16u)]) & (global2.e ^ global2.e), global0[_wgslsmith_index_u32(35121u, 16u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(447f + var_0.a), _wgslsmith_f_op_f32(279f + global2.d)))), -(global2.a.zx | ((vec2<i32>(1i, global2.a.x) ^ vec2<i32>(global2.a.x, global1.a)) | vec2<i32>(1i, global2.b))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(48850u, 4512u, global2.e), vec3<u32>(32965u, 9724u, 27350u), false || var_0.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(100u, 16u)], 8710u, global2.e)) | ~vec3<u32>(4294967295u, 0u, global2.e), reverseBits(vec3<u32>(4294967295u, global2.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.e, 16u)], 16u)]) << (vec3<u32>(0u, 10286u, 1u) % vec3<u32>(32u))))), vec4<f32>(global2.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(205f * _wgslsmith_f_op_f32(step(-1812f, -566f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2249f)), func_4(Struct_4(-252f, global2.b ^ global1.a, func_1(Struct_1(0i), vec2<f32>(892f, 553f), global2.a.wz), var_0.d), func_4(Struct_4(global2.d, 0i, var_0.c, vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), func_4(Struct_4(-501f, u_input.b.x, Struct_1(global2.c.a), var_0.d), Struct_1(22724i), Struct_1(global2.c.a), 1u).c, func_1(var_0.c, vec2<f32>(global2.d, global2.d), vec2<i32>(u_input.b.x, global2.b)), 0u).c, var_0.c, global2.e).d));
}

