struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: vec4<i32> = vec4<i32>(-813i, 30737i, -1i, -59792i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<i32>) -> vec2<u32> {
    global1 = -arg_2;
    global1 = ~reverseBits(firstLeadingBit(arg_2) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(0u, u_input.a, 68790u, u_input.a)) % vec4<u32>(32u)));
    global0 = array<Struct_3, 26>();
    var var_0 = vec4<bool>(true, true, false & !(1000f != _wgslsmith_f_op_f32(arg_1 * -1057f)), all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, false)), u_input.b != 1i), vec3<bool>(true, true, true))));
    global1 = vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(-_wgslsmith_div_vec4_i32(arg_2, vec4<i32>(global1.x, 6173i, 0i, -8127i))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(arg_2, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -24341i, u_input.b, 18363i), vec4<i32>(-2147483647i, 0i, u_input.b, 1i))), ~_wgslsmith_add_vec4_i32(arg_2, arg_2))), _wgslsmith_clamp_i32(-arg_2.x ^ (~25791i | _wgslsmith_sub_i32(39800i, arg_0.x)), ~arg_0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.x, 5902i, 1i, arg_0.x) & _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -2147483647i, global1.x, arg_0.x), vec4<i32>(u_input.b, 1i, -20458i, 1i)), arg_2)), u_input.b, u_input.b);
    return ~(reverseBits(vec2<u32>(u_input.a, ~u_input.a)) & vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(10983u, u_input.a, u_input.a)), ~vec3<u32>(0u, u_input.a, u_input.a)), u_input.a));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1259f)), 1u, true, _wgslsmith_div_vec2_u32(select(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u), any(vec4<bool>(arg_1, false, true, false))), func_3(global1.xx, -607f, ~vec4<i32>(u_input.b, arg_0, arg_0, u_input.b)), all(select(vec3<bool>(arg_3, arg_1, arg_2), vec3<bool>(arg_3, true, false), vec3<bool>(true, arg_3, true)))), vec2<u32>(u_input.a, _wgslsmith_mod_u32(abs(u_input.a), 4294967295u))), ~vec2<u32>(_wgslsmith_div_u32(34159u | u_input.a, ~u_input.a), ~31273u << (_wgslsmith_mod_u32(u_input.a, 1u) % 32u)));
    let var_1 = var_0.b;
    let var_2 = Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-517f)))))), ~(~select(81559u, ~var_0.b, true)), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)));
    var var_3 = -u_input.b;
    var var_4 = vec3<u32>(33524u, _wgslsmith_dot_vec4_u32(vec4<u32>(84057u, var_2.c, min(var_2.c, u_input.a), ~u_input.a), _wgslsmith_clamp_vec4_u32(~vec4<u32>(46694u, u_input.a, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 41283u, 94947u), vec4<u32>(u_input.a, 54106u, var_2.c, 4294967295u)), ~vec4<u32>(12505u, u_input.a, var_2.c, 1u))), ~select(countOneBits(var_2.c), u_input.a | var_0.e.x, true)) | min(~vec3<u32>(_wgslsmith_mod_u32(var_2.c, u_input.a), var_2.c, 1u), ~(~vec3<u32>(4369u, 4294967295u, 76028u)));
    return var_2.e;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = !arg_0.c;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(arg_2.x, all(vec2<bool>(true, true)), arg_0.c, arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))))), arg_1.x, arg_0.c && any(vec4<bool>(!arg_0.c, !arg_0.c, !arg_0.c, true)), arg_1.yx, vec2<u32>(_wgslsmith_dot_vec4_u32(arg_1, arg_1), 0u & arg_0.d.x));
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-44587i, u_input.b), u_input.b, ~9225i, global1.x), select(_wgslsmith_div_vec4_i32(-vec4<i32>(8474i, -17165i, global1.x, u_input.b), select(vec4<i32>(u_input.b, 0i, -48907i, global1.x), vec4<i32>(-1i, 0i, -970i, 16098i), var_1.c)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(36550i, u_input.b, global1.x, 60128i), vec4<i32>(-25094i, global1.x, global1.x, 0i))), all(vec4<bool>(arg_0.c, false, true, true))) << (vec4<u32>(~u_input.a, ~(arg_1.x ^ var_1.b), abs(arg_1.x), firstLeadingBit(0u)) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(-17826i, 0i, 2147483647i, arg_2.x) | (vec4<i32>(arg_2.x, global1.x, global1.x, arg_2.x) & vec4<i32>(u_input.b, 1i, -1i, 0i)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(global1.x, 2147483647i, arg_2.x, global1.x)), vec4<i32>(-8863i, 1i, global1.x, u_input.b))));
    var var_2 = -_wgslsmith_add_i32(firstLeadingBit(6468i), u_input.b);
    let var_3 = Struct_1(~((86658u & _wgslsmith_mod_u32(arg_1.x, 55373u)) >> (firstTrailingBit(4294967295u) % 32u)), _wgslsmith_f_op_f32(var_1.a * -1000f));
    return Struct_2(arg_2.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(623f, _wgslsmith_f_op_f32(exp2(var_1.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(760f, var_1.a)) * vec2<f32>(arg_0.a, var_3.b))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.b, 773f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, -821f), vec2<f32>(-212f, 2742f))))))), var_1.c)), ~(~(~8457u)), _wgslsmith_clamp_i32(0i, u_input.b, u_input.b), _wgslsmith_f_op_f32(abs(-2071f)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> bool {
    var var_0 = !arg_2 || (2074f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1259f, -1483f, false)) - _wgslsmith_div_f32(-1768f, arg_1))));
    var var_1 = vec4<u32>(1u, 9076u, ~arg_0.c, u_input.a);
    let var_2 = Struct_3(reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 0u), var_1.xx ^ (var_1.zy >> (vec2<u32>(1u, arg_0.c) % vec2<u32>(32u))))), Struct_1(arg_0.c, 659f), select(vec4<bool>(!(arg_2 & arg_2), true, firstTrailingBit(51837u) < 1u, true), !(!vec4<bool>(false, arg_2, false, true)), true), all(vec4<bool>(any(select(vec3<bool>(arg_2, true, false), vec3<bool>(false, false, arg_2), arg_2)), true, true, arg_0.c < u_input.a)), (_wgslsmith_dot_vec3_i32(vec3<i32>(-32504i, global1.x, 25874i), -vec3<i32>(5252i, u_input.b, -3491i)) << ((func_3(global1.yz, arg_1, vec4<i32>(0i, 2147483647i, -50358i, 10492i)).x >> (var_1.x % 32u)) % 32u)) >> (~_wgslsmith_mult_u32(~70641u, var_1.x) % 32u));
    var var_3 = func_1(Struct_4(_wgslsmith_f_op_f32(func_2(-33116i & (12029i & arg_0.a), !(0u > var_2.b.a), global1.x >= global1.x, _wgslsmith_f_op_f32(-arg_0.e) < _wgslsmith_f_op_f32(arg_0.b.x * arg_1))), _wgslsmith_mod_u32(max(4294967295u, var_1.x), 120657u), !arg_2, _wgslsmith_clamp_vec2_u32(~(~var_2.a), var_1.wy, ~reverseBits(vec2<u32>(var_1.x, 23097u))), _wgslsmith_add_vec2_u32(func_3(vec2<i32>(arg_0.d, global1.x), arg_0.b.x, vec4<i32>(37792i, u_input.b, u_input.b, global1.x)), vec2<u32>(arg_0.c, 4294967295u)) ^ vec2<u32>(func_1(Struct_4(-290f, arg_0.c, true, vec2<u32>(u_input.a, arg_0.c), vec2<u32>(39224u, var_1.x)), vec4<u32>(28136u, 4294967295u, u_input.a, 14568u), global1.xy).c, ~u_input.a)), ~select(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 10492u, 1u), vec4<u32>(46813u, 46653u, 13050u, arg_0.c))), max(vec4<u32>(0u, 0u, var_2.b.a, var_1.x), vec4<u32>(u_input.a, 2233u, arg_0.c, var_1.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c, 14185u, 1u, 54963u), vec4<u32>(arg_0.c, u_input.a, var_2.a.x, 45703u)) % vec4<u32>(32u)), true), vec2<i32>(arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(-1i, -14797i), _wgslsmith_div_i32(global1.x, arg_0.d)), ~(-global1.zxw))));
    var_3 = func_1(Struct_4(335f, _wgslsmith_clamp_u32(var_3.c, var_3.c, _wgslsmith_add_u32(0u, var_1.x) ^ ~var_1.x), !(_wgslsmith_f_op_f32(-1000f * arg_1) == 1000f), var_1.yy, abs(vec2<u32>(~var_2.b.a, _wgslsmith_sub_u32(110039u, arg_0.c)))), vec4<u32>(~28386u, max(func_1(Struct_4(arg_0.b.x, var_2.b.a, var_2.c.x, var_1.xz, var_2.a), vec4<u32>(arg_0.c, var_2.a.x, 105013u, 0u) ^ vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_1.x), global1.wx).c, ~59276u), arg_0.c, func_3(_wgslsmith_clamp_vec2_i32(global1.ww, _wgslsmith_add_vec2_i32(global1.yw, global1.ww), vec2<i32>(-8017i, global1.x) >> (var_1.yx % vec2<u32>(32u))), _wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(var_2.b.b, var_2.b.b)), abs(-vec4<i32>(0i, -59107i, -2147483647i, -14053i))).x), select(abs(abs(vec2<i32>(arg_0.d, 45622i))), reverseBits(select(global1.yw, ~vec2<i32>(-2147483647i, 1233i), true)), select(var_2.c.wx, select(select(var_2.c.zy, var_2.c.wx, true), select(var_2.c.wy, var_2.c.yw, false), false), select(select(vec2<bool>(var_2.c.x, arg_2), var_2.c.xy, var_2.c.wy), vec2<bool>(false, true), var_2.d))));
    return !(108f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.b.x))));
}

fn func_5(arg_0: bool) -> vec2<u32> {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    var var_0 = -1541f;
    var var_1 = Struct_2(_wgslsmith_add_i32(firstTrailingBit(i32(-1i) * -21223i), u_input.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1836f, 1000f, arg_0)) * _wgslsmith_div_f32(1000f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-708f)))), 0u, min(28402i, min(global1.x, global1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(563f)) * _wgslsmith_div_f32(-1010f, 1050f))))));
    global0 = array<Struct_3, 26>();
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(countOneBits(abs(u_input.a)), 4011u), vec2<u32>(func_3(vec2<i32>(global1.x, firstTrailingBit(20873i)), _wgslsmith_f_op_f32(-func_1(Struct_4(1110f, 1u, arg_0, vec2<u32>(u_input.a, var_1.c), vec2<u32>(88747u, 4294967295u)), vec4<u32>(0u, 1u, var_1.c, 4294967295u), global1.wy).e), _wgslsmith_sub_vec4_i32(-vec4<i32>(global1.x, global1.x, u_input.b, 36699i), abs(vec4<i32>(2651i, global1.x, global1.x, u_input.b)))).x, countOneBits(countOneBits(4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!all(vec4<bool>(true, true, true, true)) && (func_4(func_1(Struct_4(1149f, u_input.a, true, vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 38857u)), vec4<u32>(u_input.a, 1618u, u_input.a, 4294967295u), global1.xw), _wgslsmith_f_op_f32(select(-975f, -1030f, true)), true) && true));
    var var_1 = !(!vec2<bool>(~0u != var_0.x, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)))));
    global0 = array<Struct_3, 26>();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-635f, 765f))))))), max(var_0.x, _wgslsmith_add_u32(~u_input.a, 4294967295u)), var_1.x, var_0, func_3(~global1.yw, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2163f, -217f)), _wgslsmith_div_f32(-756f, 447f))), vec4<i32>(_wgslsmith_dot_vec2_i32(global1.ww, ~vec2<i32>(-2147483647i, global1.x)), min(0i, i32(-1i) * -42979i), _wgslsmith_add_i32(u_input.b, 1i), -(~2294i))));
    var_1 = !(!vec2<bool>(var_1.x, var_1.x));
    global1 = vec4<i32>(min(1i, countOneBits(1i) << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.x, u_input.a), var_0.x, var_0.x) % 32u)), min(global1.x, global1.x), firstLeadingBit(global1.x), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(u_input.b, 3302i, global1.x, -2147483647i), vec4<i32>(global1.x, u_input.b, global1.x, u_input.b), !vec4<bool>(true, var_2.c, var_1.x, var_2.c)), ~abs(vec4<i32>(-2147483647i, global1.x, global1.x, u_input.b)) ^ vec4<i32>(~40319i, _wgslsmith_div_i32(16684i, 1i), 1i, u_input.b)));
    var var_3 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, var_2.c), vec2<bool>(true, var_1.x), var_1.x), select(var_2.e.x < u_input.a, true, true)), !vec2<bool>(var_2.c, !(var_2.a < var_2.a)), select(!select(!vec2<bool>(var_2.c, true), vec2<bool>(false, false), vec2<bool>(true, var_2.c)), !(!(!vec2<bool>(true, var_1.x))), vec2<bool>(var_1.x, true)));
    var_3 = vec2<bool>(all(vec3<bool>(var_2.c, !var_1.x | true, false)), select(!all(vec4<bool>(var_3.x, false, false, true)), true, _wgslsmith_sub_u32(22470u, u_input.a) <= func_1(var_2, vec4<u32>(16454u, 4294967295u, 29295u, u_input.a), vec2<i32>(0i, u_input.b)).c) | true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(17437i, false, var_3.x, true)))), 1304f)), 324f, -458f, var_2.a));
}

