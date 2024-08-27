struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> i32 {
    global0 = ~(~1u);
    let var_0 = arg_1.c;
    var var_1 = Struct_1(min(-61040i, _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(arg_1.a.zx, vec2<i32>(2147483647i, 0i)), -44977i)), max(min(arg_2.b, _wgslsmith_mult_vec4_u32(arg_1.b.c.b, vec4<u32>(14551u, 28641u, arg_1.c.a.b.x, var_0.a.b.x))), arg_2.b) & vec4<u32>((16262u >> (arg_1.b.a.b.x % 32u)) & 74429u, ~(~55447u), arg_2.b.x & 57101u, arg_1.c.a.b.x), all(select(vec4<bool>(true, true, false, false), !select(vec4<bool>(var_0.c.c, true, arg_2.c, arg_1.b.a.c), vec4<bool>(true, false, var_0.c.c, arg_1.b.a.c), arg_2.c), vec4<bool>(any(vec3<bool>(arg_2.c, arg_0.x, arg_2.c)), !arg_1.c.a.c, var_0.a.c, true))));
    let var_2 = var_0.b.x;
    let var_3 = arg_1;
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_3(abs(vec4<i32>(func_3(select(vec3<bool>(false, arg_0.c, false), vec3<bool>(arg_0.c, arg_1.x, true), arg_1.x), Struct_3(vec4<i32>(-11580i, u_input.a, arg_0.a, 0i), Struct_2(arg_0, vec4<f32>(-737f, -855f, -237f, -1626f), arg_0, Struct_1(arg_0.a, arg_0.b, false)), Struct_2(Struct_1(-26985i, vec4<u32>(4294967295u, arg_0.b.x, 17679u, 101982u), true), vec4<f32>(229f, -335f, -1189f, 140f), arg_0, arg_0), arg_0.a), arg_0, _wgslsmith_f_op_f32(min(-830f, -2020f))), -_wgslsmith_add_i32(arg_0.a, u_input.a), ~0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-13363i, u_input.a, -28961i, arg_0.a), vec4<i32>(-34732i, u_input.a, 0i, 0i)), u_input.a, -u_input.a))), Struct_2(Struct_1(-11328i, arg_0.b, all(select(vec2<bool>(true, arg_0.c), arg_1.yx, arg_1.yz))), _wgslsmith_div_vec4_f32(vec4<f32>(-549f, _wgslsmith_f_op_f32(987f + 471f), _wgslsmith_f_op_f32(select(1015f, 989f, true)), 1f), vec4<f32>(-1782f, _wgslsmith_f_op_f32(ceil(-281f)), _wgslsmith_f_op_f32(-478f - -1005f), _wgslsmith_f_op_f32(f32(-1f) * -349f))), arg_0, arg_0), Struct_2(Struct_1(~abs(arg_0.a), ~arg_0.b << (firstLeadingBit(vec4<u32>(52852u, 4294967295u, arg_0.b.x, arg_0.b.x)) % vec4<u32>(32u)), true), vec4<f32>(-866f, _wgslsmith_f_op_f32(max(1063f, _wgslsmith_f_op_f32(1236f * -372f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-738f))), 249f), Struct_1(20038i, ~vec4<u32>(4294967295u, arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_1.x), arg_0), 74121i);
    global0 = 41892u;
    return Struct_3(vec4<i32>(_wgslsmith_mult_i32(8786i, _wgslsmith_mult_i32(arg_0.a, ~(-31038i))), ~arg_0.a, _wgslsmith_sub_i32(~u_input.a | 1i, 1i), i32(-1i) * -43219i), Struct_2(Struct_1(_wgslsmith_sub_i32(arg_0.a, 1i), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 43889u), countOneBits(vec4<u32>(1u, var_0.b.a.b.x, arg_0.b.x, 4294967295u))), any(!arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, 1000f, -532f, 353f))))), Struct_1(~(i32(-1i) * -2147483647i), select(var_0.c.c.b, var_0.c.d.b, vec4<bool>(false, false, arg_1.x, true)), arg_1.x), Struct_1(1i, vec4<u32>(_wgslsmith_clamp_u32(20351u, 51887u, 0u), var_0.c.c.b.x, 0u, var_0.c.d.b.x ^ var_0.b.d.b.x), false)), Struct_2(Struct_1(-countOneBits(var_0.a.x), ~(vec4<u32>(arg_0.b.x, 56198u, arg_0.b.x, arg_0.b.x) | var_0.b.a.b), any(vec3<bool>(false, true, var_0.c.a.c))), vec4<f32>(-390f, var_0.b.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.b.x))), 1325f), Struct_1(u_input.a, countOneBits(~vec4<u32>(var_0.b.d.b.x, 16654u, 30457u, 0u)), false), arg_0), ~(~1i));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    let var_0 = ~min(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.b.d.b.x, 12054u, arg_1.x), _wgslsmith_mod_vec3_u32(arg_0.b.d.b.xzy, arg_0.b.d.b.wxy)), func_2(func_2(arg_0.b.a, vec3<bool>(arg_0.b.d.c, arg_0.b.a.c, true)).b.c, select(vec3<bool>(false, true, arg_0.b.c.c), vec3<bool>(false, true, false), true)).b.c.b.zxz), vec3<u32>(arg_0.c.d.b.x, ~abs(arg_1.x), countOneBits(69037u)));
    global0 = ~select(57386u, arg_1.x, arg_0.b.c.c);
    let var_1 = Struct_2(Struct_1(arg_0.c.a.a, ~arg_0.b.d.b, arg_0.b.a.c), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.b.b + _wgslsmith_f_op_vec4_f32(arg_0.b.b * vec4<f32>(558f, 824f, -1388f, 175f))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.b.x * arg_0.b.b.x), _wgslsmith_f_op_f32(select(793f, -618f, arg_0.b.d.c)), arg_0.c.b.x, _wgslsmith_f_op_f32(select(arg_0.b.b.x, -1433f, true))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-173f, -377f, -3270f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), func_2(func_2(func_2(Struct_1(-11091i, vec4<u32>(4294967295u, 93431u, arg_0.b.d.b.x, arg_1.x), false), !vec3<bool>(arg_0.b.d.c, false, true)).c.a, vec3<bool>(arg_0.c.a.c || false, any(vec2<bool>(arg_0.c.a.c, arg_0.c.d.c)), arg_0.c.c.c || arg_0.b.d.c)).b.d, !vec3<bool>(!arg_0.b.c.c, all(vec2<bool>(arg_0.c.c.c, false)), true)).c.c, arg_0.b.c);
    let var_2 = vec3<i32>(1i, (arg_0.b.c.a | 0i) << (_wgslsmith_dot_vec2_u32(~arg_1, countOneBits(~arg_1)) % 32u), -1i);
    var var_3 = select(!vec3<bool>(var_1.d.c, !(arg_0.b.b.x <= arg_0.c.b.x), _wgslsmith_f_op_f32(-553f + arg_0.b.b.x) < arg_0.c.b.x), select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.c.c.c, var_1.c.c), true)), vec3<bool>(true, _wgslsmith_div_f32(-1018f, var_1.b.x) == _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x)), firstTrailingBit(0i) > -1i), select(select(select(vec3<bool>(arg_0.b.a.c, false, arg_0.b.a.c), vec3<bool>(var_1.d.c, false, false), vec3<bool>(false, false, true)), vec3<bool>(var_1.c.c, true, arg_0.c.a.c), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, var_1.a.c, false), false), arg_0.c.a.c)), func_2(func_2(func_2(Struct_1(-25733i, vec4<u32>(arg_0.c.d.b.x, 38386u, 1u, var_1.d.b.x), arg_0.c.a.c), !vec3<bool>(true, var_1.c.c, arg_0.b.a.c)).b.c, !(!vec3<bool>(false, arg_0.c.c.c, var_1.d.c))).b.c, select(vec3<bool>(false, false, arg_0.b.a.c), !(!vec3<bool>(false, var_1.d.c, arg_0.b.a.c)), select(vec3<bool>(var_1.d.c, arg_0.c.d.c, true), !vec3<bool>(var_1.c.c, true, var_1.d.c), arg_0.b.a.c & true))).b.c.c);
    return _wgslsmith_div_i32(-13713i | min(_wgslsmith_mult_i32(~1i, var_2.x & u_input.a), _wgslsmith_add_i32(10654i, -1i) & _wgslsmith_add_i32(-2147483647i, arg_0.d)), var_2.x);
}

fn func_1() -> Struct_3 {
    var var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(max(31640u, 25931u)), 1u), vec2<u32>(abs(_wgslsmith_add_u32(31414u, 0u)), 1u));
    let var_1 = Struct_3(vec4<i32>(max(func_4(func_2(Struct_1(u_input.a, vec4<u32>(25655u, 87425u, var_0.x, var_0.x), true), vec3<bool>(true, false, false)), ~vec2<u32>(12898u, var_0.x)), u_input.a), abs(~u_input.a) | func_4(Struct_3(vec4<i32>(-48349i, 16460i, u_input.a, u_input.a), Struct_2(Struct_1(49734i, vec4<u32>(51504u, var_0.x, 1u, 4294967295u), true), vec4<f32>(1649f, -1754f, 442f, 436f), Struct_1(-1i, vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), false), Struct_1(-2147483647i, vec4<u32>(var_0.x, 77148u, 1u, var_0.x), true)), Struct_2(Struct_1(-2147483647i, vec4<u32>(1u, 0u, var_0.x, 38857u), true), vec4<f32>(-336f, 495f, 527f, 2236f), Struct_1(u_input.a, vec4<u32>(1u, var_0.x, 31973u, var_0.x), false), Struct_1(u_input.a, vec4<u32>(0u, 0u, 0u, 15427u), false)), -8361i), ~vec2<u32>(var_0.x, 2222u)), u_input.a ^ -1489i, 19551i), func_2(Struct_1(1i, firstTrailingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)) ^ (vec4<u32>(0u, 17232u, 49070u, 4294967295u) ^ vec4<u32>(var_0.x, var_0.x, var_0.x, 33618u)), any(vec2<bool>(false, true))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), vec3<bool>(true, false, false))).b, func_2(Struct_1(func_3(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), Struct_3(vec4<i32>(-1i, -6222i, -2147483647i, 2147483647i), Struct_2(Struct_1(u_input.a, vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), false), vec4<f32>(-205f, -288f, 902f, -1135f), Struct_1(-15846i, vec4<u32>(var_0.x, var_0.x, var_0.x, 63653u), false), Struct_1(u_input.a, vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x), false)), Struct_2(Struct_1(-18418i, vec4<u32>(0u, 0u, var_0.x, var_0.x), false), vec4<f32>(1362f, 1410f, 337f, -2141f), Struct_1(2147483647i, vec4<u32>(2371u, var_0.x, 8990u, 0u), true), Struct_1(0i, vec4<u32>(1u, 0u, 4788u, 80596u), true)), 27958i), Struct_1(-32669i, vec4<u32>(var_0.x, 4294967295u, var_0.x, 4294967295u), true), _wgslsmith_f_op_f32(select(206f, 2178f, false))), vec4<u32>(~0u, 1u, var_0.x, _wgslsmith_sub_u32(var_0.x, var_0.x)), true), vec3<bool>(true, true, true)).b, -5490i);
    global0 = ~_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(~var_0.x, _wgslsmith_clamp_u32(var_0.x, var_0.x, 643u)), var_0.x >> (reverseBits(var_1.b.c.b.x) % 32u)), select(firstTrailingBit(var_0.x), ~var_1.b.c.b.x, var_1.b.b.x > 465f) & _wgslsmith_sub_u32(max(var_0.x, var_0.x), _wgslsmith_mod_u32(var_1.b.a.b.x, 4294967295u)));
    global0 = _wgslsmith_dot_vec3_u32(var_1.b.c.b.wyz, ~var_1.c.a.b.yxz);
    let var_2 = _wgslsmith_clamp_vec3_i32(abs(var_1.a.xww), _wgslsmith_add_vec3_i32(var_1.a.xxz, -select(-var_1.a.xxw, ~var_1.a.yww, vec3<bool>(true, var_1.b.c.c, false))), var_1.a.zzz);
    return Struct_3(max(firstLeadingBit(~_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(var_2.x, var_2.x, -1i, var_1.b.a.a))), func_2(func_2(var_1.b.a, select(vec3<bool>(var_1.b.c.c, var_1.c.a.c, false), vec3<bool>(true, true, false), var_1.b.d.c)).b.d, vec3<bool>(false, !var_1.c.c.c, false)).a), func_2(Struct_1(var_2.x ^ (0i >> (var_1.b.a.b.x % 32u)), var_1.b.c.b, any(vec3<bool>(true, false, var_1.c.a.c))), !(!select(vec3<bool>(var_1.b.c.c, var_1.c.a.c, true), vec3<bool>(var_1.b.d.c, true, var_1.c.a.c), vec3<bool>(var_1.b.c.c, var_1.c.a.c, var_1.c.a.c)))).c, Struct_2(var_1.c.a, _wgslsmith_f_op_vec4_f32(-var_1.b.b), Struct_1(min(1i, u_input.a | -1i), vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.b.a.b.ww, vec2<u32>(var_1.b.d.b.x, 1129u)), ~50780u, var_0.x, 83278u), false), Struct_1(_wgslsmith_clamp_i32(-30805i, func_4(Struct_3(vec4<i32>(-2147483647i, var_1.b.a.a, var_2.x, u_input.a), var_1.b, Struct_2(Struct_1(var_2.x, var_1.c.a.b, var_1.b.a.c), var_1.c.b, var_1.c.a, var_1.b.d), 1i), vec2<u32>(1u, 78582u)), max(var_1.d, var_1.a.x)), vec4<u32>(abs(var_0.x), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.c.c.b.x, var_0.x, var_0.x), var_1.c.a.b), 1u), false)), 0i);
}

fn func_5(arg_0: Struct_3) -> i32 {
    global0 = arg_0.c.c.b.x;
    let var_0 = func_1().b.d;
    let var_1 = _wgslsmith_dot_vec3_u32(func_2(func_2(func_1().c.d, vec3<bool>(true, true, true)).b.d, !vec3<bool>(any(vec3<bool>(var_0.c, var_0.c, arg_0.c.c.c)), false, -116f < arg_0.c.b.x)).b.a.b.wxx, vec3<u32>(~1u, (0u | _wgslsmith_div_u32(arg_0.c.a.b.x, 0u)) >> (abs(reverseBits(arg_0.c.d.b.x)) % 32u), func_1().b.d.b.x | ~31608u));
    global0 = _wgslsmith_sub_u32(4294967295u, 1u);
    global0 = func_1().b.c.b.x;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<i32>(func_5(func_1()), -58336i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-104927i, -1i, u_input.a, u_input.a), vec4<i32>(-32047i, -47382i, -26421i, -1i)), 1i) >> (func_1().c.a.b % vec4<u32>(32u)), func_1().c, Struct_2(Struct_1(u_input.a, vec4<u32>(1u, 1u, 1u, 1u), true), vec4<f32>(_wgslsmith_f_op_f32(round(-1571f)), 410f, _wgslsmith_f_op_f32(1416f - -129f), -1760f), Struct_1(u_input.a, ~countOneBits(vec4<u32>(1u, 16589u, 30483u, 25743u)), true), Struct_1(70903i, vec4<u32>(~66414u, 1u, _wgslsmith_add_u32(0u, 70447u), _wgslsmith_mult_u32(1u, 1629u)), !func_1().c.d.c)), u_input.a);
    var var_1 = var_0.c;
    var_1 = var_0.c;
    var_1 = var_0.b;
    var_1 = func_2(func_1().b.c, !select(vec3<bool>(true, var_1.c.b.x < 4294967295u, true), vec3<bool>(true, var_1.c.c, var_1.a.c), vec3<bool>(false, true, !var_1.d.c))).b;
    var var_2 = var_1.d.a;
    var var_3 = _wgslsmith_div_f32(func_2(var_1.d, select(vec3<bool>(true, var_0.c.c.c, var_0.b.c.c), !(!vec3<bool>(var_1.c.c, false, false)), select(select(vec3<bool>(true, false, var_0.b.a.c), vec3<bool>(var_1.a.c, var_1.a.c, var_1.c.c), true), !vec3<bool>(var_1.d.c, false, var_0.b.a.c), select(vec3<bool>(var_1.a.c, false, false), vec3<bool>(var_1.a.c, var_0.c.c.c, var_1.a.c), vec3<bool>(false, var_1.d.c, true))))).b.b.x, _wgslsmith_f_op_f32(-func_2(Struct_1(_wgslsmith_clamp_i32(25321i, var_0.a.x, var_1.c.a), var_0.c.d.b << (vec4<u32>(var_0.b.d.b.x, 4294967295u, var_0.c.a.b.x, 1u) % vec4<u32>(32u)), !var_0.b.a.c), !select(vec3<bool>(var_1.c.c, var_1.d.c, var_0.c.a.c), vec3<bool>(var_1.c.c, false, false), false)).b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f * var_1.b.x)), -u_input.a, var_0.a.zxy, var_0.a.xx ^ abs(abs(~vec2<i32>(2147483647i, var_1.c.a))));
}

