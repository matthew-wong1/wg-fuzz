struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<i32>(-106i, -12382i, 3695i), 16944u, false, vec4<f32>(-915f, -639f, -2084f, -1117f), false), 26709u, vec4<i32>(-25104i, 0i, -19455i, -1i), vec2<i32>(-8874i, i32(-2147483648)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(firstLeadingBit(-7289i)), abs(~u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.yx, global0.d) << (u_input.b % 32u), select(18283i, 2147483647i, global0.a.c)), _wgslsmith_sub_vec4_i32(-abs(vec4<i32>(u_input.a.x, global0.d.x, global0.a.a.x, global0.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0.c.x, -35747i, global0.c.x), global0.c))), countOneBits(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, -1i), global0.d))), _wgslsmith_mult_i32(global0.c.x, _wgslsmith_div_i32(-(~0i), ~abs(u_input.a.x))), reverseBits(26477i));
    global0 = Struct_4(Struct_3(vec3<i32>(u_input.a.x, reverseBits(1i), -u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(7957u, u_input.b, global0.a.b), ~vec3<u32>(23063u, global0.b, 113868u)) ^ global0.a.b, global0.a.e, _wgslsmith_f_op_vec4_f32(trunc(global0.a.d)), 0u < ((global0.b << (global0.b % 32u)) >> (select(global0.a.b, u_input.b, global0.a.e) % 32u))), ~u_input.b, -vec4<i32>(-global0.c.x, firstTrailingBit(-8461i), _wgslsmith_div_i32(global0.a.a.x, 5021i), var_0.x) & _wgslsmith_mod_vec4_i32(vec4<i32>(16543i, -707i, u_input.a.x, abs(-1i)), vec4<i32>(-1i) * -global0.c), ~(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.a.x, -24717i)), vec2<i32>(-3738i, -2147483647i)) >> (vec2<u32>(1u, ~global0.a.b) % vec2<u32>(32u))));
    var var_1 = !(global0.a.e & (_wgslsmith_f_op_f32(_wgslsmith_div_f32(119f, 1000f) - -1209f) >= global0.a.d.x));
    let var_2 = global0.a;
    let var_3 = 0i;
    return var_0 >> (_wgslsmith_clamp_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.a.b, 1u, 6102u), vec4<u32>(global0.a.b, u_input.b, global0.a.b, u_input.b))), vec4<u32>(1u, (u_input.b >> (var_2.b % 32u)) & 917u, global0.a.b, ~var_2.b), ~(vec4<u32>(u_input.b, var_2.b, var_2.b, u_input.b) << (vec4<u32>(63901u, 68398u, 4294967295u, var_2.b) % vec4<u32>(32u))) >> (~countOneBits(vec4<u32>(4294967295u, 61209u, 0u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = global0.d.x;
    global0 = Struct_4(global0.a, _wgslsmith_div_u32(~firstTrailingBit(~global0.a.b), _wgslsmith_mod_u32(u_input.b, select(global0.b, _wgslsmith_div_u32(global0.a.b, u_input.b), global0.a.c && false))), func_3() >> (min(~vec4<u32>(0u, global0.a.b, u_input.b, global0.a.b) >> (select(vec4<u32>(1u, global0.a.b, global0.b, 47772u), vec4<u32>(u_input.b, global0.a.b, u_input.b, global0.b), false) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(65190u, global0.a.b, 0u, global0.b), vec4<u32>(global0.a.b, 31880u, global0.a.b, 32008u), vec4<u32>(global0.b, 0u, 1u, u_input.b)), ~vec4<u32>(global0.a.b, 50355u, global0.b, 1u))) % vec4<u32>(32u)), global0.d);
    var_0 = global0.d.x;
    var var_1 = _wgslsmith_f_op_f32(sign(-1137f));
    var_1 = _wgslsmith_f_op_f32(398f + _wgslsmith_f_op_f32(floor(1522f)));
    return global0.a;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: f32) -> Struct_4 {
    let var_0 = vec2<bool>(true, all(!(!select(vec4<bool>(arg_2.a.e, arg_2.a.e, true, true), vec4<bool>(false, false, false, false), global0.a.c))));
    global0 = Struct_4(func_2(1000f), global0.a.b, global0.c, global0.d);
    var var_1 = true;
    var_1 = var_0.x;
    var var_2 = Struct_3(~(vec3<i32>(global0.d.x, global0.c.x, 2147483647i) ^ vec3<i32>(2147483647i, u_input.a.x, 1i)) | u_input.a, min(4294967295u, ~firstTrailingBit(arg_2.a.b)), any(!select(select(var_0, vec2<bool>(arg_2.a.e, true), var_0), vec2<bool>(true, false), any(vec4<bool>(true, global0.a.e, false, false)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(-701f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f + arg_3)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a.d.x - arg_0))), _wgslsmith_f_op_f32(trunc(global0.a.d.x))))), var_0.x);
    return arg_2;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-1350f + global0.a.d.x));
    global0 = Struct_4(func_1(_wgslsmith_f_op_f32(global0.a.d.x + 1000f), vec4<u32>(_wgslsmith_sub_u32(abs(4294967295u), arg_0.a.b), _wgslsmith_clamp_u32(~1u, 15413u & arg_0.a.b, ~2336u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, var_0.b, 3950u, u_input.b), ~vec4<u32>(1u, 4294967295u, 55689u, 46226u)), ~countOneBits(u_input.b)), func_1(733f, _wgslsmith_add_vec4_u32(select(vec4<u32>(var_0.b, 50577u, 35763u, u_input.b), vec4<u32>(1u, 50583u, global0.a.b, 12313u), global0.a.e), ~vec4<u32>(global0.a.b, 4294967295u, var_0.b, 4294967295u)), func_1(229f, max(vec4<u32>(74290u, u_input.b, var_0.b, var_0.b), vec4<u32>(var_0.b, arg_0.b, 27674u, u_input.b)), func_1(arg_0.a.d.x, vec4<u32>(arg_0.b, 14816u, 0u, u_input.b), Struct_4(Struct_3(vec3<i32>(2147483647i, -13083i, -1505i), 10614u, true, vec4<f32>(1162f, global0.a.d.x, arg_0.a.d.x, -494f), var_0.e), 59278u, vec4<i32>(arg_0.c.x, -1i, arg_1.x, 0i), u_input.a.zx), arg_0.a.d.x), -1957f), var_0.d.x), _wgslsmith_div_f32(global0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d.x + arg_0.a.d.x)))).a, var_0.b, global0.c, -(~global0.c.wx) & _wgslsmith_div_vec2_i32(vec2<i32>(~(-8462i), _wgslsmith_dot_vec2_i32(vec2<i32>(11336i, u_input.a.x), vec2<i32>(u_input.a.x, 2147483647i))), _wgslsmith_mult_vec2_i32(var_0.a.yx, vec2<i32>(var_0.a.x, arg_1.x))));
    global0 = arg_0;
    let var_1 = countOneBits(vec2<u32>(4294967295u, 1u));
    var var_2 = func_2(583f).d;
    return countOneBits(-15343i);
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    global0 = Struct_4(func_2(global0.a.d.x), func_2(global0.a.d.x).b, vec4<i32>(global0.a.a.x & arg_0, 57984i, func_2(-1273f).a.x << (min(8690u, arg_1.x) % 32u), 1i), global0.a.a.xy);
    global0 = func_1(global0.a.d.x, max(vec4<u32>(firstLeadingBit(40970u), ~4294967295u, abs(1u), _wgslsmith_dot_vec2_u32(arg_1.xy, vec2<u32>(u_input.b, arg_1.x))) & countOneBits(vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x)), (_wgslsmith_sub_vec4_u32(vec4<u32>(13101u, 8955u, arg_1.x, global0.a.b), vec4<u32>(4294967295u, 0u, 46030u, global0.b)) | (vec4<u32>(arg_1.x, global0.a.b, 57945u, global0.a.b) & vec4<u32>(arg_1.x, arg_1.x, global0.b, arg_1.x))) ^ vec4<u32>(u_input.b, ~global0.a.b, arg_1.x, ~u_input.b)), Struct_4(func_1(_wgslsmith_f_op_f32(min(global0.a.d.x, 1f)), vec4<u32>(func_2(255f).b, arg_1.x, 6289u, global0.b), func_1(-431f, ~vec4<u32>(global0.a.b, 91177u, 25854u, global0.b), Struct_4(global0.a, 4294967295u, vec4<i32>(global0.a.a.x, -27711i, global0.c.x, 1i), vec2<i32>(u_input.a.x, -2147483647i)), _wgslsmith_f_op_f32(step(global0.a.d.x, global0.a.d.x))), _wgslsmith_f_op_f32(-487f + global0.a.d.x)).a, func_1(_wgslsmith_f_op_f32(f32(-1f) * -449f), ~vec4<u32>(u_input.b, 21506u, arg_1.x, arg_1.x), Struct_4(global0.a, 94346u, vec4<i32>(33948i, global0.c.x, -12137i, u_input.a.x), vec2<i32>(global0.a.a.x, 2147483647i)), _wgslsmith_f_op_f32(-721f - 1356f)).a.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(111431u, 1u, arg_1.x) & vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(global0.a.b, 4766u, 31098u)) % 32u), _wgslsmith_sub_vec4_i32(-(global0.c << (vec4<u32>(16233u, u_input.b, 1u, u_input.b) % vec4<u32>(32u))), vec4<i32>(reverseBits(u_input.a.x), abs(arg_0), -2147483647i, -26338i)), ~vec2<i32>(1i, 2784i)), _wgslsmith_f_op_f32(f32(-1f) * -283f));
    global0 = Struct_4(Struct_3(global0.a.a ^ max(vec3<i32>(u_input.a.x, 36358i, -1i), max(vec3<i32>(u_input.a.x, 64983i, -52013i), vec3<i32>(29386i, -1i, 32538i))), countOneBits(1u), false, global0.a.d, any(select(vec2<bool>(false, global0.a.c), vec2<bool>(true, false), vec2<bool>(false, global0.a.e))) && false), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(0u, 1u, 1u, 0u)), abs(vec4<u32>(1u, 19304u, u_input.b, u_input.b)) | vec4<u32>(global0.a.b, 4294967295u, 1u, u_input.b)) << ((5200u << (0u % 32u)) % 32u), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.d.x, u_input.a.x, 1i, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, global0.c.x, 3915i))), 0i), 5780i, ~u_input.a.x, -_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, u_input.a.x), _wgslsmith_add_i32(global0.d.x, u_input.a.x))), vec2<i32>(-arg_0, -7154i));
    let var_0 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.x))))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, u_input.b, 1u), arg_1), _wgslsmith_div_u32(u_input.b, 6623u), ~23914u, firstLeadingBit(1u)), vec4<u32>(global0.b, u_input.b, 1u, 4294967295u) & ~vec4<u32>(u_input.b, 40728u, global0.b, 0u)) ^ reverseBits(select(vec4<u32>(9731u, arg_1.x, u_input.b, u_input.b) >> (vec4<u32>(global0.b, 65844u, 4294967295u, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(34437u, global0.b, 0u, 4294967295u), !vec4<bool>(true, global0.a.e, true, false))), func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.d.x))), vec4<u32>(4294967295u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(6272u, global0.b, 1u, 1u), vec4<u32>(global0.b, 1u, global0.b, arg_1.x))), ~_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(global0.b, 15904u, 13933u)), arg_1.x), Struct_4(global0.a, 1u, select(vec4<i32>(18246i, 1i, global0.a.a.x, -13606i), func_3(), global0.a.e), -vec2<i32>(global0.a.a.x, u_input.a.x)), _wgslsmith_div_f32(933f, 587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.x)));
    global0 = func_1(var_0.a.d.x, vec4<u32>(var_0.b, ~(arg_1.x ^ 43035u), u_input.b, _wgslsmith_mult_u32(func_2(-884f).b, func_1(_wgslsmith_f_op_f32(879f + global0.a.d.x), vec4<u32>(14545u, var_0.b, u_input.b, arg_1.x), Struct_4(var_0.a, var_0.b, global0.c, vec2<i32>(23680i, 2147483647i)), _wgslsmith_f_op_f32(round(427f))).a.b)), Struct_4(func_2(var_0.a.d.x), ~1u, -global0.c, ~max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_0.a.a.x, 0i)), _wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(-1i, var_0.c.x)))), var_0.a.d.x);
    return Struct_2(arg_1, vec4<f32>(-1000f, func_2(_wgslsmith_f_op_f32(-var_0.a.d.x)).d.x, global0.a.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.d.x * _wgslsmith_f_op_f32(step(global0.a.d.x, 983f)))))), global0.a.d.x, arg_1.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_clamp_i32(global0.a.a.x, _wgslsmith_div_i32(func_4(func_1(1142f, vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b), Struct_4(Struct_3(global0.a.a, 23167u, true, vec4<f32>(global0.a.d.x, global0.a.d.x, global0.a.d.x, -347f), false), u_input.b, global0.c, vec2<i32>(u_input.a.x, -15203i)), global0.a.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(-33271i, u_input.a.x, -26177i, 1i), global0.c)), -global0.a.a.x), i32(-1i) * -2827i), max(max(~reverseBits(vec3<u32>(4294967295u, 30834u, 33371u)), vec3<u32>(_wgslsmith_clamp_u32(1u, 61712u, 60025u), 0u, 100206u)), firstTrailingBit(vec3<u32>(0u, func_2(global0.a.d.x).b, ~global0.a.b))));
    let var_1 = ~var_0.d & ((var_0.d | vec2<u32>(1u, global0.a.b)) | _wgslsmith_mod_vec2_u32(var_0.a.zy, vec2<u32>(global0.b, 1u)));
    var var_2 = select(min(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b, global0.b, var_0.a.x) << (var_0.a % vec3<u32>(32u)), vec3<u32>(var_0.d.x, global0.a.b, var_1.x)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, 4294967295u, 46382u)), vec3<u32>(var_1.x, 15681u, var_1.x))), vec3<u32>(func_5(-76623i << (u_input.b % 32u), vec3<u32>(global0.b, 71382u, var_1.x)).d.x, abs(u_input.b), 1u)), vec3<u32>(var_0.d.x, _wgslsmith_clamp_u32(var_0.d.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), ~vec4<u32>(1u, u_input.b, var_1.x, 20828u)), _wgslsmith_sub_u32(~1u, ~global0.b)), 97257u), true);
    var_0 = func_5(u_input.a.x, max(vec3<u32>(abs(global0.b), 10762u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 21303u, 95308u), vec4<u32>(var_0.a.x, 1u, var_2.x, u_input.b)))), vec3<u32>(firstLeadingBit(1u), 10528u, u_input.b)));
    var var_3 = false;
    var var_4 = vec4<bool>(global0.a.c, all(select(vec4<bool>(true, all(vec2<bool>(true, global0.a.e)), true, true), select(vec4<bool>(global0.a.e, true, global0.a.c, true), vec4<bool>(true, global0.a.e, global0.a.e, global0.a.e), false), u_input.a.x < 31055i)), false, global0.a.c);
    var var_5 = abs(~vec2<i32>(-countOneBits(u_input.a.x), countOneBits(-global0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(~26049i << (1u % 32u), vec3<u32>(_wgslsmith_mult_u32(12282u, 6649u), ~select(1u, 21133u, true), var_2.x)).a.yy);
}

