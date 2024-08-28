struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(3804u, 1752u, 0u), vec3<u32>(0u, 10399u, 18803u), vec3<u32>(1u, 35225u, 72865u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(43047u, 86113u, 51959u), vec3<u32>(1905u, 29685u, 16237u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(36152u, 95453u, 41182u), vec3<u32>(30005u, 0u, 36492u), vec3<u32>(4294967295u, 39080u, 4294967295u), vec3<u32>(0u, 17743u, 1u), vec3<u32>(64054u, 4294967295u, 28365u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(-min(vec3<i32>(1i, -35410i, -31474i), vec3<i32>(1i, 1i, u_input.b)) >> (select(~vec3<u32>(10344u, 1u, u_input.c.x), ~vec3<u32>(1u, u_input.a.x, 15269u), true) % vec3<u32>(32u)), vec3<i32>(firstTrailingBit(~(-2147483647i)), 41437i, -1i)), ~1u, u_input.c.x, u_input.c.wy, vec2<i32>(24984i << (u_input.e.x % 32u), u_input.d));
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    return select(abs(~12953u), u_input.e.x, !select(true, true, true));
}

fn func_2(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false))));
    var_0 = !(!select(vec3<bool>(!var_0.x, true, true), select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, false)), !vec3<bool>(var_0.x, true, true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false))), vec3<bool>(true, false, true)));
    var_0 = !vec3<bool>(false, !all(vec2<bool>(var_0.x, true)), all(vec2<bool>(!var_0.x, false)));
    global0 = array<vec3<u32>, 13>();
    let var_1 = Struct_1(arg_0, u_input.a.x, u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x ^ u_input.a.x), firstTrailingBit(arg_0.zz) >> (~((u_input.e ^ u_input.a.wx) >> (firstTrailingBit(u_input.c.yz) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return vec4<i32>(var_1.a.x, -1i, -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 13111i, -2147483647i, 36528i), vec4<i32>(-16157i, u_input.d, -17821i, 21193i)), vec4<i32>(u_input.b, arg_0.x, arg_0.x, 75494i)), reverseBits(min(7713i, arg_0.x << (var_1.b % 32u)))) << (vec4<u32>(~((var_1.d.x << (var_1.b % 32u)) >> (u_input.a.x % 32u)), _wgslsmith_mod_u32(func_3(), ~(~58358u)), _wgslsmith_sub_u32(u_input.c.x, reverseBits(var_1.c)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 9745u, var_1.b, 15533u), ~(~u_input.c))) % vec4<u32>(32u));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: u32, arg_3: bool) -> vec2<bool> {
    let var_0 = -(vec3<i32>(u_input.d, 1i, 18038i) & firstTrailingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(1i, -2147483647i, u_input.d))));
    var var_1 = Struct_1(var_0, 4294967295u, _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(abs(arg_2), arg_2)), vec2<u32>(arg_2, arg_1.x), var_0.zx);
    var var_2 = abs(_wgslsmith_mult_vec4_i32(min(func_2(vec3<i32>(var_0.x, var_1.e.x, 0i)), vec4<i32>(2147483647i, 0i, 33970i, -2929i) & vec4<i32>(0i, 21096i, u_input.d, u_input.b)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, var_0.x, -2147483647i), vec4<i32>(u_input.d, var_1.a.x, 0i, -1i)), func_2(vec3<i32>(var_1.a.x, 1i, 1i)))) & countOneBits(~(~vec4<i32>(var_0.x, 954i, u_input.d, var_0.x))));
    var_2 = _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-24771i, u_input.d, u_input.d, var_1.a.x) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(54973i, var_0.x, -var_1.a.x, u_input.d)), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.a.x, 60881i, var_2.x, 2147483647i), vec4<i32>(-2147483647i, func_2(var_1.a).x, select(var_2.x, -2147483647i, true), ~var_2.x)));
    global0 = array<vec3<u32>, 13>();
    return vec2<bool>(arg_3, all(select(vec3<bool>(true, arg_3, all(vec2<bool>(arg_3, true))), select(select(vec3<bool>(true, arg_3, true), vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, false, true)), vec3<bool>(arg_3, arg_3, false), false), !(!vec3<bool>(arg_3, false, arg_3)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    let var_0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(~30899u, func_3()), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e.x, u_input.a.x), vec3<u32>(u_input.c.x, 61526u, u_input.a.x) >> (global0[_wgslsmith_index_u32(u_input.c.x, 13u)] % vec3<u32>(32u)))) | firstLeadingBit(max(0u, u_input.a.x)), ~func_3(), ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(0u, u_input.c.x), _wgslsmith_mod_u32(u_input.e.x, 0u) >> (~0u % 32u)), abs(1u));
    global0 = array<vec3<u32>, 13>();
    let var_1 = 101f;
    return Struct_1(min(arg_1.xxz, vec3<i32>(firstTrailingBit(29404i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1.x, arg_1.x), _wgslsmith_add_i32(1i, -34742i)), u_input.d)), var_0.x, ~1u, firstTrailingBit(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.yx, vec2<u32>(var_0.x, var_0.x)), vec2<u32>(var_0.x, u_input.c.x), vec2<u32>(55415u, 1u))), ~arg_1.wy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!func_1(u_input.e.x, u_input.a.wx, ~4294967295u, true), -abs(vec4<i32>(select(u_input.d, 31936i, false), _wgslsmith_mult_i32(-1i, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.d, u_input.d), vec4<i32>(-2147483647i, -32700i, 1i, u_input.d)), u_input.b)));
    var var_1 = vec2<bool>(231f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(132f)), _wgslsmith_f_op_f32(f32(-1f) * -1448f), true))), _wgslsmith_div_i32(-_wgslsmith_mod_i32(6219i, u_input.d), _wgslsmith_add_i32(-1i, 0i << (0u % 32u))) < abs(~(var_0.e.x | u_input.d)));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-788f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1486f * -1000f))))))));
    let var_3 = vec4<u32>(~(~reverseBits(~u_input.a.x)), _wgslsmith_add_u32(_wgslsmith_add_u32(0u | u_input.a.x, ~var_0.d.x), reverseBits(1u)), var_0.d.x, var_0.c);
    var var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(~(~u_input.b), var_0.e.x, -var_0.e.x, var_0.a.x));
}

