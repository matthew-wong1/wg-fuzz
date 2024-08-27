struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec4<bool> {
    var var_0 = ~(~((vec2<u32>(1u, 1u) | max(vec2<u32>(68212u, u_input.a), vec2<u32>(0u, 141330u))) ^ (~vec2<u32>(arg_0, 50563u) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32((~vec2<u32>(u_input.c, 1u) | vec2<u32>(u_input.c, arg_0)) | _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, arg_0) >> (vec2<u32>(36777u, 36836u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 2194u), vec2<u32>(var_0.x, arg_0))), vec2<u32>(1u, 89056u)), _wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(9347u, 1u)) >> (u_input.c % 32u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_0), min(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f * -544f)))), 116f));
    global0 = var_0.x;
    let var_3 = Struct_5(Struct_3(vec2<i32>(-1i, u_input.b), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true))), Struct_4(countOneBits(arg_1), ~vec4<u32>(~10388u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_1.x, u_input.a), vec3<u32>(var_0.x, 6723u, 88601u)), var_0.x), select(vec3<bool>(any(vec3<bool>(true, false, true)), true, any(vec2<bool>(false, true))), vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false)))), var_2, false);
    return !var_3.a.b;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = Struct_5(Struct_3(vec2<i32>(~(~8988i), firstLeadingBit(1i)), select(vec4<bool>(4294967295u >= u_input.a, false, false, arg_1.b.d.a.x), func_3(u_input.a, ~u_input.b), vec4<bool>(arg_1.d && arg_0.x, true, 1u > arg_1.b.b.x, true))), Struct_4(arg_1.b.a, select(~vec4<u32>(70005u, 7429u, 0u, 47906u), firstLeadingBit(countOneBits(arg_1.b.b)), arg_1.a.b), arg_1.b.c, arg_1.b.d), -1000f, select(arg_0.x || true, true, false));
    var var_1 = Struct_2(arg_1.b.d, arg_1.b.d, Struct_1(func_3(select(_wgslsmith_dot_vec4_u32(var_0.b.b, arg_1.b.b), arg_1.b.b.x, var_0.b.d.a.x), reverseBits(-2147483647i)).xx));
    global0 = 0u & arg_1.b.b.x;
    global0 = _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec4_u32(var_0.b.b, vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.b.b.xwz, var_0.b.b.yzy), ~var_0.b.b.x, ~u_input.a, arg_1.b.b.x))) >> (arg_1.b.b.x % 32u);
    let var_2 = arg_1.b;
    return vec2<bool>(!var_0.b.d.a.x | true, arg_0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: i32) -> Struct_5 {
    let var_0 = ~arg_2;
    var var_1 = select(select(func_3(u_input.c, abs(0i)), vec4<bool>(!(arg_2 == arg_2), true, true, !func_2(vec3<bool>(arg_0.x, false, arg_0.x), Struct_5(Struct_3(arg_1.zx, vec4<bool>(arg_0.x, false, arg_0.x, true)), Struct_4(1i, vec4<u32>(u_input.c, 0u, u_input.c, 49866u), vec3<bool>(false, arg_0.x, arg_0.x), Struct_1(arg_0)), 1266f, arg_0.x)).x), true), vec4<bool>(arg_0.x, any(vec4<bool>(false, arg_0.x, true, false && arg_0.x)), func_2(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x)), Struct_5(Struct_3(vec2<i32>(arg_1.x, 0i), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), Struct_4(-1i, vec4<u32>(u_input.a, 37022u, u_input.c, u_input.a), vec3<bool>(arg_0.x, arg_0.x, true), Struct_1(arg_0)), -326f, true)).x, any(func_3(abs(1506u), -var_0).wwz)), arg_0.x);
    let var_2 = vec4<u32>(min(_wgslsmith_dot_vec2_u32((vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(91853u, 49152u) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.c)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(19420u, 4294967295u), vec2<u32>(0u, u_input.c), vec2<u32>(u_input.a, u_input.a)))), u_input.c), _wgslsmith_dot_vec3_u32(~reverseBits(~vec3<u32>(35306u, u_input.a, 54313u)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.c, 33175u), ~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), ~(vec3<u32>(u_input.c, u_input.c, u_input.c) & vec3<u32>(0u, u_input.a, 55447u)))), _wgslsmith_div_u32(abs(21111u), abs(_wgslsmith_sub_u32(0u, u_input.c))), 33504u);
    global0 = firstLeadingBit(1u);
    let var_3 = -countOneBits(-14869i & countOneBits(arg_1.x));
    return Struct_5(Struct_3((vec2<i32>(u_input.b, 23165i) | arg_1.zz) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.xz, vec2<u32>(var_2.x, 56373u)), select(32575u, u_input.a, false)) % vec2<u32>(32u)), vec4<bool>(all(arg_0), var_1.x, true, var_1.x)), Struct_4(var_3, var_2, select(var_1.zwx, vec3<bool>(!var_1.x, !var_1.x, true), !var_1.wzz), Struct_1(!(!vec2<bool>(false, var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(-1013f + _wgslsmith_f_op_f32(f32(-1f) * -1367f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(144f)) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(1000f))))), any(vec2<bool>(true, true)));
}

fn func_1() -> Struct_4 {
    let var_0 = -13556i;
    var var_1 = vec2<u32>(u_input.c, u_input.a);
    var var_2 = func_4(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), !func_2(vec3<bool>(false, true, true), Struct_5(Struct_3(vec2<i32>(var_0, var_0), vec4<bool>(false, true, true, true)), Struct_4(-32929i, vec4<u32>(4294967295u, var_1.x, 71605u, u_input.a), vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, false))), 1365f, false)), func_3(_wgslsmith_clamp_u32(~1u, 4294967295u, ~u_input.a), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, u_input.b), -vec2<i32>(u_input.b, 2147483647i))).yz), ~firstTrailingBit(~vec4<i32>(var_0, u_input.b, var_0, 2147483647i) | ~vec4<i32>(u_input.b, -1i, 12211i, 0i)), ~firstTrailingBit(~(~1i)));
    let var_3 = func_4(var_2.b.d.a, min(~_wgslsmith_add_vec4_i32(vec4<i32>(var_2.a.a.x, 2147483647i, -24942i, -4997i) & vec4<i32>(var_0, 2147483647i, u_input.b, u_input.b), vec4<i32>(12090i, -9245i, var_2.a.a.x, u_input.b) >> (vec4<u32>(10241u, var_2.b.b.x, u_input.c, 59144u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-22073i, u_input.b, 0i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 18279i, var_0, u_input.b), vec4<i32>(u_input.b, 0i, -2147483647i, var_2.b.a)) ^ abs(vec4<i32>(var_0, var_2.b.a, var_2.b.a, -57036i)))), 0i);
    var var_4 = ~vec3<i32>(~(-(~(-2147483647i))), i32(-1i) * -_wgslsmith_div_i32(-6640i, var_3.b.a), var_2.b.a << (_wgslsmith_dot_vec3_u32(var_3.b.b.yzy, select(vec3<u32>(var_1.x, 18517u, var_1.x), vec3<u32>(u_input.c, 1156u, var_3.b.b.x), var_2.a.b.x)) % 32u));
    return var_2.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_4 {
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_5) -> Struct_1 {
    var var_0 = arg_2.xz;
    global0 = ~(~firstLeadingBit(u_input.c >> (1u % 32u))) << ((abs(~func_1().b.x) >> (arg_3.b.b.x % 32u)) % 32u);
    var_0 = arg_2.wz | min(firstLeadingBit(func_4(func_4(vec2<bool>(arg_3.b.c.x, false), vec4<i32>(arg_0, 18601i, arg_0, -1i), 38243i).a.b.xz, vec4<i32>(-24992i, 0i, u_input.b, arg_2.x), -49262i).a.a), func_4(func_2(vec3<bool>(arg_3.a.b.x, false, arg_3.b.c.x), arg_3), -abs(arg_2), arg_2.x).a.a);
    global0 = _wgslsmith_dot_vec2_u32(~arg_3.b.b.xw, ~(~(~vec2<u32>(u_input.a, 35615u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c, -771f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3.c, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.c, arg_3.c) + vec2<f32>(arg_3.c, -536f))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1454f), _wgslsmith_f_op_f32(min(arg_3.c, arg_3.c))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.c, arg_3.c) * vec2<f32>(295f, 1457f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1140f, 1028f))))))))));
    return func_5(Struct_2(func_5(Struct_2(Struct_1(arg_3.b.c.xx), func_5(Struct_2(arg_3.b.d, Struct_1(arg_3.a.b.xw), arg_3.b.d), arg_2, arg_3.b, Struct_4(0i, arg_3.b.b, vec3<bool>(arg_3.d, false, false), Struct_1(vec2<bool>(true, true)))).d, arg_3.b.d), abs(-arg_2), arg_3.b, arg_3.b).d, arg_3.b.d, Struct_1(!(!arg_3.b.d.a))), max(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(arg_3.b.a, 15324i, 47851i, 40529i)), vec4<i32>(0i, -20843i, arg_3.a.a.x, -887i) & vec4<i32>(1i, 10980i, arg_3.a.a.x, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_3.b.a, 27784i), arg_0, -14261i, arg_3.b.a), _wgslsmith_mult_vec4_i32(select(arg_2, vec4<i32>(u_input.b, 1i, var_0.x, arg_2.x), vec4<bool>(true, false, true, arg_3.d)), _wgslsmith_clamp_vec4_i32(arg_2, vec4<i32>(var_0.x, 2147483647i, arg_0, 1i), vec4<i32>(-6754i, 13204i, arg_2.x, arg_2.x))))), Struct_4(reverseBits(var_0.x), abs(~arg_3.b.b), !vec3<bool>(1320f <= var_1.x, false, 2478i == arg_3.a.a.x), Struct_1(vec2<bool>(arg_3.a.b.x && true, true))), arg_3.b).d;
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    global0 = ~96976u;
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(119573u, 57069u)) << (_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, 27293u)), vec2<u32>(28073u, u_input.a), vec2<u32>(4294967295u, arg_0)) % vec2<u32>(32u)), abs(abs(vec2<u32>(0u, 4294967295u))) >> ((reverseBits(vec2<u32>(arg_0, u_input.a)) & countOneBits(vec2<u32>(4294967295u, u_input.c))) % vec2<u32>(32u))), ~vec2<u32>(1u, 1u | select(u_input.a, u_input.c, true)));
    var var_1 = !(true && arg_2.b.x);
    var var_2 = func_4(func_5(Struct_2(arg_1, func_4(!vec2<bool>(arg_1.a.x, arg_1.a.x), vec4<i32>(341i, 11051i, arg_2.a.x, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 0i, 0i), vec4<i32>(arg_2.a.x, 56697i, -1i, -9322i))).b.d, func_6(-51694i, ~vec3<u32>(11130u, var_0.x, 12200u), vec4<i32>(arg_2.a.x, 39493i, -1i, 0i) | vec4<i32>(-2147483647i, u_input.b, -25248i, arg_2.a.x), func_4(arg_2.b.xz, vec4<i32>(0i, u_input.b, arg_2.a.x, arg_2.a.x), 65310i))), vec4<i32>(firstLeadingBit(func_5(Struct_2(Struct_1(arg_2.b.zw), arg_1, arg_1), vec4<i32>(u_input.b, arg_2.a.x, 0i, -26157i), Struct_4(u_input.b, vec4<u32>(var_0.x, u_input.c, 1u, 0u), arg_2.b.wwy, arg_1), Struct_4(0i, vec4<u32>(arg_0, 86799u, var_0.x, 1u), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_2.b.x), Struct_1(arg_2.b.yz))).a), firstTrailingBit(-1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_2.a.x), arg_2.a), arg_2.a.x), Struct_4(firstTrailingBit(_wgslsmith_div_i32(-1i, 13590i)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 23185u, u_input.c, u_input.a), ~vec4<u32>(var_0.x, u_input.a, 4294967295u, 60114u)), arg_2.b.zzw, Struct_1(vec2<bool>(arg_2.b.x, false))), Struct_4(~_wgslsmith_add_i32(arg_2.a.x, -40718i), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 0u, 0u, 87258u), vec4<u32>(arg_0, u_input.c, 16924u, 1u)), arg_2.b.zyz, Struct_1(vec2<bool>(arg_2.b.x, false)))).d.a, ~vec4<i32>(func_1().a, arg_2.a.x & u_input.b, _wgslsmith_clamp_i32(-2147483647i, 21294i, u_input.b) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(75008u, 106121u)) % 32u), -65597i), u_input.b);
    var_2 = Struct_5(var_2.a, Struct_4(-(u_input.b | func_4(arg_1.a, vec4<i32>(0i, arg_2.a.x, var_2.a.a.x, 2147483647i), 0i).a.a.x), ~vec4<u32>(min(4294967295u, arg_0), ~arg_0, var_2.b.b.x << (arg_0 % 32u), max(arg_0, 1u)), vec3<bool>(false, true, true), func_6(~func_1().a, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, var_0.x, 983u), var_2.b.b.zwx)), vec4<i32>(arg_2.a.x, _wgslsmith_sub_i32(arg_2.a.x, arg_2.a.x), max(u_input.b, u_input.b), _wgslsmith_div_i32(24782i, arg_2.a.x)), Struct_5(Struct_3(vec2<i32>(u_input.b, u_input.b), var_2.a.b), Struct_4(2147483647i, var_2.b.b, vec3<bool>(var_2.a.b.x, arg_1.a.x, var_2.a.b.x), Struct_1(vec2<bool>(true, false))), _wgslsmith_div_f32(1578f, var_2.c), arg_2.a.x > 39241i))), _wgslsmith_f_op_f32(min(-111f, _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(round(var_2.c)), !var_2.a.b.x))))), _wgslsmith_f_op_f32(round(var_2.c)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1603f)));
    return Struct_2(Struct_1(arg_1.a), arg_1, func_4(arg_1.a, firstLeadingBit(-select(vec4<i32>(u_input.b, 56944i, u_input.b, -60437i), vec4<i32>(-1i, arg_2.a.x, 1i, -2147483647i), true)), -2953i).b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a), 63292u, u_input.c) & max(~(~vec3<u32>(4294967295u, 3317u, 79130u) | vec3<u32>(0u, u_input.a, 70470u)), ~(~vec3<u32>(46526u, 79281u, 4294967295u) | vec3<u32>(49172u, u_input.a, 4294967295u)));
    var var_2 = func_7(1u | var_1.x, func_6(~_wgslsmith_clamp_i32(abs(-35660i), u_input.b, _wgslsmith_clamp_i32(48122i, u_input.b, 2147483647i)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, u_input.c, var_1.x), countOneBits(vec3<u32>(8354u, var_1.x, var_1.x))) ^ ~max(vec3<u32>(86211u, var_1.x, 0u), vec3<u32>(u_input.a, 0u, var_1.x)), vec4<i32>(3932i, abs(-47991i), 0i, u_input.b), Struct_5(Struct_3(-vec2<i32>(61583i, 0i), vec4<bool>(false, var_0, true, var_0)), func_5(Struct_2(Struct_1(vec2<bool>(var_0, true)), Struct_1(vec2<bool>(var_0, var_0)), Struct_1(vec2<bool>(var_0, false))), -vec4<i32>(u_input.b, -2147483647i, -25418i, u_input.b), func_1(), func_1()), _wgslsmith_f_op_f32(-588f - _wgslsmith_f_op_f32(sign(-1148f))), false)), Struct_3(vec2<i32>(u_input.b ^ (i32(-1i) * -2147483647i), -1i), vec4<bool>(var_0, true, false, select(true, func_3(u_input.a, u_input.b).x, func_2(vec3<bool>(true, true, var_0), Struct_5(Struct_3(vec2<i32>(7987i, 16085i), vec4<bool>(true, false, false, var_0)), Struct_4(-2147483647i, vec4<u32>(u_input.c, 1u, 0u, 4294967295u), vec3<bool>(var_0, true, true), Struct_1(vec2<bool>(false, var_0))), -735f, false)).x))));
    var_2 = Struct_2(func_7(37805u, Struct_1(var_2.c.a), func_4(var_2.a.a, -(vec4<i32>(u_input.b, u_input.b, 18891i, u_input.b) ^ vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b)), ~48544i).a).c, var_2.c, Struct_1(!(!(!vec2<bool>(var_0, var_0)))));
    var var_3 = _wgslsmith_sub_vec2_i32(-(abs(-vec2<i32>(u_input.b, 24019i)) | _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 59055i)))), _wgslsmith_mult_vec2_i32(~(-(vec2<i32>(23419i, 10809i) ^ vec2<i32>(u_input.b, u_input.b))), countOneBits(firstTrailingBit(~vec2<i32>(-22399i, u_input.b)))));
    var_1 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(_wgslsmith_div_u32(50020u, firstTrailingBit(u_input.a)), _wgslsmith_mult_u32(31897u & var_1.x, 67294u), var_1.x), (select(vec3<u32>(16810u, 27990u, var_1.x), vec3<u32>(34656u, u_input.a, 0u), var_0) << (select(vec3<u32>(var_1.x, var_1.x, 0u), vec3<u32>(32423u, 0u, var_1.x), vec3<bool>(var_0, var_2.b.a.x, true)) % vec3<u32>(32u))) >> (countOneBits(vec3<u32>(var_1.x, var_1.x, 0u)) % vec3<u32>(32u))), abs(vec3<u32>(1u, 10452u, var_1.x)));
    var var_4 = var_3.x;
    global0 = 4294967295u;
    let var_5 = vec3<bool>(func_3(_wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(u_input.a, func_4(var_2.a.a, vec4<i32>(var_3.x, var_3.x, -32910i, 46582i), -22212i).b.b.x)), func_1().a).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-471f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-653f, 1194f) + -632f)), any(!(!func_3(95213u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

