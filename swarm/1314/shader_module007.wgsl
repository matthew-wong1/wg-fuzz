struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(0u), 24u)];
    let var_1 = 41291i;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -3209f), 231f)), var_0.a);
    var var_3 = ~(~u_input.b);
    global0 = array<Struct_1, 24>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a, -918f, true)), var_2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(665f + -459f) * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) - -886f));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = !(!(!(arg_1 && false)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 24u)];
    var var_2 = -u_input.b.x;
    global0 = array<Struct_1, 24>();
    let var_3 = select(!(!select(select(vec2<bool>(var_0, arg_1), arg_0.xx, vec2<bool>(false, true)), !arg_0.zw, any(arg_0))), vec2<bool>(false, true), arg_1);
    return var_3;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<i32>(0i, arg_0, u_input.b.x ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0), vec2<i32>(1i, u_input.a) ^ vec2<i32>(-696i, 32331i)));
    let var_1 = select(func_4(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.c))))), select(!(!func_4(vec4<bool>(true, false, true, true), true, 805f, vec2<u32>(u_input.c, u_input.c))), vec2<bool>(true, true), !(!func_4(vec4<bool>(false, true, false, false), false, 1505f, vec2<u32>(u_input.c, u_input.c)))), true);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * -1276f));
    var_0 = u_input.b.zwz;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * 458f));
    return Struct_1(var_3);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    let var_1 = arg_0;
    global0 = array<Struct_1, 24>();
    var var_2 = vec2<bool>(all(select(!select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), select(vec2<bool>(true, arg_2), func_4(vec4<bool>(false, true, arg_2, false), arg_2, arg_1.a, vec2<u32>(u_input.c, u_input.c)), all(vec3<bool>(false, arg_2, false))), !(!vec2<bool>(true, arg_2)))), !(!any(vec3<bool>(arg_2, arg_2, true)) & !arg_2));
    global0 = array<Struct_1, 24>();
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = 0i != -(u_input.b.x | u_input.b.x);
    let var_1 = abs(88923i);
    var_0 = true;
    var var_2 = global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(arg_0, select(firstTrailingBit(_wgslsmith_div_u32(arg_0, 44427u)), ~u_input.c, _wgslsmith_div_i32(var_1, u_input.b.x) != firstLeadingBit(-1i))), 32456u), 24u)];
    let var_3 = arg_1;
    return vec2<u32>(~1u ^ reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.c)), func_5(~4294967295u, Struct_1(828f), countOneBits(~10924u) >= _wgslsmith_mult_u32(1u, arg_0), func_2(~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(97006u, u_input.c) & vec2<u32>(u_input.c, u_input.c), vec2<u32>(1107u, u_input.c) | vec2<u32>(u_input.c, 42157u)), ~(vec2<u32>(4294967295u, u_input.c) & vec2<u32>(u_input.c, u_input.c)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))) & func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, u_input.c), ~reverseBits(vec2<u32>(17061u, 0u))), Struct_1(2574f));
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var_0 = _wgslsmith_mod_vec2_u32(abs(min(max(vec2<u32>(4294967295u, var_0.x), vec2<u32>(u_input.c, 59318u)) & reverseBits(vec2<u32>(42811u, u_input.c)), ~abs(vec2<u32>(u_input.c, 4294967295u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 43954u), vec2<u32>(var_0.x, var_0.x)) >> (~vec2<u32>(58653u, 0u) % vec2<u32>(32u)), ~(vec2<u32>(var_0.x, u_input.c) | vec2<u32>(50792u, var_0.x))), countOneBits(~vec2<u32>(var_0.x, 4294967295u)), vec2<u32>(reverseBits(u_input.c | var_0.x), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(u_input.b.wxy, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 19010i), u_input.b.yyz)), false), _wgslsmith_sub_vec3_i32(u_input.b.xzz << (~vec3<u32>(u_input.c, 25579u, 38006u) % vec3<u32>(32u)), vec3<i32>(0i, 0i, u_input.b.x))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(1i, -24962i, u_input.b.x, -2147483647i) << (vec4<u32>(1u, u_input.c, 0u, 1u) % vec4<u32>(32u))), vec4<i32>(22268i, _wgslsmith_clamp_i32(-2147483647i, u_input.a, 11271i), countOneBits(u_input.a), firstLeadingBit(-31015i))), vec4<i32>(u_input.b.x, 1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-16518i, u_input.b.x), _wgslsmith_mod_i32(u_input.a, 10292i)), ~u_input.a ^ _wgslsmith_sub_i32(1i, u_input.a))), abs(vec3<u32>(~1u, u_input.c, ~_wgslsmith_clamp_u32(var_0.x, var_0.x, 26431u))), -1i, vec4<i32>(-1i, reverseBits(u_input.a), _wgslsmith_mod_i32(reverseBits(u_input.a), reverseBits(firstLeadingBit(1i))), -1i));
}

