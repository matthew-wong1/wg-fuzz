struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5, arg_3: u32) -> f32 {
    global0 = _wgslsmith_add_i32(~(~(-2147483647i)), u_input.a & u_input.a);
    global0 = _wgslsmith_dot_vec2_i32(~firstTrailingBit(arg_0.b.yz), vec2<i32>(-arg_0.c.x, 1i)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-u_input.a, _wgslsmith_mod_i32(25608i, arg_0.c.x)), -40103i, abs(arg_0.e)), vec3<i32>(-_wgslsmith_dot_vec4_i32(arg_2.b, vec4<i32>(-70874i, -1i, -2147483647i, -9517i)), _wgslsmith_sub_i32(-2147483647i, arg_0.b.x << (u_input.b.x % 32u)), _wgslsmith_div_i32(i32(-1i) * -1i, reverseBits(u_input.a))));
    let var_0 = Struct_1(abs(~vec4<u32>(1u, arg_0.a.x, ~54226u, ~arg_3)), reverseBits(~(arg_2.c << (u_input.b.xzz % vec3<u32>(32u)))), vec4<i32>(arg_2.c.x, -arg_2.b.x, u_input.a >> (1u % 32u), countOneBits(-1i) & arg_0.e), any(!(!(!arg_2.a.a))), arg_0.e);
    global0 = 2147483647i;
    var var_1 = 4294967295u;
    return arg_2.d.x;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> i32 {
    global0 = ~(-1i);
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(arg_0.a, select(~vec3<u32>(54010u, u_input.b.x, u_input.b.x), arg_0.a, !vec3<bool>(arg_0.d.x, true, true))) | ~(~arg_0.a.x << (arg_0.a.x % 32u)), Struct_1(vec4<u32>(~(~1u), _wgslsmith_div_u32(~arg_0.a.x, min(4294967295u, 0u)), 4294967295u, ~0u), -arg_0.e, ~(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, 12021i, u_input.a), vec4<i32>(u_input.a, -51583i, 2147483647i, arg_0.c)) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c, arg_0.c, arg_0.e.x, arg_0.c), vec4<i32>(-2147483647i, u_input.a, arg_0.e.x, u_input.a))), false, 1i), Struct_1(select(vec4<u32>(u_input.b.x, 0u, 4852u, u_input.b.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(65706u, 25175u, 1u, arg_0.a.x), vec4<u32>(49500u, 16527u, arg_0.a.x, 0u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, u_input.b.x, 27133u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u))), select(arg_0.d.x, arg_1 < -486f, arg_0.d.x && false)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.e.x, 1i, 1i), _wgslsmith_clamp_vec3_i32(arg_0.e, vec3<i32>(37041i, u_input.a, arg_0.e.x), arg_0.e)), abs(vec3<i32>(32929i, u_input.a, 8092i))), ~(~firstLeadingBit(vec4<i32>(arg_0.c, u_input.a, 0i, -2147483647i))), select(true, false || (true || arg_0.d.x), arg_0.d.x), u_input.a));
    var var_1 = all(arg_0.d);
    global0 = arg_0.e.x;
    var_1 = all(arg_0.d);
    return u_input.a;
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global0 = func_4(Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.wxx, vec3<u32>(0u, 16398u, u_input.b.x)), u_input.b.zwx) | ~(vec3<u32>(u_input.b.x, 105555u, u_input.b.x) << (u_input.b.yww % vec3<u32>(32u))), arg_0, 1i, vec4<bool>(true, true, true, select(false, true, false) && true), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-52726i, u_input.a), 0i, -u_input.a), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(7108i, 1i, 33435i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b, vec3<i32>(u_input.a, -37687i, u_input.a), vec4<i32>(u_input.a, u_input.a, 29391i, 1i), false, u_input.a), 11610u, Struct_5(Struct_4(vec4<bool>(false, true, false, false)), vec4<i32>(-12155i, 0i, -71994i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<f32>(arg_0, arg_0, 552f)), 0u | u_input.b.x))))));
    global0 = -2147483647i;
    let var_0 = Struct_3(41877u, Struct_1(u_input.b, select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, -2147483647i)), u_input.a, u_input.a), ~(-vec3<i32>(0i, -1i, -17351i)), select(true, all(vec4<bool>(true, false, true, false)), arg_0 > -288f)), max(max(vec4<i32>(1i, 24259i, -2147483647i, -2147483647i), vec4<i32>(u_input.a, -2147483647i, u_input.a, -41531i)) ^ reverseBits(vec4<i32>(-44796i, u_input.a, -1i, 1i)), -(~vec4<i32>(u_input.a, u_input.a, u_input.a, 21500i))), _wgslsmith_sub_i32(27923i >> (u_input.b.x % 32u), -28602i) != u_input.a, ~1i ^ u_input.a), Struct_1(min(abs(~u_input.b), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), reverseBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 2147483647i, u_input.a), reverseBits(vec3<i32>(u_input.a, -2147483647i, u_input.a)))), abs(~vec4<i32>(-26910i, u_input.a, -10665i, 18121i) << (_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), true, _wgslsmith_sub_i32(~_wgslsmith_mult_i32(u_input.a, u_input.a), -5320i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(651f, arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1100f + -2428f), -468f)))), _wgslsmith_f_op_f32(2533f + arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1577f, 1000f))));
    let var_2 = -var_0.c.e;
    return var_0.b.c;
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec4<i32> {
    global0 = _wgslsmith_clamp_i32(-10203i, select(select(1i, 1i, any(arg_1.a.zzy)) << (u_input.b.x % 32u), u_input.a, any(arg_1.a)), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-13453i, u_input.a, u_input.a, u_input.a)), vec4<i32>(-17326i, u_input.a, 1i, u_input.a) >> (u_input.b % vec4<u32>(32u)))), -(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -20330i, 2147483647i, u_input.a), vec4<i32>(-24333i, u_input.a, u_input.a, u_input.a)) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -21936i, -2147483647i, 3327i), vec4<i32>(-2147483647i, 47073i, u_input.a, -15448i)))));
    var var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), -vec3<i32>(32526i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, u_input.a), u_input.a), 0i));
    let var_1 = u_input.b.ywy;
    var var_2 = any(arg_1.a.yz);
    global0 = var_0.x;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_sub_i32(1i, var_0.x), _wgslsmith_mult_i32(abs(_wgslsmith_div_i32(u_input.a, var_0.x)), ~(~(-44124i))), u_input.a | (-u_input.a >> (20751u % 32u))), select(abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 1i, 44618i, 9964i), vec4<i32>(53505i, -2147483647i, u_input.a, -1i)) & func_2(1000f)), select(vec4<i32>(-1i) * -vec4<i32>(-15784i, 19724i, var_0.x, -32057i), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.a, u_input.a, var_0.x), vec4<i32>(45053i, u_input.a, var_0.x, var_0.x)), ~vec4<i32>(u_input.a, 2147483647i, var_0.x, -12237i)), select(vec4<bool>(arg_0, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_0), select(vec4<bool>(arg_0, arg_0, arg_1.a.x, false), vec4<bool>(true, arg_1.a.x, false, arg_1.a.x), vec4<bool>(false, true, arg_0, arg_0)))), arg_1.a.x || ((var_1.x > 1u) | all(vec4<bool>(arg_0, false, true, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(-(~_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, 0i), -19803i)), -(~max(select(-2147483647i, -1i, false), u_input.a)));
    let var_0 = vec4<i32>(2147483647i, u_input.a, abs(u_input.a), ~u_input.a);
    let var_1 = Struct_3(u_input.b.x, Struct_1(u_input.b & ~vec4<u32>(1u, 0u, u_input.b.x, 0u), var_0.zyz, ~var_0, (u_input.a >= var_0.x) | false, min(_wgslsmith_clamp_i32(~var_0.x, u_input.a, 4675i), 2147483647i)), Struct_1(countOneBits(u_input.b), abs(select(vec3<i32>(552i, -8939i, 1i), vec3<i32>(-4501i, 22073i, u_input.a), vec3<bool>(false, true, false))) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_0.x, var_0.x), var_0.xyw), var_0.xyy), select(_wgslsmith_mult_vec4_i32(func_1(false, Struct_4(vec4<bool>(false, false, true, false))), func_2(-770f)), -select(vec4<i32>(-1i, -30744i, -13151i, 2147483647i), var_0, false), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), var_0.x <= u_input.a)), reverseBits(_wgslsmith_mult_i32(var_0.x, -2147483647i)) >= _wgslsmith_div_i32(i32(-1i) * -1i, u_input.a ^ -24076i), ~0i & u_input.a));
    let var_2 = Struct_5(Struct_4(vec4<bool>((false & var_1.c.d) || any(vec3<bool>(var_1.b.d, var_1.c.d, true)), all(!vec4<bool>(var_1.c.d, false, var_1.c.d, true)), var_1.b.d, 62376u < max(u_input.b.x, var_1.b.a.x))), ~var_0, _wgslsmith_add_vec3_i32(var_1.c.b, var_1.c.c.zxx), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f)), _wgslsmith_f_op_f32(abs(-884f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2612f))) + -1776f), -201f));
    let var_3 = select(-_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.x, i32(-1i) * -16763i, firstTrailingBit(4614i), 1i), (vec4<i32>(-22014i, var_2.c.x, -12045i, -2147483647i) | var_1.c.c) & vec4<i32>(52015i, 2147483647i, -12451i, u_input.a)), var_2.b, var_1.c.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(1u & _wgslsmith_add_u32(69348u, select(var_1.a, 4294967295u, false)), ~(~(var_1.b.a.x & u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1372f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-471f * var_2.d.x)))))), func_1(true, var_2.a).x);
}

