struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(20963i, 32174i, 1214i, 0i), vec3<u32>(4294967295u, 48736u, 40732u), vec3<bool>(false, false, false), vec2<bool>(true, true));

var<private> global2: vec2<i32> = vec2<i32>(-56743i, -1i);

var<private> global3: Struct_1 = Struct_1(250f, 53738i, vec2<f32>(-187f, -981f), true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_div_vec4_i32(~global0.a, -vec4<i32>(abs(global0.a.x), 1i >> (0u % 32u), -1i, ~(-21960i))), ~vec3<u32>(1u, u_input.a, ~1u), vec3<bool>(!global1.c.x, !(select(3136u, 1u, global3.d) > 20972u), global0.c.x), select(vec2<bool>(true, all(!vec2<bool>(arg_0.d, false))), vec2<bool>(any(select(vec4<bool>(global0.c.x, arg_0.d, arg_1.d, global3.d), vec4<bool>(global1.c.x, true, global1.d.x, global1.c.x), vec4<bool>(global3.d, arg_0.d, global1.c.x, true))), any(!vec4<bool>(arg_0.d, arg_0.d, arg_1.d, global0.d.x))), true));
    let var_1 = Struct_1(-618f, abs(global0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, 2127f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.c, vec2<f32>(187f, 982f))) - vec2<f32>(arg_1.c.x, -741f))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -714f) + -324f) > global3.c.x));
    global1 = Struct_2(global1.a, _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(select(global1.b, var_0.b, vec3<bool>(false, true, true)), abs(vec3<u32>(4294967295u, u_input.c.x, 17852u))), global1.b << (vec3<u32>(_wgslsmith_sub_u32(5313u, 1u), global1.b.x, 4294967295u) % vec3<u32>(32u))), global1.c, vec2<bool>(global1.d.x, all(vec4<bool>(false, var_0.c.x, !global1.d.x, var_0.d.x))));
    let var_2 = Struct_2(vec4<i32>(~(arg_0.b << (22755u % 32u)), (arg_0.b & u_input.b.x) << (global1.b.x % 32u), global2.x, ~(-39729i) | var_1.b) << (u_input.c % vec4<u32>(32u)), min(select(reverseBits(var_0.b), select(vec3<u32>(u_input.a, global0.b.x, global0.b.x), vec3<u32>(global1.b.x, 0u, var_0.b.x), global1.c), vec3<bool>(global3.d, true, true)) ^ vec3<u32>(~u_input.a, u_input.c.x, var_0.b.x), global1.b), vec3<bool>(select(true, !global1.c.x, false), all(select(global0.c, global0.c, select(vec3<bool>(false, true, global0.d.x), var_0.c, var_0.c))), select(false, !global3.d, any(vec4<bool>(true, false, var_1.d, global3.d))) || arg_1.d), vec2<bool>(!select(true, true, global1.d.x) & all(!vec4<bool>(true, global1.c.x, false, true)), true));
    var var_3 = var_1;
    return global1.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(~abs(global1.a.x), ~global2.x ^ ~0i, 0i, -u_input.b.x), -vec4<i32>(i32(-1i) * -1i, ~(-1i), -2147483647i, 49876i), global0.a), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.b.x, 0u, 58990u), global0.b << (vec3<u32>(29177u, 45423u, global1.b.x) % vec3<u32>(32u))), abs(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global1.b.x, 4294967295u), vec3<u32>(1u, u_input.a, 4294967295u))), vec3<u32>(~4294967295u, _wgslsmith_mult_u32(u_input.a, global1.b.x), ~global0.b.x)), !vec3<bool>(any(func_3(arg_1, arg_1, 617f)), false, true), select(vec2<bool>(!arg_1.d, true && arg_1.d), !vec2<bool>(1i <= global2.x, true), !global1.d));
    global0 = Struct_2(vec4<i32>(-1i) * -global1.a, reverseBits(~_wgslsmith_div_vec3_u32(u_input.c.wyw, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, 33376u, global1.b.x), global0.b))), !select(vec3<bool>(arg_1.d || false, any(vec2<bool>(global3.d, global1.d.x)), false), func_3(arg_1, Struct_1(-179f, global1.a.x, vec2<f32>(1015f, -890f), var_0.d.x), global3.a), vec3<bool>(true, true, true)), !(!(!func_3(arg_1, Struct_1(-1036f, 7946i, arg_1.c, global0.d.x), -527f).yz)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.x), 901f))))));
    let var_2 = _wgslsmith_dot_vec4_i32(min(min(vec4<i32>(-3995i, global3.b, arg_1.b, global2.x), reverseBits(global1.a)), global0.a ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, 1i, 41229i), var_0.a)), global0.a) & firstLeadingBit(-(-1i << (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(arg_0));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    global2 = select(u_input.b, abs(global0.a.zz), vec2<bool>(global1.c.x, global1.c.x));
    let var_0 = countOneBits(~(-vec4<i32>(global0.a.x, 2147483647i, 8020i, -32378i)) | -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-24896i, 1i, arg_0.b, global0.a.x), global1.a), vec4<i32>(-2147483647i, 10003i, -1i, global2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(44088i, -5917i, -17577i, 1i), global1.a)));
    global1 = Struct_2(vec4<i32>(reverseBits(1i), _wgslsmith_mod_i32(arg_0.b, i32(-1i) * -global0.a.x), ~firstLeadingBit(-2147483647i), 0i), vec3<u32>(16395u, _wgslsmith_mod_u32(global0.b.x, global0.b.x), global1.b.x), global1.c, vec2<bool>(any(vec2<bool>(true, arg_0.a >= -2021f)), select(global1.c.x != arg_0.d, global1.d.x, all(vec2<bool>(true, false))) & func_2(vec4<f32>(207f, -1653f, global3.a, arg_0.a), func_2(vec4<f32>(global3.a, global3.a, global3.c.x, global3.a), arg_0)).d));
    var var_1 = _wgslsmith_mult_u32(41676u, _wgslsmith_add_u32(reverseBits(countOneBits(abs(18430u))), _wgslsmith_dot_vec2_u32(~global1.b.yy, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(arg_1.x, arg_1.x)), _wgslsmith_div_vec2_u32(global0.b.xy, global0.b.zz)))));
    global3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.a, -1585f, -1690f, global3.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a, _wgslsmith_f_op_f32(global3.c.x + 1234f), global3.c.x))), arg_0);
    return Struct_2(var_0 ^ select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-12875i, 2147483647i, global1.a.x, -1i), global0.a, _wgslsmith_mult_vec4_i32(var_0, global1.a)), -(vec4<i32>(29344i, -1i, 4046i, -1i) | vec4<i32>(var_0.x, -16745i, global3.b, global3.b)), false), u_input.c.yzy >> (~abs(vec3<u32>(u_input.a, global1.b.x, 0u)) % vec3<u32>(32u)), global0.c, global1.c.zz);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global3 = Struct_1(-1000f, ~0i, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(383f + global3.c.x), _wgslsmith_f_op_f32(min(global3.c.x, -1024f))), -397f))), !global0.c.x);
    global1 = arg_2;
    global1 = Struct_2(global0.a, vec3<u32>(4294967295u, 22461u, _wgslsmith_mod_u32(firstLeadingBit(10157u >> (arg_1.b.x % 32u)), u_input.c.x)), !(!vec3<bool>(global1.d.x && global1.d.x, global3.d, global3.a == 2240f)), !func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1672f), firstLeadingBit(0i), global3.c, true), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.c.x, global3.a, global3.a)), Struct_1(939f, u_input.b.x, vec2<f32>(1011f, global3.c.x), arg_2.d.x)), 2169f).zz);
    let var_0 = !(!(!(!global0.d)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) * 242f);
    return 4294967295u != global1.b.x;
}

fn func_1() -> Struct_1 {
    global1 = Struct_2(abs(global1.a), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, 45587u, ~(~4294967295u)), firstLeadingBit(u_input.c.zyz)), select(vec3<bool>(global3.a >= global3.c.x, true, all(vec3<bool>(false, false, global3.d)) || (true & global3.d)), global0.c, global1.c), select(!(!(!vec2<bool>(global1.d.x, global1.d.x))), global1.c.xy, select(vec2<bool>(u_input.b.x > u_input.b.x, all(vec2<bool>(global3.d, true))), vec2<bool>(false & global3.d, !global0.d.x), !global1.d)));
    let var_0 = select(global0.c, select(global1.c, global0.c, global3.d), true & func_5(true, Struct_2(-vec4<i32>(global3.b, 0i, global0.a.x, 26325i), global1.b, select(global1.c, global0.c, global1.c.x), vec2<bool>(true, true)), func_4(func_2(vec4<f32>(444f, -1336f, 394f, 1218f), Struct_1(global3.a, -1i, global3.c, global0.c.x)), vec3<u32>(global0.b.x, u_input.a, u_input.c.x))));
    global0 = Struct_2(select(firstTrailingBit(~global0.a) ^ _wgslsmith_sub_vec4_i32(~global1.a, vec4<i32>(36334i, global3.b, global3.b, 28030i)), _wgslsmith_clamp_vec4_i32(global0.a, global1.a, global1.a), !(!select(vec4<bool>(true, global3.d, var_0.x, var_0.x), vec4<bool>(global0.c.x, false, global0.c.x, false), false))), global1.b, !vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.a, global3.a, -368f, 787f))), func_2(vec4<f32>(global3.a, -290f, global3.a, -1000f), Struct_1(global3.a, global0.a.x, global3.c, true))).d, !var_0.x, true), select(select(global1.c.yz, vec2<bool>(global3.d, true), !(!global1.c.x)), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f * global3.a)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a)))));
    global3 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-741f, global3.c.x))), global3.a, 1133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - -889f) * global3.c.x)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.c.x, global3.c.x, global3.c.x, -230f)))))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, global3.a, global3.c.x, global3.c.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a, global3.a, 849f, -246f), vec4<f32>(760f, global3.c.x, 280f, 1545f), var_0.x)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.a, global3.c.x, 1000f, 2057f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1055f, global3.a, 865f, -469f))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, global3.c.x, -541f, -1197f)), Struct_1(-324f, global1.a.x, global3.c, global1.c.x)))));
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.c.x), -156f)) - 287f)), -20452i, global3.c, !func_4(Struct_1(-189f, global1.a.x, _wgslsmith_f_op_vec2_f32(global3.c + global3.c), global3.d | true), global1.b).c.x);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(263f)) - global3.c.x), u_input.b.x, _wgslsmith_f_op_vec2_f32(global3.c - global3.c), func_3(Struct_1(549f, func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.a, 1047f, global3.a, 1786f))), Struct_1(global3.c.x, global2.x, vec2<f32>(global3.a, -804f), global3.d)).b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1017f, 191f) * vec2<f32>(315f, 814f)), global1.c.x), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2085f, 353f, 504f, 492f))), func_2(vec4<f32>(-458f, 980f, 323f, global3.a), func_2(vec4<f32>(-1000f, global3.a, -814f, 2460f), Struct_1(-814f, -4577i, global3.c, var_0.x)))), 523f).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a, -1208f, global0.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f - 921f)))), ~(-(12136i | _wgslsmith_add_i32(0i, global3.b))), vec2<f32>(_wgslsmith_f_op_f32(global3.c.x - -2179f), -568f), all(global0.c));
    var var_1 = global1.b.yy;
    global3 = func_1();
    var var_2 = any(select(vec3<bool>(var_0.d | global1.d.x, false & global1.c.x, true), vec3<bool>(select(global0.d.x, global0.d.x, global3.d), var_0.c.x == var_0.a, false), !(!global0.c))) && func_3(Struct_1(global3.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(27383i, global2.x, 2147483647i), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, 572f) + vec2<f32>(-1450f, global3.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 786f) + vec2<f32>(-719f, var_0.c.x))), global0.d.x), func_1(), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1270f - var_0.a), func_1().a), var_0.a)).x;
    var var_3 = 345f;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(var_0.a + -2075f)) - 881f) - -277f), (-3936i << (func_4(func_1(), vec3<u32>(4294967295u, global1.b.x, 13891u)).b.x % 32u)) << ((1u << (_wgslsmith_add_u32(_wgslsmith_sub_u32(15313u, var_1.x), 14730u) % 32u)) % 32u), global3.c, !global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, var_0.c.x))));
}

