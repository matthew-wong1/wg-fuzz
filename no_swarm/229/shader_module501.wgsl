struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true);

var<private> global1: array<bool, 10>;

var<private> global2: f32;

var<private> global3: i32 = -25830i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> i32 {
    let var_0 = Struct_1(!vec2<bool>(global0.a, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x, 1u), 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f)))), u_input.b.zxz);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-569f, var_0.b, 1985f) - vec3<f32>(var_0.b, -456f, 282f))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(sign(var_0.b)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(346f + var_0.b))), _wgslsmith_f_op_f32(ceil(247f)), -1000f)));
    let var_2 = _wgslsmith_mod_u32(u_input.b.x, 1u);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2, abs(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), var_0.c.x), 10u)] && true;
    global1 = array<bool, 10>();
    return countOneBits(-27854i);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    global3 = 27921i ^ ~(max(u_input.a.x, func_3(vec3<bool>(arg_2.a, true, false), -1i)) | select(max(-1i, u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zy), false));
    global3 = u_input.a.x;
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 0u), arg_1.c.xz), vec2<u32>(1u, 3343u) << (arg_1.c.xz % vec2<u32>(32u))), 50660u, firstLeadingBit(~(~u_input.c.x)), arg_0), ~(~firstLeadingBit(reverseBits(vec4<u32>(79144u, 4294967295u, 1u, 1u)))));
    let var_1 = arg_1;
    var var_2 = Struct_2((any(vec4<bool>(true, true, true, false)) && any(!vec4<bool>(arg_1.a.x, false, global0.a, false))) || (all(vec2<bool>(arg_1.a.x, true)) && true));
    return !vec3<bool>(arg_1.a.x | ((u_input.a.x << (var_1.c.x % 32u)) != -3890i), false, 2478f >= _wgslsmith_f_op_f32(ceil(var_1.b)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = firstTrailingBit(_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.b.zyx), countOneBits(u_input.b.ywz) | u_input.b.xyy) & u_input.b.wzw);
    var var_1 = vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 1i), ~firstTrailingBit(-1i));
    var var_2 = vec4<bool>(arg_0.a | true, any(!func_2(u_input.b.x, Struct_1(vec2<bool>(arg_0.a, global0.a), -257f, vec3<u32>(var_0.x, 12774u, u_input.c.x)), arg_0)), any(vec3<bool>(!arg_3, arg_0.a, false)), !all(vec3<bool>(true, global0.a, false)));
    var var_3 = u_input.b.yww;
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(568f, -755f, 857f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(519f, 974f, 634f) * vec3<f32>(466f, -1033f, -126f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-951f, -1067f, 1524f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1296f, 1665f, -346f)))))));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = func_1(arg_0, !all(vec2<bool>(true, global0.a)), _wgslsmith_mod_i32(u_input.a.x, 1i) >> (_wgslsmith_add_u32(abs(arg_1.x), u_input.d >> (21931u % 32u)) % 32u), all(select(vec4<bool>(global0.a, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], select(arg_0.a, global1[_wgslsmith_index_u32(86531u, 10u)], true), !global0.a), select(select(vec4<bool>(global0.a, false, false, global1[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(global0.a, true, arg_0.a, false), arg_2.a), !vec4<bool>(global1[_wgslsmith_index_u32(22219u, 10u)], arg_0.a, true, false), any(vec2<bool>(arg_0.a, true))), global0.a && all(vec3<bool>(false, true, false)))));
    var var_1 = all(select(vec4<bool>(arg_2.a, true, all(!vec2<bool>(arg_0.a, arg_2.a)), var_0.a & true), !vec4<bool>(global0.a || arg_0.a, false, func_1(Struct_2(arg_2.a), true, arg_3, false).a, false), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 10u)], global0.a, true), vec4<bool>(true, true, arg_3 < u_input.a.x, false), true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-255f, -431f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, 526f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_div_f32(-286f, 188f), -792f))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-432f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-827f, -397f, true)) * _wgslsmith_f_op_f32(abs(-418f))))));
    let var_3 = _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, ~min(u_input.c.x, 27321u)), vec3<u32>(102725u, 0u, arg_1.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_div_i32(u_input.a.x >> (u_input.b.x % 32u), u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, 19540i >> (u_input.c.x % 32u)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), u_input.a, true), vec3<i32>(u_input.a.x, 1i, u_input.a.x))), countOneBits(~max(vec4<i32>(-1i, 2147483647i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, 55444i)))) & reverseBits(reverseBits(-vec4<i32>(24478i, 70446i, -1i, -1i)));
    let var_1 = func_4(Struct_2(!(!any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 10u)])))), ~min(vec3<u32>(4294967295u, _wgslsmith_add_u32(0u, u_input.d), firstLeadingBit(4294967295u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, u_input.d, 126722u), u_input.b), u_input.d | u_input.b.x, ~43341u)), func_1(Struct_2(global0.a), global0.a, ~(-1i), true), min(-u_input.a.x, u_input.a.x));
    let var_2 = Struct_1(!func_2(~24632u, Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1674f), select(vec3<u32>(u_input.d, 4294967295u, u_input.b.x), vec3<u32>(0u, u_input.c.x, u_input.b.x), vec3<bool>(var_1.a, global0.a, false))), Struct_2(var_1.a)).xy, 1000f, ~(~max(firstLeadingBit(u_input.b.wwy), vec3<u32>(u_input.c.x, u_input.d, 4532u) ^ vec3<u32>(u_input.b.x, u_input.b.x, 19468u))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.b);
    let var_4 = false;
    global0 = func_4(Struct_2(var_4), (vec3<u32>(12227u ^ var_2.c.x, ~u_input.d, var_2.c.x) >> (~(~vec3<u32>(83399u, 12937u, 1u)) % vec3<u32>(32u))) | ~vec3<u32>(min(u_input.b.x, 4294967295u), _wgslsmith_add_u32(u_input.b.x, 11229u), _wgslsmith_sub_u32(var_2.c.x, u_input.d)), var_1, -(u_input.a.x << (45989u % 32u)));
    global1 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(u_input.b.xw), ~min(u_input.b, vec4<u32>(u_input.b.x | 4294967295u, ~var_2.c.x, 4294967295u, max(var_2.c.x, 0u))), -max(u_input.a, vec3<i32>(var_0.x, -45238i, -32809i)) ^ min(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, u_input.a), vec3<i32>(var_0.x, var_0.x, -12366i)), u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -509f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * var_2.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(912f, var_2.b)))), var_2.b)));
}

