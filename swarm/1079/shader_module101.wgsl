struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 4294967295u, 15411u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(-(~min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(0i, 20886i, u_input.b.x, u_input.b.x))) ^ vec4<i32>(firstTrailingBit(14052i), _wgslsmith_mult_i32(0i, u_input.b.x ^ u_input.b.x), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -15506i), vec4<i32>(u_input.b.x, -31056i, u_input.b.x, u_input.b.x))), u_input.b.x), _wgslsmith_div_vec4_i32(-vec4<i32>(-19639i, u_input.b.x, u_input.b.x, -2147483647i) << (~vec4<u32>(0u, 21750u, 14847u, global0.x) % vec4<u32>(32u)), select(vec4<i32>(20825i, 2147483647i, u_input.b.x, -23955i), -vec4<i32>(u_input.b.x, -14145i, u_input.b.x, 2147483647i), true)) & (reverseBits(vec4<i32>(u_input.b.x, 9894i, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.a, global0.x, 51913u, 57224u) % vec4<u32>(32u))) << (vec4<u32>(1u, _wgslsmith_div_u32(global0.x, 23198u), abs(global0.x), 0u << (u_input.c.x % 32u)) % vec4<u32>(32u))));
    let var_1 = !(!any(vec2<bool>(true, true))) || (~1u > ~u_input.a);
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~select(vec2<i32>(0i, -61713i), vec2<i32>(8881i, var_0.x), var_1), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(var_0.x, var_0.x)), vec2<i32>(50566i, var_0.x) >> (vec2<u32>(u_input.a, u_input.c.x) % vec2<u32>(32u))), vec2<i32>(~2147483647i, u_input.b.x)), reverseBits(-(~vec2<i32>(-47535i, u_input.b.x))), vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, reverseBits(u_input.b.x)), _wgslsmith_mod_i32(-35435i, 2752i))), var_0.xy);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(319f, 1000f, 1000f, -392f), vec4<f32>(-965f, 1304f, 346f, 417f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(600f, 216f, 1048f, 313f))), -14915i <= var_2)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2276f, -317f, 1669f, 241f), vec4<f32>(-715f, -1048f, 1454f, 1429f), vec4<bool>(var_1, false, var_1, true))), vec4<f32>(-1000f, 2025f, 1051f, -565f)))));
    var var_4 = ~(~4294967295u);
    return 40619u ^ _wgslsmith_clamp_u32(1u, 41145u, abs(~35790u));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = ~(~vec4<u32>(_wgslsmith_mod_u32(6403u >> (arg_0.x % 32u), reverseBits(u_input.c.x)), ~reverseBits(1u), func_3(), ~_wgslsmith_clamp_u32(0u, 4294967295u, global0.x)));
    global0 = vec4<u32>(_wgslsmith_mod_u32(50009u, func_3()), 49856u, global0.x, u_input.c.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1111f)))))));
    global0 = ~reverseBits(abs(~vec4<u32>(arg_0.x, u_input.c.x, global0.x, u_input.a) << (vec4<u32>(24164u, global0.x, 10104u, u_input.c.x) % vec4<u32>(32u))));
    global0 = _wgslsmith_div_vec4_u32(~countOneBits(~(~vec4<u32>(4294967295u, arg_0.x, 16364u, global0.x))), vec4<u32>(1u, min(arg_0.x, min(1u, 1u)), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(14317u, arg_0.x), 37438u), arg_0.x & (_wgslsmith_mult_u32(global0.x, 1u) >> (1u % 32u))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(1637f)), _wgslsmith_f_op_f32(var_0 - var_0), -339f, var_0));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = 25113u;
    global0 = ~(vec4<u32>(var_0, max(_wgslsmith_dot_vec2_u32(global0.yy, u_input.c.xx), global0.x), var_0, max(_wgslsmith_dot_vec2_u32(global0.zz, vec2<u32>(49167u, global0.x)), _wgslsmith_div_u32(var_0, u_input.c.x))) << ((_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 38095u, 5978u, 86254u), vec4<u32>(4294967295u, 1u, 8562u, global0.x)), vec4<u32>(global0.x, 1u, u_input.a, var_0)) | vec4<u32>(var_0, ~u_input.c.x, firstTrailingBit(u_input.a), 4294967295u ^ global0.x)) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, -676f, arg_0.a.x, -928f), arg_0.a)))))));
    let var_2 = abs(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(63251u ^ var_0, firstLeadingBit(var_0), var_0 >> (4294967295u % 32u), _wgslsmith_div_u32(global0.x, 31359u)), abs(vec4<u32>(1u, 0u, u_input.a, 22146u) | vec4<u32>(4294967295u, 4294967295u, var_0, 53302u)))));
    var_1 = func_2(~vec3<u32>((4294967295u >> (1u % 32u)) << (0u % 32u), ~var_0 ^ var_2.x, var_2.x));
    return -vec4<i32>(62640i, -31962i, _wgslsmith_dot_vec3_i32(vec3<i32>(-11618i, u_input.b.x, 2147483647i) | ~vec3<i32>(-2147483647i, 2147483647i, -51398i), vec3<i32>(0i, u_input.b.x, -32529i)), -(~(-2147483647i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    global0 = max(vec4<u32>(~1u, ~(~47603u), ~global0.x, 1u), (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0.x, 17759u), vec4<u32>(global0.x, u_input.c.x, 25691u, 53187u)) << (vec4<u32>(93207u, global0.x, u_input.c.x, 4294967295u) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 0u, 0u, u_input.c.x), ~vec4<u32>(18877u, 1u, u_input.a, 4294967295u))) | _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 4294967295u) & _wgslsmith_sub_vec4_u32(vec4<u32>(1112u, 6989u, u_input.c.x, 1u), vec4<u32>(1u, 4294967295u, 11522u, u_input.a)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 19972u, 4294967295u, 4294967295u), vec4<u32>(global0.x, 28878u, 4294967295u, 16637u)))), vec4<u32>(reverseBits(27016u & u_input.c.x), ~_wgslsmith_mod_u32(19514u, 123277u), ~u_input.a, 16299u & global0.x));
    var var_0 = vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_dot_vec4_i32(func_4(func_2(global0.zzw)), ~abs(arg_0)), abs(_wgslsmith_div_i32(arg_0.x, _wgslsmith_mult_i32(-9192i, -26635i))) | -1i);
    var_0 = firstTrailingBit(firstTrailingBit(~(-arg_0)) << (max(~vec4<u32>(32724u, 0u, 19502u, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<u32>(0u, global0.x, global0.x, 20833u))) % vec4<u32>(32u)));
    let var_1 = Struct_2(abs(func_4(func_2(global0.yyw)).zz ^ _wgslsmith_sub_vec2_i32(~arg_0.wy, abs(var_0.wx))), arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 540f, 524f, 3192f)))))));
    var var_2 = var_1.a.x;
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(func_1(vec4<i32>(2147483647i, u_input.b.x, arg_1.a.x, 30173i), vec3<f32>(arg_0, -174f, arg_1.c.a.x), -1i).c.a.x, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, 729f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c.a.x, arg_0)))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -2842f), arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-734f * _wgslsmith_f_op_f32(-1699f + arg_0)), func_1(firstLeadingBit(arg_2), arg_1.b, u_input.b.x & arg_1.a.x).c.a.x, arg_0))), true));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -528f)));
    let var_2 = global0.x;
    var var_3 = 38191i;
    return func_1(arg_2, _wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(step(-959f, arg_1.c.a.x)), 185f))), abs(-32604i));
}

fn func_6(arg_0: Struct_2) -> vec2<i32> {
    global0 = ~(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, u_input.a, u_input.c.x, global0.x), min(vec4<u32>(4294967295u, global0.x, u_input.a, 4294967295u), vec4<u32>(global0.x, 15543u, global0.x, global0.x)))));
    let var_0 = arg_0.c;
    global0 = ~(~max(firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, global0.x, global0.x, 4294967295u))), countOneBits(vec4<u32>(47535u, 20957u, u_input.c.x, 4294967295u))));
    var var_1 = ~(-2147483647i);
    let var_2 = arg_0;
    return ~vec2<i32>(min((u_input.b.x ^ -9863i) ^ u_input.b.x, arg_0.a.x), ~(~31324i) << (u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(790f + 488f), func_1(vec4<i32>(u_input.b.x, u_input.b.x, -u_input.b.x, ~2147483647i), vec3<f32>(_wgslsmith_f_op_f32(step(-236f, 535f)), _wgslsmith_f_op_f32(198f + 148f), -832f), ~(-u_input.b.x)), ~(~(vec4<i32>(u_input.b.x, -11674i, -2147483647i, -24553i) >> (vec4<u32>(u_input.a, 26730u, u_input.c.x, u_input.a) % vec4<u32>(32u))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(148f, 142f, 446f, -1476f) + vec4<f32>(1888f, -117f, -1287f, 1136f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(792f, -112f, 308f, -832f))))));
    global0 = vec4<u32>(select(_wgslsmith_div_u32(~(~global0.x), countOneBits(_wgslsmith_div_u32(global0.x, u_input.c.x))), _wgslsmith_mod_u32(abs(global0.x), ~(u_input.c.x >> (global0.x % 32u))), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)))), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(global0.x), countOneBits(reverseBits(global0.x)), 4294967295u, ~(0u & global0.x)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(17776u, global0.x, 4294967295u, u_input.a), vec4<u32>(9748u, u_input.c.x, global0.x, u_input.a)) | vec4<u32>(global0.x, 53497u, global0.x, 0u), firstLeadingBit(vec4<u32>(45950u, global0.x, 4294967295u, 1u)) >> (vec4<u32>(global0.x, 0u, global0.x, global0.x) % vec4<u32>(32u)))), 24439u);
    global0 = ~vec4<u32>(4294967295u, reverseBits(max(10920u, u_input.c.x) ^ global0.x), 88948u, ~_wgslsmith_sub_u32(0u, ~u_input.c.x));
    let var_2 = func_1(select(min(~vec4<i32>(var_0.x, 38609i, 1i, -1i), vec4<i32>(u_input.b.x, -2147483647i, var_0.x, -2147483647i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, 1u, 1u), vec4<u32>(global0.x, global0.x, global0.x, 25265u)) % vec4<u32>(32u))), countOneBits(abs(reverseBits(vec4<i32>(-1i, var_0.x, 1i, -1i)))), true), _wgslsmith_f_op_vec3_f32(var_1.a.wyw - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a.x, -1207f, -961f)))), 0i);
    let var_3 = all(vec2<bool>(!(!(4294967295u < u_input.c.x)), true));
    global0 = vec4<u32>(_wgslsmith_sub_u32(~(1u >> (global0.x % 32u)), ~(min(global0.x, 1u) ^ u_input.a)), ~(~u_input.c.x), ~1u, _wgslsmith_sub_u32(u_input.c.x, ~(~u_input.a)));
    global0 = vec4<u32>(4294967295u, 0u, _wgslsmith_add_u32(35846u, _wgslsmith_add_u32(~u_input.a, 13052u)), _wgslsmith_clamp_u32(1u, ~(~_wgslsmith_mod_u32(u_input.a, 38892u)), abs(_wgslsmith_div_u32(global0.x, u_input.c.x)) >> ((~u_input.c.x ^ ~116789u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.zx))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1366f), _wgslsmith_f_op_f32(trunc(var_2.c.a.x)))), -_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, u_input.b.x) | -var_2.a.x, firstTrailingBit(-2114i)));
}

