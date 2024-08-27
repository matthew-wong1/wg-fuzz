struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    var var_0 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(8640i, -47389i)), vec2<i32>(-3859i, ~u_input.c)), select(u_input.c, u_input.c, false), firstTrailingBit(max(1i, u_input.c) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, u_input.c))), u_input.c);
    global0 = ~(~(~select(abs(var_0.x), 1i, true)));
    let var_1 = countOneBits(-58449i ^ var_0.x);
    var_0 = vec4<i32>(countOneBits(69965i), -15601i, _wgslsmith_div_i32(var_0.x, firstLeadingBit(var_1) ^ -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-358i, _wgslsmith_mult_i32(-3574i, 1i), -2147483647i, _wgslsmith_mult_i32(var_0.x, u_input.c & -20436i)), abs(vec4<i32>(-1i, reverseBits(var_0.x), var_1, 6971i))));
    var_0 = vec4<i32>(12066i, _wgslsmith_clamp_i32(69389i, ~(-20073i), var_1), ~var_0.x, i32(-1i) * -(~_wgslsmith_dot_vec3_i32(var_0.zxx, var_0.ywz)));
    return vec2<f32>(_wgslsmith_f_op_f32(sign(414f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-375f)) * -239f))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = 1u;
    var var_1 = Struct_2(!(!arg_2.a), Struct_1(!arg_2.d.a, arg_0.c.b, _wgslsmith_f_op_vec2_f32(func_3()), false, _wgslsmith_mult_vec2_i32(-arg_2.d.e, arg_2.c.e)), Struct_1(vec2<bool>(all(!arg_2.a), (arg_0.d.c.x == arg_0.d.c.x) && any(vec3<bool>(arg_2.b.a.x, arg_0.b.d, arg_0.d.d))), _wgslsmith_mult_vec4_u32(min(arg_0.d.b, ~arg_0.c.b), countOneBits(~vec4<u32>(58987u, arg_2.c.b.x, arg_2.c.b.x, 1u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.c.x) - arg_0.d.c.x), _wgslsmith_f_op_f32(abs(-693f))), !arg_2.d.d, arg_2.c.e), arg_2.b, vec2<bool>(arg_2.d.a.x, false));
    var_0 = arg_2.c.b.x;
    var var_2 = true;
    return true;
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_1(vec2<bool>(false, !(!arg_0)), max(vec4<u32>(~23149u, arg_1, arg_1, 0u), select(vec4<u32>(u_input.a, 40307u, 4294967295u, u_input.a) >> (vec4<u32>(91562u, 2539u, 12104u, 127376u) % vec4<u32>(32u)), vec4<u32>(39914u, 19299u, arg_1, arg_1), select(vec4<bool>(arg_0, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, arg_0, true))) | max(_wgslsmith_mod_vec4_u32(vec4<u32>(87486u, arg_1, arg_1, 108592u), vec4<u32>(0u, 56674u, 4294967295u, u_input.b)), firstLeadingBit(vec4<u32>(u_input.b, arg_1, arg_1, u_input.b)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(861f - 1645f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, -1103f)))))), any(select(vec4<bool>(true, true, true, false || arg_0), !(!vec4<bool>(false, false, false, arg_0)), !select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, true, false, true)))), firstLeadingBit(min(reverseBits(vec2<i32>(u_input.c, -3479i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 62635i), vec2<i32>(-25893i, u_input.c)))) ^ vec2<i32>(-_wgslsmith_div_i32(-2147483647i, u_input.c), -1i));
    var var_1 = Struct_2(select(vec4<bool>(arg_0, var_0.a.x, u_input.c <= 1i, !any(vec3<bool>(false, false, var_0.d))), select(vec4<bool>(false & var_0.d, true, all(var_0.a), all(vec4<bool>(true, true, arg_0, false))), vec4<bool>(!var_0.a.x, true, arg_0 | arg_0, true), var_0.b.x > ~36099u), vec4<bool>(true, true, any(!var_0.a), arg_0)), Struct_1(var_0.a, vec4<u32>(~_wgslsmith_mult_u32(5927u, arg_1), _wgslsmith_div_u32(min(0u, 0u), 1u), ~63533u, _wgslsmith_dot_vec4_u32(select(var_0.b, var_0.b, vec4<bool>(arg_0, true, false, false)), var_0.b & vec4<u32>(u_input.a, var_0.b.x, 52279u, 40140u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x)), true, _wgslsmith_mod_vec2_i32(var_0.e, var_0.e)), Struct_1(var_0.a, _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(8863u, 25973u, 16068u, 4294967295u)), var_0.b), vec2<f32>(var_0.c.x, _wgslsmith_div_f32(var_0.c.x, var_0.c.x)), true, var_0.e), Struct_1(vec2<bool>(true, any(!vec3<bool>(var_0.d, true, false))), var_0.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(sign(var_0.c.x))))), var_0.e.x >= (-87639i << (arg_1 % 32u)), var_0.e), select(vec2<bool>(true, any(var_0.a)), var_0.a, _wgslsmith_clamp_u32(arg_1, u_input.a, arg_1) != u_input.b));
    var var_2 = Struct_2(vec4<bool>(true, true, var_0.a.x || all(!var_1.a), !all(vec3<bool>(arg_0, false, var_0.d))), Struct_1(vec2<bool>(!func_2(Struct_2(var_1.a, var_1.b, var_1.d, var_1.b, vec2<bool>(arg_0, false)), u_input.b, Struct_2(vec4<bool>(false, var_1.c.a.x, var_0.d, true), var_1.d, var_1.b, Struct_1(var_1.c.a, vec4<u32>(66260u, u_input.b, var_1.d.b.x, var_0.b.x), vec2<f32>(var_0.c.x, var_0.c.x), arg_0, vec2<i32>(var_1.d.e.x, u_input.c)), var_0.a)), var_1.a.x && (var_0.d || false)), var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)) + var_1.c.c), var_1.b.d, min(vec2<i32>(-var_1.c.e.x, _wgslsmith_clamp_i32(-3013i, -45059i, -2147483647i)), _wgslsmith_div_vec2_i32(min(vec2<i32>(0i, 16932i), vec2<i32>(var_0.e.x, var_1.d.e.x)), select(vec2<i32>(var_1.d.e.x, 0i), var_1.d.e, true)))), var_1.d, Struct_1(select(select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), select(var_0.d, true, var_0.a.x)), vec2<bool>(var_0.d, true), var_0.a), min((var_1.d.b ^ vec4<u32>(0u, 50801u, var_1.b.b.x, 40420u)) << (var_1.d.b % vec4<u32>(32u)), ~abs(vec4<u32>(4560u, 4294967295u, 4294967295u, var_1.b.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(-1347f + -1327f))), var_0.a.x, _wgslsmith_div_vec2_i32(var_1.c.e, vec2<i32>(-1i) * -vec2<i32>(-2724i, -1i))), select(!(!vec2<bool>(var_1.d.a.x, var_1.b.d)), !(!vec2<bool>(false, arg_0)), vec2<bool>(var_0.a.x, var_1.a.x)));
    var_1 = Struct_2(vec4<bool>(!(var_0.a.x == select(false, false, false)), func_2(Struct_2(vec4<bool>(var_1.a.x, var_1.d.a.x, false, true), var_2.d, var_2.b, Struct_1(vec2<bool>(true, var_1.a.x), var_1.d.b, vec2<f32>(197f, 1947f), var_2.c.d, var_1.d.e), select(var_1.e, var_0.a, vec2<bool>(false, arg_0))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0.b.x, 4294967295u), true), var_0.b.yw), Struct_2(select(var_2.a, var_2.a, true), var_1.d, var_2.b, Struct_1(var_0.a, vec4<u32>(0u, var_0.b.x, arg_1, var_2.b.b.x), var_2.d.c, false, var_2.d.e), !vec2<bool>(arg_0, var_2.b.d))), var_1.c.a.x, true), var_1.c, Struct_1(!select(var_2.d.a, !var_2.a.xx, var_2.c.a), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_0.b.x, var_2.c.b.x, var_0.b.x, 30520u)), min(vec4<u32>(1u, var_0.b.x, var_0.b.x, 0u), vec4<u32>(var_0.b.x, 1u, var_2.c.b.x, var_1.d.b.x))), var_2.c.c, var_1.c.a.x, vec2<i32>(u_input.c, var_2.b.e.x)), Struct_1(select(vec2<bool>(true, !arg_0), var_1.e, !var_0.d), countOneBits(var_0.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.c) - vec2<f32>(1977f, var_0.c.x)), !func_2(Struct_2(vec4<bool>(false, false, arg_0, false), var_2.c, Struct_1(var_2.c.a, vec4<u32>(46141u, var_2.b.b.x, var_0.b.x, var_0.b.x), vec2<f32>(-202f, var_2.b.c.x), arg_0, vec2<i32>(36987i, var_1.c.e.x)), var_2.d, vec2<bool>(var_2.a.x, var_2.d.d)), var_2.d.b.x, Struct_2(vec4<bool>(false, true, var_0.a.x, false), var_2.c, Struct_1(vec2<bool>(var_2.a.x, var_0.a.x), var_2.d.b, var_1.d.c, arg_0, var_2.c.e), Struct_1(var_0.a, var_0.b, vec2<f32>(var_0.c.x, -1325f), var_0.a.x, vec2<i32>(11331i, 57883i)), var_2.d.a)))), var_0.b.x != (abs(4294967295u) & var_1.c.b.x), vec2<i32>(~var_1.d.e.x << (8631u % 32u), countOneBits(u_input.c))), vec2<bool>(all(var_1.a), firstLeadingBit(countOneBits(u_input.a)) < 0u));
    var var_3 = vec4<u32>(~(799u ^ (_wgslsmith_mod_u32(u_input.b, 26090u) & 23010u)), 36596u, 40177u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.b.b.yyz, var_0.b.xwx), ~u_input.b, ~u_input.b), _wgslsmith_mult_vec3_u32(~var_0.b.xxw, vec3<u32>(u_input.b, 64924u, 13677u))), var_1.b.b.yww));
    return Struct_2(vec4<bool>(all(vec3<bool>(!var_2.a.x, false, var_1.a.x && var_0.d)), !(!(var_1.b.d & var_2.c.a.x)), var_2.e.x, !(-3877i == _wgslsmith_mod_i32(2147483647i, var_1.c.e.x))), Struct_1(!var_2.e, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~var_0.b, var_2.b.b & var_1.b.b), vec4<u32>(arg_1, 1u, u_input.a, abs(27106u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.d.c), _wgslsmith_f_op_vec2_f32(min(var_0.c, vec2<f32>(-1193f, var_1.d.c.x))))) + vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - var_2.b.c.x), _wgslsmith_f_op_f32(abs(var_2.b.c.x)))), !(false != var_1.d.d), var_1.b.e), Struct_1(!var_2.a.xw, var_1.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, _wgslsmith_f_op_f32(-953f - 1219f))), var_2.d.d, var_0.e), var_1.b, vec2<bool>(all(select(vec4<bool>(true, false, arg_0, var_1.b.a.x), vec4<bool>(arg_0, arg_0, var_1.d.a.x, false), vec4<bool>(true, true, var_1.b.d, true))) & var_0.a.x, true));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -vec4<i32>(1i, arg_0.d.e.x, _wgslsmith_clamp_i32(~(-2147483647i), firstTrailingBit(_wgslsmith_mod_i32(0i, arg_2.e.x)), _wgslsmith_mod_i32(u_input.c, -2147483647i) >> (_wgslsmith_div_u32(40742u, arg_0.d.b.x) % 32u)), -3628i);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_mult_u32(~u_input.a, 17335u ^ u_input.b);
    global0 = -461i;
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.d.b.yy, ~(arg_0.c.b.wx & vec2<u32>(1u, 58231u))), ~(~(abs(u_input.b) & abs(40541u))), abs(~5672u));
    return Struct_1(arg_1, max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, ~u_input.a, u_input.a, var_3.x), vec4<u32>(1u, ~u_input.b, var_1.c.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.x, u_input.b), vec2<u32>(u_input.b, 121186u)))), arg_3.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-642f, var_1.d.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(353f, arg_3.c.x))), vec2<f32>(arg_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x))), !(!(!arg_1)))), true, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.e.x, 21717i) >> (vec2<u32>(4294967295u, 18753u) % vec2<u32>(32u)), arg_2.e | arg_0.b.e), _wgslsmith_sub_i32(arg_3.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 18687i, 12772i), var_0.zxy))), var_0.zz));
}

fn func_1() -> vec2<bool> {
    global0 = abs(~abs(u_input.c));
    var var_0 = countOneBits(388i);
    var_0 = countOneBits(u_input.c >> ((_wgslsmith_mod_u32(33039u, ~u_input.b) >> (reverseBits(u_input.a) % 32u)) % 32u));
    var_0 = 11216i;
    var var_1 = Struct_2(vec4<bool>(true, true, true, true), func_5(func_4(select(func_2(Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec2<bool>(true, false), vec4<u32>(12950u, u_input.b, 2591u, 30739u), vec2<f32>(-601f, -1000f), true, vec2<i32>(u_input.c, u_input.c)), Struct_1(vec2<bool>(false, false), vec4<u32>(1u, 0u, 37498u, u_input.a), vec2<f32>(1778f, 198f), true, vec2<i32>(u_input.c, u_input.c)), Struct_1(vec2<bool>(false, true), vec4<u32>(u_input.a, u_input.a, 66336u, 78718u), vec2<f32>(533f, -1767f), true, vec2<i32>(14054i, 1i)), vec2<bool>(false, false)), u_input.b, Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<bool>(false, true), vec4<u32>(u_input.b, u_input.b, u_input.a, 79779u), vec2<f32>(-585f, -194f), true, vec2<i32>(u_input.c, u_input.c)), Struct_1(vec2<bool>(false, false), vec4<u32>(38695u, 65002u, u_input.a, 0u), vec2<f32>(-1000f, -370f), false, vec2<i32>(1i, u_input.c)), Struct_1(vec2<bool>(false, false), vec4<u32>(u_input.a, u_input.b, 11526u, u_input.b), vec2<f32>(-1539f, 312f), false, vec2<i32>(u_input.c, -2147483647i)), vec2<bool>(true, true))), all(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, true, false))), _wgslsmith_mod_u32(u_input.a, u_input.a) | _wgslsmith_clamp_u32(13553u, u_input.a, u_input.a)), !vec2<bool>(true, any(vec3<bool>(false, false, true))), Struct_1(func_4(true, 4294967295u).e, abs(vec4<u32>(98689u, 1u, u_input.a, 61884u) | vec4<u32>(1u, 0u, u_input.b, u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_div_f32(920f, -128f)), true, ~vec2<i32>(u_input.c, -10482i)), func_4(all(vec4<bool>(true, true, true, true)), ~u_input.b).d), Struct_1(vec2<bool>(true, false), ~(~firstLeadingBit(vec4<u32>(8689u, 0u, u_input.b, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), 668f)), true, (vec2<i32>(u_input.c, -13432i) >> (select(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 7503u), vec2<bool>(false, true)) % vec2<u32>(32u))) >> (func_4(select(false, true, false), countOneBits(u_input.b)).c.b.zz % vec2<u32>(32u))), Struct_1(!func_4(any(vec3<bool>(true, false, false)), u_input.a).b.a, vec4<u32>(_wgslsmith_div_u32(u_input.a, min(u_input.a, 4294967295u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(75374u, 90203u, u_input.b), true), func_4(false, 66112u).d.b.zww), 3921u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), reverseBits(vec2<u32>(29713u, u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1275f, -1149f))), !(!any(vec2<bool>(false, false))), -vec2<i32>(~u_input.c, u_input.c)), !vec2<bool>(all(vec2<bool>(false, true)), true));
    return vec2<bool>(!var_1.e.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1690f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(589f + 1052f), _wgslsmith_f_op_f32(f32(-1f) * -1441f))) + -1744f), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1598f, _wgslsmith_f_op_f32(select(1000f, -1000f, true))))))));
    global0 = -33149i;
    let var_1 = select(select(func_1(), !(!func_5(Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, u_input.b, u_input.b, 0u), var_0.yz, true, vec2<i32>(0i, u_input.c)), Struct_1(vec2<bool>(false, true), vec4<u32>(u_input.b, 9932u, u_input.b, u_input.a), var_0.xx, false, vec2<i32>(-15925i, -33801i)), Struct_1(vec2<bool>(true, false), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), var_0.yz, true, vec2<i32>(u_input.c, 2147483647i)), vec2<bool>(false, false)), vec2<bool>(false, true), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 29363u, 9384u, u_input.b), var_0.yy, true, vec2<i32>(0i, u_input.c)), Struct_1(vec2<bool>(false, false), vec4<u32>(u_input.a, 1u, 0u, u_input.b), var_0.yy, false, vec2<i32>(30032i, u_input.c))).a), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !all(vec3<bool>(false, false, true)))), vec2<bool>(false, true), vec2<bool>(true, false));
    let var_2 = ~(~(-1i));
    var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f - -1000f)) - -1842f), 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, var_0.x, func_5(Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<bool>(var_1.x, var_1.x), vec4<u32>(1u, u_input.a, 44420u, 13457u), vec2<f32>(-764f, var_0.x), true, vec2<i32>(var_2, u_input.c)), Struct_1(vec2<bool>(false, var_1.x), vec4<u32>(u_input.b, 4884u, 60681u, u_input.b), vec2<f32>(-592f, -370f), var_1.x, vec2<i32>(1i, var_2)), Struct_1(var_1, vec4<u32>(u_input.b, u_input.a, 1u, 39944u), var_0.zz, var_1.x, vec2<i32>(u_input.c, 39239i)), vec2<bool>(false, false)), var_1, Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 32242u, 4294967295u, u_input.b), var_0.xy, false, vec2<i32>(u_input.c, u_input.c)), Struct_1(vec2<bool>(var_1.x, var_1.x), vec4<u32>(u_input.b, u_input.b, u_input.a, 0u), var_0.xy, true, vec2<i32>(u_input.c, u_input.c))).c.x))))));
    global0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(var_2, firstLeadingBit(var_2)), select(var_2, 2147483647i, var_1.x)), ~_wgslsmith_clamp_i32(u_input.c, (u_input.c & u_input.c) & (u_input.c & -42323i), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(-select(vec4<i32>(firstTrailingBit(u_input.c), -1i, -952i, u_input.c & var_2), vec4<i32>(u_input.c, abs(u_input.c), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 24497i), vec2<i32>(var_2, u_input.c))), vec4<bool>(true, true, var_1.x, var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(sign(var_0.x))), 404f)));
}

