struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(10287u, 4294967295u, 13449u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    global0 = ~max(vec3<u32>(10187u, 0u, u_input.b), ~(~countOneBits(vec3<u32>(u_input.b, 36803u, u_input.b))));
    let var_0 = arg_1.a;
    let var_1 = reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0.a, arg_0.c.a.x, arg_0.c.a.x), select(abs(vec3<i32>(arg_0.c.a.x, 0i, -4455i)), vec3<i32>(-2147483647i, 5923i, arg_0.a) | vec3<i32>(-10606i, arg_0.a, -932i), select(vec3<bool>(true, true, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, var_0), arg_1.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(26025i, 2147483647i, -1i, -18644i), vec4<i32>(arg_0.a, 1i, -17169i, 1i)), arg_0.c.a.x, _wgslsmith_add_i32(1i, arg_0.a))), vec3<i32>(38208i ^ reverseBits(arg_0.c.a.x), _wgslsmith_clamp_i32(~(-23666i), arg_0.a, abs(-11006i)), abs(-13014i))));
    var var_2 = reverseBits(~(var_1.x ^ var_1.x));
    var_2 = firstTrailingBit(arg_0.c.a.x) >> ((u_input.b << (32098u % 32u)) % 32u);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x >> (((4294967295u << (u_input.b % 32u)) & max(16845u, global0.x)) % 32u), 37355i), _wgslsmith_sub_vec3_i32(countOneBits(var_1), -var_1 >> (min(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(u_input.b, 14734u, global0.x)) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(2147483647i, -51226i, var_1.x)), select(var_1, var_1, arg_0.d.a)), firstLeadingBit(var_1)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> vec2<u32> {
    let var_0 = vec2<bool>(true | !(_wgslsmith_clamp_u32(u_input.a, 1u, 19293u) != arg_0.a.x), any(vec4<bool>(!all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true)) | all(vec2<bool>(true, false)), 24374u >= ~arg_0.a.x, true)));
    var var_1 = select(-_wgslsmith_add_i32(-arg_1.x << (max(arg_2.x, 51657u) % 32u), func_3(Struct_4(arg_1.x, Struct_3(var_0.x), arg_0.b, Struct_3(var_0.x), Struct_3(true)), Struct_3(false))), ~arg_3.x, var_0.x);
    var var_2 = vec2<i32>(arg_1.x, 0i << ((1u << (~global0.x % 32u)) % 32u));
    let var_3 = arg_0;
    var var_4 = Struct_1(arg_3.xy, arg_0.b.b);
    return var_3.a.yz;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_4 {
    global0 = ~abs(~(vec3<u32>(26175u, u_input.b, global0.x) << (~vec3<u32>(global0.x, u_input.a, 42635u) % vec3<u32>(32u))));
    global0 = vec3<u32>(_wgslsmith_mod_u32(4294967295u, ~u_input.a), 4294967295u, ~1u);
    global0 = ~firstLeadingBit(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.x, global0.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(global0.x, 34489u, 5827u)))));
    var var_0 = _wgslsmith_add_vec2_u32(~max(~select(vec2<u32>(0u, 1u), vec2<u32>(51428u, u_input.a), arg_0.a), global0.zy), func_4(Struct_2(~(~vec3<u32>(0u, 1u, global0.x)), Struct_1(vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-492f, -439f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-385f)), _wgslsmith_f_op_f32(ceil(178f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f) - -153f)), vec3<i32>(firstTrailingBit(37008i), ~max(1i, -1i), _wgslsmith_div_i32(~2147483647i, 1i)), vec4<u32>(~(~4294967295u), 4294967295u, 45570u, 37776u), vec3<i32>(func_3(Struct_4(-1i, arg_2, Struct_1(vec2<i32>(2147483647i, -16441i), vec2<f32>(906f, -860f)), arg_2, Struct_3(true)), arg_0), reverseBits(min(-81724i, -7678i)), -115468i)));
    let var_1 = ~(~reverseBits(~select(vec2<i32>(13024i, -37487i), vec2<i32>(-1i, -34513i), false)));
    return Struct_4(~(-(i32(-1i) * -4119i)), Struct_3(true), Struct_1(vec2<i32>(_wgslsmith_mult_i32(var_1.x, 21351i), -9884i) | var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, 683f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1212f, 123f)), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, true), vec2<bool>(arg_1.x, arg_2.a)))))), Struct_3(select(all(vec3<bool>(arg_2.a, arg_2.a, arg_0.a)) != true, arg_2.a, true)), arg_2);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    let var_0 = 1i;
    let var_1 = u_input.b;
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_mod_u32(u_input.b, 4294967295u), var_1), vec3<u32>(~1u, ~var_1, u_input.b)), vec3<u32>(var_1, 0u ^ max(var_1, 30980u), global0.x)), func_4(Struct_2(vec3<u32>(u_input.b, u_input.a, global0.x), func_2(Struct_3(arg_0.x), vec2<bool>(arg_2.e.a, arg_0.x), arg_2.b).c, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_3.b.x)), vec3<i32>(_wgslsmith_add_i32(arg_3.a.x, arg_1.a.x), ~7828i, arg_2.a), vec4<u32>(~31208u, global0.x, ~49633u, ~3840u), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -38754i, var_0), vec3<i32>(arg_2.c.a.x, arg_3.a.x, 1i)), arg_1.a.x, 29851i)).x | 1u, select(25935u & u_input.a, var_1, false));
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(arg_2.c.a.x, arg_3.a.x), _wgslsmith_div_i32(_wgslsmith_div_i32(~arg_1.a.x, 2147483647i), min(~(arg_2.a >> (1u % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a, arg_3.a.x, var_0, arg_1.a.x), vec4<i32>(arg_1.a.x, 2147483647i, 0i, arg_1.a.x)), -vec4<i32>(6282i, arg_2.a, 31035i, var_0)))), 23950i);
    return 2128f;
}

fn func_6(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_4(-firstTrailingBit(_wgslsmith_sub_i32(i32(-1i) * -7715i, _wgslsmith_sub_i32(-2147483647i, -49145i))), Struct_3(false), Struct_1(~(-select(vec2<i32>(0i, -34718i), vec2<i32>(1i, -2147483647i), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-112f, arg_0), vec2<f32>(1130f, 969f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), Struct_3(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))) | true), Struct_3(select(false, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), any(vec4<bool>(true, true, true, true)))));
    var var_1 = ~func_2(Struct_3(!var_0.d.a), vec2<bool>(func_3(Struct_4(var_0.c.a.x, Struct_3(false), var_0.c, Struct_3(var_0.e.a), Struct_3(var_0.b.a)), var_0.d) >= (var_0.a << (global0.x % 32u)), any(vec3<bool>(true, var_0.d.a, var_0.d.a)) & (arg_0 == -1101f)), Struct_3(u_input.b <= min(1u, global0.x))).a;
    var var_2 = ~var_0.c.a;
    var var_3 = _wgslsmith_sub_vec2_i32(-(~(var_0.c.a & var_0.c.a)), ~(~var_0.c.a));
    var_0 = Struct_4(_wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_sub_i32(-2147483647i, var_2.x), _wgslsmith_mod_i32(firstLeadingBit(2147483647i), _wgslsmith_div_i32(-46171i, var_2.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_2.x, 2147483647i), vec3<i32>(-1i, var_2.x, -33304i)))), Struct_3(false == var_0.b.a), var_0.c, func_2(func_2(func_2(Struct_3(var_0.b.a), vec2<bool>(var_0.d.a, false), func_2(var_0.e, vec2<bool>(true, false), Struct_3(var_0.d.a)).e).e, !select(vec2<bool>(var_0.d.a, var_0.b.a), vec2<bool>(var_0.d.a, false), vec2<bool>(true, var_0.b.a)), Struct_3(true)).e, vec2<bool>(true, true), Struct_3(false)).b, Struct_3(func_2(Struct_3(true), vec2<bool>(true, true), var_0.e).b.a & (var_2.x != var_3.x)));
    return var_0.c;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = global0.xz;
    var var_1 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), Struct_1(vec2<i32>(-1i, -1i), vec2<f32>(1244f, -1000f)), func_2(Struct_3(false), vec2<bool>(true, true), Struct_3(true)), func_2(Struct_3(false), vec2<bool>(false, false), Struct_3(false)).c)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f)), _wgslsmith_f_op_f32(round(-1499f)))));
    var var_2 = 4294967295u;
    var_1 = Struct_1(firstTrailingBit(vec2<i32>(~0i, ~236i) & var_1.a), _wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-756f + var_1.b.x))), 1650f)));
    var_2 = ~_wgslsmith_sub_u32(~arg_0, func_4(Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(45801u, arg_0, 4294967295u), vec3<u32>(var_0.x, u_input.b, u_input.a)), Struct_1(var_1.a, vec2<f32>(1382f, -1402f)), _wgslsmith_f_op_f32(f32(-1f) * -137f), 767f), vec3<i32>(2147483647i, var_1.a.x, var_1.a.x), vec4<u32>(967u, var_0.x, var_0.x, ~global0.x), vec3<i32>(_wgslsmith_add_i32(var_1.a.x, var_1.a.x), -var_1.a.x, 0i << (1u % 32u))).x);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(func_1(global0.x), u_input.b, _wgslsmith_mod_u32(u_input.a, global0.x)), countOneBits(vec3<u32>(u_input.a, 0u, global0.x))));
    var var_0 = func_2(func_2(func_2(func_2(func_2(Struct_3(true), vec2<bool>(true, false), Struct_3(true)).d, vec2<bool>(true, true), func_2(Struct_3(false), vec2<bool>(true, true), Struct_3(false)).b).d, vec2<bool>(true, true), func_2(func_2(Struct_3(true), vec2<bool>(false, true), Struct_3(true)).e, vec2<bool>(true, true), Struct_3(false)).e).e, vec2<bool>(true, !any(vec2<bool>(false, false))), Struct_3(false)).d, select(select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), true), true), func_2(func_2(Struct_3(true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), Struct_3(true)).e, select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, true))), false), func_2(func_2(func_2(Struct_3(true), vec2<bool>(false, true), Struct_3(false)).d, select(vec2<bool>(true, true), vec2<bool>(true, false), true), func_2(Struct_3(false), vec2<bool>(true, true), Struct_3(false)).b).e, select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), func_2(func_2(Struct_3(true), vec2<bool>(true, true), Struct_3(false)).e, vec2<bool>(true, true), Struct_3(false)).d).b).b);
    let var_1 = Struct_4(var_0.a, Struct_3(any(vec3<bool>(var_0.e.a, any(vec2<bool>(true, true)), all(vec2<bool>(var_0.b.a, var_0.e.a))))), func_2(func_2(var_0.e, !select(vec2<bool>(var_0.b.a, true), vec2<bool>(var_0.b.a, false), vec2<bool>(var_0.b.a, var_0.d.a)), var_0.b).b, vec2<bool>(var_0.b.a, !(1000f <= var_0.c.b.x)), Struct_3(all(!vec2<bool>(false, var_0.d.a)))).c, func_2(var_0.d, vec2<bool>(false, any(vec3<bool>(false, true, true))), var_0.b).e, Struct_3(true));
    global0 = ~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(0u, 61902u, 24248u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 1u, 35824u), ~vec3<u32>(0u, u_input.a, u_input.b), vec3<u32>(u_input.a, u_input.b, u_input.a) | vec3<u32>(13203u, 36531u, 4294967295u)), _wgslsmith_div_vec3_u32(max(reverseBits(vec3<u32>(67380u, global0.x, 21488u)), ~vec3<u32>(75166u, 1u, 50253u)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 25524u, 0u), vec3<u32>(0u, 11346u, u_input.b)), ~vec3<u32>(0u, 0u, u_input.b))));
    var var_2 = Struct_2(select(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(21975u, global0.x, 56433u)), vec3<u32>(16556u, 4294967295u, 46179u)), ~(~41381u), _wgslsmith_add_u32(firstTrailingBit(0u), ~global0.x)), firstTrailingBit(~(~vec3<u32>(17169u, 1u, 32794u))), false), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_f_op_f32(-154f - var_0.c.b.x));
    let var_3 = var_2.b.b;
    let var_4 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(4294967295u, u_input.b), u_input.a, 1u), ~(~vec4<u32>(16104u, var_2.a.x, 0u, var_2.a.x))), ~global0.x & 17464u), select(select(-vec4<i32>(-77963i, 81329i, var_2.b.a.x, -38128i), vec4<i32>(-var_0.a, -var_2.b.a.x, _wgslsmith_sub_i32(-9297i, var_1.a), func_2(var_0.e, vec2<bool>(var_1.e.a, false), var_1.d).a), select(vec4<bool>(var_1.b.a, var_0.b.a, false, var_0.b.a), vec4<bool>(var_1.e.a, var_0.b.a, true, var_0.e.a), vec4<bool>(var_0.e.a, true, true, var_1.d.a))), countOneBits(vec4<i32>(-1i) * -vec4<i32>(0i, var_2.b.a.x, var_1.c.a.x, var_2.b.a.x)), select(select(vec4<bool>(false, var_0.e.a, false, false), vec4<bool>(false, var_1.b.a, var_0.e.a, var_1.d.a), any(vec4<bool>(var_0.e.a, false, var_0.e.a, false))), select(vec4<bool>(var_0.e.a, var_1.b.a, var_1.b.a, var_0.d.a), vec4<bool>(var_1.b.a, var_1.e.a, var_1.b.a, var_0.b.a), var_1.d.a), -1074f > var_1.c.b.x)));
}

