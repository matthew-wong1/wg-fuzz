struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, false, true, true, false, false, true, true, true, true, false, true, false, false, true);

var<private> global1: array<bool, 21>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = all(vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.a.x, 1u), arg_1.a.x), 16u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~arg_1.a), 21u)], false)) | !all(vec4<bool>(true, !global0[_wgslsmith_index_u32(68825u, 16u)], !global0[_wgslsmith_index_u32(u_input.b.x, 16u)], arg_0.a));
    return -1266f;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_1(vec2<u32>(arg_2.x, u_input.b.x), _wgslsmith_f_op_f32(min(arg_1.x, 1652f))))))));
    global0 = array<bool, 16>();
    var var_1 = u_input.a;
    let var_2 = Struct_1(vec2<u32>(arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~40879u, 1065u, countOneBits(u_input.b.x), arg_2.x), select(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), arg_2, vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(69499u, 21u)], false)) >> (~arg_2 % vec4<u32>(32u)))), _wgslsmith_f_op_f32(sign(-330f)));
    let var_3 = arg_0;
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    global0 = array<bool, 16>();
    var var_0 = reverseBits(_wgslsmith_div_vec3_i32(-reverseBits(vec3<i32>(0i, -2322i, 15918i) | vec3<i32>(16656i, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a)) & abs(-vec3<i32>(-632i, u_input.a, 2147483647i))));
    var_0 = vec3<i32>(firstLeadingBit(u_input.a), ~(_wgslsmith_mult_i32(countOneBits(-9719i), -var_0.x) ^ u_input.a), max(var_0.x, 2147483647i));
    let var_1 = !(!(!(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 22477u, 0u), vec3<u32>(arg_1.a.x, arg_1.a.x, u_input.b.x)) < 4294967295u)));
    let var_2 = _wgslsmith_dot_vec2_i32(max(countOneBits(var_0.xx) | var_0.zx, select(-vec2<i32>(var_0.x, u_input.a), select(vec2<i32>(var_0.x, u_input.a), vec2<i32>(-2147483647i, u_input.a), true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 518u, 1u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 21u)])) >> (arg_1.a % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(14305i, -2147483647i), var_0.zz), var_0.x << (0u % 32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(-657i, u_input.a), ~var_0.xy)) | _wgslsmith_mod_vec2_i32(vec2<i32>(~(-1i), u_input.a), ~var_0.xy));
    return all(vec3<bool>(false, !(-2521i < max(u_input.a, 1i)), all(!(!vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 21u)], var_1, true, false)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = select(-vec3<i32>(~0i, _wgslsmith_sub_i32(-u_input.a, -2147483647i), -1i), select(_wgslsmith_clamp_vec3_i32(select(-vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, -31993i) << (vec3<u32>(u_input.b.x, arg_1.x, 1u) % vec3<u32>(32u)), select(arg_0, arg_0, false)), vec3<i32>(-2147483647i, -34098i, countOneBits(1i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<i32>(0i, 22373i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 21u)], global1[_wgslsmith_index_u32(countOneBits(7344u), 21u)]), arg_0, vec3<bool>(arg_0.x, !global1[_wgslsmith_index_u32(u_input.b.x, 21u)], !global0[_wgslsmith_index_u32(0u, 16u)]))), !(!vec3<bool>(false, all(vec2<bool>(true, true)), true)));
    let var_1 = select(select(arg_0.zy, arg_0.yx, select(vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(52564u, 16u)], arg_2.a, true, arg_2.a)), true), arg_0.zy, false)), select(!vec2<bool>(true, func_4(Struct_2(false), Struct_1(vec2<u32>(26044u, arg_1.x), -339f), vec2<f32>(-135f, 489f))), vec2<bool>(arg_0.x, true), select(arg_0.xz, arg_0.zz, false)), arg_0.zy);
    global1 = array<bool, 21>();
    var var_2 = ~vec3<i32>(min(i32(-1i) * -2147483647i, -u_input.a), u_input.a, 32862i) & _wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(var_0.x, 1845i), var_0.x << (u_input.b.x % 32u), _wgslsmith_sub_i32(u_input.a, 1i)), _wgslsmith_add_vec3_i32(firstLeadingBit(var_0), -_wgslsmith_mult_vec3_i32(var_0, var_0)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f) - 2237f));
    return func_2(-407f, vec2<f32>(_wgslsmith_f_op_f32(-1000f - -1191f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-197f * _wgslsmith_f_op_f32(1219f - 335f))))), _wgslsmith_add_vec4_u32(arg_1, ~(arg_1 | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, 0u, arg_1.x), arg_1, vec4<u32>(25047u, 4294967295u, arg_1.x, u_input.b.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(any(vec2<bool>(arg_3.a, all(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), arg_0, arg_0)))));
    let var_1 = func_5(vec3<bool>(select(func_4(arg_3, func_2(2124f, vec2<f32>(arg_1, -825f), vec4<u32>(55686u, u_input.b.x, arg_2.a.x, 5429u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1213f))), !arg_0.x, false), arg_0.x, !func_4(Struct_2(true), arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-797f, -419f)))), abs(~(~firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 103602u, arg_2.a.x)))), Struct_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(29913u, 4656u, arg_2.a.x) & vec3<u32>(u_input.b.x, 18239u, 5057u), firstTrailingBit(vec3<u32>(55633u, arg_2.a.x, 4294967295u))), 21u)]));
    var var_2 = ~47540u;
    let var_3 = Struct_1(vec2<u32>(1u >> (var_1.a.x % 32u), var_1.a.x), _wgslsmith_f_op_f32(sign(1097f)));
    var var_4 = vec4<bool>(!arg_3.a, true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], false);
    return 28459u;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = arg_1;
    global1 = array<bool, 21>();
    var var_1 = arg_1;
    global0 = array<bool, 16>();
    var var_2 = -19474i;
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(4294967295u), 16u)];
    var var_1 = vec2<bool>(~(-u_input.a) < ~min(u_input.a ^ -46666i, countOneBits(3319i)), false);
    global0 = array<bool, 16>();
    var var_2 = vec3<i32>(func_6(-min(-vec3<i32>(u_input.a, 73386i, u_input.a), vec3<i32>(u_input.a, 7953i, -50731i)), Struct_1(vec2<u32>(func_1(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), -1411f, Struct_1(vec2<u32>(1u, 1u), -968f), Struct_2(var_1.x)), ~0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1424f), -1493f)), Struct_1(~u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -160f), _wgslsmith_f_op_f32(max(1242f, 1000f)))), Struct_2(true)), ~(-(~countOneBits(u_input.a))), -max(max(~(-2147483647i), reverseBits(u_input.a)), _wgslsmith_mod_i32(u_input.a, u_input.a) >> (u_input.b.x % 32u)));
    var var_3 = !vec2<bool>(any(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)] & var_1.x, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], true, var_1.x)), u_input.b.x == u_input.b.x)), false);
    let var_4 = vec4<bool>(!any(vec3<bool>(true, true, true)) & (all(!vec3<bool>(false, true, var_3.x)) | any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]))), global0[_wgslsmith_index_u32(20416u, 16u)], global1[_wgslsmith_index_u32(func_1(vec2<bool>(global0[_wgslsmith_index_u32(select(62337u, u_input.b.x, false), 16u)] & false, global1[_wgslsmith_index_u32(func_5(vec3<bool>(true, true, true), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u), Struct_2(var_1.x)).a.x & abs(u_input.b.x), 21u)]), _wgslsmith_f_op_f32(f32(-1f) * -143f), func_5(vec3<bool>(true, true, true), vec4<u32>(u_input.b.x, ~u_input.b.x, select(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(9494u, 16u)]), _wgslsmith_mod_u32(u_input.b.x, 18729u)), Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(7283u), 16u)])), Struct_2(true)), 21u)], abs(_wgslsmith_dot_vec3_i32(vec3<i32>(25307i, u_input.a, u_input.a) | vec3<i32>(2147483647i, 0i, var_2.x), reverseBits(vec3<i32>(var_2.x, 0i, 2147483647i)))) < (i32(-1i) * -(i32(-1i) * -20633i)));
    var var_5 = Struct_2(true);
    var var_6 = !select(select(var_4.yyx, select(!vec3<bool>(var_3.x, var_3.x, global1[_wgslsmith_index_u32(62951u, 21u)]), select(var_4.zyw, vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), global1[_wgslsmith_index_u32(12967u, 21u)]), var_4.zzy), select(var_5.a, global1[_wgslsmith_index_u32(0u, 21u)] & var_4.x, false)), !var_4.yxz, func_4(Struct_2(var_1.x), func_2(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(911f, 762f)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(1382f)), -167f)));
    var var_7 = var_4.wyx;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(2147483647i, var_2.x, -(~(-48226i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1073f - -1264f) + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f + -1295f)) - -2709f), _wgslsmith_f_op_f32(f32(-1f) * -435f), -1320f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, -429f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-706f, 348f) + vec2<f32>(467f, -479f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(208f, 227f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(298f, 831f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1508f, -418f), vec2<f32>(-627f, 1259f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, -722f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(636f, 1721f)))), vec2<i32>(var_2.x, i32(-1i) * -reverseBits(var_2.x)));
}

