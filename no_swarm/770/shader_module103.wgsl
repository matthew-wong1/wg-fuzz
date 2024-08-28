struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1 = Struct_1(false);

var<private> global3: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = select(any(!vec3<bool>(select(global2.a, global3.a, false), -427f >= arg_0, !global2.a)), any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(true, global3.a), vec2<bool>(global3.a, global2.a), vec2<bool>(false, global3.a))), !(!vec2<bool>(global3.a, false)))), true);
    let var_1 = Struct_1(any(select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, global2.a, true, true), vec4<bool>(false, global2.a, global3.a, global3.a), vec4<bool>(global3.a, true, global2.a, global3.a)), select(vec4<bool>(global3.a, false, global3.a, true), vec4<bool>(global3.a, global3.a, global3.a, global3.a), false)), !select(vec4<bool>(global3.a, false, global3.a, false), vec4<bool>(true, global3.a, global3.a, global2.a), false), global3.a)));
    var var_2 = false;
    let var_3 = Struct_1(true);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1408f))), arg_0, 622f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + arg_0));
    return 25843u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = func_3(_wgslsmith_f_op_f32(-arg_1.x));
    global2 = Struct_1(all(vec3<bool>(0u != _wgslsmith_dot_vec3_u32(vec3<u32>(14605u, 1u, 1u), vec3<u32>(76596u, 9391u, 104193u)), global2.a, true)));
    global1 = ~reverseBits(vec2<u32>(~0u ^ firstLeadingBit(global0.x), 31718u));
    var var_1 = (arg_2 << ((1u | _wgslsmith_div_u32(global0.x, 1u)) % 32u)) | -25252i;
    let var_2 = ~_wgslsmith_mult_i32(countOneBits(_wgslsmith_mod_i32(arg_2, -7850i)), ~1i) < reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-13811i, -8043i, arg_2), abs(vec3<i32>(-25849i, u_input.a, 1i))));
    return _wgslsmith_add_u32(~(global1.x << (global0.x % 32u)), ~global1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = ~abs(vec4<i32>(max(2147483647i, -822i), -23505i, select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, 3968i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), any(vec3<bool>(global3.a, arg_0.a, true))), abs(u_input.a)));
    var_1 = select(~(-firstLeadingBit(vec4<i32>(33315i, var_1.x, u_input.a, -2147483647i) >> (vec4<u32>(global1.x, 4294967295u, 0u, arg_3) % vec4<u32>(32u)))), min(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(53229i, var_1.x, u_input.a, u_input.a)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.a, -1i), vec4<i32>(2147483647i, u_input.a, 53646i, var_1.x)), vec4<i32>(8731i, u_input.a, ~2147483647i, select(-56053i, -38135i, var_0.a))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, -45083i, u_input.a), vec4<i32>(u_input.a, var_1.x, var_1.x, var_1.x)), -var_1.x, ~var_1.x, ~u_input.a), vec4<i32>(-1i >> (0u % 32u), ~1i, _wgslsmith_mod_i32(var_1.x, 0i), _wgslsmith_mult_i32(0i, 10031i)))), var_0.a);
    global2 = Struct_1(!(!(!(true && arg_0.a))));
    let var_2 = Struct_1(!(arg_0.a | !global2.a));
    return var_2;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(global3.a);
    var var_1 = Struct_1(false);
    global2 = func_4(Struct_1(arg_0.x), ~vec2<u32>(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec3<f32>(arg_1, arg_2, arg_2), u_input.a, Struct_1(var_1.a)), global1.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2)), arg_1), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-840f, -576f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1253f) + vec2<f32>(811f, arg_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, arg_2)))))), global0.x);
    global2 = Struct_1(all(!(!vec2<bool>(global2.a, arg_0.x))));
    let var_2 = ~select(vec3<u32>(4294967295u, firstTrailingBit(1u), 11422u) | vec3<u32>(func_2(arg_0, vec3<f32>(1000f, -1680f, arg_2), 9127i, Struct_1(true)), global1.x, func_2(arg_0, vec3<f32>(arg_1, 678f, 1423f), -1i, Struct_1(global2.a))), firstLeadingBit(reverseBits(vec3<u32>(global1.x, 16929u, global0.x) & vec3<u32>(global0.x, 1u, global0.x))), all(select(select(vec4<bool>(true, false, var_1.a, true), vec4<bool>(true, true, global2.a, false), false), !vec4<bool>(var_0.a, true, var_1.a, global3.a), u_input.a > u_input.a)));
    return func_4(func_4(Struct_1(any(!vec4<bool>(var_0.a, true, true, global3.a))), ~(~var_2.zy ^ max(var_2.yy, vec2<u32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, -525f))), vec2<f32>(366f, -193f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2)))), vec2<bool>(var_1.a, global3.a | var_1.a))), ~(~var_2.x | ~38270u)), firstLeadingBit(~var_2.zx), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 + 1684f))), arg_2) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1529f)), -742f)), ~global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(!select(!vec2<bool>(global3.a, false), select(vec2<bool>(true, global3.a), vec2<bool>(false, global2.a), vec2<bool>(global2.a, global2.a)), vec2<bool>(true, global3.a)), vec2<bool>(false, true), global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2190f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-176f, -2686f)), _wgslsmith_div_f32(943f, 368f))))), 674f);
    global1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, ~(~0u), 4294967295u | _wgslsmith_mod_u32(global1.x, 1u)), ~(~(vec3<u32>(global1.x, global0.x, global0.x) << (vec3<u32>(0u, global1.x, 0u) % vec3<u32>(32u))))), ~global1.x);
    var var_1 = func_1(select(vec2<bool>(global2.a, global2.a), !vec2<bool>(global3.a, !global3.a), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(345f * -1587f), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1321f, -203f)))))))), _wgslsmith_f_op_f32(-1f));
    var var_2 = all(select(vec3<bool>(func_4(func_1(vec2<bool>(false, false), -576f, 196f), vec2<u32>(global1.x, global1.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-449f, 780f))), firstLeadingBit(4294967295u)).a, !func_1(vec2<bool>(true, false), -549f, 1523f).a, true), vec3<bool>(true, var_1.a, !(var_0.a == global2.a)), true));
    let var_3 = Struct_1(false);
    global0 = vec2<u32>(global1.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 63680u), _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(global1.x, 1u))) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.x, ~global0.x, select(global0.x, 59096u, true), reverseBits(global0.x)), ~countOneBits(vec4<u32>(14020u, 60356u, 0u, global1.x)))) ^ vec2<u32>(54046u, 6789u);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(576f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-268f)), _wgslsmith_f_op_f32(step(-2327f, -1000f)), all(vec4<bool>(false, false, false, var_1.a))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2008f + -1000f), 496f)), _wgslsmith_f_op_f32(-1714f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1048f - 878f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-448f, 542f, true)), -2031f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1682f))));
    let var_5 = func_1(!(!(!select(vec2<bool>(global2.a, true), vec2<bool>(true, var_0.a), global3.a))), var_4.x, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4222u), vec3<u32>(1u, global0.x, ~15405u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.x, 5104u, global1.x), vec3<u32>(global1.x, 0u, 8527u), abs(vec3<u32>(4294967295u, 1u, 0u)))), min(~vec3<u32>(41315u, 32383u, global1.x) | _wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 19073u, global0.x), vec3<u32>(4294967295u, 63084u, 49276u)), ~vec3<u32>(global1.x, 4294967295u, global0.x))), -vec2<i32>(1i, -18391i), ~(vec4<i32>(52334i, -u_input.a, u_input.a, -u_input.a) ^ vec4<i32>(u_input.a, 2147483647i, -16696i, 3301i)), ~(~abs(countOneBits(vec4<u32>(0u, global1.x, global0.x, 1u)))));
}

