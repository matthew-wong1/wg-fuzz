struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 15>;

var<private> global3: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_1(vec2<u32>(u_input.b, 63357u), (arg_2.x | true) | true, u_input.c.x, u_input.b, _wgslsmith_mult_i32(select(-_wgslsmith_clamp_i32(1i, -31741i, global0.e), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -84483i, u_input.a.x, -2147483647i), vec4<i32>(global1.c, 1i, global0.c, -15466i)), _wgslsmith_div_i32(global1.e, -2147483647i)), true), 3866i));
    global2 = array<Struct_1, 15>();
    var var_1 = ~(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 1u, 1u, var_0.a.x)), vec4<u32>(3351u, u_input.b, reverseBits(6429u), 0u)));
    var_1 = select(min(max(abs(vec4<u32>(43389u, global0.d, global1.d, global0.d) ^ vec4<u32>(u_input.b, 1366u, 32590u, 0u)), vec4<u32>(reverseBits(var_0.a.x), ~4294967295u, 103408u, _wgslsmith_add_u32(13049u, u_input.b))), reverseBits(~(~vec4<u32>(var_1.x, 30871u, 0u, 0u)))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.a.x, global1.d, 19426u, u_input.b)), ~vec4<u32>(9244u, 25806u, _wgslsmith_dot_vec3_u32(var_1.xwy, var_1.xxw), var_0.d | 0u)), select(select(!select(vec4<bool>(global1.b, arg_2.x, true, false), vec4<bool>(false, global0.b, var_0.b, arg_1), true), !(!vec4<bool>(arg_2.x, true, false, arg_1)), !global1.b), !(!vec4<bool>(true, true, arg_1, arg_2.x)), any(vec3<bool>(true, true, true))));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2423i), u_input.c), -2147483647i), _wgslsmith_div_i32(~(-2147483647i), -u_input.c.x), 42558i, -11309i), vec4<i32>(_wgslsmith_mod_i32(26993i ^ u_input.c.x, reverseBits(0i)), abs(-2147483647i & var_0.c), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, global1.c, -9840i, 0i), reverseBits(vec4<i32>(u_input.a.x, 6983i, -2147483647i, -2147483647i))), ~0i)), i32(-1i) * -countOneBits(var_0.e), -(global1.e << (select(global0.d, 38992u, arg_2.x || var_0.b) % 32u)));
    return 18323u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(firstLeadingBit(~(~select(global0.a, vec2<u32>(global0.a.x, 4957u), global1.b))), vec2<u32>(23202u, ~(~select(global0.d, global0.a.x, global0.b))));
    let var_1 = _wgslsmith_sub_u32(~_wgslsmith_div_u32(func_3(arg_2.x, any(vec3<bool>(global1.b, global0.b, true)), vec2<bool>(true, global0.b)), u_input.b), _wgslsmith_div_u32(55855u, countOneBits(global0.d)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~_wgslsmith_add_u32(firstLeadingBit(var_0.x) >> (~var_0.x % 32u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(50298u, global0.d, var_0.x), global0.a.x))), 15u)];
    var var_3 = global2[_wgslsmith_index_u32(countOneBits(~(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -353f), global0.a.x <= var_1, select(vec2<bool>(true, var_2.b), vec2<bool>(global0.b, true), true)))), 15u)];
    let var_4 = var_1;
    return Struct_1(global0.a, true, select(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.xz, min(vec2<i32>(global1.e, global0.e), vec2<i32>(u_input.c.x, 2147483647i))), abs(vec2<i32>(-2147483647i, var_3.e))), true | (~global1.d > 1u)), global1.d, var_3.e);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = max(i32(-1i) * -1i, 51144i);
    global1 = func_2(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f * -915f))), -752f, 201f), ~firstTrailingBit((vec4<i32>(-16529i, global1.c, 39749i, 1i) ^ vec4<i32>(2147483647i, -1i, -2147483647i, arg_1.x)) | _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, u_input.a.x, u_input.a.x), vec4<i32>(var_0, -2147483647i, -2147483647i, arg_1.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -1259f), _wgslsmith_f_op_f32(trunc(1062f)), 196f));
    global0 = global2[_wgslsmith_index_u32(abs(global1.a.x), 15u)];
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, -337f, -381f, -1000f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(101f, 1000f, 1000f, -504f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1375f), 1257f, _wgslsmith_f_op_f32(round(246f)))))), ~vec4<i32>(-11464i, u_input.c.x, -31579i, u_input.a.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-219f - 567f), -1068f, _wgslsmith_f_op_f32(abs(106f))))))));
    let var_2 = Struct_1(reverseBits(global0.a), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-787f, 236f, 254f, 394f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1828f, 177f, -885f, 705f), vec4<f32>(-1639f, -802f, 485f, -721f), vec4<bool>(global1.b, global1.b, false, true))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(715f, -642f, 1005f, -1010f))))), ~_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(15257i, u_input.c.x, global1.c, u_input.a.x)), vec4<i32>(-2147483647i, var_1.c, -41167i, arg_1.x) << (vec4<u32>(1631u, 10461u, 1650u, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(868f, -135f, -1022f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1146f, 910f))))))).b, 10955i, ~max(global0.a.x << (0u % 32u), ~arg_0) >> (global1.d % 32u), -_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(36879i, arg_1.x)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(min(~select(vec3<u32>(0u, global1.d, u_input.b) | vec3<u32>(1u, global1.d, 52147u), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.d, 6814u, 40855u), vec3<u32>(4294967295u, u_input.b, 4294967295u)), true), vec3<u32>(_wgslsmith_clamp_u32(reverseBits(1u), _wgslsmith_div_u32(98568u, global0.d), global0.d), firstTrailingBit(_wgslsmith_add_u32(global0.d, global1.d)), u_input.b)), vec3<u32>(5427u, ~(u_input.b << (u_input.b % 32u)), ~firstLeadingBit(~global1.d)));
    var var_1 = Struct_1(~(vec2<u32>(~29944u, _wgslsmith_mult_u32(global0.a.x, global0.a.x)) >> (global0.a % vec2<u32>(32u))), global0.b, global1.e, ~(~_wgslsmith_sub_u32(~4294967295u, u_input.b)), -_wgslsmith_sub_i32(u_input.c.x, -2147483647i));
    let var_2 = false;
    global3 = !(any(vec2<bool>(false, true)) | false);
    global3 = func_4(func_1(u_input.b, vec3<i32>(firstTrailingBit(0i), abs(u_input.c.x), ~u_input.c.x)), global2[_wgslsmith_index_u32(u_input.b, 15u)], select(vec2<bool>(!all(vec4<bool>(var_2, true, true, global1.b)), all(vec3<bool>(true, false, false))), !select(select(vec2<bool>(true, true), vec2<bool>(global0.b, global1.b), vec2<bool>(true, var_1.b)), select(vec2<bool>(false, false), vec2<bool>(global1.b, false), true), vec2<bool>(true, true)), func_1(~(~var_1.a.x), reverseBits(vec3<i32>(0i, u_input.c.x, -18751i))).b), global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.a, global1.a), var_0.yy)), 15u)]);
    let var_3 = 6256i >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.d, var_1.d), vec2<u32>(var_1.a.x, ~20573u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

