struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec2<i32>(1i, -2648i), vec2<i32>(i32(-2147483648), 22841i), vec4<u32>(0u, 11304u, 65790u, 19471u), vec4<i32>(2147483647i, -27916i, 60228i, 38950i));

var<private> global1: Struct_1 = Struct_1(1i, vec2<i32>(2147483647i, 0i), vec2<i32>(-6622i, 1i), vec4<u32>(4294967295u, 1u, 2158u, 5731u), vec4<i32>(1i, i32(-2147483648), -30779i, -23710i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    global0 = Struct_1(abs(6041i | global0.a), max(vec2<i32>(1i, _wgslsmith_sub_i32(-global0.e.x, select(3247i, global0.b.x, false))), vec2<i32>(u_input.a.x, u_input.a.x)), -(vec2<i32>(-1i, global0.e.x) | countOneBits(-u_input.a.xx)), global1.d, vec4<i32>(_wgslsmith_dot_vec3_i32(min(global0.e.wyz, vec3<i32>(-23520i, u_input.a.x, 1i)), -global0.e.xwy), 53374i, -u_input.a.x, -global0.e.x));
    var var_0 = -175f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1421f) * 237f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2029f), 171f, any(vec2<bool>(true, false))))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 1249f));
    let var_2 = Struct_1(firstTrailingBit(-26588i), global0.b, select(vec2<i32>(-2147483647i, 1i), firstTrailingBit(global0.e.zz), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))))), ~(~_wgslsmith_add_vec4_u32(global1.d, vec4<u32>(global1.d.x, 0u, global1.d.x, global1.d.x))), -(global0.e | _wgslsmith_clamp_vec4_i32(vec4<i32>(2391i, global1.b.x, u_input.a.x, -76049i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, global1.c.x, 0i, 2147483647i), global1.e), global1.e)));
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_div_vec2_i32(firstTrailingBit(~vec2<i32>(global0.b.x, global1.a)), ~vec2<i32>(-36961i, 2147483647i)) & max(min(vec2<i32>(global0.b.x, arg_0.c.x), reverseBits(arg_0.e.yy)), ~global0.c), arg_0.e.yx, vec4<u32>(22363u, _wgslsmith_dot_vec3_u32(~arg_0.d.zzw, _wgslsmith_div_vec3_u32(global1.d.yzz, vec3<u32>(arg_0.d.x, 74247u, arg_0.d.x))) << (select(0u, global1.d.x >> (global0.d.x % 32u), func_3()) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.x, global0.d.x, 4423u, global0.d.x), arg_0.d), global0.d), countOneBits(62136u)), 1u), -vec4<i32>(~(~u_input.a.x), -13046i, i32(-1i) * -258i, ~arg_0.a));
    let var_1 = -global1.c.x;
    var var_2 = Struct_1(2147483647i, -countOneBits(abs(-vec2<i32>(-30864i, var_1))), -_wgslsmith_add_vec2_i32(abs(vec2<i32>(38405i, arg_0.e.x) ^ vec2<i32>(-242i, 7911i)), arg_0.b), global0.d, vec4<i32>(~_wgslsmith_mult_i32(60128i & arg_0.a, ~arg_0.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(27594i, global0.e.x), ~var_0.b.x, abs(global0.e.x)), vec3<i32>(global0.b.x, 2147483647i, arg_0.e.x)), var_0.a, -10739i));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(191f, 130f), vec2<f32>(-178f, -1000f), vec2<bool>(false, false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(425f, 609f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 227f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(652f, 533f) - vec2<f32>(2862f, -1337f)))))));
    var_0 = Struct_1(max(0i, 1i >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.d.x, global0.d.x, 109127u), vec3<u32>(0u, 992u, global0.d.x)), vec3<u32>(u_input.c.x, arg_0.d.x, 0u)) % 32u)), -_wgslsmith_mod_vec2_i32(global1.e.xx, _wgslsmith_clamp_vec2_i32(~var_2.c, -u_input.a.yy, select(var_2.e.yx, vec2<i32>(-2147483647i, -72514i), vec2<bool>(true, false)))), select(vec2<i32>(min(reverseBits(var_0.b.x), min(1i, -2147483647i)), ~(-1i)), ~reverseBits(~vec2<i32>(17772i, var_2.e.x)), vec2<bool>(true, all(vec3<bool>(true, false, true)))), abs(vec4<u32>(0u, ~11137u, 11915u << (0u % 32u), ~49247u) & firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, 29255u, 17450u), var_0.d))), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, 2147483647i, 1i) << (var_2.d % vec4<u32>(32u)), vec4<i32>(371i, -2147483647i, arg_0.c.x, 7471i))));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = ~firstLeadingBit(vec4<u32>(countOneBits(4294967295u), arg_1.d.x, global1.d.x, ~_wgslsmith_sub_u32(16355u, 5652u)));
    return func_2(func_2(Struct_1(3887i & reverseBits(global0.a), -countOneBits(global1.c), vec2<i32>(func_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, global0.b.x), global1.e.yz, vec4<u32>(arg_2, global0.d.x, u_input.c.x, 0u), arg_1.e)).c.x, global1.a), ~vec4<u32>(u_input.c.x, var_0.x, 80467u, arg_2), func_2(Struct_1(global0.a, vec2<i32>(global1.b.x, u_input.a.x), arg_1.c, global0.d, global0.e)).e)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(func_4(326f, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f)), func_2(func_2(arg_2)), firstTrailingBit(4294967295u)), firstTrailingBit(~(~arg_2.d.x))).d.x);
    var var_1 = Struct_1(-35762i, global1.c, ~u_input.a.yz, global0.d, ~(~vec4<i32>(-global1.a, global0.e.x, -global1.b.x, 2147483647i)));
    var_1 = func_2(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -309f), -1088f)), _wgslsmith_f_op_f32(trunc(1555f)))), Struct_1(_wgslsmith_dot_vec4_i32(firstLeadingBit(arg_2.e), vec4<i32>(-2147483647i, arg_2.b.x, var_1.b.x, 0i)), vec2<i32>(0i, 2147483647i >> (arg_2.d.x % 32u)), countOneBits(arg_2.b), arg_2.d, -global0.e | (vec4<i32>(44076i, arg_1, -2147483647i, -44067i) ^ vec4<i32>(1i, global1.c.x, 1i, 1i))), global1.d.x | _wgslsmith_sub_u32(~0u, 12156u & arg_2.d.x)));
    var_0 = _wgslsmith_dot_vec3_u32(global0.d.yzx, vec3<u32>(4434u & global0.d.x, min(~reverseBits(21928u), ~(global1.d.x & global0.d.x)), arg_2.d.x));
    global0 = arg_2;
    return Struct_1(_wgslsmith_add_i32(max(var_1.b.x, ~arg_2.e.x), _wgslsmith_mult_i32(func_2(arg_2).a, arg_1)), var_1.b, _wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(global1.c >> (vec2<u32>(arg_2.d.x, var_1.d.x) % vec2<u32>(32u)), u_input.a.xz)), reverseBits(_wgslsmith_mult_vec2_i32(var_1.b, var_1.b) ^ _wgslsmith_sub_vec2_i32(global1.c, global1.e.wy))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, var_1.d.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.d.x, global1.d.x, var_1.d.x, 21965u), global1.d), abs(select(var_1.d, vec4<u32>(1060u, u_input.b, 45834u, global1.d.x), vec4<bool>(true, arg_0, false, false))), reverseBits(reverseBits(var_1.d))), ~(~(~vec4<u32>(45062u, u_input.b, 73827u, arg_2.d.x)))), vec4<i32>(-63005i, min(~firstLeadingBit(2147483647i), ~(~1i)), u_input.a.x & -(~0i), ~(~(~global0.c.x))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    var var_1 = var_0;
    let var_2 = func_5(!(73446u > arg_0), _wgslsmith_sub_i32(0i, var_1.a) >> (~(firstTrailingBit(arg_3.d.x) | 4671u) % 32u), func_4(_wgslsmith_f_op_f32(max(-501f, arg_2.x)), func_2(Struct_1(~global1.c.x, arg_3.e.yz, -vec2<i32>(1i, var_1.a), _wgslsmith_add_vec4_u32(var_1.d, var_1.d), countOneBits(vec4<i32>(global1.b.x, -32i, global1.a, var_0.c.x)))), _wgslsmith_mult_u32(firstLeadingBit(u_input.b), 20396u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f + 239f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f - arg_2.x)), -289f)), false)));
    var var_4 = _wgslsmith_add_vec4_i32(var_1.e, vec4<i32>(var_0.b.x >> (_wgslsmith_mod_u32(arg_0 ^ arg_0, firstTrailingBit(7052u)) % 32u), func_5(all(!vec3<bool>(true, arg_1.x, true)), _wgslsmith_add_i32(func_4(230f, var_2, 4294967295u).e.x, ~(-48765i)), Struct_1(u_input.a.x, abs(arg_3.c), _wgslsmith_mult_vec2_i32(global0.b, global1.e.yz), ~vec4<u32>(arg_3.d.x, arg_3.d.x, arg_3.d.x, 0u), -global1.e)).a, i32(-1i) * -(i32(-1i) * -47862i), arg_3.e.x));
    return -1i;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -1443f;
    let var_1 = func_2(arg_2);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-231f, _wgslsmith_f_op_f32(1008f + 241f), 1531f, -302f) - vec4<f32>(_wgslsmith_f_op_f32(abs(626f)), -2022f, -130f, 802f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-945f, 2430f, -486f, 1000f))))));
    global0 = Struct_1(-(~2147483647i), func_4(_wgslsmith_f_op_f32(-1679f + 1239f), Struct_1(~global0.b.x, vec2<i32>(arg_2.e.x, i32(-1i) * -15591i), ~reverseBits(u_input.a.zz), func_4(_wgslsmith_f_op_f32(round(366f)), arg_2, 4294967295u).d, vec4<i32>(0i, 10959i, _wgslsmith_add_i32(global0.e.x, arg_2.a), select(19817i, 24351i, false))), _wgslsmith_mult_u32(~(~11999u), ~var_1.d.x | 15692u)).c, abs(min(firstTrailingBit(-global0.b), vec2<i32>(-1i) * -vec2<i32>(-20798i, u_input.a.x))), ~countOneBits(~arg_1.d), -(~func_5(false, 2147483647i, Struct_1(global1.b.x, arg_2.e.yw, vec2<i32>(var_1.b.x, arg_2.a), vec4<u32>(4294967295u, 71160u, arg_1.d.x, u_input.b), var_1.e)).e));
    var_0 = _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(min(var_2.x, var_2.x)));
    return func_2(Struct_1(i32(-1i) * -11791i, -select(vec2<i32>(14067i, arg_1.a) >> (var_1.d.yy % vec2<u32>(32u)), -arg_2.b, vec2<bool>(false, true)), global1.c, ~_wgslsmith_div_vec4_u32(~vec4<u32>(37246u, arg_0.x, 593u, 4294967295u), ~global1.d), min(reverseBits(_wgslsmith_mult_vec4_i32(global0.e, global0.e)), vec4<i32>(~25315i, -1876i, -1i, arg_1.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(_wgslsmith_add_vec3_u32(vec3<u32>(~7131u, min(1u, ~global0.d.x), global0.d.x), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(59264u, u_input.c.x, u_input.c.x), vec3<u32>(1u, global0.d.x, global1.d.x)))), Struct_1(793i, _wgslsmith_mult_vec2_i32(~(vec2<i32>(2147483647i, global1.a) ^ vec2<i32>(31226i, -7857i)), ~vec2<i32>(-45038i, global0.a)), select(vec2<i32>(reverseBits(global1.a), u_input.a.x), -vec2<i32>(-1i, 2147483647i) >> (~vec2<u32>(global1.d.x, u_input.b) % vec2<u32>(32u)), all(vec2<bool>(false, false))), global0.d, vec4<i32>(func_1(global1.d.x, vec4<bool>(false, true, true, false), vec2<f32>(1042f, -258f), Struct_1(u_input.a.x, vec2<i32>(-25999i, -1i), global1.b, vec4<u32>(87372u, 3120u, u_input.b, 35098u), global1.e)) << ((global0.d.x | 1603u) % 32u), -17070i, 4054i, _wgslsmith_mod_i32(global0.c.x, global1.b.x))), Struct_1(abs(global0.e.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1695f, -1650f))), func_4(_wgslsmith_div_f32(-1121f, -137f), Struct_1(-1003i, vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, 0i), global0.d, vec4<i32>(global0.e.x, global0.b.x, global1.b.x, global0.e.x)), global1.d.x), u_input.b).b, -func_4(_wgslsmith_div_f32(-1108f, -100f), Struct_1(39695i, global1.b, vec2<i32>(2147483647i, global1.b.x), global0.d, vec4<i32>(0i, u_input.a.x, -20574i, -1i)), u_input.c.x).c, ~(~vec4<u32>(global0.d.x, u_input.c.x, 0u, 18665u)), vec4<i32>(_wgslsmith_mod_i32(global0.c.x, -59983i), ~global0.c.x, ~0i, 2147483647i) << (global0.d % vec4<u32>(32u))));
    let var_0 = global0.d.wxy;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(292f, 759f, -780f, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1427f, -137f, 1297f, 154f) + vec4<f32>(-352f, 411f, -1168f, -229f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(-658f, 1668f)), _wgslsmith_f_op_f32(164f - 284f), _wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(-1000f * -113f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, -385f, -669f, -572f)) + vec4<f32>(948f, 1207f, -752f, 637f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1231f, -1365f, 530f, 539f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1136f, -208f, -766f, 386f), vec4<f32>(-1573f, -1000f, 826f, 1000f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(432f, -847f, 1657f, 2257f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, 822f, -1604f, -529f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-869f, -951f, -1000f, -513f), vec4<f32>(-826f, 1587f, 306f, 1017f))))))));
    global0 = Struct_1(_wgslsmith_sub_i32(-13649i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(global1.e, vec4<i32>(global0.a, u_input.a.x, global1.e.x, -1i)), select(vec4<i32>(global1.e.x, 39544i, 7896i, -3136i), vec4<i32>(-2147483647i, u_input.a.x, -19760i, u_input.a.x), false)), func_2(func_6(vec3<u32>(33877u, 38308u, var_0.x), Struct_1(u_input.a.x, global1.c, u_input.a.yy, vec4<u32>(var_0.x, 1u, u_input.b, 40903u), global0.e), Struct_1(-2147483647i, vec2<i32>(global1.b.x, 1i), vec2<i32>(13733i, u_input.a.x), global0.d, global0.e))).c.x)), min(~(~vec2<i32>(-1i, global0.c.x)), vec2<i32>(-63040i, 0i)) >> ((~vec2<u32>(u_input.b, 4294967295u) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.x, 79752u), vec2<u32>(u_input.c.x, global0.d.x))) % vec2<u32>(32u)), -global0.b, global0.d, ~vec4<i32>(0i, countOneBits(global0.e.x) & (global1.c.x << (var_0.x % 32u)), 4500i, _wgslsmith_div_i32(global0.a, u_input.a.x & 1586i)));
    let var_2 = global0.d.yyz;
    global1 = func_2(Struct_1(~global1.e.x, vec2<i32>(1i, global0.e.x | (i32(-1i) * -44310i)), ~(~countOneBits(u_input.a.yx)), global0.d, ~(vec4<i32>(u_input.a.x, -41935i, 54160i, -5722i) ^ ~vec4<i32>(-2147483647i, global0.e.x, 2147483647i, 41864i))));
    global1 = Struct_1(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1.c, vec2<i32>(-17898i, 1i)) & global0.e.x, -2147483647i)), abs(vec2<i32>(u_input.a.x, -(u_input.a.x | 0i))), vec2<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(global0.a, 13165i, u_input.a.x), firstLeadingBit(global1.e.yyx)), func_2(Struct_1(1i, vec2<i32>(global1.b.x, global0.b.x), u_input.a.xz, vec4<u32>(0u, 0u, var_0.x, var_2.x), vec4<i32>(global1.a, 1115i, 1i, -2147483647i))).e.xwy | _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 1i), vec3<i32>(global0.b.x, global1.b.x, u_input.a.x))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 23954i), countOneBits(vec2<i32>(-42413i, global0.c.x)))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.d.x, 48369u, 1u, 4294967295u) | vec4<u32>(4294967295u, global1.d.x, 25109u, var_2.x), ~vec4<u32>(18417u, var_2.x, 11122u, global1.d.x))), global0.e | global1.e);
    let var_3 = func_5(true, min(-1i, -abs(_wgslsmith_add_i32(global1.e.x, global0.e.x))), func_4(-1049f, func_6(global0.d.yyw, func_2(func_2(Struct_1(20733i, u_input.a.xx, u_input.a.yx, vec4<u32>(u_input.c.x, u_input.c.x, global0.d.x, 0u), global1.e))), func_5(true, u_input.a.x, func_5(false, global0.c.x, Struct_1(67274i, vec2<i32>(global0.e.x, global0.a), u_input.a.xx, vec4<u32>(u_input.c.x, u_input.c.x, global1.d.x, 4294967295u), global0.e)))), min(max(0u, var_0.x) & _wgslsmith_mult_u32(var_2.x, u_input.b), 43056u)));
    global0 = Struct_1(13843i, _wgslsmith_mod_vec2_i32(global0.b, vec2<i32>(_wgslsmith_mult_i32(-1i, 2147483647i << (0u % 32u)), ~(-u_input.a.x))), global1.b, ~vec4<u32>(var_2.x, 3999u, global0.d.x, ~(~0u)), var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(-11114i, vec2<u32>(global0.d.x, ~8114u << (0u % 32u)), reverseBits(~(~var_3.c.x)));
}

