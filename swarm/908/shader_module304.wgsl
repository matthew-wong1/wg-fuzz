struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = any(select(vec3<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(true, false)), true), vec3<bool>(true, all(vec3<bool>(false, true, false)), any(vec4<bool>(false, true, true, false))), !any(vec2<bool>(true, true))));
    let var_1 = u_input.d;
    var var_2 = Struct_3(!(!vec2<bool>(true, any(vec2<bool>(true, true)))), max(u_input.c, ~(~(~u_input.c))), Struct_2((~vec4<u32>(4294967295u, u_input.a, var_1, u_input.a) << (countOneBits(vec4<u32>(4294967295u, 0u, var_1, 1u)) % vec4<u32>(32u))) >> (~vec4<u32>(1u, 91270u, 0u, var_1) % vec4<u32>(32u))), Struct_1(select(vec4<i32>(reverseBits(22289i), u_input.b.x >> (u_input.a % 32u), 2147483647i, arg_0), vec4<i32>(_wgslsmith_mod_i32(1i, u_input.c.x), -2147483647i, arg_0, -13642i), vec4<bool>(true, false, u_input.c.x != u_input.c.x, true)), 8595i, abs(firstLeadingBit(vec3<u32>(var_1, u_input.a, 4294967295u))) << (~vec3<u32>(var_1, 60222u, 44882u) % vec3<u32>(32u))));
    let var_3 = true || all(vec3<bool>(true, (var_2.d.c.x | var_2.c.a.x) != ~29770u, _wgslsmith_f_op_f32(f32(-1f) * -114f) >= _wgslsmith_f_op_f32(round(-781f))));
    var var_4 = all(select(select(!(!var_2.a), select(vec2<bool>(true, false), vec2<bool>(var_2.a.x, var_2.a.x), !var_3), all(select(vec2<bool>(var_3, var_3), var_2.a, true))), vec2<bool>(all(select(vec4<bool>(var_2.a.x, false, false, var_2.a.x), vec4<bool>(var_2.a.x, true, false, false), vec4<bool>(false, false, var_2.a.x, var_2.a.x))), !all(vec3<bool>(false, var_3, var_3))), vec2<bool>(var_2.a.x, -arg_0 >= ~0i)));
    return (0u >> (var_1 % 32u)) | 1u;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_4(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), true && (func_3(u_input.c.x) > abs(0u)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))));
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(select(!(!select(var_0.a, vec3<bool>(false, true, var_0.a.x), var_0.a)), var_0.a, select(vec3<bool>(true, true, true), select(var_0.a, select(var_0.a, vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.a), true), !all(var_0.a.zx))));
    let var_1 = Struct_3(vec2<bool>(var_0.a.x, any(var_0.a.xy)), _wgslsmith_div_vec4_i32(u_input.c, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, firstTrailingBit(-21155i), _wgslsmith_mod_i32(u_input.b.x, -38098i), u_input.c.x), u_input.c)), Struct_2(~vec4<u32>(u_input.d, ~u_input.a, u_input.d, 1u)), Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -29748i, 0i, u_input.b.x), u_input.c), min(u_input.c, u_input.c), -(~vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, 50088i))), abs(i32(-1i) * -u_input.c.x), reverseBits(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d, u_input.d, 8625u)), vec3<u32>(55663u, u_input.d, 11087u)))));
    let var_2 = Struct_5(var_1.d.c.zz, _wgslsmith_add_i32(var_1.d.a.x, firstTrailingBit(max(_wgslsmith_div_i32(u_input.b.x, -14468i), u_input.c.x << (0u % 32u)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-600f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -297f, 1763f))), select(!var_1.a.x || (_wgslsmith_f_op_f32(min(-323f, arg_0.x)) > _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), any(!vec3<bool>(var_1.a.x, var_1.a.x, true)), !any(select(var_0.a.zy, var_1.a, vec2<bool>(var_0.a.x, var_0.a.x)))), firstLeadingBit(countOneBits(~vec4<u32>(84533u, u_input.a, 1u, u_input.d))));
    return var_2.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = 1f;
    let var_1 = ~(~(~(vec3<u32>(arg_1, 4294967295u, arg_1) ^ arg_0)) ^ ~vec3<u32>(10414u, ~1u, max(4294967295u, 1u)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) - _wgslsmith_f_op_f32(-432f - _wgslsmith_f_op_f32(step(118f, 699f)))));
    let var_2 = true & !((all(vec4<bool>(false, true, true, false)) && true) & (true & (84050u == var_1.x)));
    var var_3 = Struct_3(!vec2<bool>(var_2, true), vec4<i32>(-firstLeadingBit(u_input.b.x), firstTrailingBit(-reverseBits(arg_2.a.x)), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, ~0i), countOneBits(-arg_2.a.x)), u_input.b.x), Struct_2(~firstLeadingBit(vec4<u32>(arg_3, 0u, 4294967295u, var_1.x)) | ~(~vec4<u32>(arg_3, 0u, var_1.x, var_1.x))), arg_2);
    return firstTrailingBit(max(reverseBits(_wgslsmith_dot_vec3_i32(var_3.b.xzz, vec3<i32>(var_3.d.b, arg_2.a.x, u_input.b.x)) | 17837i), var_3.d.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_1(-u_input.c, ~(-18345i), max(arg_0.a.zyz, vec3<u32>(1u, u_input.d ^ (u_input.d >> (arg_0.a.x % 32u)), u_input.d)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1523f, _wgslsmith_f_op_f32(2273f + -605f)))))));
    var var_2 = func_4(~vec3<u32>(countOneBits(1u), func_2(vec2<f32>(arg_1, var_1.x)), select(arg_0.a.x, u_input.d, false)), var_0.c.x, var_0, u_input.d) & reverseBits(~var_0.a.x);
    let var_3 = Struct_5(vec2<u32>(u_input.d, _wgslsmith_mult_u32(abs(_wgslsmith_div_u32(0u, arg_0.a.x)), 90151u ^ reverseBits(var_0.c.x))), u_input.c.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1598f - var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + -817f), _wgslsmith_f_op_f32(abs(var_1.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -230f, arg_1, -832f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, -490f, 1025f, 166f), vec4<f32>(2429f, arg_1, -448f, var_1.x))), 6121i >= var_0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(747f, 796f, var_1.x, arg_1))) - vec4<f32>(-520f, -211f, -911f, var_1.x))), !any(arg_2), arg_0.a);
    var var_4 = vec4<u32>(1u, _wgslsmith_sub_u32(46768u, max(23996u, 0u)), ~(~(~(~arg_0.a.x))), 0u);
    return arg_0;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3) -> f32 {
    let var_0 = -289f >= arg_0.c.x;
    var var_1 = -(vec4<i32>(select(max(2147483647i, -7787i), 1518i, true), _wgslsmith_div_i32(22833i, i32(-1i) * -2147483647i), 1i, ~(-43093i)) ^ vec4<i32>(arg_0.b, 1i, _wgslsmith_add_i32(-24432i, 0i), i32(-1i) * -1i));
    let var_2 = func_1(Struct_2(abs(vec4<u32>(arg_1.c.a.x, u_input.a, _wgslsmith_mult_u32(arg_1.c.a.x, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.c.x, 0u, arg_1.d.c.x), arg_0.e.xyz)))), _wgslsmith_f_op_f32(-886f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.c.x, 197f))))))), select(vec4<bool>(!select(true, arg_1.a.x, arg_0.d), all(select(vec4<bool>(false, arg_0.d, var_0, false), vec4<bool>(true, false, false, true), arg_1.a.x)), true, !arg_0.d & false), select(!vec4<bool>(arg_0.d, false, arg_0.d, arg_1.a.x), select(vec4<bool>(arg_1.a.x, true, true, arg_1.a.x), vec4<bool>(false, arg_0.d, true, true), !arg_0.d), vec4<bool>(all(arg_1.a), true, true, select(false, true, false))), vec4<bool>(any(vec2<bool>(true, true)), true, 1u >= (arg_0.a.x >> (u_input.a % 32u)), any(!vec4<bool>(var_0, true, true, true)))));
    let var_3 = vec4<u32>(_wgslsmith_add_u32((25048u | var_2.a.x) ^ 47585u, 1u), u_input.a, abs(15854u), 0u);
    var_1 = vec4<i32>(53635i, -35014i, u_input.b.x, arg_1.d.a.x);
    return arg_0.c.x;
}

fn func_6(arg_0: f32) -> Struct_1 {
    let var_0 = 0i == u_input.b.x;
    var var_1 = abs(_wgslsmith_sub_vec2_u32(min(vec2<u32>(1u, _wgslsmith_add_u32(9779u, 45317u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(1u, 14096u))), func_1(Struct_2(vec4<u32>(u_input.d, u_input.d, 56322u, 46255u)), 859f, vec4<bool>(var_0, var_0, true, true)).a.yy >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(44617u, 2305u), abs(vec2<u32>(u_input.d, u_input.a))) % vec2<u32>(32u))));
    return Struct_1(_wgslsmith_add_vec4_i32(select(~vec4<i32>(-14097i, u_input.b.x, u_input.c.x, -10660i), vec4<i32>(43504i, u_input.b.x, -47723i, u_input.b.x) << (vec4<u32>(29264u, 0u, var_1.x, var_1.x) % vec4<u32>(32u)), arg_0 >= -285f), u_input.c) & u_input.c, abs(_wgslsmith_clamp_i32(u_input.b.x >> (var_1.x % 32u), -2147483647i, u_input.b.x)) >> (func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, 297f)))) % 32u), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(var_1.x, u_input.d, 4294967295u))), abs(vec3<u32>(22987u, 70698u, 133925u)), max(func_1(Struct_2(vec4<u32>(var_1.x, 1u, 4294967295u, 1u)), 832f, vec4<bool>(true, var_0, true, var_0)).a.xxy, vec3<u32>(u_input.d, 4294967295u, var_1.x))), _wgslsmith_div_vec3_u32(~vec3<u32>(66924u, 2581u, 26186u), vec3<u32>(var_1.x, var_1.x, ~var_1.x))));
}

fn func_7(arg_0: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(415f))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-216f, 1000f), _wgslsmith_f_op_f32(max(1080f, -387f)))))) * _wgslsmith_f_op_f32(-659f + -2187f));
    let var_1 = func_1(func_1(Struct_2(~(~vec4<u32>(u_input.d, u_input.d, 61714u, 9571u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1877f + _wgslsmith_f_op_f32(select(905f, -813f, false))), 894f)), vec4<bool>(true, true, select(false, true, true) == true, _wgslsmith_f_op_f32(ceil(385f)) >= _wgslsmith_f_op_f32(floor(1004f)))), _wgslsmith_f_op_f32(268f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1830f + _wgslsmith_f_op_f32(847f - 1209f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)))), vec4<bool>(true, any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true)), any(vec3<bool>(any(vec3<bool>(true, true, false)), true, true)), !(arg_0.a.x < reverseBits(u_input.c.x))));
    var var_2 = vec2<f32>(578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-350f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-137f, _wgslsmith_f_op_f32(368f + -1526f)))))));
    let var_3 = vec2<u32>(~var_1.a.x, ~u_input.a);
    let var_4 = Struct_2(countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.c.yy, arg_0.c.zy) | u_input.d, arg_0.c.x, 20509u | (u_input.d << (21274u % 32u)), countOneBits(firstTrailingBit(0u)))));
    return Struct_4(!vec3<bool>(true, _wgslsmith_add_u32(0u, var_4.a.x) == ~u_input.d, (46573u < var_1.a.x) | true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_f32(func_5(Struct_5(select(vec2<u32>(u_input.a, 19990u), vec2<u32>(4294967295u, u_input.a), vec2<bool>(true, false)), _wgslsmith_div_i32(-846i, 2147483647i), vec4<f32>(815f, 119f, -558f, 1243f), true, firstLeadingBit(vec4<u32>(4294967295u, u_input.d, 19775u, 4294967295u))), Struct_3(vec2<bool>(true, true), abs(u_input.c), func_1(Struct_2(vec4<u32>(4294967295u, 88297u, 71101u, u_input.a)), 488f, vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.c.x), -30623i, vec3<u32>(12766u, u_input.d, 4294967295u)))))));
    var var_1 = u_input.b.x;
    var var_2 = ~u_input.c.x;
    let var_3 = Struct_1(select(_wgslsmith_add_vec4_i32(u_input.c, u_input.c), vec4<i32>(-1i) * -firstLeadingBit(u_input.c), all(!vec2<bool>(false, var_0.a.x))), -53592i, select(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 9163u), _wgslsmith_clamp_u32(u_input.d, 4294967295u, u_input.a)), u_input.a, u_input.d), ~(~vec3<u32>(u_input.a, 51377u, 1u) << (~vec3<u32>(91688u, 0u, 4294967295u) % vec3<u32>(32u))), ~select(1i, u_input.b.x, false) > _wgslsmith_mult_i32(-15502i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x))));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1664f, 305f, 374f, -373f), vec4<f32>(-415f, -443f, 2627f, 861f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, 738f, -762f, 1183f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(446f, -675f, -862f, 1000f)), vec4<f32>(-865f, -1562f, 2839f, 1985f), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -1412f))), 284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-103f)) - _wgslsmith_f_op_f32(max(1436f, 467f))))));
    let var_5 = _wgslsmith_f_op_f32(max(-1317f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(227f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.x, var_4.x)) * _wgslsmith_f_op_f32(ceil(var_4.x))))), _wgslsmith_f_op_f32(-827f + _wgslsmith_f_op_f32(min(779f, -108f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, u_input.c.x, -16086i) & vec3<i32>(24497i, i32(-1i) * -2892i, var_3.b), vec3<i32>(var_3.b, abs(10977i), i32(-1i) * -u_input.b.x)));
}

