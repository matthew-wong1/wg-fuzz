struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: array<f32, 20> = array<f32, 20>(-492f, 309f, -652f, 366f, -674f, -1000f, 904f, 1129f, -1000f, 1440f, 1623f, -1082f, 543f, 894f, 845f, 375f, -1409f, -1236f, -1378f, -1636f);

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global3: array<vec4<bool>, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = arg_0;
    let var_1 = min(max(select(max(vec2<u32>(u_input.a, 0u), global0[_wgslsmith_index_u32(74176u, 10u)]) >> (countOneBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(~global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), abs(abs(abs(vec2<u32>(19146u, u_input.a))))));
    let var_2 = countOneBits(reverseBits(938u));
    var var_3 = arg_0;
    global0 = array<vec2<u32>, 10>();
    return !(!((all(vec4<bool>(true, true, false, true)) | true) & false));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec3<bool>, 32>();
    var var_0 = 524f;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a, 20u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(933f * global1[_wgslsmith_index_u32(u_input.a, 20u)]))))), func_3(arg_0, 406f))), 827f));
    let var_1 = _wgslsmith_mult_vec4_u32((~abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) << (~vec4<u32>(u_input.a, 26900u, u_input.a, u_input.a) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(select(72921u, 25771u, arg_1), 44823u, _wgslsmith_mult_u32(u_input.a, 2267u), reverseBits(u_input.a)), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u))), ~max(vec4<u32>(u_input.a, 1u, _wgslsmith_add_u32(u_input.a, 89423u), u_input.a), vec4<u32>(u_input.a, ~u_input.a, 4294967295u ^ u_input.a, ~u_input.a)));
    let var_2 = arg_0;
    return arg_3;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> bool {
    global1 = array<f32, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-624f)) * 2074f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 20u)], arg_0.x), vec3<f32>(-587f, arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_1, 20u)], arg_0.x, 539f)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(arg_1, 20u)], 320f, 112f)))))), func_2(Struct_2(arg_2.b.x & arg_2.b.x), arg_2.a.x, arg_0.x, func_2(Struct_2(-2147483647i), true, global1[_wgslsmith_index_u32(u_input.a, 20u)], arg_2)).a.yzz)));
    let var_1 = func_2(Struct_2(firstLeadingBit(~(-1i))), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f) + -254f), func_2(Struct_2(~(~arg_2.b.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(610f))), arg_2)).a.xz;
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(arg_1, arg_1) | 17636u, ~countOneBits(1u), _wgslsmith_mult_u32(firstTrailingBit(~(arg_1 ^ arg_1)), 0u));
    let var_3 = arg_2.a.wz;
    return var_2.x == reverseBits(abs(_wgslsmith_mod_u32(arg_1, arg_1)));
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.a, ~(1u >> (u_input.a % 32u))), ~_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)] << (~global0[_wgslsmith_index_u32(u_input.a, 10u)] % vec2<u32>(32u)), select(~vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(u_input.a, u_input.a), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(11930u, 10u)], global0[_wgslsmith_index_u32(~5054u, 10u)]))), 20u)];
    global0 = array<vec2<u32>, 10>();
    let var_1 = !(!vec2<bool>(func_4(vec3<f32>(global1[_wgslsmith_index_u32(29841u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(42738u, 20u)]), u_input.a, func_2(Struct_2(0i), true, global1[_wgslsmith_index_u32(u_input.a, 20u)], Struct_1(global3[_wgslsmith_index_u32(u_input.a, 11u)], vec4<i32>(arg_0.x, arg_0.x, -54094i, arg_0.x)))), true));
    global1 = array<f32, 20>();
    let var_2 = any(vec4<bool>(-(~arg_0.x) == arg_0.x, !func_2(Struct_2(arg_0.x), var_1.x, 1f, Struct_1(vec4<bool>(var_1.x, false, true, false), vec4<i32>(arg_0.x, -44379i, -39314i, -2147483647i))).a.x, func_2(Struct_2(_wgslsmith_mult_i32(-1i, -39212i)), all(!global3[_wgslsmith_index_u32(u_input.a, 11u)]), 1f, func_2(Struct_2(arg_0.x), false, _wgslsmith_f_op_f32(abs(1000f)), Struct_1(global3[_wgslsmith_index_u32(u_input.a, 11u)], vec4<i32>(arg_0.x, arg_0.x, -25299i, arg_0.x)))).a.x, var_1.x));
    return StorageBuffer(arg_0.x & abs(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(20213u, ~(select(_wgslsmith_dot_vec3_u32(vec3<u32>(38402u, 0u, u_input.a), vec3<u32>(4294967295u, 4294967295u, 1u)), u_input.a, true) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 47838u), global0[_wgslsmith_index_u32(18864u, 10u)]) % 32u))), 10u)];
    let x = u_input.a;
    s_output = func_1(vec2<i32>(-42288i, _wgslsmith_mod_i32(countOneBits(12396i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2442i), vec2<i32>(-46903i, 18000i))) & 1i));
}

