struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 62570u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    return Struct_2(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, 1i, -2147483647i, -1i) ^ vec4<i32>(u_input.a.x, 4231i, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(-15628i, -40263i, -46183i, -2147483647i)))) >> (u_input.c % vec4<u32>(32u)), ~((vec4<i32>(u_input.a.x, u_input.a.x, 2974i, u_input.a.x) & ~vec4<i32>(u_input.a.x, arg_1.a, -2147483647i, arg_1.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 0u, 4294967295u, arg_2.x) << (vec4<u32>(u_input.c.x, 81747u, u_input.c.x, arg_2.x) % vec4<u32>(32u)), min(u_input.c, u_input.c)) % vec4<u32>(32u))));
}

fn func_3(arg_0: Struct_3) -> Struct_2 {
    var var_0 = countOneBits(max(1u, 1u)) <= ~(~_wgslsmith_div_u32(u_input.c.x >> (18507u % 32u), 1u & u_input.c.x));
    let var_1 = _wgslsmith_mod_i32(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, u_input.a.x) | 0i, u_input.a.x), ~u_input.a.x);
    let var_2 = Struct_3(var_1, firstLeadingBit(var_1), select(arg_0.c, arg_0.c, !select(vec3<bool>(arg_0.c.x, true, true), arg_0.c, !arg_0.c)), !(!(!select(arg_0.d, arg_0.c.zy, arg_0.d.x))), arg_0.e);
    var_0 = true;
    var var_3 = func_2(select(arg_0.c, select(vec3<bool>(true, true, u_input.b.x == 4294967295u), select(!arg_0.c, arg_0.c, any(vec3<bool>(true, var_2.d.x, true))), select(select(vec3<bool>(true, arg_0.c.x, true), var_2.c, arg_0.d.x), var_2.c, select(false, var_2.c.x, arg_0.d.x))), vec3<bool>(var_2.c.x, !arg_0.d.x, all(var_2.c))), arg_0.e, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u & (u_input.b.x ^ 250u)), vec2<u32>(23996u, min(0u, u_input.c.x)) ^ _wgslsmith_div_vec2_u32(u_input.c.wy, _wgslsmith_add_vec2_u32(u_input.c.wy, vec2<u32>(4294967295u, 5351u)))));
    return Struct_2(var_3.b, vec4<i32>(reverseBits(2147483647i), ~(-1i), _wgslsmith_clamp_i32(reverseBits(var_3.a.x), -1i, _wgslsmith_clamp_i32(~38457i, -5385i, 0i)), 1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_3(~abs(arg_2.a), -_wgslsmith_mult_i32(u_input.a.x, -1i), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), vec3<bool>(!all(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, true, true, true)), true)), vec2<bool>(false, !(any(vec4<bool>(true, true, true, true)) && true)), arg_2);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1584f))));
    let var_2 = arg_2;
    var var_3 = ~(~(~(~u_input.c.x)) & arg_3);
    return Struct_3(func_3(Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(38067i, 28820i, arg_2.a, 2147483647i) | vec4<i32>(-6709i, var_2.a, -19687i, arg_0.a.x), arg_0.a), _wgslsmith_clamp_i32(-23796i, -48064i, u_input.a.x) << (arg_3 % 32u), !(!var_0.c), !vec2<bool>(true, var_0.d.x), Struct_1(arg_0.b.x >> (1u % 32u)))).a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -arg_0.a.wxy, func_2(select(var_0.c, var_0.c, true), Struct_1(1i), _wgslsmith_add_vec2_u32(vec2<u32>(43734u, 1u), vec2<u32>(u_input.b.x, arg_3))).a.zzy), arg_0.b.x), vec3<bool>(var_0.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.yxx, vec3<u32>(47930u, 32482u, u_input.c.x)), u_input.c.xzy) > 4294967295u, true), !var_0.d, arg_2);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3) -> u32 {
    global0 = u_input.b.x;
    let var_0 = ~(-abs(vec4<i32>(0i, arg_1.a & -64377i, 0i, reverseBits(-26481i))));
    global0 = 0u;
    global0 = _wgslsmith_add_u32(1u, u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-805f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -823f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return 51356u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = 359f;
    var var_1 = max(~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, 6015u), 4294967295u) | select(39319u, u_input.b.x, true), 1u);
    global0 = (func_5(u_input.c.wzx, func_4(func_2(vec3<bool>(true, false, true), Struct_1(-25454i), vec2<u32>(67057u, u_input.c.x)), func_3(Struct_3(-2147483647i, 55254i, vec3<bool>(true, true, true), vec2<bool>(false, false), arg_0)), arg_0, 0u)) & 4294967295u) << (_wgslsmith_mod_u32(~func_5(vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x), Struct_3(0i, -54184i, vec3<bool>(true, true, false), vec2<bool>(false, false), arg_0)), 0u) % 32u);
    var var_2 = 1u;
    let var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(u_input.a.x << (4294967295u % 32u)), 1i, ~(-829i), -arg_2.x >> (u_input.c.x % 32u)), -(~(-vec4<i32>(arg_2.x, arg_2.x, arg_0.a, arg_0.a)))), ~vec4<i32>(2147483647i, u_input.a.x | 2147483647i, 23134i, -1i), vec4<i32>(~(-1i), arg_2.x, reverseBits(_wgslsmith_mult_i32(u_input.a.x, func_2(vec3<bool>(false, false, false), arg_0, vec2<u32>(u_input.b.x, u_input.b.x)).a.x)), -1505i));
    return vec4<i32>(~(~_wgslsmith_dot_vec3_i32(~arg_2, func_2(vec3<bool>(false, true, false), arg_0, u_input.c.wz).b.wzw)), 2086i, arg_2.x, func_4(func_2(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), func_4(Struct_2(var_3, vec4<i32>(arg_2.x, 2147483647i, u_input.a.x, 14823i)), func_3(Struct_3(u_input.a.x, u_input.a.x, vec3<bool>(true, true, true), vec2<bool>(false, true), Struct_1(-57052i))), Struct_1(arg_0.a), 1u >> (1u % 32u)).e, ~(~vec2<u32>(u_input.b.x, 13195u))), func_2(vec3<bool>(any(vec2<bool>(false, true)), true, true), arg_0, _wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.b.x, 33538u), u_input.b, false), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), u_input.c.yw, u_input.b), vec2<u32>(90645u, 4294967295u))), Struct_1(-var_3.x), 41679u).a);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32, arg_3: u32) -> Struct_3 {
    return func_4(arg_0, Struct_2(_wgslsmith_mult_vec4_i32(-select(arg_0.b, vec4<i32>(-17523i, arg_0.a.x, -53882i, arg_0.b.x), arg_1.x), ~(-arg_0.a)), -_wgslsmith_add_vec4_i32(min(arg_0.a, vec4<i32>(-17410i, arg_0.a.x, u_input.a.x, arg_0.b.x)), vec4<i32>(12032i, arg_0.a.x, -8538i, arg_0.a.x))), func_4(func_3(Struct_3(arg_0.b.x, _wgslsmith_mod_i32(-8558i, 2147483647i), vec3<bool>(true, arg_1.x, arg_1.x), arg_1.xz, Struct_1(-26722i))), arg_0, Struct_1(u_input.a.x), ~func_5(vec3<u32>(0u, arg_2, 1u) & vec3<u32>(26441u, arg_2, u_input.b.x), func_4(Struct_2(arg_0.b, vec4<i32>(-2147483647i, u_input.a.x, 1i, 1i)), Struct_2(arg_0.b, arg_0.b), Struct_1(u_input.a.x), 21505u))).e, _wgslsmith_add_u32(arg_2, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 30624u;
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~reverseBits(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, -1246i)), _wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -58453i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(40510i, 1i, 4966i, u_input.a.x)), ~(-vec4<i32>(-27284i, u_input.a.x, u_input.a.x, -3193i)), max(~vec4<i32>(-23792i, 2147483647i, 52913i, u_input.a.x), vec4<i32>(30968i, 28189i, u_input.a.x, 2147483647i) >> (vec4<u32>(1224u, 4294967295u, u_input.c.x, 1u) % vec4<u32>(32u))))), u_input.a.x);
    var var_1 = func_6(Struct_2(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -62582i) & _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(-3089i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, -2147483647i))), (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i) | ~vec4<i32>(-27796i, -12392i, u_input.a.x, 19454i)) | ~func_1(Struct_1(u_input.a.x), vec2<f32>(1226f, -860f), vec3<i32>(1i, u_input.a.x, u_input.a.x))), vec3<bool>(true, true, true), 4294967295u, 4534u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(792f, 614f, -679f, -514f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2001f, -287f, -1386f, -124f) * vec4<f32>(-296f, -482f, -514f, -602f))))), var_1.e.a, -(~(-12i)));
}

