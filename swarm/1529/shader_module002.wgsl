struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(258f, 367f, -314f, 421f, -479f, 608f, 350f);

var<private> global1: array<u32, 17>;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-15467i, 1u));

var<private> global3: vec3<i32>;

var<private> global4: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global1 = array<u32, 17>();
    let var_0 = select(_wgslsmith_dot_vec4_u32((u_input.a & vec4<u32>(57961u, global1[_wgslsmith_index_u32(30928u, 17u)], u_input.a.x, u_input.a.x)) >> (vec4<u32>(0u, 1u, 82484u, u_input.a.x) % vec4<u32>(32u)), ~u_input.a) >= (u_input.a.x << (_wgslsmith_div_u32(51852u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4024u, 17u)], 17u)]) % 32u)), false, false | all(vec4<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, false, false, true)), true)));
    var var_1 = -1i > _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1276i, 1i, -2147483647i), vec3<i32>(global3.x, 49834i, global3.x)), vec3<i32>(13387i, 0i, global3.x) >> (u_input.a.wxz % vec3<u32>(32u))), vec3<i32>(reverseBits(global3.x), _wgslsmith_sub_i32(64084i, 2147483647i), 1i)), 1i, global3.x);
    let var_2 = !vec3<bool>(var_0, global3.x != (~global3.x | _wgslsmith_dot_vec3_i32(vec3<i32>(21114i, global3.x, 1i), vec3<i32>(global3.x, global3.x, -22202i))), (~global1[_wgslsmith_index_u32(0u, 17u)] ^ 1u) != 55338u);
    return !var_2.x;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = 108f;
    global3 = ~vec3<i32>(_wgslsmith_clamp_i32(countOneBits(~2147483647i), 1i | arg_0.x, 0i), -30108i | select(14702i, ~(-2147483647i), func_3()), -arg_0.x);
    let var_1 = Struct_1(~(-11911i), 1u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 7u)])) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(1000f - 609f))));
    var var_3 = all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), all(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false))) || all(select(vec3<bool>(true, true, var_0 < global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec3<bool>(select(true, false, false), arg_0.x < arg_0.x, true), vec3<bool>(false, true, any(vec2<bool>(false, true)))));
    return var_1.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(func_2(global3.zy), u_input.a.x);
    let var_1 = select(select(vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec2<bool>(true, true))), vec3<bool>(false, true, true), true), vec3<bool>(false, any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(15644u, 7u)] != 743f)), true), !any(vec4<bool>(false, false, true, true)));
    var var_2 = Struct_1(-44941i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]);
    let var_3 = var_0;
    let var_4 = Struct_1(var_3.a, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_3.b, 1u, var_2.b), _wgslsmith_mod_u32(1u, 72796u)) >> (max(min(var_3.b, 59278u), ~var_3.b) % 32u), ~var_2.b, firstLeadingBit(~u_input.a.x)));
    return var_3;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    global2 = array<Struct_1, 1>();
    global2 = array<Struct_1, 1>();
    var var_0 = select(abs(abs(u_input.a >> (vec4<u32>(18520u, global1[_wgslsmith_index_u32(arg_0.x, 17u)], 0u, arg_0.x) % vec4<u32>(32u)))), u_input.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x ^ 0u, 7u)]) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(57576u, 2285u), 7u)] - -1000f)) << (max(vec4<u32>(~(~0u), ~firstTrailingBit(4294967295u), 50440u & _wgslsmith_mult_u32(arg_0.x, global1[_wgslsmith_index_u32(0u, 17u)]), arg_1.b), vec4<u32>(~(~51319u), u_input.a.x, arg_1.b, ~(~17924u))) % vec4<u32>(32u));
    global3 = _wgslsmith_div_vec3_i32(max(vec3<i32>(arg_2.a, -16004i, -_wgslsmith_mult_i32(1i, arg_1.a)), vec3<i32>(60310i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -18376i, arg_1.a, 3566i), vec4<i32>(64842i, global3.x, 0i, -1i)), -(~arg_1.a))), select(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(19182i, arg_1.a, -1i), vec3<i32>(2147483647i, global3.x, 2147483647i)), -vec3<i32>(arg_2.a, arg_1.a, 1i)), vec3<i32>(~(-13108i), ~(-2147483647i), -1i | global3.x)), -(~vec3<i32>(arg_1.a, 3721i, -52835i) & vec3<i32>(39128i, -1i, 7427i)), !select(arg_3, select(arg_3, arg_3, arg_3.x), true)));
    var_0 = vec4<u32>(abs(~arg_0.x), 27308u & func_1().b, _wgslsmith_mult_u32(~(~(~0u)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(52400u, arg_2.b, 1u), u_input.a.ywz), ~vec3<u32>(u_input.a.x, 58125u, 4294967295u)) | _wgslsmith_mod_u32(arg_1.b, 4294967295u)), arg_0.x | _wgslsmith_clamp_u32(func_1().b, 75471u, _wgslsmith_clamp_u32(select(4294967295u, global1[_wgslsmith_index_u32(62095u, 17u)], true), global1[_wgslsmith_index_u32(arg_0.x, 17u)], _wgslsmith_mod_u32(1u, 26399u))));
    return _wgslsmith_clamp_i32(5021i, -15696i, reverseBits(i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-global3.x, global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(119828u, 36014u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(20515u, 17u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 15465u), _wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56391u, 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7697u, 17u)], 17u)], 17u)]), u_input.a.zy)))), 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, ~(u_input.a.zy & u_input.a.zx)), 7u)] - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 17u)], 17u)], 17u)], 7u)]))))), -func_4(vec2<u32>(~78306u, u_input.a.x), func_1(), global2[_wgslsmith_index_u32(76450u, 1u)], vec3<bool>(true, true, true)), select(~(-vec4<i32>(global3.x, 2147483647i, 1i, 0i)) >> (vec4<u32>(var_0.b, 3430u, var_0.b, 16023u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32((vec4<i32>(1i, var_0.a, -1i, var_0.a) >> (vec4<u32>(35643u, 9160u, global1[_wgslsmith_index_u32(4294967295u, 17u)], 15786u) % vec4<u32>(32u))) ^ -vec4<i32>(36318i, global3.x, global3.x, var_0.a), reverseBits(~vec4<i32>(var_0.a, -11665i, global3.x, 1i))), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), any(vec3<bool>(false, true, false))))));
}

