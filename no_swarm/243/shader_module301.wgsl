struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: i32 = -1i;

var<private> global2: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(475f, -134f, 581f), vec3<f32>(-1822f, 1868f, -328f), vec3<f32>(1366f, -819f, 615f), vec3<f32>(-1822f, 1000f, -898f), vec3<f32>(1972f, 2809f, 444f), vec3<f32>(239f, 2745f, -1127f), vec3<f32>(-125f, 862f, 1362f), vec3<f32>(-1376f, -652f, 657f), vec3<f32>(1110f, 1098f, -163f), vec3<f32>(-549f, 647f, -1152f), vec3<f32>(-615f, 1553f, -1000f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_1(!(!vec2<bool>(true, all(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(vec2<f32>(1369f, arg_0), vec2<f32>(arg_0, 275f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1150f, arg_0), vec2<f32>(2381f, arg_0)))), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))))), _wgslsmith_mod_u32(~u_input.a, 4294967295u) & (countOneBits(_wgslsmith_div_u32(20759u, 165658u)) & max(82198u, u_input.a)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a, 5u)], -2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(global0[_wgslsmith_index_u32(48513u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec2<i32>(-2147483647i, -1i), false))), min(firstLeadingBit(vec2<i32>(36868i, global0[_wgslsmith_index_u32(u_input.a, 5u)])) ^ -vec2<i32>(global0[_wgslsmith_index_u32(8954u, 5u)], 2147483647i), vec2<i32>(~0i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(16169u, 5u)])))), vec4<bool>((max(0u, 22288u) > select(4294967295u, 4294967295u, false)) | (-2071f >= arg_0), false, !any(vec2<bool>(true, false)), true));
    global1 = max(~global0[_wgslsmith_index_u32(reverseBits(~u_input.a), 5u)], _wgslsmith_div_i32(countOneBits(4864i), _wgslsmith_mod_i32(15305i, -24203i)) << (_wgslsmith_sub_u32(1u, u_input.a) % 32u));
    var var_1 = abs(_wgslsmith_div_i32(var_0.d.x, ~(-5456i) | var_0.d.x));
    var var_2 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 452f)))) - var_0.b), u_input.a, -abs(var_0.d) ^ vec2<i32>(-2477i & var_0.d.x, global0[_wgslsmith_index_u32(var_0.c, 5u)]), var_0.e), var_0.c, all(select(select(vec2<bool>(true, true), !var_0.e.yw, var_0.e.x), var_0.e.xz, any(vec3<bool>(var_0.e.x, var_0.e.x, false)))));
    let var_3 = _wgslsmith_div_i32(max(firstTrailingBit(i32(-1i) * -1i), ~countOneBits(_wgslsmith_clamp_i32(0i, var_0.d.x, var_2.a.d.x))), _wgslsmith_div_i32(0i, 28872i));
    return 0i;
}

fn func_2() -> u32 {
    global2 = array<vec3<f32>, 11>();
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~select(_wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), global0[_wgslsmith_index_u32(u_input.a, 5u)], true), _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-22643i, -14123i, global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(37118u, 5u)])), vec3<i32>(-13503i, global0[_wgslsmith_index_u32(0u, 5u)], 6387i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<bool>(false, true, false)), vec3<i32>(~global0[_wgslsmith_index_u32(4294967295u, 5u)], 0i, func_3(475f))), -62716i, -1i), vec4<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(19639u, 5u)] | 17093i, -2147483647i), -(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], 23083i), vec4<i32>(26550i, global0[_wgslsmith_index_u32(u_input.a, 5u)], 2147483647i, global0[_wgslsmith_index_u32(22383u, 5u)])) & 8226i), firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 5u)] << (u_input.a % 32u)), min(firstLeadingBit(global0[_wgslsmith_index_u32(74845u, 5u)]) | firstLeadingBit(global0[_wgslsmith_index_u32(35710u, 5u)]), global0[_wgslsmith_index_u32(~u_input.a, 5u)])));
    let var_0 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, firstTrailingBit(0u)), ~(~vec2<u32>(4294967295u, 43452u))), vec2<u32>(1u, ~u_input.a)));
    global1 = 10366i >> (_wgslsmith_mult_u32(u_input.a >> (u_input.a % 32u), 4294967295u) % 32u);
    return 27448u;
}

fn func_1() -> Struct_1 {
    var var_0 = !vec2<bool>(!((global0[_wgslsmith_index_u32(19685u, 5u)] != global0[_wgslsmith_index_u32(u_input.a, 5u)]) | true), any(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)));
    global1 = global0[_wgslsmith_index_u32(func_2(), 5u)];
    var var_1 = Struct_2(Struct_1(!(!vec2<bool>(var_0.x, true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1363f, 581f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1015f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1234f, -277f), vec2<f32>(145f, -105f)))))), firstLeadingBit(~(~u_input.a)), -_wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 5u)])), vec4<bool>(true, var_0.x, true, false)), ~u_input.a, false);
    return Struct_1(vec2<bool>(!(var_1.c && (var_0.x || false)), var_1.a.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.b)), var_1.a.c, var_1.a.d, !(!(!(!var_1.a.e))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    global1 = ~(-(~(-20459i)));
    let var_0 = all(arg_0.e.ywz);
    let var_1 = firstLeadingBit(countOneBits((_wgslsmith_clamp_vec4_i32(vec4<i32>(-51270i, -2147483647i, global0[_wgslsmith_index_u32(arg_0.c, 5u)], 1i), vec4<i32>(arg_0.d.x, arg_0.d.x, global0[_wgslsmith_index_u32(u_input.a, 5u)], 23039i), vec4<i32>(arg_0.d.x, global0[_wgslsmith_index_u32(arg_0.c, 5u)], -1i, 1i)) & max(vec4<i32>(arg_0.d.x, arg_0.d.x, global0[_wgslsmith_index_u32(arg_0.c, 5u)], 9151i), vec4<i32>(arg_0.d.x, arg_0.d.x, -15649i, 25087i))) >> (~vec4<u32>(57513u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(~(31734u >> (0u % 32u)), arg_0.c), ~(~4294967295u), arg_0.c);
    global1 = global0[_wgslsmith_index_u32(1u, 5u)];
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0[_wgslsmith_index_u32(~1u, 5u)];
    var var_1 = Struct_2(func_4(func_1(), u_input.a >= u_input.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-933f, 951f)))), u_input.a, true);
    let var_2 = var_1.a;
    global1 = var_2.d.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(5274u, 11u)])));
    var var_4 = countOneBits(-((~var_1.a.d & var_1.a.d) ^ ~select(var_2.d, var_2.d, var_2.e.yw)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, 18903u, 45688u, var_2.c), vec4<u32>(var_1.b, 4294967295u, 18085u, var_2.c)))));
}

