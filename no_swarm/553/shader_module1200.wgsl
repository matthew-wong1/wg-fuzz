struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = abs(~(~select(max(1i, 1i), arg_2.b.x, true)));
    global0 = arg_2;
    let var_1 = Struct_1(global0.d | (vec3<i32>(i32(-1i) * -9247i, u_input.a.x, global0.d.x) | global0.a), u_input.b, 15070i, arg_2.d << (~((u_input.c.xzw | arg_1.yyw) >> (~vec3<u32>(37840u, arg_1.x, u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = 1i ^ (~_wgslsmith_div_i32(8204i, 2147483647i) & ~(u_input.a.x | _wgslsmith_add_i32(-25797i, var_1.c)));
    var_0 = 79083i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = arg_0.a.yy;
    global0 = arg_0;
    global0 = arg_0;
    return (~vec3<i32>(global0.a.x, 1i, firstTrailingBit(26860i)) | (_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b.x, 22019i, -882i), -vec3<i32>(44282i, 1i, -37431i)) | vec3<i32>(-2147483647i, -2147483647i, -2147483647i))) >> (_wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(u_input.c.x, u_input.c.x, 7964u))), vec3<u32>(~countOneBits(6799u), u_input.c.x, _wgslsmith_mod_u32(4294967295u, ~u_input.c.x))) % vec3<u32>(32u));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    global0 = Struct_1(func_4(Struct_1(global0.d, abs(-vec2<i32>(-2147483647i, 1i)), -6705i, select(-global0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(global0.c, -39015i, u_input.a.x), vec3<i32>(1i, -3786i, -12709i)), true)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1050f, _wgslsmith_f_op_f32(func_3(-213f, u_input.c, Struct_1(vec3<i32>(-23370i, u_input.b.x, arg_0), vec2<i32>(-1i, -1i), 49737i, vec3<i32>(1i, arg_0, global0.a.x))))) + vec2<f32>(-297f, _wgslsmith_f_op_f32(-241f + 646f)))), vec2<i32>(max(0i, _wgslsmith_mult_i32(arg_0, arg_0)), abs(i32(-1i) * -29496i)) | global0.a.xz, ~_wgslsmith_sub_i32(1i, global0.c), vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.d, global0.a), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-32210i, -1i, arg_0, 0i), vec4<i32>(-1i, u_input.a.x, arg_0, u_input.b.x)))), arg_0));
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(global0.d, global0.d >> (u_input.c.xxz % vec3<u32>(32u))) << (firstLeadingBit(abs(reverseBits(vec3<u32>(1u, 23285u, 42834u)))) % vec3<u32>(32u)), u_input.a, reverseBits(firstLeadingBit(-45251i)), vec3<i32>(-firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, arg_0))), -_wgslsmith_sub_i32(arg_0, max(18928i, arg_0)), ~select(~arg_0, ~0i, true)));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(max(~arg_0, u_input.a.x), firstLeadingBit(abs(50888i)), (arg_0 << (103261u % 32u)) >> (~u_input.c.x % 32u))), 0i, -2487i, u_input.a.x);
    global0 = Struct_1(vec3<i32>(var_0.d.x, var_1.x, -2147483647i), func_4(Struct_1(var_1.www, vec2<i32>(-11808i, _wgslsmith_mult_i32(global0.d.x, 0i)), abs(u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(5382i, global0.b.x, -2147483647i), vec3<i32>(-6799i, arg_0, var_0.b.x)) >> ((vec3<u32>(47702u, 4294967295u, u_input.c.x) ^ vec3<u32>(1u, u_input.c.x, u_input.c.x)) % vec3<u32>(32u))), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-733f, 1000f) + vec2<f32>(408f, 1018f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(971f, -1165f) + vec2<f32>(-372f, 684f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(158f, -1323f), vec2<f32>(-2061f, 1532f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(572f, -1031f)))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))).zy, -(~countOneBits(-54226i)), _wgslsmith_add_vec3_i32(abs(~firstLeadingBit(global0.d)), select(min(vec3<i32>(56549i, arg_0, -40583i), var_1.zxz), vec3<i32>(-47873i, i32(-1i) * -12134i, arg_0), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true))));
    let var_2 = Struct_1(-vec3<i32>(~1i, _wgslsmith_add_i32(var_1.x, global0.d.x), countOneBits(global0.d.x)) | _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.a, abs(var_0.d)), vec3<i32>(u_input.a.x, i32(-1i) * -66912i, -var_0.c)), select(~select(vec2<i32>(var_1.x, 2147483647i), var_1.zz << (u_input.c.zy % vec2<u32>(32u)), true), var_0.b, any(vec3<bool>(true, 1i > var_1.x, true))), _wgslsmith_mult_i32(arg_0, u_input.a.x), vec3<i32>(firstLeadingBit(~var_1.x), -global0.a.x, 37519i));
    return countOneBits(vec2<i32>(global0.c & arg_0, reverseBits(firstLeadingBit(_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(0i, var_1.x, -2147483647i, u_input.b.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(~(-vec2<i32>(-2147483647i, -34642i))) | firstLeadingBit(-(-vec2<i32>(global0.c, 0i) >> (vec2<u32>(8221u, u_input.c.x) % vec2<u32>(32u))));
    let var_1 = arg_1;
    var var_2 = arg_2.b.x;
    var var_3 = abs(30240i);
    var var_4 = arg_0;
    return Struct_1(~arg_2.a, ~firstLeadingBit(u_input.b) | ~vec2<i32>(arg_1.c, arg_2.b.x), var_0.x, _wgslsmith_div_vec3_i32(vec3<i32>(-26179i, -var_4.b.x, -arg_1.d.x), _wgslsmith_clamp_vec3_i32(~arg_2.d, _wgslsmith_div_vec3_i32(arg_1.d, vec3<i32>(var_1.b.x, -2147483647i, u_input.b.x)), global0.d)) >> (u_input.c.zwx % vec3<u32>(32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(Struct_1(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, u_input.b.x, 17736i) << ((vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) << (u_input.c.xxx % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(global0.a), global0.a), vec2<i32>(global0.d.x, _wgslsmith_clamp_i32(u_input.a.x << (u_input.c.x % 32u), _wgslsmith_mult_i32(2147483647i, global0.a.x), _wgslsmith_div_i32(-1i, 1840i))), u_input.b.x, select(global0.d, -global0.d, true) >> (abs(u_input.c.wxy) % vec3<u32>(32u))), Struct_1(global0.a, firstTrailingBit(func_2(-2147483647i)), _wgslsmith_div_i32(func_2(u_input.b.x).x, global0.a.x), countOneBits(global0.d << (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))), Struct_1(vec3<i32>(firstLeadingBit(-u_input.a.x), countOneBits(1i), 5024i), ~vec2<i32>(u_input.b.x, i32(-1i) * -3902i), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.a.x, u_input.b.x), ~u_input.b.x)), ~(-global0.d)));
    global0 = func_5(Struct_1(var_0.d, vec2<i32>(-23808i, -u_input.b.x), abs(_wgslsmith_div_i32(var_0.b.x, 1i) ^ func_5(Struct_1(global0.d, vec2<i32>(-1i, 0i), u_input.a.x, vec3<i32>(var_0.d.x, 0i, 1i)), Struct_1(global0.d, vec2<i32>(var_0.a.x, var_0.b.x), var_0.d.x, vec3<i32>(global0.b.x, 18978i, var_0.a.x)), Struct_1(var_0.d, vec2<i32>(7764i, var_0.a.x), -36323i, vec3<i32>(global0.b.x, u_input.b.x, 0i))).c), vec3<i32>(-7156i << (select(4294967295u, 26591u, false) % 32u), -_wgslsmith_sub_i32(global0.a.x, 44551i), select(i32(-1i) * -37349i, ~2147483647i, false))), func_5(Struct_1(select(_wgslsmith_div_vec3_i32(global0.d, vec3<i32>(var_0.c, 2147483647i, global0.d.x)), vec3<i32>(u_input.b.x, -32554i, u_input.a.x), true), vec2<i32>(var_0.c, _wgslsmith_sub_i32(2147483647i, 1i)), i32(-1i) * -var_0.c, -var_0.d), Struct_1(-select(vec3<i32>(u_input.a.x, -21571i, var_0.a.x), var_0.a, vec3<bool>(true, true, false)), u_input.b, _wgslsmith_clamp_i32(u_input.a.x, countOneBits(global0.c), _wgslsmith_dot_vec2_i32(vec2<i32>(40568i, 0i), var_0.d.yx)), _wgslsmith_mod_vec3_i32(global0.a, var_0.d)), Struct_1(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, global0.c, global0.d.x), func_4(Struct_1(global0.a, vec2<i32>(u_input.b.x, 2147483647i), var_0.b.x, var_0.a), false, vec2<f32>(-580f, 855f))), vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.b.x), _wgslsmith_mod_i32(52867i, -27223i) | var_0.d.x, vec3<i32>(_wgslsmith_sub_i32(0i, global0.d.x), u_input.a.x, -2147483647i))), Struct_1(firstLeadingBit(~vec3<i32>(-12186i, global0.a.x, -1i)), ~(~(vec2<i32>(-3054i, u_input.b.x) | vec2<i32>(var_0.c, u_input.b.x))), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.b.x, global0.b.x, 3333i, -15072i), ~vec4<i32>(u_input.b.x, var_0.d.x, global0.d.x, global0.a.x)), min(vec4<i32>(var_0.c, 1i, 1i, -2650i), -vec4<i32>(var_0.d.x, u_input.a.x, 37665i, u_input.b.x))), _wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.b.x, global0.a.x, -918i), _wgslsmith_clamp_vec3_i32(func_5(Struct_1(global0.d, var_0.a.yz, var_0.c, global0.a), Struct_1(global0.a, vec2<i32>(-35022i, u_input.a.x), 0i, vec3<i32>(48426i, 0i, -2496i)), Struct_1(global0.d, vec2<i32>(1i, -1i), 1i, vec3<i32>(-21835i, -11786i, -6799i))).a, var_0.d, global0.a))));
    var var_1 = vec3<bool>(true, true, ((~35150u == _wgslsmith_mod_u32(9281u, u_input.c.x)) & any(vec3<bool>(false, false, true))) | !(_wgslsmith_div_i32(var_0.c, global0.c) >= ~global0.a.x));
    var_1 = select(select(!select(!vec3<bool>(false, var_1.x, true), !vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(var_1.x, false, var_1.x)), !select(vec3<bool>(var_1.x, false, true), !vec3<bool>(var_1.x, var_1.x, true), true), !var_1.x), !vec3<bool>(any(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, true), vec3<bool>(false, false, var_1.x))), false, var_1.x), var_1.x);
    global0 = func_5(func_5(func_5(func_5(func_5(Struct_1(var_0.d, global0.a.xx, u_input.a.x, var_0.a), Struct_1(global0.a, var_0.d.xy, u_input.b.x, vec3<i32>(u_input.b.x, -37108i, -2147483647i)), Struct_1(global0.a, var_0.a.xy, -33833i, global0.a)), func_5(Struct_1(var_0.a, vec2<i32>(u_input.b.x, 15085i), u_input.b.x, vec3<i32>(global0.d.x, -19397i, global0.b.x)), Struct_1(global0.a, global0.a.yy, 2147483647i, var_0.d), Struct_1(vec3<i32>(u_input.a.x, 1i, u_input.b.x), global0.d.yz, u_input.b.x, var_0.a)), func_5(Struct_1(var_0.d, u_input.b, -28918i, global0.d), Struct_1(var_0.a, vec2<i32>(-4385i, -42275i), var_0.b.x, vec3<i32>(var_0.b.x, global0.d.x, 1i)), Struct_1(global0.a, vec2<i32>(13527i, var_0.d.x), 10934i, var_0.d))), func_5(Struct_1(global0.d, u_input.a, var_0.c, vec3<i32>(global0.c, u_input.a.x, global0.c)), func_5(Struct_1(vec3<i32>(var_0.a.x, u_input.b.x, 1i), var_0.d.yy, -1036i, global0.d), Struct_1(var_0.d, vec2<i32>(-2147483647i, global0.a.x), var_0.d.x, var_0.d), Struct_1(vec3<i32>(var_0.d.x, 25930i, -2147483647i), vec2<i32>(global0.d.x, u_input.a.x), u_input.a.x, vec3<i32>(var_0.a.x, -32726i, -58057i))), Struct_1(vec3<i32>(var_0.b.x, global0.a.x, global0.b.x), vec2<i32>(var_0.c, u_input.b.x), u_input.a.x, vec3<i32>(35930i, u_input.b.x, u_input.a.x))), func_5(Struct_1(global0.d, u_input.b, var_0.d.x, var_0.a), Struct_1(vec3<i32>(-2147483647i, -59622i, 5332i), u_input.b, -49895i, global0.d), Struct_1(vec3<i32>(u_input.a.x, var_0.d.x, u_input.a.x), var_0.a.yy, var_0.a.x, vec3<i32>(var_0.d.x, var_0.b.x, -16520i)))), func_5(Struct_1(-global0.d, countOneBits(u_input.a), 30773i | var_0.b.x, vec3<i32>(global0.a.x, -38677i, 46308i)), func_5(Struct_1(vec3<i32>(u_input.b.x, -19201i, global0.c), vec2<i32>(var_0.d.x, 0i), 1i, var_0.a), func_5(Struct_1(global0.a, global0.d.yz, 2147483647i, vec3<i32>(10487i, -1i, global0.d.x)), Struct_1(vec3<i32>(20536i, 1i, 2147483647i), var_0.b, -8099i, vec3<i32>(u_input.a.x, var_0.d.x, var_0.c)), Struct_1(global0.d, vec2<i32>(global0.c, u_input.b.x), u_input.b.x, vec3<i32>(2147483647i, global0.b.x, 1i))), func_5(Struct_1(vec3<i32>(global0.c, var_0.a.x, 1i), u_input.b, u_input.a.x, global0.d), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -17663i), vec2<i32>(global0.a.x, -2771i), u_input.a.x, vec3<i32>(var_0.d.x, 18790i, 0i)), Struct_1(vec3<i32>(var_0.d.x, var_0.d.x, var_0.b.x), vec2<i32>(-28503i, u_input.a.x), -1i, var_0.d))), func_5(func_5(Struct_1(vec3<i32>(global0.b.x, 22426i, u_input.a.x), var_0.a.zx, u_input.b.x, vec3<i32>(-2147483647i, global0.d.x, -2147483647i)), Struct_1(var_0.a, vec2<i32>(2147483647i, var_0.d.x), 17100i, vec3<i32>(-2147483647i, 19634i, 19162i)), Struct_1(vec3<i32>(global0.d.x, -1559i, u_input.a.x), vec2<i32>(10922i, -33367i), -8986i, vec3<i32>(-1i, var_0.d.x, 1i))), Struct_1(var_0.a, vec2<i32>(var_0.b.x, var_0.c), var_0.b.x, global0.d), func_5(Struct_1(vec3<i32>(-2147483647i, -1i, -467i), vec2<i32>(-15130i, global0.d.x), u_input.b.x, global0.d), Struct_1(var_0.d, u_input.b, -27893i, var_0.a), Struct_1(vec3<i32>(global0.c, 0i, var_0.c), vec2<i32>(-1i, -8875i), u_input.b.x, global0.d)))), Struct_1(_wgslsmith_sub_vec3_i32(global0.d, vec3<i32>(2147483647i, u_input.a.x, global0.a.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.d.x, u_input.a.x), u_input.b) << (select(u_input.c.yw, u_input.c.wz, var_1.yx) % vec2<u32>(32u)), var_0.b.x, reverseBits(-global0.a))), Struct_1(var_0.d, var_0.a.yy & _wgslsmith_add_vec2_i32(var_0.d.zz ^ vec2<i32>(var_0.c, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.d.x, -32143i), vec2<i32>(7726i, global0.a.x))), _wgslsmith_mod_i32(global0.a.x, abs(-1i)), vec3<i32>(-1i, (i32(-1i) * -2147483647i) & max(-13540i, var_0.d.x), min(firstLeadingBit(global0.a.x), global0.c))), func_5(func_5(Struct_1(~vec3<i32>(1i, 36644i, u_input.b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(105i, -10977i), global0.a.yz), -9498i, var_0.d), Struct_1(~global0.a, firstTrailingBit(u_input.a), -1976i, var_0.a), func_5(func_5(Struct_1(global0.d, var_0.b, global0.d.x, var_0.d), Struct_1(var_0.d, var_0.d.xz, var_0.c, vec3<i32>(79107i, 28021i, var_0.c)), Struct_1(var_0.d, u_input.b, global0.a.x, vec3<i32>(u_input.a.x, var_0.d.x, u_input.b.x))), Struct_1(global0.d, vec2<i32>(global0.a.x, var_0.a.x), u_input.b.x, global0.a), func_5(Struct_1(vec3<i32>(1i, var_0.c, -31046i), u_input.a, 0i, global0.d), Struct_1(vec3<i32>(-12209i, global0.c, -16146i), u_input.a, u_input.b.x, vec3<i32>(var_0.c, -31726i, var_0.a.x)), Struct_1(var_0.a, vec2<i32>(var_0.b.x, -28368i), -862i, vec3<i32>(6965i, -27560i, u_input.a.x))))), func_5(Struct_1(global0.d, _wgslsmith_mod_vec2_i32(vec2<i32>(-15132i, 8660i), var_0.d.zz), u_input.a.x, global0.a), func_5(Struct_1(global0.a, global0.b, var_0.a.x, vec3<i32>(u_input.b.x, u_input.b.x, var_0.c)), Struct_1(var_0.a, vec2<i32>(global0.b.x, global0.a.x), 1i, var_0.a), func_5(Struct_1(var_0.a, var_0.d.xx, -36867i, global0.d), Struct_1(var_0.d, vec2<i32>(54335i, 0i), var_0.c, vec3<i32>(global0.a.x, 19966i, -2147483647i)), Struct_1(vec3<i32>(-1i, -1i, u_input.a.x), vec2<i32>(u_input.b.x, 1i), 10130i, var_0.d))), func_5(func_5(Struct_1(global0.a, var_0.b, global0.b.x, global0.d), Struct_1(global0.a, u_input.a, var_0.b.x, vec3<i32>(-7726i, var_0.c, 237i)), Struct_1(vec3<i32>(u_input.a.x, u_input.b.x, var_0.c), vec2<i32>(u_input.b.x, global0.b.x), 0i, var_0.a)), func_5(Struct_1(vec3<i32>(u_input.a.x, -44438i, 2147483647i), var_0.b, -2147483647i, vec3<i32>(global0.d.x, u_input.b.x, 1i)), Struct_1(global0.d, vec2<i32>(u_input.b.x, -33949i), u_input.b.x, var_0.d), Struct_1(vec3<i32>(-22403i, global0.d.x, 12116i), vec2<i32>(21949i, global0.b.x), -37519i, vec3<i32>(-1i, var_0.a.x, var_0.c))), Struct_1(vec3<i32>(-31968i, u_input.b.x, global0.d.x), var_0.a.zz, 1i, var_0.d))), Struct_1(_wgslsmith_clamp_vec3_i32(global0.d & global0.d, vec3<i32>(0i, 2147483647i, 1i), _wgslsmith_mod_vec3_i32(global0.d, var_0.a)), ~(-vec2<i32>(global0.a.x, var_0.b.x)), 0i, var_0.d)));
    return Struct_1(vec3<i32>(func_2(1i).x, -(-10762i ^ _wgslsmith_sub_i32(-1i, global0.a.x)), countOneBits(-global0.b.x)), global0.d.zz, _wgslsmith_sub_i32(-62720i, ~(-36285i)), vec3<i32>(~global0.d.x << (~firstLeadingBit(28804u) % 32u), firstTrailingBit(var_0.d.x), 0i >> (_wgslsmith_mod_u32(~14496u, _wgslsmith_sub_u32(u_input.c.x, 1u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = vec4<bool>(true, true, false, true);
    global0 = func_1();
    let var_1 = vec4<i32>(u_input.a.x, 49724i, -func_4(func_1(), all(var_0.yw), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-713f, 722f)))).x << (~1u % 32u), _wgslsmith_mult_i32(1i, 0i));
    var var_2 = u_input.c.xz;
    let var_3 = vec2<i32>(func_1().b.x, func_1().d.x);
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, -2147483647i << (u_input.c.x % 32u)) >> (var_2.x % 32u), max(select(63679i, var_1.x, var_0.x) & firstLeadingBit(-34656i), -63509i)), ~vec3<i32>(_wgslsmith_sub_i32(var_3.x, 18363i), ~var_1.x, -15962i << (u_input.c.x % 32u)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1079f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -564f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-100f + -1192f), select(vec4<u32>(u_input.c.x, var_2.x, var_2.x, 10342u), u_input.c, var_0), Struct_1(vec3<i32>(global0.d.x, -25752i, -6022i), u_input.b, u_input.a.x, var_1.yxw))), (var_1.x >> (u_input.c.x % 32u)) > global0.a.x))));
}

