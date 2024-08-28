struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = max(u_input.c.x, ~(select(firstLeadingBit(global0.x), ~0u, any(vec3<bool>(false, false, false))) >> (~(~global0.x) % 32u)));
    var var_1 = Struct_2(Struct_1((global1.wxw ^ -vec3<i32>(global1.x, -10854i, global1.x)) >> (vec3<u32>(~u_input.c.x, ~var_0, global0.x) % vec3<u32>(32u)), -29378i, true), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(-21040i), global1.x, u_input.a), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(global1.xwy, global1.wxw), global1.wwy)), u_input.a, any(vec4<bool>(true, true, true, true))), ~(vec3<u32>(global0.x, u_input.c.x, _wgslsmith_mod_u32(1u, 10256u)) ^ vec3<u32>(95752u, 0u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2333f - arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(179f, _wgslsmith_f_op_f32(f32(-1f) * -607f)))));
    var var_2 = Struct_2(var_1.a, Struct_1(select(vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.b.a, vec3<i32>(global1.x, u_input.a, global1.x)), var_1.b.b, _wgslsmith_mod_i32(var_1.b.a.x, global1.x)), var_1.b.a, any(vec2<bool>(false, false))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, u_input.a >> (4294967295u % 32u)), 0i), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), vec3<u32>(firstLeadingBit(select(14556u, ~63043u, var_1.b.c & var_1.a.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, global0.x) << (var_1.c.zy % vec2<u32>(32u)), vec2<u32>(var_0, var_0) >> (global0.ww % vec2<u32>(32u))) & _wgslsmith_mult_u32(_wgslsmith_clamp_u32(14527u, global0.x, 22122u), var_1.c.x), _wgslsmith_div_u32(~_wgslsmith_mult_u32(4294967295u, u_input.b), 79610u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1969f + arg_0))));
    global0 = vec4<u32>(_wgslsmith_dot_vec3_u32(max(var_2.c, ~vec3<u32>(var_0, global0.x, u_input.b)), ~u_input.c.xyx), _wgslsmith_sub_u32(~var_1.c.x, abs(0u)), 1u, 1u) >> (~reverseBits(u_input.c) % vec4<u32>(32u));
    var_1 = Struct_2(var_1.a, var_2.b, firstTrailingBit(~_wgslsmith_div_vec3_u32(global0.yzw, vec3<u32>(var_2.c.x, 4294967295u, var_1.c.x))) << (select(~max(u_input.c.yxy, global0.wyz), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, var_2.c.x, global0.x), ~var_2.c), var_2.a.c) % vec3<u32>(32u)), 645f);
    return u_input.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> u32 {
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b ^ _wgslsmith_dot_vec3_u32(global0.wzy, global0.xzw), global0.x, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_u32(u_input.c, min(vec4<u32>(u_input.b, global0.x, 4294967295u, 44316u), vec4<u32>(u_input.b, 57218u, global0.x, 0u))) << (~max(u_input.c, func_3(-520f)) % vec4<u32>(32u)));
    var var_0 = 0i;
    var var_1 = Struct_2(Struct_1(global1.zyz, abs(global1.x), true || any(vec3<bool>(false, arg_1.x, true))), Struct_1(global1.ywz, firstLeadingBit(abs(-u_input.a)), arg_0.x), vec3<u32>(_wgslsmith_dot_vec3_u32(select(select(global0.wxw, vec3<u32>(global0.x, 4132u, 0u), vec3<bool>(arg_0.x, false, false)), ~vec3<u32>(4294967295u, global0.x, 1u), arg_0), abs(_wgslsmith_mod_vec3_u32(u_input.c.zxz, vec3<u32>(global0.x, 41176u, u_input.b)))), u_input.b | ~40633u, countOneBits((global0.x & u_input.b) ^ 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1370f), -1230f)));
    let var_2 = ~(~max(~vec4<u32>(global0.x, global0.x, 1u, 1656u), ~(~vec4<u32>(1u, 0u, 1616u, u_input.b))));
    let var_3 = _wgslsmith_sub_u32(abs((max(global0.x, var_1.c.x) << (1u % 32u)) ^ var_2.x), _wgslsmith_mult_u32(global0.x, ~33725u));
    return countOneBits(40307u);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global0 = vec4<u32>(func_2(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false)), vec4<bool>(true, true, true, true)), ~firstTrailingBit(_wgslsmith_mod_u32(~global0.x, _wgslsmith_dot_vec2_u32(u_input.c.wz, arg_0.xx))), ~(~((13354u | global0.x) | ~0u)), 27758u);
    let var_0 = u_input.a;
    var var_1 = Struct_1(vec3<i32>(var_0, abs(~_wgslsmith_mod_i32(global1.x, -43003i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -1i, -30174i, global1.x), vec4<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(58354i, 1i, 0i, 2147483647i), vec4<i32>(global1.x, var_0, 33236i, -1i)), max(u_input.a, 27906i), -11013i))), u_input.a, true);
    var var_2 = 0i >> (countOneBits(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1578f + -1080f)))).x) % 32u);
    var_2 = 25391i;
    return Struct_1(_wgslsmith_add_vec3_i32(~(-vec3<i32>(var_1.a.x, 22559i, var_1.a.x)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-38762i, -2147483647i, global1.x), var_1.a))), ~(i32(-1i) * -u_input.a), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = ~(~4294967295u);
    global1 = vec4<i32>(6057i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1045i, arg_2.a.x, 39070i, u_input.a) | reverseBits(vec4<i32>(arg_2.b, global1.x, 37039i, u_input.a))), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, u_input.a, arg_2.b, -59026i), reverseBits(vec4<i32>(u_input.a, arg_2.b, arg_2.a.x, u_input.a)))), ~global1.x, global1.x);
    global1 = _wgslsmith_mod_vec4_i32(min(vec4<i32>(12189i ^ global1.x, arg_3.x >> (global0.x % 32u), -3020i >> (var_0 % 32u), 1i), -(vec4<i32>(arg_2.a.x, arg_2.b, u_input.a, arg_3.x) | vec4<i32>(u_input.a, global1.x, -1i, -9465i))), vec4<i32>(_wgslsmith_add_i32(arg_3.x, -1i), arg_3.x, global1.x, _wgslsmith_mult_i32(-24983i, arg_3.x)) & vec4<i32>(~arg_2.a.x, arg_3.x, u_input.a, _wgslsmith_mult_i32(21000i, arg_2.a.x))) | reverseBits(-(~vec4<i32>(u_input.a, 31929i, -2147483647i, arg_2.a.x)));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_clamp_vec4_i32(-(~abs(max(vec4<i32>(-1i, u_input.a, -28872i, u_input.a), vec4<i32>(arg_2.b, 37689i, global1.x, 6774i)))), max(abs(vec4<i32>(global1.x, global1.x, -2147483647i, arg_1.a.x) >> (vec4<u32>(global0.x, global0.x, 4294967295u, 61430u) % vec4<u32>(32u))), -(~vec4<i32>(27833i, -1i, var_1.b, global1.x))) | min(vec4<i32>(_wgslsmith_div_i32(0i, u_input.a), reverseBits(global1.x), ~(-1i), abs(-2147483647i)), vec4<i32>(_wgslsmith_sub_i32(-5806i, arg_1.a.x), 6862i, -5753i, var_1.b)), _wgslsmith_add_vec4_i32(reverseBits(abs(vec4<i32>(-30685i, var_1.a.x, 1i, arg_3.x))) | vec4<i32>(~arg_3.x, u_input.a << (u_input.b % 32u), arg_2.a.x, arg_1.a.x), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.x, 0i, arg_1.b, arg_2.a.x), vec4<i32>(-2147483647i, global1.x, arg_1.a.x, arg_1.b), vec4<i32>(var_1.b, arg_2.b, arg_1.b, -951i)) | _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.x, -28651i, arg_2.a.x, arg_1.a.x), vec4<i32>(2147483647i, arg_1.a.x, -1i, 2147483647i)), min(-vec4<i32>(-2147483647i, 1i, -35082i, -2147483647i), vec4<i32>(2147483647i, -1i, u_input.a, arg_3.x)))));
    return vec4<i32>(-9172i, -arg_1.a.x, 1i, select(u_input.a >> ((global0.x << (~u_input.c.x % 32u)) % 32u), global1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(~global1.x, _wgslsmith_add_i32(global1.x, -23796i));
    var var_1 = Struct_1(min(-min(global1.wyy, ~vec3<i32>(u_input.a, u_input.a, 1i)), global1.wwx | ~(~vec3<i32>(76856i, var_0, var_0))), u_input.a, true);
    let var_2 = Struct_1(global1.wxx, reverseBits(var_0), var_1.c);
    global1 = -func_4(!select(select(vec2<bool>(var_1.c, false), vec2<bool>(true, true), var_2.c), vec2<bool>(false, false), all(vec2<bool>(false, var_1.c))), func_1(~(~global0.wyx)), var_2, var_1.a.yz & select(var_2.a.yy, vec2<i32>(var_2.a.x, var_2.a.x), any(vec2<bool>(true, false))));
    var var_3 = var_1.c;
    let var_4 = Struct_1(vec3<i32>(abs(min(u_input.a, var_2.a.x) | -1278i), _wgslsmith_add_i32(~(~80602i), var_0), 1i), var_1.b, var_2.c);
    var var_5 = var_4;
    var_1 = func_1(global0.yzw);
    global0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~global0.x, 46795u ^ u_input.c.x, u_input.c.x, min(11910u, ~0u)), vec4<u32>(~func_3(1367f).x, 22772u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 118122u, 6656u), u_input.c), global0.x), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(730f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 421f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-556f)), -180f))))), vec4<i32>(-_wgslsmith_sub_i32(var_1.b, -28204i), _wgslsmith_add_i32(var_5.a.x, func_4(vec2<bool>(true, var_1.c), var_4, Struct_1(var_4.a, -1i, var_1.c), vec2<i32>(var_4.b, 2779i)).x), _wgslsmith_sub_i32(-u_input.a, var_0), firstLeadingBit(firstTrailingBit(-30964i))) & firstTrailingBit(vec4<i32>(~var_5.a.x, reverseBits(global1.x), _wgslsmith_add_i32(50183i, 11085i), var_2.a.x)));
}

