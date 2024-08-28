struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: i32) -> bool {
    var var_0 = Struct_1(abs(~(~4294967295u)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~u_input.a, 4294967295u), firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, u_input.b.x)) ^ reverseBits(u_input.b.xzy)), firstTrailingBit(1u) >> (30674u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(720f, arg_0) + vec2<f32>(arg_0, arg_0))))) * vec2<f32>(889f, _wgslsmith_f_op_f32(1923f * arg_0))));
    var var_1 = select(select(!arg_1, arg_1, !(_wgslsmith_f_op_f32(select(arg_0, -412f, arg_1.x)) == arg_0)), arg_1, arg_1);
    let var_2 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(~35136u, 0u)), vec2<u32>(51785u, _wgslsmith_sub_u32(countOneBits(var_0.b), select(~4573u, max(u_input.b.x, var_0.a), !arg_1.x))));
    var var_3 = var_0.b;
    var_0 = Struct_1(_wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), _wgslsmith_dot_vec3_u32(reverseBits(~u_input.b.xwx), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.a, var_0.a) & u_input.b.xxw, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 1u, u_input.a), vec3<u32>(var_2.x, u_input.b.x, u_input.b.x))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, 19412u, 1u), vec3<u32>(var_0.a, 19791u, var_0.b), u_input.b.ywy)))), var_0.c);
    return arg_1.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = !arg_1;
    let var_1 = vec2<bool>(false, !select(all(!arg_0), func_3(1000f, vec2<bool>(arg_1, false), _wgslsmith_div_i32(global0.x, u_input.c)), true));
    var var_2 = Struct_1(~(~(~u_input.b.x)), ~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3.yx, _wgslsmith_div_vec2_f32(vec2<f32>(-399f, arg_2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(784f, arg_2.x))), select(arg_0.zz, !var_1, vec2<bool>(var_1.x, false)))) + vec2<f32>(492f, arg_3.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.ywz * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_3.zzw))))), arg_3.xzz));
    global0 = -_wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, u_input.c), vec2<i32>(u_input.c, 36408i), vec2<i32>(-37711i, u_input.d)) ^ vec2<i32>(abs(71072i), ~19440i), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.c, 22533i), 50801i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-21530i, u_input.d)), abs(vec2<i32>(7482i, 0i) >> (u_input.b.wz % vec2<u32>(32u)))));
    return Struct_1(var_2.a, ~u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.x, arg_2.x)))) - _wgslsmith_f_op_vec2_f32(exp2(var_2.c))), _wgslsmith_f_op_vec2_f32(ceil(arg_2))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c.x))), -328f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2141f + 359f), _wgslsmith_f_op_f32(-1198f + arg_1.c.x)))), _wgslsmith_f_op_f32(-268f + _wgslsmith_f_op_f32(floor(-1708f))), func_3(_wgslsmith_f_op_f32(arg_1.c.x - 107f), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~_wgslsmith_add_i32(-1i, 414i)))));
    var var_1 = arg_1;
    var_1 = arg_1;
    global0 = vec2<i32>(countOneBits(~u_input.c), -(~(arg_0 << (346u % 32u))));
    var var_2 = func_2(vec3<bool>(true, all(vec3<bool>(true, true, any(vec2<bool>(true, false)))), false), func_3(603f, select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false))), vec2<bool>(true, all(vec2<bool>(true, false))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), 1i), func_2(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), any(vec2<bool>(false, all(vec4<bool>(false, true, true, false)))), var_0.xy, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, arg_1.c.x, 1128f, 1168f), vec4<f32>(arg_1.c.x, -162f, -206f, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-621f, var_0.x, 731f, -1417f) * vec4<f32>(-556f, var_0.x, 307f, -572f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(543f, -1625f, -1000f, -724f), vec4<f32>(-163f, var_0.x, 651f, 1962f), true)))))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -721f, _wgslsmith_f_op_f32(var_1.c.x * var_0.x), func_2(vec3<bool>(false, true, false), false, vec2<f32>(var_0.x, -230f), vec4<f32>(var_0.x, arg_1.c.x, arg_1.c.x, var_1.c.x)).c.x))));
    return ~(~vec4<i32>(-2147483647i, arg_0, global0.x, -29354i) | vec4<i32>(_wgslsmith_div_i32(-11478i, global0.x), i32(-1i) * -2147483647i, ~arg_0, reverseBits(-26511i))) ^ -_wgslsmith_sub_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-51082i, global0.x, u_input.d, -25730i), vec4<i32>(u_input.d, global0.x, arg_0, u_input.d)), max(vec4<i32>(0i, u_input.c, -1i, global0.x), vec4<i32>(-1266i, global0.x, -1i, u_input.c)), all(vec2<bool>(false, false))), _wgslsmith_mult_vec4_i32(vec4<i32>(-27677i, 2147483647i, global0.x, u_input.d), vec4<i32>(62536i, global0.x, -30999i, 12593i)) >> (countOneBits(vec4<u32>(1u, var_2.a, var_2.a, var_1.a)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(func_4(max(global0.x, 0i), func_2(vec3<bool>(arg_3, arg_3, true), false, vec2<f32>(1472f, arg_2.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_2.c.x, 576f, arg_0.x) + vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_2.c.x)))), vec4<i32>(u_input.c, (2147483647i | u_input.d) >> (1u % 32u), firstLeadingBit(-1i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-13575i, global0.x, 692i), vec3<i32>(global0.x, global0.x, 36240i))))) & _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-2147483647i, global0.x, u_input.c, global0.x)) ^ -abs(vec4<i32>(global0.x, -17563i, u_input.c, 0i)), vec4<i32>(_wgslsmith_mod_i32(-2147483647i << (arg_1.x % 32u), ~u_input.d), global0.x, abs(u_input.c), u_input.c));
    var var_1 = arg_1.zx;
    var_1 = abs(countOneBits(select(abs(vec2<u32>(56419u, 4294967295u)), vec2<u32>(~1u, reverseBits(u_input.a)), !vec2<bool>(arg_3, arg_3))));
    var var_2 = arg_1.x;
    let var_3 = select(vec2<bool>(any(!(!vec3<bool>(arg_3, true, false))), (1i != select(-2147483647i, 1i, false)) | (true && arg_3)), vec2<bool>(true, _wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(-arg_0.x)), vec2<bool>(!arg_3, !any(vec3<bool>(arg_3, arg_3, false))));
    return func_2(!vec3<bool>(var_3.x, ~var_1.x >= arg_1.x, false || all(vec4<bool>(arg_3, true, var_3.x, arg_3))), false, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(func_2(vec3<bool>(var_3.x, arg_3, arg_3), true, vec2<f32>(2296f, 329f), vec4<f32>(arg_0.x, 187f, arg_0.x, -365f)).c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1357f, 760f), arg_2.c.x)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(330f, arg_2.c.x, 444f, arg_0.x) * vec4<f32>(arg_0.x, -256f, arg_0.x, -874f)))), vec4<f32>(-212f, _wgslsmith_f_op_f32(abs(1270f)), arg_2.c.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, 2790f, -1984f, arg_2.c.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(1876f, arg_0.x, 1354f, arg_0.x), vec4<f32>(arg_0.x, -225f, -858f, arg_2.c.x))))));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-12488i, 49219i), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.d, -2147483647i), vec2<i32>(14062i, (global0.x | -12879i) << (_wgslsmith_sub_u32(4294967295u, 0u) % 32u))));
    var var_0 = _wgslsmith_mult_i32(-4250i, func_4(-_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(-16175i, -2147483647i, u_input.d)), Struct_1(~_wgslsmith_add_u32(3324u, arg_0), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1411f, -927f)))).x);
    var_0 = max(i32(-1i) * -7809i, _wgslsmith_mod_i32(~firstLeadingBit(global0.x) & u_input.c, u_input.c));
    let var_1 = abs(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.c, ~u_input.d, ~(-14275i), ~u_input.d), ~_wgslsmith_div_vec4_i32(vec4<i32>(58806i, 2147483647i, 19522i, u_input.c), vec4<i32>(u_input.c, 2147483647i, -1i, -1i))), vec4<i32>(firstLeadingBit(reverseBits(-1i)), -1i, (global0.x | -1i) << (~32462u % 32u), _wgslsmith_mult_i32(abs(1i), -35948i))));
    var var_2 = arg_1.xz;
    return func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x) - vec3<f32>(-365f, arg_2.c.x, arg_2.c.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.c.x, -1859f, 248f)))) + vec3<f32>(func_2(arg_1, true, arg_2.c, vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 154f)).c.x, -392f, _wgslsmith_f_op_f32(-arg_2.c.x))), vec3<f32>(_wgslsmith_div_f32(func_2(arg_1, var_2.x, arg_2.c, vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 1384f)).c.x, -885f), -229f, arg_2.c.x))), vec3<u32>(_wgslsmith_div_u32(0u, arg_2.b), 90284u, countOneBits(u_input.b.x)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a, arg_2.b), ~3508u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 66833u) >> (vec2<u32>(arg_2.a, 41845u) % vec2<u32>(32u)), u_input.b.zz)), _wgslsmith_clamp_u32(firstLeadingBit(8719u), ~u_input.b.x, countOneBits(9929u)) << (arg_2.b % 32u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(arg_2.c))))))), arg_0 <= select(1u, 76586u, !any(vec4<bool>(true, true, true, false))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    global0 = vec2<i32>(abs(global0.x), 2147483647i);
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(var_0.c));
    var_0 = arg_1;
    var_0 = arg_1;
    return _wgslsmith_mod_vec2_i32(vec2<i32>(-global0.x, (i32(-1i) * -u_input.d) & u_input.c), vec2<i32>(_wgslsmith_add_i32(9327i, u_input.c), max(5466i, -21652i) >> (max(arg_2.a, _wgslsmith_mult_u32(4294967295u, 0u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~select(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1619f, 845f, -1652f, -598f)), func_5(u_input.b.x, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), func_1(vec3<f32>(-151f, 319f, -263f), u_input.b.zzw, Struct_1(u_input.b.x, 15179u, vec2<f32>(349f, 1186f)), true)), Struct_1(u_input.a, u_input.b.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(750f, 236f), vec2<f32>(334f, 797f)))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), select(_wgslsmith_div_vec2_i32(-vec2<i32>(-28124i, 2147483647i), min(vec2<i32>(global0.x, u_input.d), vec2<i32>(-1i, -1i))), ~(-vec2<i32>(global0.x, 41164i)), false), func_3(121f, vec2<bool>(true, true), firstLeadingBit(func_6(vec4<f32>(-1285f, -1046f, -1000f, 1013f), Struct_1(82960u, 0u, vec2<f32>(496f, -1017f)), Struct_1(u_input.a, u_input.a, vec2<f32>(1075f, 726f)), true).x)));
    global0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(abs(_wgslsmith_add_i32(u_input.d, 1i)), u_input.c), vec2<i32>(u_input.d, abs(-global0.x)));
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(func_2(vec3<bool>(true, true, true), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-934f, -384f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2009f, 1812f, -1309f, -802f) + vec4<f32>(205f, -251f, 1055f, -605f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -210f, 551f, 2736f))))).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2858f, func_2(vec3<bool>(true, false, true), true, vec2<f32>(913f, -1326f), vec4<f32>(-375f, -1231f, 312f, 1012f)).c.x)))));
    global0 = -_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-(vec2<i32>(-28390i, global0.x) << (u_input.b.xy % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(43708i, global0.x), vec2<i32>(2147483647i, -1i)), reverseBits(vec2<i32>(-1i, -79805i)))), select(vec2<i32>(~u_input.d, global0.x), ~vec2<i32>(65172i, u_input.c) << (_wgslsmith_mult_vec2_u32(u_input.b.zy, vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), any(vec2<bool>(true, false))), abs(~vec2<i32>(global0.x, 25597i)) ^ (vec2<i32>(-1i) * -vec2<i32>(-15891i, global0.x)));
    var var_1 = u_input.c;
    var_1 = 48036i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 1150f, var_0.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 2009f, var_0.x), vec3<f32>(-215f, var_0.x, 755f), false)))), true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(451f + _wgslsmith_f_op_f32(ceil(925f)))), var_0.x, -1300f), ~66048u ^ u_input.a, countOneBits(-(~max(1i, -2147483647i))));
}

