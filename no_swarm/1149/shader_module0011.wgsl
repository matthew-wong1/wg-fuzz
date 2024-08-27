struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(14635u, vec4<bool>(false, false, false, false), 4294967295u, vec2<u32>(0u, 592u)), Struct_1(78892u, vec4<bool>(false, false, true, false), 61260u, vec2<u32>(4294967295u, 81520u)), Struct_1(1u, vec4<bool>(true, true, true, true), 1u, vec2<u32>(70255u, 0u)), Struct_1(5993u, vec4<bool>(false, false, false, true), 27142u, vec2<u32>(14431u, 34736u)), Struct_1(25624u, vec4<bool>(true, true, true, true), 1u, vec2<u32>(55685u, 47104u)), Struct_1(1u, vec4<bool>(false, false, true, false), 11596u, vec2<u32>(43822u, 117758u)), Struct_1(1u, vec4<bool>(false, true, false, true), 3175u, vec2<u32>(4294967295u, 111532u)), Struct_1(4294967295u, vec4<bool>(false, true, false, true), 1u, vec2<u32>(0u, 4294967295u)), Struct_1(70248u, vec4<bool>(false, false, true, false), 1u, vec2<u32>(4294967295u, 46797u)), Struct_1(1u, vec4<bool>(true, true, false, true), 62929u, vec2<u32>(0u, 62759u)), Struct_1(4294967295u, vec4<bool>(false, true, true, true), 0u, vec2<u32>(5737u, 47486u)), Struct_1(1u, vec4<bool>(false, true, true, true), 4294967295u, vec2<u32>(0u, 1u)), Struct_1(0u, vec4<bool>(false, true, true, true), 1u, vec2<u32>(1u, 19142u)), Struct_1(4294967295u, vec4<bool>(false, false, false, false), 0u, vec2<u32>(68716u, 0u)), Struct_1(27824u, vec4<bool>(true, false, true, false), 32188u, vec2<u32>(40950u, 87u)), Struct_1(1u, vec4<bool>(true, true, false, true), 0u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(4294967295u, vec4<bool>(true, false, false, false), 30944u, vec2<u32>(1u, 0u)), Struct_1(38725u, vec4<bool>(true, true, true, false), 38386u, vec2<u32>(13346u, 28341u)), Struct_1(38042u, vec4<bool>(false, true, true, false), 4294967295u, vec2<u32>(1u, 69998u)), Struct_1(0u, vec4<bool>(false, true, true, true), 0u, vec2<u32>(1u, 7448u)), Struct_1(1173u, vec4<bool>(false, true, true, true), 4294967295u, vec2<u32>(0u, 0u)), Struct_1(0u, vec4<bool>(false, false, true, false), 19044u, vec2<u32>(0u, 12421u)), Struct_1(64772u, vec4<bool>(true, true, true, true), 12595u, vec2<u32>(14817u, 1u)), Struct_1(0u, vec4<bool>(true, true, false, false), 1u, vec2<u32>(22362u, 3599u)), Struct_1(1026u, vec4<bool>(false, false, false, false), 9678u, vec2<u32>(0u, 4294967295u)), Struct_1(0u, vec4<bool>(true, true, false, false), 24415u, vec2<u32>(4294967295u, 1u)), Struct_1(18519u, vec4<bool>(true, true, true, false), 4294967295u, vec2<u32>(5985u, 0u)), Struct_1(21024u, vec4<bool>(false, true, true, false), 0u, vec2<u32>(1u, 1u)), Struct_1(38094u, vec4<bool>(false, false, true, false), 4294967295u, vec2<u32>(4294967295u, 4294967295u)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = u_input.a;
    let var_1 = vec2<bool>(all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true);
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(max(firstTrailingBit(68340u), var_0), max(_wgslsmith_mod_u32(u_input.a, u_input.a), var_0)), _wgslsmith_add_vec2_u32(select(abs(vec2<u32>(var_0, var_0)), _wgslsmith_mod_vec2_u32(vec2<u32>(58264u, 530u), vec2<u32>(4294967295u, u_input.a)), vec2<bool>(true, false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(0u, u_input.a), vec2<u32>(11789u, u_input.a)) & select(vec2<u32>(var_0, var_0), vec2<u32>(68458u, u_input.a), var_1))), vec4<bool>(!(!var_1.x), all(vec2<bool>(var_1.x, all(vec4<bool>(var_1.x, var_1.x, true, var_1.x)))), false, all(select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, var_1.x, false)), !vec3<bool>(true, var_1.x, true), true))), var_0, vec2<u32>(1u, ~u_input.a));
    let var_3 = vec3<u32>(_wgslsmith_div_u32(u_input.a, countOneBits(34808u ^ (var_0 ^ 23628u))), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, 24961u, var_2.a), vec3<u32>(1u, 1u, var_0), vec3<u32>(u_input.a, var_2.c, 13938u)), vec3<u32>(var_2.a, 36024u, var_0) << (vec3<u32>(var_2.c, u_input.a, 54685u) % vec3<u32>(32u)), ~vec3<u32>(var_0, 4294967295u, 4294967295u))), reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a, var_2.a, var_0), vec3<u32>(36302u, u_input.a, 69058u)))), ~var_0);
    var var_4 = global0[_wgslsmith_index_u32(~(var_3.x ^ 21766u), 29u)];
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1121f - _wgslsmith_f_op_f32(sign(-126f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -153f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1808f * 391f), _wgslsmith_div_f32(-161f, 1361f)))))));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1695f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1204f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-927f + 373f), any(arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(trunc(-876f))))));
    let var_1 = select(!(!select(select(arg_0.b.xw, arg_0.b.yx, arg_0.b.x), arg_0.b.wy, !arg_0.b.x)), select(arg_0.b.zz, !select(arg_0.b.yz, arg_0.b.xx, select(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.xy, true)), !select(vec2<bool>(true, true), select(arg_0.b.yz, vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.zw), select(vec2<bool>(false, arg_0.b.x), arg_0.b.yy, vec2<bool>(arg_0.b.x, arg_0.b.x)))), select(true, false, any(!(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))));
    global0 = array<Struct_1, 29>();
    var var_2 = Struct_1(u_input.a, !arg_0.b, u_input.a, abs(vec2<u32>(4294967295u, arg_0.a)));
    let var_3 = max(~4294967295u, ~max(var_2.d.x, firstTrailingBit(21342u)));
    return firstLeadingBit(vec4<u32>(var_3, 99863u, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_3 >> (0u % 32u), 4294967295u), u_input.a), _wgslsmith_add_u32(~_wgslsmith_mult_u32(4294967295u, var_3), _wgslsmith_dot_vec2_u32(~arg_0.d, _wgslsmith_div_vec2_u32(arg_0.d, var_2.d)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_0 = vec2<f32>(301f, -529f);
    let var_1 = arg_1;
    var var_2 = ~func_2(arg_2);
    return ~(~_wgslsmith_dot_vec2_u32(arg_2.d, vec2<u32>(78233u, firstTrailingBit(var_2.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(267f, _wgslsmith_f_op_f32(796f * 1000f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(146f, -435f) + vec2<f32>(1000f, 1849f)))))));
    global0 = array<Struct_1, 29>();
    var var_1 = global0[_wgslsmith_index_u32(31872u, 29u)];
    let var_2 = Struct_1(arg_0.x, vec4<bool>(false, var_1.b.x, !((15899u >> (arg_1.c % 32u)) <= countOneBits(54093u)), arg_1.b.x), 3977u, arg_2.d | firstLeadingBit(select(firstTrailingBit(arg_2.d), vec2<u32>(37759u, var_1.c), !vec2<bool>(var_1.b.x, false))));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    var var_0 = ~23564i;
    var var_1 = u_input.b.x & min(-2147483647i, -2147483647i);
    let var_2 = !vec4<bool>(true, func_4(vec4<u32>(func_1(vec4<f32>(1534f, 349f, -497f, -281f), -2303f, global0[_wgslsmith_index_u32(u_input.a, 29u)], Struct_1(u_input.a, vec4<bool>(true, false, true, false), 63057u, vec2<u32>(15083u, 4294967295u))), select(1u, 34859u, false), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 81354u))), global0[_wgslsmith_index_u32(u_input.a, 29u)], Struct_1(1u, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), _wgslsmith_clamp_u32(u_input.a, u_input.a, 45680u), vec2<u32>(18665u, 4294967295u) & vec2<u32>(u_input.a, u_input.a))), any(vec2<bool>(true, true)) != true, -130i <= _wgslsmith_clamp_i32(u_input.b.x, ~u_input.b.x, u_input.b.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-273f + _wgslsmith_f_op_f32(747f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1358f - 1231f)))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-887f))))), _wgslsmith_f_op_f32(func_3())));
    var var_4 = _wgslsmith_add_vec2_i32(u_input.b, ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.b), -vec2<i32>(-2147483647i, 28017i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(abs(~(-23929i)), abs(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1043f))), _wgslsmith_dot_vec2_i32(vec2<i32>(min(-8233i, 9452i), 1i), u_input.b), select(~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), vec3<i32>(var_4.x, var_4.x, var_4.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_4.x, var_4.x, u_input.b.x), vec3<i32>(var_4.x, u_input.b.x, u_input.b.x))), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(0i, 0i, 2998i)), ~countOneBits(vec3<i32>(var_4.x, -6183i, var_4.x))), vec3<bool>(!var_2.x == true, _wgslsmith_f_op_f32(step(-908f, var_3.x)) == 1161f, all(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, true, true))))));
}

