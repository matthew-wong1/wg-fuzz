struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_2(~_wgslsmith_sub_vec2_u32(select(reverseBits(vec2<u32>(0u, 4294967295u)), max(vec2<u32>(35587u, 751u), vec2<u32>(105501u, 0u)), vec2<bool>(true, true)), ~vec2<u32>(1u, 1u)), arg_0);
    var var_1 = Struct_2(firstLeadingBit(_wgslsmith_div_vec2_u32(var_0.a & min(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(var_0.a.x, var_0.a.x)), vec2<u32>(1u, 17961u) | (var_0.a & vec2<u32>(var_0.a.x, var_0.a.x)))), arg_1);
    var_1 = var_0;
    let var_2 = !select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)), vec4<bool>(any(vec2<bool>(false, false)), select(false, true, true), true, false), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true))), vec4<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), any(vec2<bool>(true, false)), !(var_0.a.x > var_0.a.x)), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(true, all(vec2<bool>(true, true)), true), all(vec2<bool>(false, true)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))));
    let var_3 = arg_0.b;
    return vec3<f32>(_wgslsmith_f_op_f32(min(-581f, 533f)), -889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(219f))) - 1225f));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<i32>) -> bool {
    var var_0 = vec3<f32>(-788f, -1318f, _wgslsmith_f_op_f32(f32(-1f) * -896f));
    var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-1i, arg_2.x)), ~vec2<i32>(arg_2.x, -1i), arg_2), arg_2), Struct_1(arg_2, countOneBits(arg_2)), arg_2.x));
    var var_1 = Struct_1(-vec2<i32>(-arg_2.x, reverseBits(u_input.a | arg_2.x)), _wgslsmith_add_vec2_i32(arg_2, reverseBits(vec2<i32>(-2147483647i, -7886i >> (1u % 32u)))));
    var var_2 = vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, var_1.b.x), _wgslsmith_div_i32(var_1.b.x, u_input.a)) >> (abs(4294967295u) % 32u), var_1.b.x, 0i);
    var_2 = ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(min(1i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-22488i, -1i, var_2.x, arg_2.x), vec4<i32>(var_1.b.x, -1550i, var_2.x, u_input.a)), 44466i), vec3<i32>(43286i, -21335i, var_2.x) & _wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, -1i, -2147483647i), vec3<i32>(2147483647i, -10875i, -2147483647i))));
    return any(select(vec4<bool>(!(true | arg_0), ~844u < _wgslsmith_clamp_u32(1u, 1u, 4294967295u), arg_0, arg_0), vec4<bool>(!select(arg_0, arg_0, arg_0), true, arg_0, true), !(!(!vec4<bool>(arg_0, false, true, false)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = true;
    var var_1 = arg_1.b;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-arg_1.b));
    var_2 = Struct_4(_wgslsmith_div_f32(arg_1.d, var_2.a));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1434f))));
    return arg_1;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_4(vec3<bool>(!func_2(true, vec3<f32>(arg_0.a, -301f, -909f), vec2<i32>(u_input.a, u_input.a)), false, max(~arg_1.a.x, 20127u) < firstLeadingBit(arg_1.a.x)), Struct_3(Struct_1(vec2<i32>(-27831i, arg_1.b.b.x), _wgslsmith_mult_vec2_i32(arg_2, ~vec2<i32>(arg_1.b.b.x, arg_1.b.a.x))), arg_0.a, Struct_1(arg_1.b.a, arg_1.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), _wgslsmith_f_op_f32(sign(-610f)), arg_1.a.x != 1u))), arg_1.b));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a, var_0.b))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, var_0.b), vec2<f32>(-1000f, -1798f)))))));
    var var_3 = _wgslsmith_mod_vec2_i32(min(vec2<i32>(u_input.a, arg_2.x), -vec2<i32>(arg_2.x, firstTrailingBit(2954i))), func_4(vec3<bool>(any(vec2<bool>(false, true)), arg_1.a.x < 14685u, true), var_0).e.a ^ arg_1.b.b);
    var_3 = _wgslsmith_div_vec2_i32(arg_1.b.b, reverseBits(arg_2));
    return func_4(vec3<bool>(any(vec2<bool>(true, true)) & all(vec3<bool>(true, true, true)), true, false), Struct_3(var_1.e, 1125f, var_1.a, 734f, func_4(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_4(vec3<bool>(true, true, true), var_1)).c)).a;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(arg_0.e.a & _wgslsmith_sub_vec2_i32(arg_2.zx, vec2<i32>(countOneBits(u_input.a), _wgslsmith_div_i32(-6946i, 1i))), vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(arg_2), arg_2), firstTrailingBit(u_input.a)) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)));
    let var_1 = ~(reverseBits(~vec3<u32>(4294967295u, 4294967295u, 17177u)) | min(vec3<u32>(7244u, 52216u, countOneBits(1u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(13407u, 1u, 1u), vec3<u32>(4294967295u, 0u, 67555u)), ~1u, 1u)));
    var var_2 = Struct_2(var_1.yy, Struct_1(select(arg_2.yw, arg_2.ww, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(arg_2.zwz, ~arg_2.xww))));
    var_2 = Struct_2(countOneBits(vec2<u32>(0u, ~0u)), func_4(vec3<bool>(_wgslsmith_div_f32(959f, arg_0.d) > arg_3.a, true, true), Struct_3(func_1(Struct_4(arg_0.d), Struct_2(var_2.a, var_0), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-2147483647i, u_input.a))), -167f, Struct_1(var_0.b, var_0.b), -561f, func_4(vec3<bool>(true, true, true), func_4(vec3<bool>(false, true, true), arg_0)).e)).e);
    let var_3 = var_1.x;
    return Struct_1(vec2<i32>(0i, firstLeadingBit(u_input.a)) << (var_1.xy % vec2<u32>(32u)), vec2<i32>((1i ^ u_input.a) | (abs(-1i) >> (_wgslsmith_clamp_u32(var_1.x, 10670u, 95005u) % 32u)), 0i));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = select(1u, 73378u, true) >= 9035u;
    var_0 = all(select(vec2<bool>(arg_3.b.x != 2147483647i, arg_1.x && false), select(!vec2<bool>(arg_1.x, arg_1.x), !arg_1, vec2<bool>(arg_1.x, arg_1.x)), !(arg_1.x || false))) == false;
    var var_1 = arg_1.x & !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) + arg_2) <= arg_2);
    let var_2 = vec4<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a.x, u_input.a, u_input.a, 65508i) ^ vec4<i32>(1i, arg_3.b.x, -2147483647i, -17831i), min(vec4<i32>(1i, arg_3.b.x, arg_3.a.x, arg_3.b.x), vec4<i32>(arg_0.b.b.x, u_input.a, -2147483647i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(5713i, u_input.a, 2147483647i, 1i), vec4<i32>(u_input.a, u_input.a, -65049i, u_input.a))), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(14163i, arg_3.b.x, 0i, 1i), vec4<i32>(arg_0.b.b.x, arg_0.b.b.x, u_input.a, arg_3.b.x), vec4<i32>(arg_3.b.x, -258i, u_input.a, 1i)))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(12334i, arg_3.b.x, -2147483647i, u_input.a)) & (vec4<i32>(-1i, 48398i, 5663i, -12641i) ^ vec4<i32>(2147483647i, 1i, -4479i, arg_3.a.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_3.b.x, 74165i, 5439i), vec4<i32>(arg_0.b.b.x, 1i, 2147483647i, u_input.a)), abs(vec4<i32>(2147483647i, u_input.a, 0i, arg_0.b.a.x)), firstLeadingBit(vec4<i32>(u_input.a, arg_0.b.a.x, arg_3.a.x, 0i))))), _wgslsmith_dot_vec2_i32(max(arg_3.b, firstTrailingBit(arg_0.b.a) | ~arg_0.b.a), func_5(func_4(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, false, true), vec3<bool>(arg_1.x, arg_1.x, false)), func_4(vec3<bool>(true, arg_1.x, arg_1.x), Struct_3(arg_3, -401f, Struct_1(arg_0.b.a, vec2<i32>(arg_3.a.x, 0i)), -579f, Struct_1(vec2<i32>(arg_0.b.a.x, arg_3.a.x), vec2<i32>(arg_3.b.x, u_input.a))))), arg_0.b.b.x, _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_3.b.x, -9673i, -1i) & vec4<i32>(arg_0.b.b.x, arg_0.b.a.x, -1i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 23347i, 19804i, arg_0.b.a.x), vec4<i32>(-2147483647i, u_input.a, u_input.a, arg_0.b.a.x))), Struct_4(_wgslsmith_f_op_f32(arg_2 + -535f))).a));
    let var_3 = Struct_1(vec2<i32>(~select(-6273i, u_input.a, arg_1.x), countOneBits(_wgslsmith_mult_i32(-1i, arg_3.b.x) & ~var_2.x)), abs(func_1(Struct_4(arg_2), Struct_2(arg_0.a, Struct_1(vec2<i32>(81137i, arg_3.b.x), arg_3.a)), arg_3.a).a << (vec2<u32>(3444u, firstTrailingBit(32764u)) % vec2<u32>(32u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 24048i;
    let var_1 = Struct_1(vec2<i32>(-21074i << (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 16064u), vec2<u32>(1u, 1u)) % 32u), 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-54666i, -43571i), vec2<i32>(u_input.a, u_input.a), false), ~vec2<i32>(-55988i, -38782i))) & min(vec2<i32>(u_input.a, 1i), vec2<i32>(-5006i | u_input.a, -1i)));
    var var_2 = func_6(Struct_2(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(~120098u, _wgslsmith_mult_u32(33854u, 21177u))), func_5(Struct_3(func_1(Struct_4(-434f), Struct_2(vec2<u32>(8664u, 70989u), Struct_1(vec2<i32>(4475i, var_1.b.x), vec2<i32>(var_0, var_1.a.x))), var_1.a), -177f, func_1(Struct_4(-588f), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec2<i32>(var_1.b.x, var_1.b.x), vec2<i32>(var_1.a.x, 64563i))), vec2<i32>(-49721i, var_1.a.x)), 292f, var_1), 0i, vec4<i32>(u_input.a << (56020u % 32u), 1i, ~var_1.a.x, _wgslsmith_clamp_i32(-43968i, var_1.b.x, 2147483647i)), Struct_4(_wgslsmith_f_op_f32(sign(-1011f))))), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1353f, _wgslsmith_f_op_f32(f32(-1f) * -358f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-336f * 498f), _wgslsmith_f_op_f32(253f * 637f)))), func_4(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), false), Struct_3(func_5(Struct_3(var_1, -1000f, var_1, -223f, Struct_1(var_1.b, vec2<i32>(-15125i, u_input.a))), 44783i, max(vec4<i32>(6549i, var_0, -1i, -8762i), vec4<i32>(-2147483647i, 0i, u_input.a, 2147483647i)), Struct_4(-348f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-167f, -1191f))), func_1(Struct_4(558f), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(var_1.a, vec2<i32>(u_input.a, u_input.a))), max(vec2<i32>(var_1.a.x, var_0), var_1.a)), _wgslsmith_f_op_f32(-103f + _wgslsmith_f_op_f32(f32(-1f) * -224f)), func_5(Struct_3(var_1, -860f, Struct_1(var_1.b, var_1.a), 1345f, Struct_1(vec2<i32>(0i, var_0), vec2<i32>(var_1.a.x, 1i))), 2147483647i, vec4<i32>(var_1.a.x, 28142i, 12907i, -2147483647i) ^ vec4<i32>(46207i, 86727i, 0i, var_0), Struct_4(593f)))).c);
    var var_3 = vec2<bool>(all(vec2<bool>(!all(vec3<bool>(true, false, false)), true)), true);
    var_2 = func_6(func_6(func_6(func_6(Struct_2(var_2.a, Struct_1(vec2<i32>(21347i, 24424i), vec2<i32>(var_0, var_0))), !vec2<bool>(true, var_3.x), _wgslsmith_f_op_f32(1413f + -1855f), Struct_1(vec2<i32>(-33449i, 24285i), var_1.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, var_3.x), vec2<bool>(var_3.x, true), vec2<bool>(false, var_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -234f))), var_1), !vec2<bool>(true, any(vec3<bool>(true, var_3.x, var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-293f * _wgslsmith_f_op_f32(step(-291f, -1000f))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_2.b.a, vec2<i32>(var_2.b.b.x, var_1.b.x)), var_2.b, -var_0)).x), var_2.b), vec2<bool>(select(var_3.x, var_3.x, var_3.x), var_3.x), 1419f, func_5(Struct_3(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-10303i, var_1.a.x), vec2<i32>(u_input.a, var_2.b.a.x)), _wgslsmith_sub_vec2_i32(var_2.b.b, vec2<i32>(-2147483647i, 2147483647i))), _wgslsmith_f_op_f32(-178f + -1369f), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-224f, -1034f)), _wgslsmith_div_f32(121f, 759f)), Struct_1(_wgslsmith_div_vec2_i32(var_2.b.a, vec2<i32>(u_input.a, 2147483647i)), abs(var_2.b.a))), -var_0, _wgslsmith_div_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2147483647i, var_1.b.x, -20604i), vec4<i32>(-18460i, 1i, 37448i, var_2.b.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, 8128i, var_2.b.a.x), vec4<i32>(-2147483647i, 10541i, var_1.b.x, var_1.a.x))), ~(-vec4<i32>(-56693i, var_1.a.x, u_input.a, -1i))), Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(f32(-1f) * -680f), var_3.x)))));
    let var_4 = -2147483647i;
    var_3 = vec2<bool>(any(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, var_3.x, var_3.x, false)))), !(!var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(337f, ~firstTrailingBit(vec4<u32>(var_2.a.x, 4294967295u, _wgslsmith_add_u32(var_2.a.x, 4294967295u), 4294967295u)));
}

