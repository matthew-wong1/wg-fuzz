struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(~(~2342u), max(min(55423u, u_input.a), _wgslsmith_clamp_u32(1u, 1u, arg_1))), u_input.d.x);
    var_0 = u_input.a;
    var_0 = 1u;
    var_0 = arg_1;
    var_0 = ~27751u;
    return vec3<u32>(21444u, (~44627u >> (_wgslsmith_clamp_u32(arg_1 << (u_input.a % 32u), 49222u, arg_1) % 32u)) & ~(u_input.a & (3563u << (arg_1 % 32u))), _wgslsmith_add_u32(~27989u, _wgslsmith_dot_vec3_u32(u_input.b.wxx >> (~u_input.b.zzx % vec3<u32>(32u)), max(firstLeadingBit(u_input.d), vec3<u32>(0u, 41178u, u_input.b.x) | vec3<u32>(4294967295u, 1u, 11418u)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = abs(firstLeadingBit(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(u_input.a, 48733u, 31749u)), ~func_3(Struct_2(false), arg_0.x))));
    var var_1 = _wgslsmith_div_vec3_u32(select(countOneBits(arg_0), firstLeadingBit(select(arg_0, vec3<u32>(0u, u_input.b.x, 38607u), true)), all(vec4<bool>(true, true, true, true))) >> ((reverseBits(vec3<u32>(u_input.b.x, 9350u, 0u)) & vec3<u32>(firstLeadingBit(4294967295u), 1u, ~arg_0.x)) % vec3<u32>(32u)), func_3(Struct_2(true), u_input.a));
    let var_2 = false;
    var var_3 = Struct_1(select(vec4<bool>(63320i == _wgslsmith_dot_vec4_i32(vec4<i32>(43485i, u_input.c, -2147483647i, u_input.c), vec4<i32>(2147483647i, u_input.c, -35943i, u_input.c)), _wgslsmith_f_op_f32(abs(562f)) < _wgslsmith_f_op_f32(round(-126f)), true, true), select(vec4<bool>(true, true, true, var_0.x <= var_1.x), !vec4<bool>(true, false, false, var_2), var_2), var_2), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(129f, _wgslsmith_f_op_f32(sign(-583f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-490f, -323f), vec2<f32>(-1000f, 933f), vec2<bool>(true, var_2)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, 749f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, -395f))), vec2<bool>(false, all(vec3<bool>(false, false, true))))), var_1.zy ^ firstLeadingBit(firstTrailingBit(var_1.yx ^ vec2<u32>(18663u, 0u))));
    let var_4 = vec2<i32>(u_input.c, 1i);
    return Struct_1(select(vec4<bool>(all(vec4<bool>(false, var_2, true, true)) == (true | var_2), true, any(var_3.a.zyw), true), var_3.a, any(vec4<bool>(select(false, var_3.a.x, var_3.a.x), true, !var_2, true))), vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(993f - var_3.b.x)), ~u_input.d.zy);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = -arg_2.x;
    var var_1 = any(!select(vec4<bool>(true, false, any(vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x)), arg_1.a.x & arg_1.a.x), vec4<bool>(true, true, select(true, true, true), true), arg_1.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-852f, arg_1.b.x, _wgslsmith_f_op_f32(-124f + -1497f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(206f, 623f, 2214f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, -1796f)))), vec3<bool>(func_2(select(u_input.d, u_input.d, arg_1.a.x)).a.x, !(false || arg_1.a.x), true))));
    var_1 = any(select(func_2(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(arg_1.c.x, u_input.d.x, 83500u)), ~vec3<u32>(u_input.d.x, 0u, 838u))).a, select(vec4<bool>(true, arg_1.a.x, true, arg_1.a.x || arg_1.a.x), func_2(u_input.b.zzx).a, !arg_1.a.x), vec4<bool>(all(vec2<bool>(arg_1.a.x, arg_1.a.x)), true, true, func_2(u_input.b.xzy).b.x <= arg_1.b.x)));
    let var_3 = arg_1;
    return Struct_2(true);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), -568f);
    let var_1 = u_input.b.x;
    let var_2 = func_4(33571u, func_2(vec3<u32>(_wgslsmith_mult_u32(arg_2.x << (u_input.a % 32u), var_1 >> (u_input.a % 32u)), 4294967295u, 0u | select(35513u, arg_2.x, arg_1))), -select(vec2<i32>(2147483647i & u_input.c, _wgslsmith_sub_i32(-1i, arg_3.d.x)), vec2<i32>(_wgslsmith_mult_i32(arg_3.b.x, 17151i), _wgslsmith_dot_vec3_i32(arg_3.d, vec3<i32>(-25505i, 0i, arg_3.b.x))), select(arg_3.a.a, arg_1, arg_3.a.a) | select(false, arg_1, false)));
    var var_3 = var_0;
    var_3 = var_0;
    return arg_3;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = u_input.c;
    let var_1 = !arg_2.x;
    let var_2 = firstLeadingBit(select(vec4<i32>((arg_0.d.x | 15729i) >> (func_3(arg_0.c, u_input.a).x % 32u), ~2147483647i, ~abs(41909i), 29909i), -vec4<i32>(_wgslsmith_add_i32(7468i, 1i), _wgslsmith_clamp_i32(0i, -1i, 30152i), 13910i, ~var_0), false));
    let var_3 = func_4(firstTrailingBit(~(u_input.d.x << (_wgslsmith_mod_u32(u_input.b.x, u_input.d.x) % 32u))), Struct_1(select(vec4<bool>(any(arg_2), arg_2.x, true, all(vec3<bool>(true, var_1, false))), vec4<bool>(any(vec2<bool>(var_1, arg_0.a.a)), false, any(vec2<bool>(arg_2.x, arg_0.c.a)), !arg_2.x), !(arg_0.d.x != -49737i)), vec2<f32>(-382f, _wgslsmith_f_op_f32(-arg_1.x)), ~u_input.d.yx), firstTrailingBit(max(~(-var_2.yw), countOneBits(select(vec2<i32>(u_input.c, -2147483647i), arg_0.b, arg_2.x)))));
    var var_4 = true;
    return Struct_2(arg_0.a.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(firstLeadingBit(_wgslsmith_add_i32(-2147483647i, u_input.c) & u_input.c), true, u_input.b.ywx, Struct_3(func_4(~u_input.a, func_2(u_input.d), abs(vec2<i32>(u_input.c, u_input.c))), vec2<i32>(28383i, -1i), Struct_2(true), (vec3<i32>(8784i, -2147483647i, -7808i) ^ vec3<i32>(u_input.c, u_input.c, u_input.c)) & -vec3<i32>(38743i, u_input.c, u_input.c))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1439f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-877f, _wgslsmith_div_f32(-1532f, 325f)))))), select(vec2<bool>(func_5(~u_input.c, all(vec2<bool>(true, true)), vec3<u32>(u_input.d.x, u_input.a, 1u), Struct_3(Struct_2(false), vec2<i32>(-10632i, u_input.c), Struct_2(false), vec3<i32>(0i, 0i, u_input.c))).a.a, true), vec2<bool>(_wgslsmith_mult_u32(40413u, u_input.b.x) < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33494u, u_input.b.x), u_input.d), u_input.a >= ~1u), vec2<bool>(true, true)));
    var var_1 = func_5(_wgslsmith_dot_vec4_i32(abs(firstLeadingBit(-vec4<i32>(-27563i, u_input.c, u_input.c, 0i))), vec4<i32>(countOneBits(10621i), _wgslsmith_clamp_i32(u_input.c, -20162i, u_input.c), -u_input.c, -22921i) | min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 15863i, 1i, u_input.c), vec4<i32>(u_input.c, u_input.c, -9073i, 56128i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, u_input.c), vec4<i32>(2147483647i, u_input.c, 10249i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))), any(vec4<bool>(all(select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(true, var_0.a, var_0.a, false), false)), firstTrailingBit(5348i) > 47432i, true, false)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(38622u, 19086u, 66230u), select(u_input.d, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), true), all(vec3<bool>(var_0.a, var_0.a, false))), u_input.b.xxz) ^ u_input.b.yyw, func_5(abs(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.c, u_input.c), vec4<i32>(21875i, u_input.c, u_input.c, 1i)))), u_input.c > countOneBits(~(-13838i)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.b.x, 65506u), vec3<u32>(u_input.d.x, 1u, 30458u)), ~u_input.d, u_input.b.yyx), Struct_3(func_5(1i, true, ~vec3<u32>(16951u, 0u, 0u), func_5(u_input.c, true, vec3<u32>(4294967295u, 1u, u_input.b.x), Struct_3(Struct_2(false), vec2<i32>(u_input.c, 9771i), Struct_2(false), vec3<i32>(u_input.c, u_input.c, u_input.c)))).a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -67433i) & vec2<i32>(u_input.c, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.c, 54689i))), func_6(Struct_3(Struct_2(var_0.a), vec2<i32>(u_input.c, u_input.c), Struct_2(var_0.a), vec3<i32>(-29212i, 2147483647i, -1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2404f, -221f)), !vec2<bool>(var_0.a, false)), _wgslsmith_add_vec3_i32(vec3<i32>(8466i, u_input.c, -44025i), vec3<i32>(18196i, 56077i, -1i)))));
    let var_2 = 1i;
    let var_3 = var_1.c;
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1102f - _wgslsmith_f_op_f32(max(-123f, _wgslsmith_f_op_f32(abs(-1063f))))))), -1280f));
    return func_2(~abs(~(~u_input.d)));
}

fn func_7(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    let var_0 = true;
    let var_1 = func_2(select(select(reverseBits(vec3<u32>(u_input.b.x, 0u, 45230u) | vec3<u32>(6308u, 27941u, u_input.d.x)), vec3<u32>(u_input.d.x, 0u, u_input.d.x), select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(arg_2.a.x, false, false), true), arg_2.a.zxw, arg_2.a.x)), vec3<u32>(u_input.d.x, 49431u, select(firstTrailingBit(24124u), 109298u, true)), !arg_2.a.zyz));
    var var_2 = func_5(_wgslsmith_add_i32(reverseBits(u_input.c), arg_1.x), -2147483647i < firstTrailingBit(abs(_wgslsmith_div_i32(arg_1.x, -76810i))), u_input.b.zyy, func_5(arg_1.x, !(arg_2.c.x >= u_input.d.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(48651u, 1u, u_input.b.x), _wgslsmith_mult_vec3_u32(~u_input.b.xzz, vec3<u32>(arg_2.c.x, 35772u, 0u)), u_input.b.zwy), Struct_3(func_6(func_5(2147483647i, false, u_input.d, Struct_3(Struct_2(arg_2.a.x), vec2<i32>(arg_1.x, -12093i), Struct_2(arg_2.a.x), arg_1.www)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, arg_0)), arg_2.a.xx), vec2<i32>(arg_1.x, _wgslsmith_add_i32(-1i, -2147483647i)), Struct_2(!var_0), select(arg_1.yzy, select(vec3<i32>(-2147483647i, arg_1.x, u_input.c), arg_1.wyz, arg_2.a.yww), !var_1.a.wyz)))).b.x;
    var var_3 = func_2(vec3<u32>(abs(1u), arg_2.c.x, var_1.c.x));
    var_3 = func_2(vec3<u32>(4294967295u, ~(func_1().c.x ^ u_input.b.x), func_2(u_input.b.wyw).c.x));
    return i32(-1i) * -(~(-_wgslsmith_mod_i32(u_input.c, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, u_input.c >= u_input.c, true);
    let var_1 = select(vec4<i32>(-1i) * -(vec4<i32>(0i, u_input.c, u_input.c, u_input.c) << (u_input.b % vec4<u32>(32u))), vec4<i32>(u_input.c, -1i, _wgslsmith_add_i32(u_input.c >> (4294967295u % 32u), -11333i), _wgslsmith_add_i32(u_input.c, u_input.c) >> (u_input.b.x % 32u)), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)) & true, var_0.x, var_0.x, select(true, select(true, var_0.x, false), true))) ^ reverseBits(vec4<i32>(func_7(_wgslsmith_div_f32(744f, -2476f), vec4<i32>(-2147483647i, -12571i, 1i, 0i), func_1(), vec4<f32>(1356f, 2339f, -733f, -1656f)), -301i, -1i, u_input.c));
    var var_2 = -abs(reverseBits(var_1)) << (~abs(~(~u_input.b)) % vec4<u32>(32u));
    let var_3 = func_5(firstLeadingBit(-43197i), any(var_0.xx), vec3<u32>(reverseBits(firstLeadingBit(~4294967295u)), 9022u, 0u), func_5(~(u_input.c & 11845i), !(!all(vec4<bool>(var_0.x, var_0.x, var_0.x, true))), ~(~_wgslsmith_sub_vec3_u32(u_input.b.yyy, vec3<u32>(9081u, u_input.a, u_input.d.x))), func_5(abs(_wgslsmith_clamp_i32(var_2.x, -2147483647i, 0i)), !all(vec4<bool>(true, var_0.x, false, false)), firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.d, u_input.b.zyx)), Struct_3(Struct_2(false), ~vec2<i32>(u_input.c, 2147483647i), Struct_2(false), vec3<i32>(0i, -4872i, -1i))))).c;
    var_2 = firstTrailingBit(abs(vec4<i32>(-50053i, ~var_1.x, 1301i, var_2.x)));
    var var_4 = func_5(_wgslsmith_sub_i32(-1i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(-44668i, 2147483647i), var_1.wz), _wgslsmith_mult_i32(u_input.c, u_input.c))) >> (u_input.a % 32u), any(vec2<bool>(true, false)), ~u_input.b.yxw, Struct_3(Struct_2(!var_3.a), vec2<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), var_1.x), Struct_2(var_3.a), select(var_1.wxy, var_1.yzx, var_0.x)));
    var_2 = var_1;
    var var_5 = !(!func_4(~countOneBits(0u), Struct_1(select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_3.a, true, true), true), vec2<f32>(694f, -1294f), abs(u_input.b.yw)), ~(vec2<i32>(67409i, var_1.x) & vec2<i32>(-3535i, var_1.x))).a);
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(871f, 700f, -949f), vec3<f32>(1168f, -1000f, -726f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1943f, -779f, 1962f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2057f))), -243f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -280f), -873f)))), firstTrailingBit(-20436i));
}

