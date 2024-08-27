struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_4) -> i32 {
    global1 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(-1278i, arg_0.a, global0.x)), global0.yyx);
    let var_0 = !arg_1;
    let var_1 = ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(u_input.c.x, 1u)) ^ countOneBits(vec2<u32>(u_input.d, 78035u)), ~vec2<u32>(u_input.c.x, u_input.d));
    let var_2 = select(!vec3<bool>(true || !var_0.x, any(select(arg_1.yz, vec2<bool>(false, false), arg_1.yz)), var_0.x), arg_1, select(vec3<bool>(all(vec4<bool>(false, arg_1.x, true, var_0.x)), arg_1.x, false), vec3<bool>(any(vec2<bool>(false, true)), !(!var_0.x), !all(var_0)), true));
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(arg_2.a, -26668i), -(~global0.x), 27210i, -_wgslsmith_dot_vec2_i32((u_input.e.zx >> (var_1 % vec2<u32>(32u))) >> (~vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global0.x), global0.yy, u_input.e.xy)));
    return countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-6317i, u_input.b), vec2<i32>(1i, -49854i)), abs(min(-u_input.e.zz, global0.yy))));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global0 = vec4<i32>(global0.x, _wgslsmith_mult_i32(arg_0.c.a.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.a.c, -38349i, 10891i, arg_3.a.b.x), vec4<i32>(2147483647i, -22455i, -1i, arg_3.d.x)), arg_3.a.c)) << (min(u_input.d | 25174u, min(countOneBits(32564u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_3.a.d.x, u_input.c.x), vec3<u32>(52610u, u_input.c.x, 13201u)))) % 32u), global0.x << (1u % 32u), u_input.e.x);
    global1 = -25178i;
    var var_0 = arg_3.c.a.x;
    var var_1 = Struct_4(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-arg_0.c.c.b.x ^ -u_input.a, -19265i, _wgslsmith_div_i32(66882i, reverseBits(arg_3.c.b.x))), -18432i, func_3(Struct_4(_wgslsmith_add_i32(global0.x, 40992i)), select(arg_0.c.c.a.xyy, vec3<bool>(arg_3.a.a.x, true, arg_0.a.x), vec3<bool>(true, arg_0.a.x, true)), Struct_4(-2147483647i))));
    var_1 = Struct_4(-_wgslsmith_dot_vec2_i32(arg_0.c.d, ~arg_0.c.d));
    return Struct_2(arg_3.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.b * arg_0.c.b), vec4<f32>(381f, 622f, arg_2, -1996f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(arg_3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, 488f, arg_3.b.x, arg_0.c.b.x))))))), Struct_1(select(vec4<bool>(true, arg_3.c.a.x, arg_3.c.a.x, false), !select(arg_0.c.c.a, arg_0.c.a.a, vec4<bool>(arg_3.a.a.x, true, true, arg_3.c.a.x)), arg_0.c.c.a), _wgslsmith_clamp_vec2_i32(arg_3.c.b ^ ~arg_0.c.d, vec2<i32>(-23522i, -1i) >> (u_input.c.yy % vec2<u32>(32u)), u_input.e.zz), 11544i, arg_0.c.a.d >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_3.a.d.x, 197690u, 57974u), vec4<u32>(u_input.c.x, u_input.d, 59335u, u_input.d)) % vec4<u32>(32u))), arg_0.c.d);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> i32 {
    global0 = abs(select(~(-vec4<i32>(36939i, 33687i, arg_1.c.b.x, -12312i)), -vec4<i32>(1i, arg_2, global0.x, 1i), true)) >> (~(~arg_1.c.d) % vec4<u32>(32u));
    let var_0 = global0.x;
    let var_1 = firstLeadingBit(_wgslsmith_mult_vec2_i32(arg_1.a.b, select(select(-vec2<i32>(u_input.e.x, global0.x), arg_1.c.b, !arg_1.a.a.x), _wgslsmith_add_vec2_i32(select(u_input.e.yz, arg_1.c.b, arg_1.c.a.wz), firstTrailingBit(vec2<i32>(arg_1.d.x, -1i))), arg_1.c.a.zx)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1426f);
    return ~_wgslsmith_div_i32(arg_1.c.b.x & -func_3(Struct_4(-22849i), arg_1.a.a.zxw, Struct_4(arg_2)), ~(-arg_1.d.x));
}

fn func_1() -> u32 {
    global0 = vec4<i32>(~(_wgslsmith_div_i32(-48157i, u_input.e.x) ^ _wgslsmith_mult_i32(u_input.b, -26240i)), ~u_input.b, abs(func_4(false, func_2(Struct_5(vec3<bool>(true, true, true), u_input.c.yzx, Struct_2(Struct_1(vec4<bool>(false, true, true, true), u_input.e.yx, global0.x, vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.c.x)), vec4<f32>(147f, 289f, 1541f, -703f), Struct_1(vec4<bool>(true, true, false, false), global0.zy, u_input.e.x, u_input.c), vec2<i32>(global0.x, u_input.e.x)), u_input.c.xyy), vec3<f32>(-1707f, -672f, -1135f), 140f, Struct_2(Struct_1(vec4<bool>(false, false, true, false), u_input.e.zz, global0.x, u_input.c), vec4<f32>(-1389f, 1256f, -1187f, 191f), Struct_1(vec4<bool>(true, false, true, false), global0.xy, u_input.b, u_input.c), vec2<i32>(-19223i, -2147483647i))), _wgslsmith_sub_i32(global0.x, 54015i))), 1i) & -_wgslsmith_div_vec4_i32(~vec4<i32>(global0.x, 0i, u_input.b, global0.x) >> ((u_input.c >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(-1i, 677i, global0.x, global0.x) << ((vec4<u32>(46764u, u_input.c.x, u_input.c.x, u_input.d) << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1251f, 589f), _wgslsmith_f_op_vec3_f32(vec3<f32>(447f, -1135f, 246f) - vec3<f32>(-1092f, -449f, 797f))))) * func_2(Struct_5(vec3<bool>(false, false, true), min(vec3<u32>(u_input.d, 0u, 36976u), vec3<u32>(u_input.d, 4294967295u, u_input.c.x)), func_2(Struct_5(vec3<bool>(true, true, true), u_input.c.zyz, Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(37962i, 0i), global0.x, vec4<u32>(48226u, 49426u, 3886u, u_input.d)), vec4<f32>(547f, 993f, -786f, 805f), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-7686i, global0.x), u_input.b, u_input.c), vec2<i32>(u_input.a, global0.x)), vec3<u32>(104774u, 21645u, 24856u)), vec3<f32>(-1009f, 361f, -1000f), 534f, Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-15502i, u_input.e.x), global0.x, vec4<u32>(128058u, 0u, 566u, u_input.d)), vec4<f32>(-1325f, 352f, 717f, 210f), Struct_1(vec4<bool>(false, true, false, false), u_input.e.xy, -2147483647i, u_input.c), vec2<i32>(u_input.b, 1i))), u_input.c.yyx), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-880f, -912f, -296f)))), -556f, func_2(Struct_5(vec3<bool>(false, false, false), u_input.c.zxz, Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(global0.x, global0.x), 67140i, vec4<u32>(u_input.d, 2797u, 1u, u_input.d)), vec4<f32>(1429f, -196f, -243f, 1177f), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(-7458i, 1i), -7069i, vec4<u32>(37905u, u_input.d, u_input.d, 4294967295u)), u_input.e.zy), u_input.c.yyy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, -1053f, -298f)), -919f, Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-9767i, -1i), -28998i, u_input.c), vec4<f32>(-1214f, 406f, -576f, 750f), Struct_1(vec4<bool>(false, false, false, false), u_input.e.xz, 5378i, vec4<u32>(0u, 36939u, u_input.c.x, 1u)), u_input.e.yz))).b.zyx));
    var var_1 = 4294967295u;
    let var_2 = 83862i;
    let var_3 = Struct_1(select(!vec4<bool>(true, false, true, u_input.d > u_input.c.x), vec4<bool>(true, true, true, true), true), select(min(vec2<i32>(global0.x, u_input.b ^ -7771i), min(global0.xy, ~vec2<i32>(u_input.a, global0.x))), firstTrailingBit(~_wgslsmith_mod_vec2_i32(u_input.e.yz, u_input.e.zz)), vec2<bool>(true, true)), abs(1i) << (u_input.d % 32u), ~select(vec4<u32>(abs(4643u), ~52193u, u_input.c.x, _wgslsmith_div_u32(1u, 4294967295u)), _wgslsmith_add_vec4_u32(u_input.c, ~u_input.c), !func_2(Struct_5(vec3<bool>(false, true, true), u_input.c.xxw, Struct_2(Struct_1(vec4<bool>(false, false, false, true), global0.yw, u_input.a, u_input.c), vec4<f32>(522f, -1719f, -243f, var_0.x), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(var_2, global0.x), var_2, u_input.c), global0.xz), u_input.c.yzw), vec3<f32>(var_0.x, var_0.x, var_0.x), var_0.x, Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(u_input.b, -44990i), 2147483647i, u_input.c), vec4<f32>(var_0.x, var_0.x, -2618f, -1636f), Struct_1(vec4<bool>(true, false, false, true), u_input.e.xx, -1i, vec4<u32>(u_input.c.x, 4304u, 9581u, u_input.d)), global0.yx)).a.a));
    return 4294967295u;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> i32 {
    global1 = func_2(Struct_5(func_2(Struct_5(vec3<bool>(false, false, true), _wgslsmith_div_vec3_u32(u_input.c.wyx, u_input.c.yxw), func_2(Struct_5(vec3<bool>(false, true, false), vec3<u32>(23760u, 14992u, 27492u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-2147483647i, global0.x), 0i, vec4<u32>(u_input.c.x, 22821u, arg_0, 1u)), vec4<f32>(-799f, 370f, -824f, -460f), Struct_1(vec4<bool>(true, false, true, false), global0.yw, global0.x, u_input.c), global0.wz), u_input.c.zyz), vec3<f32>(-433f, 2113f, -490f), -1422f, Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(1i, arg_2.a), 0i, vec4<u32>(u_input.c.x, 0u, 0u, 36366u)), vec4<f32>(-1265f, -1658f, 591f, -1000f), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(global0.x, 4916i), global0.x, u_input.c), vec2<i32>(u_input.a, 2147483647i))), vec3<u32>(40893u, 0u, 84591u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(278f, 2417f, -1049f)))), func_2(Struct_5(vec3<bool>(true, true, true), vec3<u32>(0u, 4294967295u, u_input.c.x), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(0i, 73i), 1i, vec4<u32>(u_input.d, arg_0, arg_0, arg_0)), vec4<f32>(-865f, -236f, -1000f, 579f), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(u_input.a, 14060i), u_input.a, u_input.c), vec2<i32>(arg_2.a, 0i)), vec3<u32>(0u, 33861u, arg_1)), vec3<f32>(-138f, 986f, -194f), _wgslsmith_div_f32(-458f, -1183f), func_2(Struct_5(vec3<bool>(true, false, true), u_input.c.xyz, Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(u_input.e.x, global0.x), 2147483647i, u_input.c), vec4<f32>(484f, 1145f, 2095f, 697f), Struct_1(vec4<bool>(false, true, false, true), global0.yw, -1i, vec4<u32>(4294967295u, arg_1, 35978u, u_input.d)), u_input.e.yy), vec3<u32>(arg_1, 1u, arg_0)), vec3<f32>(-1081f, -231f, -1650f), -181f, Struct_2(Struct_1(vec4<bool>(false, true, true, false), global0.xw, u_input.a, vec4<u32>(0u, arg_0, arg_1, arg_0)), vec4<f32>(-276f, -1024f, 271f, 159f), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(46498i, arg_2.a), 0i, u_input.c), global0.yx))).b.x, func_2(Struct_5(vec3<bool>(true, false, false), u_input.c.wxy, Struct_2(Struct_1(vec4<bool>(false, true, true, false), u_input.e.xy, 1280i, u_input.c), vec4<f32>(281f, 1040f, -301f, -1182f), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(0i, -15248i), u_input.e.x, vec4<u32>(u_input.c.x, 35615u, u_input.c.x, 1u)), vec2<i32>(0i, -7172i)), vec3<u32>(104404u, 0u, 36816u)), _wgslsmith_div_vec3_f32(vec3<f32>(243f, 828f, 113f), vec3<f32>(-273f, 717f, 1005f)), -668f, func_2(Struct_5(vec3<bool>(false, true, false), vec3<u32>(57424u, 4294967295u, 0u), Struct_2(Struct_1(vec4<bool>(true, true, false, false), global0.zz, -2865i, u_input.c), vec4<f32>(522f, 163f, -986f, -1170f), Struct_1(vec4<bool>(true, true, true, false), u_input.e.xz, arg_2.a, vec4<u32>(u_input.d, 0u, 67512u, 0u)), vec2<i32>(u_input.e.x, -30286i)), u_input.c.xxw), vec3<f32>(-1028f, 142f, -565f), -840f, Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(-1i, 2147483647i), global0.x, vec4<u32>(arg_1, arg_0, arg_1, arg_1)), vec4<f32>(-570f, 112f, 1799f, 1856f), Struct_1(vec4<bool>(true, false, true, true), global0.wz, global0.x, vec4<u32>(arg_1, arg_0, arg_1, arg_1)), vec2<i32>(arg_2.a, 34521i))))).c.a.xxx, vec3<u32>(func_1(), (9840u & u_input.d) ^ 4294967295u, 6390u), Struct_2(func_2(Struct_5(vec3<bool>(false, false, false), vec3<u32>(1u, 1u, 63373u), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(arg_2.a, 0i), 0i, vec4<u32>(0u, u_input.d, arg_0, arg_0)), vec4<f32>(159f, -1669f, 1745f, -935f), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(26422i, 2524i), 32105i, vec4<u32>(u_input.c.x, arg_0, u_input.d, arg_1)), global0.wy), vec3<u32>(arg_0, u_input.c.x, 38011u)), vec3<f32>(-1125f, -380f, 1298f), _wgslsmith_f_op_f32(492f + 501f), func_2(Struct_5(vec3<bool>(true, true, false), vec3<u32>(37102u, 1u, 1u), Struct_2(Struct_1(vec4<bool>(true, false, true, true), u_input.e.yx, 2147483647i, vec4<u32>(arg_1, arg_0, u_input.d, arg_1)), vec4<f32>(-1000f, 1462f, -262f, 187f), Struct_1(vec4<bool>(false, true, false, true), global0.wx, -22528i, u_input.c), u_input.e.xz), vec3<u32>(22196u, arg_0, arg_1)), vec3<f32>(-823f, 1699f, 788f), 1018f, Struct_2(Struct_1(vec4<bool>(false, true, true, true), global0.zz, 25637i, u_input.c), vec4<f32>(-258f, 350f, -584f, -998f), Struct_1(vec4<bool>(true, false, true, true), u_input.e.xz, global0.x, vec4<u32>(arg_1, 6403u, 46848u, arg_1)), global0.xx))).a, vec4<f32>(-176f, _wgslsmith_f_op_f32(abs(-250f)), func_2(Struct_5(vec3<bool>(false, false, false), vec3<u32>(11027u, arg_0, arg_1), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(u_input.e.x, -13447i), arg_2.a, vec4<u32>(43111u, 1u, u_input.d, arg_0)), vec4<f32>(191f, 1497f, 1062f, 1442f), Struct_1(vec4<bool>(false, true, true, false), u_input.e.yz, 1i, vec4<u32>(arg_1, u_input.c.x, arg_0, arg_1)), u_input.e.xx), u_input.c.wxy), vec3<f32>(-1200f, -133f, 1372f), 1000f, Struct_2(Struct_1(vec4<bool>(true, true, true, false), global0.yw, -3521i, u_input.c), vec4<f32>(-1443f, 362f, 1656f, -151f), Struct_1(vec4<bool>(true, true, true, true), global0.xx, 1i, u_input.c), global0.ww)).b.x, 1843f), func_2(Struct_5(vec3<bool>(true, false, false), vec3<u32>(arg_0, 4294967295u, arg_0), Struct_2(Struct_1(vec4<bool>(false, false, false, false), u_input.e.zz, global0.x, vec4<u32>(5072u, 1u, 29270u, 1u)), vec4<f32>(-1229f, 555f, 2166f, -1494f), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(arg_2.a, 0i), -44680i, vec4<u32>(78865u, arg_1, arg_1, 0u)), vec2<i32>(-1i, 25852i)), u_input.c.zww), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1025f, -1696f, 1004f))), _wgslsmith_f_op_f32(f32(-1f) * -610f), func_2(Struct_5(vec3<bool>(true, true, false), vec3<u32>(arg_0, arg_0, arg_1), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(arg_2.a, -2147483647i), global0.x, vec4<u32>(74258u, 26118u, arg_0, u_input.d)), vec4<f32>(-387f, -1234f, -893f, 1440f), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(global0.x, global0.x), global0.x, vec4<u32>(13971u, 45276u, 0u, 44644u)), u_input.e.xy), vec3<u32>(u_input.c.x, arg_0, arg_1)), vec3<f32>(1690f, 317f, 108f), 614f, Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(global0.x, 33061i), -23256i, vec4<u32>(arg_1, 7799u, 31796u, u_input.c.x)), vec4<f32>(657f, 1000f, -899f, 2657f), Struct_1(vec4<bool>(false, false, false, true), global0.yx, -2147483647i, u_input.c), vec2<i32>(arg_2.a, u_input.b)))).c, -(~global0.wy)), max(_wgslsmith_sub_vec3_u32(max(vec3<u32>(0u, 8378u, arg_1), u_input.c.wxw), vec3<u32>(45722u, arg_0, 4294967295u)), (vec3<u32>(78243u, arg_1, arg_1) | u_input.c.zzw) >> (firstTrailingBit(vec3<u32>(arg_0, 0u, arg_0)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(653f, -1300f, 830f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1638f, 1988f, 1514f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f + -308f)) * _wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(floor(361f))))), func_2(Struct_5(func_2(Struct_5(vec3<bool>(true, true, false), u_input.c.ywx, Struct_2(Struct_1(vec4<bool>(true, false, false, true), u_input.e.yy, 0i, vec4<u32>(4294967295u, u_input.d, arg_0, 4294967295u)), vec4<f32>(217f, -560f, 1371f, 112f), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(0i, -2147483647i), -2147483647i, vec4<u32>(u_input.d, 38026u, 0u, 3222u)), vec2<i32>(-10948i, arg_2.a)), u_input.c.wwz), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1657f, 151f, 493f), vec3<f32>(1884f, -1000f, -990f))), -1195f, func_2(Struct_5(vec3<bool>(true, true, false), u_input.c.wyz, Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(-18635i, arg_2.a), 30898i, vec4<u32>(u_input.c.x, arg_1, arg_0, 0u)), vec4<f32>(-605f, -835f, 591f, -947f), Struct_1(vec4<bool>(false, false, false, false), global0.wx, -38716i, vec4<u32>(arg_1, 0u, arg_1, 1u)), global0.xx), u_input.c.zxx), vec3<f32>(-551f, 419f, -470f), 1952f, Struct_2(Struct_1(vec4<bool>(false, true, false, false), u_input.e.yx, -27671i, vec4<u32>(1476u, 0u, 36514u, 35521u)), vec4<f32>(-1000f, -1173f, 2343f, -665f), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(59314i, global0.x), -8553i, vec4<u32>(25202u, 4294967295u, arg_0, 1u)), global0.yz))).c.a.xzx, countOneBits(u_input.c.zxz), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(-7368i, -32088i), global0.x, u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1404f, 529f, 193f, -1897f)), func_2(Struct_5(vec3<bool>(true, false, false), u_input.c.zzx, Struct_2(Struct_1(vec4<bool>(true, false, true, false), u_input.e.zx, global0.x, u_input.c), vec4<f32>(2620f, 623f, -1045f, 1032f), Struct_1(vec4<bool>(false, true, false, false), global0.xz, 2442i, vec4<u32>(32746u, arg_1, 11517u, arg_0)), u_input.e.zx), u_input.c.zzz), vec3<f32>(-491f, 774f, 1730f), 1000f, Struct_2(Struct_1(vec4<bool>(false, false, true, false), global0.wz, 29555i, vec4<u32>(u_input.c.x, u_input.d, 101660u, 1u)), vec4<f32>(-740f, 156f, 2252f, -1927f), Struct_1(vec4<bool>(true, false, true, false), global0.ww, 47543i, u_input.c), vec2<i32>(arg_2.a, -31387i))).c, select(vec2<i32>(1i, 13537i), vec2<i32>(arg_2.a, u_input.a), true)), firstTrailingBit(vec3<u32>(0u, u_input.d, 0u))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1076f - -129f), 1221f), -626f, -759f), -283f, Struct_2(Struct_1(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), ~vec2<i32>(u_input.e.x, 1i), u_input.e.x, _wgslsmith_mod_vec4_u32(u_input.c, u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(522f - 784f), _wgslsmith_f_op_f32(-207f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1111f), -429f), func_2(Struct_5(vec3<bool>(true, false, false), u_input.c.ywx, Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(-19022i, u_input.e.x), arg_2.a, vec4<u32>(3984u, arg_0, arg_0, u_input.d)), vec4<f32>(334f, -267f, 445f, 1438f), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(-1i, 1i), -2147483647i, u_input.c), global0.yy), vec3<u32>(arg_1, 4294967295u, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1963f, -141f, 778f) + vec3<f32>(128f, 1736f, -2119f)), _wgslsmith_f_op_f32(-989f - 1906f), Struct_2(Struct_1(vec4<bool>(true, false, true, true), global0.zy, arg_2.a, u_input.c), vec4<f32>(-1000f, -940f, 256f, 126f), Struct_1(vec4<bool>(true, false, false, true), global0.wy, 13506i, u_input.c), vec2<i32>(-2595i, -28549i))).a, countOneBits(abs(u_input.e.xy))))).d.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1880f, 105f, 1913f))))))));
    var var_1 = var_0.x;
    global0 = abs(vec4<i32>(0i, _wgslsmith_div_i32(abs(reverseBits(arg_2.a)), (arg_2.a & 21447i) ^ -8005i), -_wgslsmith_div_i32(reverseBits(-11028i), -arg_2.a), -arg_2.a << (~func_1() % 32u)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(round(var_0.x)));
    return -(countOneBits(func_2(Struct_5(vec3<bool>(true, true, true), u_input.c.xyy, Struct_2(Struct_1(vec4<bool>(true, true, true, false), u_input.e.zz, arg_2.a, vec4<u32>(92834u, 8988u, 0u, u_input.c.x)), vec4<f32>(-2075f, -1000f, -1004f, var_2.a), Struct_1(vec4<bool>(false, true, false, true), u_input.e.xz, -55953i, u_input.c), global0.yz), u_input.c.wzw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(718f, var_2.a, var_0.x)), _wgslsmith_f_op_f32(abs(1000f)), func_2(Struct_5(vec3<bool>(false, true, true), u_input.c.yyw, Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(arg_2.a, 11082i), 1i, vec4<u32>(51709u, 17641u, arg_0, 0u)), vec4<f32>(-976f, var_0.x, 1209f, 663f), Struct_1(vec4<bool>(true, true, false, true), u_input.e.xz, 0i, vec4<u32>(35061u, 29392u, 0u, arg_0)), global0.xx), vec3<u32>(u_input.c.x, 1u, 55649u)), vec3<f32>(var_0.x, 546f, var_0.x), var_2.a, Struct_2(Struct_1(vec4<bool>(true, false, false, false), global0.ww, -9411i, u_input.c), vec4<f32>(var_0.x, -165f, 1760f, -1839f), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(arg_2.a, global0.x), arg_2.a, vec4<u32>(arg_1, arg_0, 323u, 77046u)), u_input.e.yx))).d.x) | _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.b, 0i, u_input.b, u_input.e.x) | vec4<i32>(global0.x, arg_2.a, -56703i, -1i)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-872i, -2147483647i, global0.x, 5490i), vec4<i32>(-25919i, arg_2.a, -2147483647i, -2147483647i), true), vec4<i32>(u_input.e.x, 29121i, -25809i, u_input.e.x) ^ vec4<i32>(arg_2.a, -25469i, global0.x, -59105i), select(vec4<i32>(arg_2.a, global0.x, global0.x, -35816i), vec4<i32>(u_input.e.x, 4073i, arg_2.a, u_input.b), vec4<bool>(false, true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(min(func_5(u_input.d, func_1(), Struct_4(global0.x)), -_wgslsmith_sub_i32(2301i, global0.x)), -5775i);
    global0 = select(vec4<i32>(-global0.x >> (u_input.d % 32u), global0.x, 80671i, _wgslsmith_mod_i32(1i, -var_0)) & (~abs(vec4<i32>(-49250i, var_0, var_0, u_input.e.x)) | reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_0, -1i, -27077i), vec4<i32>(0i, global0.x, u_input.b, global0.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 19600i, u_input.a, var_0) << (vec4<u32>(0u, select(u_input.c.x, 1u, true), ~32141u, ~u_input.d) % vec4<u32>(32u)), vec4<i32>(-abs(var_0), ~_wgslsmith_mult_i32(15356i, 679i), var_0, -u_input.a)), vec4<bool>(true, false, global0.x != _wgslsmith_clamp_i32(abs(var_0), 1i, _wgslsmith_mod_i32(0i, global0.x)), true));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-406f, _wgslsmith_f_op_f32(floor(-370f)))), _wgslsmith_f_op_f32(step(1468f, _wgslsmith_f_op_f32(-968f - 2005f))), true))));
    var var_2 = 4294967295u;
    let var_3 = ~(4294967295u >> ((_wgslsmith_mod_u32(func_2(Struct_5(vec3<bool>(true, false, true), u_input.c.yyx, Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(global0.x, 2147483647i), var_0, vec4<u32>(4294967295u, u_input.d, 36194u, u_input.c.x)), vec4<f32>(-1553f, 649f, var_1.a, var_1.a), Struct_1(vec4<bool>(true, true, false, true), u_input.e.zx, -19859i, vec4<u32>(u_input.d, 0u, 13126u, u_input.c.x)), vec2<i32>(global0.x, global0.x)), u_input.c.yyy), vec3<f32>(var_1.a, 1090f, var_1.a), var_1.a, Struct_2(Struct_1(vec4<bool>(true, false, true, false), u_input.e.yz, -8249i, u_input.c), vec4<f32>(353f, var_1.a, var_1.a, -1000f), Struct_1(vec4<bool>(false, true, false, true), u_input.e.zx, u_input.a, u_input.c), vec2<i32>(1i, u_input.b))).a.d.x, 4294967295u << (0u % 32u)) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 8568u, u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.c.x, 17537u), vec3<u32>(30734u, 41367u, u_input.d)))) % 32u));
    let var_4 = func_2(Struct_5(select(vec3<bool>(true, false, true), func_2(Struct_5(vec3<bool>(false, true, true), vec3<u32>(u_input.d, u_input.d, var_3), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(var_0, 0i), 1i, vec4<u32>(97827u, 4294967295u, u_input.d, u_input.d)), vec4<f32>(var_1.a, 355f, -523f, 519f), Struct_1(vec4<bool>(true, false, true, true), global0.wy, global0.x, vec4<u32>(u_input.c.x, 73953u, var_3, 47926u)), u_input.e.zz), u_input.c.wwx), _wgslsmith_f_op_vec3_f32(vec3<f32>(-776f, var_1.a, var_1.a) + vec3<f32>(163f, var_1.a, -839f)), -1000f, Struct_2(Struct_1(vec4<bool>(false, true, true, true), u_input.e.xx, -35516i, vec4<u32>(var_3, u_input.c.x, u_input.c.x, var_3)), vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(-6581i, 40662i), 15793i, u_input.c), global0.yz)).a.a.zxz, vec3<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(false, true, false)), func_2(Struct_5(vec3<bool>(true, false, true), vec3<u32>(0u, var_3, u_input.d), Struct_2(Struct_1(vec4<bool>(false, false, true, false), u_input.e.yx, var_0, u_input.c), vec4<f32>(1000f, 147f, var_1.a, -642f), Struct_1(vec4<bool>(false, false, false, true), global0.zz, -39186i, u_input.c), u_input.e.xz), u_input.c.ywx), vec3<f32>(var_1.a, 316f, -341f), var_1.a, Struct_2(Struct_1(vec4<bool>(false, false, false, false), global0.ww, u_input.e.x, u_input.c), vec4<f32>(var_1.a, -1400f, 744f, var_1.a), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(-1i, 2147483647i), 2147483647i, u_input.c), vec2<i32>(-17476i, global0.x))).c.a.x)), ~u_input.c.yyy, Struct_2(Struct_1(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec2<i32>(var_0, 0i), -2147483647i, vec4<u32>(0u, u_input.c.x, u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1528f, -539f, 1517f))), func_2(Struct_5(vec3<bool>(false, true, false), u_input.c.wwz, Struct_2(Struct_1(vec4<bool>(false, true, false, true), global0.yx, u_input.b, u_input.c), vec4<f32>(1061f, var_1.a, -460f, var_1.a), Struct_1(vec4<bool>(true, false, false, true), u_input.e.yy, 17187i, u_input.c), vec2<i32>(27904i, global0.x)), u_input.c.xzw), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 142f, var_1.a) - vec3<f32>(-382f, 359f, 508f)), _wgslsmith_f_op_f32(-var_1.a), func_2(Struct_5(vec3<bool>(false, false, true), vec3<u32>(var_3, u_input.d, var_3), Struct_2(Struct_1(vec4<bool>(false, true, true, true), global0.zy, -2147483647i, vec4<u32>(4294967295u, u_input.d, u_input.d, 0u)), vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a), Struct_1(vec4<bool>(false, true, true, true), global0.xz, -25196i, vec4<u32>(0u, var_3, 13199u, u_input.c.x)), vec2<i32>(var_0, -10485i)), u_input.c.yzy), vec3<f32>(var_1.a, 587f, var_1.a), var_1.a, Struct_2(Struct_1(vec4<bool>(true, false, false, false), u_input.e.zx, u_input.e.x, vec4<u32>(4294967295u, var_3, u_input.c.x, 0u)), vec4<f32>(var_1.a, var_1.a, 1000f, var_1.a), Struct_1(vec4<bool>(false, true, false, true), global0.wy, -24820i, vec4<u32>(43909u, 65963u, u_input.d, 36233u)), u_input.e.xy))).a, ~_wgslsmith_mult_vec2_i32(u_input.e.xy, vec2<i32>(u_input.a, var_0))), _wgslsmith_mult_vec3_u32(u_input.c.wxx, u_input.c.zyw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-393f, var_1.a, _wgslsmith_f_op_f32(min(var_1.a, var_1.a))))) - func_2(Struct_5(func_2(Struct_5(vec3<bool>(false, false, false), u_input.c.ywx, Struct_2(Struct_1(vec4<bool>(false, true, false, false), u_input.e.xx, 0i, u_input.c), vec4<f32>(-524f, var_1.a, 1610f, -1325f), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(-2147483647i, -5172i), 1i, u_input.c), vec2<i32>(2147483647i, 2147483647i)), vec3<u32>(u_input.c.x, 4294967295u, var_3)), vec3<f32>(var_1.a, -1000f, var_1.a), var_1.a, Struct_2(Struct_1(vec4<bool>(true, false, true, false), u_input.e.yx, global0.x, u_input.c), vec4<f32>(-1000f, -1000f, var_1.a, -666f), Struct_1(vec4<bool>(true, false, false, false), u_input.e.yx, -1i, vec4<u32>(1u, var_3, var_3, u_input.d)), vec2<i32>(34070i, 8374i))).a.a.ywz, min(vec3<u32>(var_3, 0u, 71853u), vec3<u32>(1u, var_3, 0u)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(1i, -2147483647i), var_0, u_input.c), vec4<f32>(616f, 1066f, var_1.a, var_1.a), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(var_0, u_input.a), -2147483647i, vec4<u32>(41279u, var_3, 37444u, u_input.d)), u_input.e.yx), u_input.c.xyw), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-591f, var_1.a, var_1.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, -1473f, var_1.a))))), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(441f + var_1.a)), func_2(Struct_5(vec3<bool>(false, false, true), u_input.c.wxw, Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(global0.x, 59322i), u_input.b, u_input.c), vec4<f32>(var_1.a, var_1.a, 1040f, 3385f), Struct_1(vec4<bool>(false, true, true, true), global0.wx, var_0, vec4<u32>(u_input.d, u_input.c.x, 40057u, var_3)), vec2<i32>(-11343i, -37i)), u_input.c.wzw), vec3<f32>(1013f, var_1.a, var_1.a), 307f, func_2(Struct_5(vec3<bool>(false, false, false), u_input.c.zzy, Struct_2(Struct_1(vec4<bool>(true, true, false, true), global0.zy, 2147483647i, vec4<u32>(var_3, var_3, var_3, 60656u)), vec4<f32>(-238f, 650f, 375f, -826f), Struct_1(vec4<bool>(false, true, true, false), u_input.e.yy, -66541i, u_input.c), vec2<i32>(0i, var_0)), vec3<u32>(u_input.c.x, 80487u, var_3)), vec3<f32>(var_1.a, 474f, var_1.a), 107f, Struct_2(Struct_1(vec4<bool>(false, true, true, true), u_input.e.xy, 1i, u_input.c), vec4<f32>(842f, var_1.a, 222f, -899f), Struct_1(vec4<bool>(true, false, false, false), global0.zz, -1i, vec4<u32>(27933u, var_3, var_3, u_input.d)), vec2<i32>(global0.x, var_0))))).b.xwx), 971f, func_2(Struct_5(func_2(Struct_5(vec3<bool>(false, false, true), vec3<u32>(u_input.c.x, u_input.d, u_input.c.x), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(0i, -2147483647i), u_input.a, u_input.c), vec4<f32>(var_1.a, var_1.a, -793f, -1092f), Struct_1(vec4<bool>(true, false, true, true), u_input.e.xy, -79147i, vec4<u32>(var_3, 35267u, 41524u, 0u)), global0.xy), vec3<u32>(56695u, u_input.d, u_input.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, var_1.a)), var_1.a, Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(12525i, -2147483647i), -2147483647i, u_input.c), vec4<f32>(-1000f, 333f, 112f, var_1.a), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(u_input.a, u_input.e.x), 38414i, vec4<u32>(u_input.c.x, 0u, 11580u, 4294967295u)), global0.yy)).a.a.yww, abs(u_input.c.xwz), Struct_2(func_2(Struct_5(vec3<bool>(true, true, false), vec3<u32>(var_3, 1u, u_input.c.x), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(u_input.a, -2147483647i), 1i, vec4<u32>(var_3, u_input.d, var_3, 4294967295u)), vec4<f32>(894f, -329f, -511f, var_1.a), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(-1i, var_0), var_0, u_input.c), u_input.e.xy), vec3<u32>(62267u, 3200u, var_3)), vec3<f32>(-1264f, -651f, var_1.a), 714f, Struct_2(Struct_1(vec4<bool>(false, true, true, true), global0.zy, -1i, u_input.c), vec4<f32>(var_1.a, var_1.a, 1292f, -1034f), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(0i, -4168i), u_input.a, u_input.c), vec2<i32>(1i, u_input.e.x))).c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 886f, var_1.a, 199f) * vec4<f32>(var_1.a, var_1.a, var_1.a, -959f)), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(-2398i, var_0), -1i, vec4<u32>(4294967295u, 54405u, 4294967295u, 83557u)), vec2<i32>(-21175i, var_0)), ~select(vec3<u32>(var_3, var_3, var_3), u_input.c.zwx, vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1006f, var_1.a, -955f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f + _wgslsmith_f_op_f32(abs(-306f))) + var_1.a), func_2(Struct_5(vec3<bool>(true, true, true), vec3<u32>(1u, var_3, var_3), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(u_input.b, global0.x), 1i, vec4<u32>(var_3, var_3, u_input.d, var_3)), vec4<f32>(var_1.a, var_1.a, -339f, 1421f), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(u_input.a, 1i), var_0, vec4<u32>(4294967295u, 0u, u_input.d, u_input.c.x)), global0.xw), vec3<u32>(u_input.c.x, var_3, var_3) << (vec3<u32>(u_input.c.x, u_input.d, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(382f, var_1.a, -2139f)))), 1339f, func_2(Struct_5(vec3<bool>(true, false, true), u_input.c.zxy, Struct_2(Struct_1(vec4<bool>(false, true, true, true), global0.wz, -1i, vec4<u32>(var_3, 1u, 4294967295u, 155007u)), vec4<f32>(-224f, var_1.a, var_1.a, 827f), Struct_1(vec4<bool>(true, false, false, false), u_input.e.xz, var_0, u_input.c), global0.xx), vec3<u32>(4294967295u, 16427u, var_3)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, 1275f, 1362f))), -183f, func_2(Struct_5(vec3<bool>(false, false, false), vec3<u32>(4294967295u, 1u, 55432u), Struct_2(Struct_1(vec4<bool>(true, false, false, false), u_input.e.yz, 0i, vec4<u32>(u_input.c.x, 0u, 9768u, 4294967295u)), vec4<f32>(var_1.a, var_1.a, var_1.a, 751f), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(u_input.b, 54440i), var_0, vec4<u32>(30901u, 1u, 1u, 6198u)), global0.xy), vec3<u32>(var_3, 4294967295u, 1u)), vec3<f32>(-1052f, var_1.a, var_1.a), var_1.a, Struct_2(Struct_1(vec4<bool>(true, true, false, true), global0.xw, 2147483647i, u_input.c), vec4<f32>(var_1.a, var_1.a, -1016f, 348f), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(-1i, u_input.b), 0i, u_input.c), global0.yx)))))).a;
    global0 = vec4<i32>(5761i, global0.x, func_2(Struct_5(var_4.a.wwz, var_4.d.wwz, Struct_2(var_4, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, -152f, var_1.a, -243f), vec4<f32>(var_1.a, var_1.a, 311f, -667f), var_4.a.x)), Struct_1(vec4<bool>(var_4.a.x, var_4.a.x, var_4.a.x, var_4.a.x), global0.ww, 36028i, var_4.d), vec2<i32>(var_0, 32961i) >> (var_4.d.zy % vec2<u32>(32u))), ~select(var_4.d.www, vec3<u32>(u_input.d, 18379u, var_3), var_4.a.zww)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, var_1.a, var_1.a) - vec3<f32>(1034f, var_1.a, -1061f))), _wgslsmith_f_op_f32(select(-260f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + var_1.a), _wgslsmith_f_op_f32(-var_1.a)), var_4.a.x)), Struct_2(var_4, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -1000f, var_1.a, -763f) + vec4<f32>(-211f, var_1.a, var_1.a, -818f))), var_4, vec2<i32>(var_0, _wgslsmith_clamp_i32(u_input.b, -22094i, 0i)))).a.c, _wgslsmith_add_i32(~1i, _wgslsmith_mult_i32(var_4.c, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.c.ww, u_input.c.zx & var_4.d.yx));
}

