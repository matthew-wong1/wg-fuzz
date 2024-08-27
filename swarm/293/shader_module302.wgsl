struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), -1198f);

var<private> global1: array<f32, 1>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = 1524f;
    let var_1 = -(firstLeadingBit(firstLeadingBit(vec3<i32>(arg_2.a, -2147483647i, global0.a)) | _wgslsmith_div_vec3_i32(vec3<i32>(1i, 345i, arg_2.a), vec3<i32>(28972i, global0.a, global0.a))) | vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(arg_2.a), -2147483647i), 0i, 1i ^ (global0.a >> (u_input.d % 32u))));
    var var_2 = ~(firstLeadingBit(reverseBits(1i)) ^ arg_2.a) >> (abs(u_input.a.x) % 32u);
    var var_3 = Struct_1(i32(-1i) * -_wgslsmith_mod_i32(-global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -12813i, -2147483647i, arg_0.a), vec4<i32>(1i, 1i, u_input.b, -1i))), _wgslsmith_f_op_f32(global0.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b))))));
    var var_4 = vec4<bool>(true, arg_1, u_input.d >= ~0u, !((_wgslsmith_f_op_f32(1327f * global1[_wgslsmith_index_u32(u_input.a.x, 1u)]) <= arg_0.b) | !(arg_1 && arg_1)));
    return true;
}

fn func_2() -> vec4<u32> {
    let var_0 = select(vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), select(true, func_3(Struct_1(u_input.c, global1[_wgslsmith_index_u32(u_input.d, 1u)]), true, Struct_1(-1i, 694f)), all(vec3<bool>(false, false, false))), true), select(!vec4<bool>(any(vec2<bool>(false, false)), true, func_3(Struct_1(global0.a, 1000f), true, Struct_1(5343i, global1[_wgslsmith_index_u32(4294967295u, 1u)])), true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(true, false, false)), select(true, false, false), func_3(Struct_1(-3225i, -1567f), false, Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 1u)])), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(func_3(Struct_1(-58031i, -1545f), false, Struct_1(612i, 971f)), any(vec3<bool>(false, false, false)), global0.a != -20561i, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))), !(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))));
    let var_1 = true;
    return reverseBits(~abs(vec4<u32>(~u_input.a.x, u_input.a.x, reverseBits(86728u), u_input.a.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = ~countOneBits(((vec4<i32>(global0.a, 0i, -8577i, global0.a) ^ vec4<i32>(u_input.b, -49610i, -2147483647i, 14360i)) >> ((vec4<u32>(u_input.a.x, 4294967295u, 1u, arg_3.x) << (vec4<u32>(6474u, arg_1.x, arg_3.x, 25779u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ select(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -47386i, arg_2.a, -8365i), vec4<i32>(1i, -26152i, 6235i, global0.a)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c, global0.a, 43710i), vec4<i32>(arg_2.a, arg_2.a, global0.a, -1i)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true)));
    global1 = array<f32, 1>();
    var var_1 = arg_2;
    var var_2 = arg_2;
    global0 = Struct_1(-(var_2.a << (~(~0u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) - var_1.b));
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(1i, 1i, u_input.b, 9318i)), (vec4<i32>(arg_3.a, 47803i, 1i, arg_3.a) >> (vec4<u32>(arg_2, 1u, 10878u, arg_2) % vec4<u32>(32u))) | abs(vec4<i32>(31805i, 2147483647i, 7287i, 10075i))) << (_wgslsmith_add_u32(39080u, firstLeadingBit(arg_2)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1924f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b, _wgslsmith_f_op_f32(trunc(var_0.b)))));
    global0 = func_4((vec2<u32>(_wgslsmith_add_u32(arg_1, 52527u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, u_input.a.x, u_input.d, u_input.d), vec4<u32>(30644u, u_input.d, arg_1, u_input.d))) ^ u_input.a.xy) >> (reverseBits(u_input.a.zx) % vec2<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(arg_1, 25997u) << (u_input.a.yy % vec2<u32>(32u))), min(1u, u_input.a.x), 1u, u_input.d), arg_3, firstLeadingBit(abs(u_input.a)));
    return Struct_1(_wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(u_input.c, arg_3.a, -2147483647i, 0i) ^ vec4<i32>(-5827i, 0i, -31308i, -2928i))), vec4<i32>(1i, abs(2147483647i ^ global0.a), arg_3.a << ((arg_1 | 75546u) % 32u), arg_3.a)), global0.b);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global0 = func_5(arg_0.x, ~_wgslsmith_dot_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 3583u, 4294967295u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, u_input.d, u_input.a.x), vec4<u32>(u_input.a.x, 7384u, 4294967295u, 0u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 19278u, 27344u), vec4<u32>(6984u, u_input.a.x, 4294967295u, u_input.a.x), abs(vec4<u32>(20351u, 49987u, 6314u, u_input.a.x)))), 1u, func_4(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(119566u, 18386u)), func_2(), Struct_1(_wgslsmith_mult_i32(global0.a, arg_0.x) << (~68266u % 32u), global0.b), ~_wgslsmith_div_vec3_u32(min(u_input.a, u_input.a), u_input.a)));
    var var_0 = func_4(select(u_input.a.zx, _wgslsmith_sub_vec2_u32(~u_input.a.xz, ~u_input.a.yy), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.a.x, 1u) | ~vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x), vec4<u32>(abs(1u), 0u, u_input.a.x ^ u_input.d, 68361u)), Struct_1(min(i32(-1i) * -2147483647i, max(-1i, min(arg_0.x, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(1456f * global0.b))))), u_input.a);
    global1 = array<f32, 1>();
    global0 = Struct_1(~(-var_0.a), -586f);
    let var_1 = Struct_1(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b))) - _wgslsmith_div_f32(_wgslsmith_div_f32(global0.b, global1[_wgslsmith_index_u32(u_input.d, 1u)]), _wgslsmith_f_op_f32(-238f * -760f)))));
    return 297f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(vec3<i32>(-1i) * -vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -20926i), vec2<i32>(global0.a, u_input.b)), -24637i));
    var var_1 = Struct_1(firstLeadingBit(-2147483647i), _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), abs(~vec2<i32>(global0.a, -2147483647i))))));
    var var_2 = vec4<bool>((_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 13378u), u_input.d) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(114222u, u_input.d, u_input.a.x), vec3<u32>(1u, u_input.a.x, 4294967295u))) >= u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 1u)] >= 1026f, u_input.d <= ~min(~u_input.d, u_input.d), all(vec3<bool>(true, true, true)));
    var_0 = min(vec3<i32>(_wgslsmith_clamp_i32(var_1.a, _wgslsmith_clamp_i32(global0.a, 18363i, var_0.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -5155i, 1i, global0.a), vec4<i32>(-2147483647i, -17951i, 5177i, 1i))), 2147483647i, 3755i << (func_2().x % 32u)), -(~(~vec3<i32>(2147483647i, 0i, global0.a))) | -(countOneBits(vec3<i32>(-1i, var_0.x, 35346i)) >> (_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(1u, u_input.d, 22202u)) % vec3<u32>(32u))));
    var var_3 = abs(u_input.a);
    let var_4 = select(vec4<i32>(var_1.a & u_input.c, firstLeadingBit(-1i), max(_wgslsmith_div_i32(var_1.a >> (0u % 32u), 1i), var_0.x), var_1.a), select(select(~vec4<i32>(u_input.c, -1i, global0.a, var_1.a), -vec4<i32>(-40936i, -1i, var_0.x, global0.a), vec4<bool>(false, true, false, true)), vec4<i32>(_wgslsmith_mult_i32(u_input.b, var_0.x), -1i, global0.a, var_0.x >> (u_input.a.x % 32u)), vec4<bool>(true, true, var_2.x, false)) ^ vec4<i32>(_wgslsmith_sub_i32(func_5(39332i, 24325u, 0u, Struct_1(global0.a, global0.b)).a, 3909i), -(-1575i >> (var_3.x % 32u)), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, 1i, 1i, var_0.x), ~vec4<i32>(1i, -56432i, var_0.x, 0i))), all(select(vec3<bool>(var_2.x, var_2.x, false), var_2.xzw, any(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-594f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1409f, 1105f)) - _wgslsmith_f_op_f32(f32(-1f) * -367f))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1922u, ~_wgslsmith_add_u32(u_input.a.x, 1u)), 1u)], 1f, _wgslsmith_f_op_f32(f32(-1f) * -288f)));
}

