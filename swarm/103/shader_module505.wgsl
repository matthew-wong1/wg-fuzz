struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(21333i, vec2<f32>(-769f, -606f)), Struct_2(19487i, vec2<f32>(669f, 135f)), Struct_2(-1i, vec2<f32>(-420f, 579f)), Struct_2(2147483647i, vec2<f32>(537f, -1602f)), Struct_2(2147483647i, vec2<f32>(1037f, 835f)), Struct_2(i32(-2147483648), vec2<f32>(-1849f, -270f)), Struct_2(-1i, vec2<f32>(-257f, -1000f)), Struct_2(1i, vec2<f32>(-1127f, -1788f)), Struct_2(i32(-2147483648), vec2<f32>(1747f, -1000f)), Struct_2(0i, vec2<f32>(164f, -2037f)), Struct_2(-10723i, vec2<f32>(-1206f, 242f)), Struct_2(0i, vec2<f32>(-1000f, -1050f)), Struct_2(i32(-2147483648), vec2<f32>(-1295f, 338f)), Struct_2(-1i, vec2<f32>(-172f, 496f)), Struct_2(12655i, vec2<f32>(-603f, -1213f)), Struct_2(-661i, vec2<f32>(249f, -730f)), Struct_2(1i, vec2<f32>(-660f, -2035f)), Struct_2(-33619i, vec2<f32>(-1009f, 1610f)), Struct_2(-28002i, vec2<f32>(-1897f, 195f)), Struct_2(1i, vec2<f32>(781f, 558f)), Struct_2(6622i, vec2<f32>(-615f, -1284f)), Struct_2(43587i, vec2<f32>(-904f, 756f)), Struct_2(i32(-2147483648), vec2<f32>(724f, -1439f)), Struct_2(79797i, vec2<f32>(1323f, 1135f)), Struct_2(1i, vec2<f32>(800f, -436f)), Struct_2(-37504i, vec2<f32>(-1802f, -475f)), Struct_2(i32(-2147483648), vec2<f32>(184f, 1819f)), Struct_2(-39919i, vec2<f32>(-651f, 556f)), Struct_2(49291i, vec2<f32>(-253f, -1000f)), Struct_2(i32(-2147483648), vec2<f32>(-462f, -138f)), Struct_2(-1i, vec2<f32>(1019f, -980f)));

var<private> global1: array<vec2<bool>, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_3(abs(vec4<u32>(33751u, reverseBits(u_input.a.x >> (4294967295u % 32u)), 1u, 86840u)), Struct_1(min(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 15320i, 20004i, 18621i), vec4<i32>(25375i, 1i, u_input.b, 2147483647i)), vec4<i32>(2147483647i, -3182i, 2147483647i, 1i) >> (~u_input.a % vec4<u32>(32u))), vec2<i32>(19497i ^ -u_input.b, 1i), !(!global1[_wgslsmith_index_u32(47447u >> (u_input.a.x % 32u), 29u)]), _wgslsmith_f_op_f32(min(1058f, 1000f)), abs(u_input.b) | u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-795f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-767f * 332f) + -126f), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))))), 547f));
    var var_1 = vec3<bool>(any(!select(select(vec3<bool>(false, false, var_0.b.c.x), vec3<bool>(var_0.b.c.x, true, true), vec3<bool>(true, var_0.b.c.x, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x), vec3<bool>(var_0.b.c.x, var_0.b.c.x, false), vec3<bool>(var_0.b.c.x, true, true)))), all(vec2<bool>(all(vec4<bool>(false, true, true, false)) == var_0.b.c.x, var_0.b.c.x & (var_0.b.c.x || var_0.b.c.x))), false);
    var_0 = Struct_3(_wgslsmith_mult_vec4_u32(select(~var_0.a, countOneBits(vec4<u32>(4294967295u, 797u, var_0.a.x, 0u)) ^ ~vec4<u32>(var_0.a.x, 0u, u_input.a.x, 1u), !vec4<bool>(false, var_0.b.c.x, var_1.x, true)), (vec4<u32>(var_0.a.x, var_0.a.x, 26584u, 63707u) ^ var_0.a) << (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, 4294967295u, var_0.a.x), u_input.a), abs(var_0.a)) % vec4<u32>(32u))), Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 20468i), -vec2<i32>(-46759i, var_0.b.e)), u_input.b, 1i, 4877i), vec2<i32>(_wgslsmith_sub_i32(var_0.b.e, _wgslsmith_add_i32(u_input.b, -12698i)), -_wgslsmith_clamp_i32(1i, 0i, -2147483647i)), var_1.xz, var_0.b.d, var_0.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -621f));
    var var_2 = vec3<bool>(true, var_0.b.c.x, (_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-var_0.c)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.d * -1299f)))) & var_0.b.c.x);
    var_2 = vec3<bool>(any(select(vec2<bool>(any(vec4<bool>(false, var_2.x, var_2.x, false)), !var_1.x), var_0.b.c, vec2<bool>(true, true & var_0.b.c.x))), true, all(select(vec3<bool>(true, all(vec2<bool>(var_1.x, var_0.b.c.x)), any(vec3<bool>(var_1.x, var_0.b.c.x, var_2.x))), vec3<bool>(true, true, var_1.x), false)));
    return vec2<i32>(~var_0.b.b.x, ~(-_wgslsmith_mult_i32(1i, -2147483647i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<u32> {
    global1 = array<vec2<bool>, 29>();
    var var_0 = Struct_3(abs(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, arg_1.x), vec4<u32>(0u, arg_1.x, 60848u, u_input.a.x)), arg_1.x >> (u_input.a.x % 32u), countOneBits(0u), u_input.a.x << (31089u % 32u))), Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), arg_0.a.yz, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * -113f) * _wgslsmith_f_op_f32(-617f * arg_0.d))), abs(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1306f, -519f)));
    let var_1 = Struct_3(firstTrailingBit(u_input.a | u_input.a), Struct_1(vec4<i32>(countOneBits(var_0.b.b.x), u_input.b, -_wgslsmith_mult_i32(0i, var_0.b.a.x), u_input.b), var_0.b.a.wz << (_wgslsmith_add_vec2_u32(u_input.a.xy, ~u_input.a.wy) % vec2<u32>(32u)), vec2<bool>(false, (var_0.b.c.x | true) & (false && var_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, var_0.c)), -56804i), arg_0.d);
    var_0 = Struct_3(firstLeadingBit(abs(abs(vec4<u32>(u_input.a.x, var_0.a.x, 34856u, 83779u))) ^ var_0.a), var_1.b, _wgslsmith_f_op_f32(-1000f - arg_0.d));
    let var_2 = true;
    return vec4<u32>(85474u, firstLeadingBit(~(~_wgslsmith_dot_vec3_u32(arg_1, arg_1))), _wgslsmith_mult_u32(3814u, _wgslsmith_mult_u32(u_input.a.x, ~(u_input.a.x & 83006u))), 0u);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(func_4(Struct_1(vec4<i32>(-u_input.b, select(u_input.b, u_input.b, true), u_input.b, ~22493i), -func_3(), select(select(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], vec2<bool>(false, false), global1[_wgslsmith_index_u32(4294967295u, 29u)]), select(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], vec2<bool>(true, true), global1[_wgslsmith_index_u32(0u, 29u)]), true), -1265f, -2147483647i), vec3<u32>(u_input.a.x, 1u, 24681u)), Struct_1(firstLeadingBit(select(vec4<i32>(u_input.b, 1i, 2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -33439i), true) & (vec4<i32>(93637i, 86553i, u_input.b, 33098i) & vec4<i32>(u_input.b, u_input.b, 0i, u_input.b))), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, 59983i)), select(reverseBits(vec2<i32>(-52565i, u_input.b)), -vec2<i32>(-1i, u_input.b), true)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(935f, -1473f))))), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_1 = var_0;
    let var_2 = var_0.b.b & (firstTrailingBit((var_1.b.a.xy ^ var_0.b.a.zz) >> (_wgslsmith_div_vec2_u32(var_1.a.ww, vec2<u32>(var_0.a.x, 13628u)) % vec2<u32>(32u))) ^ vec2<i32>(var_1.b.e | (u_input.b ^ u_input.b), 0i));
    let var_3 = ~abs(~6592u);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d)), true)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(1064f - var_1.c)))))), _wgslsmith_f_op_f32(trunc(1f)));
    return Struct_3(select(var_0.a, select(select(var_1.a << (vec4<u32>(var_1.a.x, 9238u, var_3, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(var_3, 71048u, 38717u, 79497u), select(vec4<bool>(true, true, true, var_1.b.c.x), vec4<bool>(var_0.b.c.x, true, var_0.b.c.x, var_0.b.c.x), false)), ~(~var_0.a), all(select(vec4<bool>(true, false, var_0.b.c.x, true), vec4<bool>(false, var_0.b.c.x, var_1.b.c.x, var_0.b.c.x), vec4<bool>(false, true, var_1.b.c.x, false)))), !(_wgslsmith_div_i32(var_0.b.e, u_input.b) < -u_input.b)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d)));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global1 = array<vec2<bool>, 29>();
    let var_0 = func_2();
    var var_1 = Struct_2(firstTrailingBit(_wgslsmith_dot_vec2_i32(func_3(), _wgslsmith_div_vec2_i32(-var_0.b.a.yy, -vec2<i32>(var_0.b.b.x, var_0.b.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 832f)), vec2<f32>(-730f, 749f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.d, var_0.b.d) + vec2<f32>(-1437f, var_0.b.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.b.d)))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), 872f)));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return var_0.c >= _wgslsmith_f_op_f32(max(var_0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.d)) - _wgslsmith_f_op_f32(trunc(var_0.c))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_2, 31>();
    var var_0 = Struct_2(abs(func_3().x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1389f, _wgslsmith_f_op_f32(f32(-1f) * -644f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-1125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(110f + 679f)))));
    global1 = array<vec2<bool>, 29>();
    let var_1 = Struct_1(reverseBits(firstLeadingBit(vec4<i32>(func_2().b.a.x, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(-2147483647i, 2147483647i, var_0.a)), -var_0.a))), select(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_0.a, u_input.b)), ~(~vec2<i32>(var_0.a, -19071i))), -select(vec2<i32>(1i, 1i), vec2<i32>(u_input.b, var_0.a) >> (u_input.a.ww % vec2<u32>(32u)), true), vec2<bool>(arg_3, all(!vec2<bool>(false, arg_3)))), global1[_wgslsmith_index_u32(countOneBits(~arg_1.x) | (~abs(arg_1.x) << ((select(83682u, 0u, arg_3) & 16002u) % 32u)), 29u)], var_0.b.x, abs(32878i));
    let var_2 = vec3<i32>(var_0.a, -1i, var_1.e);
    return Struct_1(_wgslsmith_mod_vec4_i32(-reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_1.a.x, 14701i, -52010i), var_1.a, var_1.a)), var_1.a), _wgslsmith_mult_vec2_i32(var_2.yx, _wgslsmith_div_vec2_i32(max(-vec2<i32>(43896i, 1i), var_1.b >> (vec2<u32>(arg_1.x, 0u) % vec2<u32>(32u))), -var_2.xx)), vec2<bool>(var_1.c.x, false), var_0.b.x, select(~var_0.a, i32(-1i) * -(~(-1i)), true));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(668f, arg_0.d), vec2<f32>(arg_0.d, -723f), arg_0.c.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-127f, -1000f) - vec2<f32>(2451f, 614f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1821f, -431f) * vec2<f32>(-346f, arg_0.d))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(877f, -1018f, -2418f, -1235f))), u_input.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1226f, -1408f, -354f, -934f) + vec4<f32>(-1723f, -1705f, -1000f, 1191f)))), func_1(vec4<bool>(false, false, false, false))), true | select(true, true, any(vec4<bool>(true, false, true, false))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(func_2().a.wx, vec2<u32>(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), firstTrailingBit(34609u))), vec2<u32>(1u << (func_4(func_2().b, reverseBits(u_input.a.wyy)).x % 32u), 86724u)), 31u)];
    var_1 = Struct_2(~select(~(~(-2147483647i)), ~(~u_input.b), _wgslsmith_sub_i32(-2147483647i, 0i) <= u_input.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(244f + var_0.x)));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 31u)];
    let var_3 = 4294967295u;
    var var_4 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_0.x, -1502f, -186f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, -1018f, var_1.b.x, var_2.b.x))), vec4<f32>(var_0.x, var_2.b.x, _wgslsmith_f_op_f32(-var_1.b.x), func_2().c))), u_input.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2029f, 1662f, var_1.b.x, var_1.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(525f, 266f, 451f, var_2.b.x), vec4<f32>(-1144f, -1721f, -208f, -1000f), vec4<bool>(true, true, false, true))))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) * _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_6(Struct_1(var_4.a, var_4.a.yz, global1[_wgslsmith_index_u32(var_3, 29u)], 1898f, 1i), var_4.c.x)).x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_2.b.x, var_4.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), var_4.d), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(269f, func_2().c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1100f) + _wgslsmith_div_f32(var_0.x, -837f))))));
}

