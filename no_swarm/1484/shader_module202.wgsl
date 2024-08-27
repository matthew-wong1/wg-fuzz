struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec4<i32> {
    let var_0 = abs(min(18504u, 1u | _wgslsmith_dot_vec3_u32(global0.b.ywy, global0.b.ywy))) <= ~(~(~0u));
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(global0.c.x, u_input.b.x, 1i, 35893i), ~(-global0.a >> ((vec4<u32>(global0.b.x, 1384u, 4294967295u, 0u) | vec4<u32>(0u, u_input.c, 64151u, global0.b.x)) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(abs(abs(select(global0.b, global0.b, vec4<bool>(var_0, arg_0.x, false, false)))), vec4<u32>(u_input.c, ~_wgslsmith_clamp_u32(0u, u_input.c, global0.b.x), ~(~global0.b.x), u_input.c)), vec4<i32>(-13739i, 42354i, global0.a.x, select(max(-1i, global0.c.x), -1i, all(vec3<bool>(arg_0.x, true, arg_0.x)))) | _wgslsmith_mod_vec4_i32((vec4<i32>(global0.c.x, 2147483647i, 2147483647i, global0.c.x) >> (global0.b % vec4<u32>(32u))) ^ firstTrailingBit(global0.c), global0.a));
    var var_1 = Struct_1(global0.c & -vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(69422i, -1i, -1i), _wgslsmith_sub_i32(-1i, -19748i), abs(global0.c.x)), _wgslsmith_mult_vec4_u32(global0.b | _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 6114u, 0u, u_input.c), global0.b & vec4<u32>(53484u, global0.b.x, 76066u, u_input.c)), vec4<u32>(31117u, 18122u, 45637u, ~0u)), vec4<i32>(global0.a.x, reverseBits(-2147483647i), u_input.b.x, ~(min(0i, u_input.a.x) ^ -global0.c.x)));
    var_1 = Struct_1(-abs(vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a.zw, var_1.a.zx), ~var_1.c.x, _wgslsmith_mod_i32(2147483647i, u_input.a.x), ~global0.a.x)), global0.b, global0.a);
    var var_2 = Struct_1(vec4<i32>(-1i) * -(max(global0.a, vec4<i32>(0i, u_input.b.x, 1i, global0.a.x)) & (global0.c << (global0.b % vec4<u32>(32u)))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(26230u, global0.b.x, 0u, var_1.b.x), _wgslsmith_sub_vec4_u32(global0.b, vec4<u32>(u_input.c, var_1.b.x, u_input.c, global0.b.x))) | global0.b, vec4<i32>(var_1.c.x, i32(-1i) * -17916i, 1i, abs(u_input.b.x ^ select(var_1.a.x, u_input.a.x, false))));
    return -var_1.c;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    var var_0 = vec4<i32>(~(-1i), 22879i, u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.c.zxz << (global0.b.ywx % vec3<u32>(32u)), abs(-global0.a.yyx)), u_input.b.x));
    global0 = Struct_1(vec4<i32>(1i, 1i, ~(select(54353i, -11796i, arg_3) >> (_wgslsmith_sub_u32(19986u, global0.b.x) % 32u)), ~countOneBits(~global0.a.x)), vec4<u32>(abs(arg_0) << (4294967295u % 32u), ~(0u | u_input.c), min(_wgslsmith_mult_u32(arg_1.b.x, u_input.c), abs(4294967295u)), _wgslsmith_add_u32(arg_0, u_input.c) >> (arg_1.b.x % 32u)) >> (((countOneBits(global0.b) & ~vec4<u32>(u_input.c, 1u, 0u, u_input.c)) << (~select(vec4<u32>(arg_0, 84238u, 1u, 0u), global0.b, arg_3) % vec4<u32>(32u))) % vec4<u32>(32u)), ~select(_wgslsmith_div_vec4_i32(vec4<i32>(15293i, 0i, global0.a.x, 12509i), vec4<i32>(global0.a.x, var_0.x, -2147483647i, 0i) ^ vec4<i32>(17530i, u_input.b.x, var_0.x, global0.a.x)), arg_1.a & ~arg_1.a, false));
    global0 = Struct_1(func_3(select(select(!vec2<bool>(arg_3, false), select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, false), arg_3), true), !select(vec2<bool>(true, arg_3), vec2<bool>(true, arg_3), vec2<bool>(false, arg_3)), !select(vec2<bool>(false, false), vec2<bool>(true, arg_3), arg_3)), vec2<bool>(arg_3, false)), arg_1.b, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, ~1i, reverseBits(_wgslsmith_mult_i32(u_input.a.x, -2147483647i)), 12008i), abs(select(u_input.b, vec4<i32>(-2147483647i, 45774i, -2147483647i, global0.c.x), false)) ^ vec4<i32>(u_input.b.x, -1i, 1i, 34340i)));
    var var_1 = !all(select(select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(true, arg_3, true), true), vec3<bool>(false, arg_3, arg_3), vec3<bool>(arg_3, arg_3, arg_3))) & true;
    var_1 = arg_3;
    return ~arg_1.c.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(1i, countOneBits(-32333i), _wgslsmith_div_i32(arg_1.a.x, 16521i)), _wgslsmith_div_i32(min(arg_2.x, -2147483647i), 1i), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27269i, 1i, arg_1.a.x, 2863i), ~vec4<i32>(28701i, 0i, arg_2.x, arg_2.x)))), global0.b, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, arg_2.x), -69826i), ~(-global0.c.x), func_3(vec2<bool>(true, true), vec2<bool>(false, true)).x), _wgslsmith_clamp_vec4_i32(min(func_3(vec2<bool>(true, false), vec2<bool>(false, false)), firstLeadingBit(arg_1.c)), -_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, global0.c.x, 18769i, 0i), arg_1.a), arg_1.a)));
    global0 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, global0.c.x, -1i, 18962i), ~vec4<i32>(-1i, u_input.a.x, -2147483647i, -3980i)) & -arg_1.a, -var_0.a, ~countOneBits(vec4<i32>(-5457i, -2147483647i, u_input.a.x, u_input.a.x))), ~(~(~(~vec4<u32>(4294967295u, u_input.c, global0.b.x, 1u)))), arg_1.c);
    let var_1 = (select(~1i, firstLeadingBit(_wgslsmith_mod_i32(global0.c.x, arg_2.x)), all(vec3<bool>(false, false, false)) & true) ^ global0.c.x) < var_0.a.x;
    global0 = Struct_1(vec4<i32>(1i, 59675i, ~global0.a.x, _wgslsmith_clamp_i32(~7012i, arg_1.a.x, arg_1.c.x) | select(reverseBits(u_input.b.x), arg_2.x, true)), var_0.b, vec4<i32>(max(reverseBits(457i), global0.c.x), _wgslsmith_mod_i32(select(-12710i, arg_1.c.x, var_1) ^ ~arg_1.a.x, arg_1.c.x), 45865i, 34773i));
    global0 = var_0;
    return arg_1;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(10106i), 1i), u_input.b.yy);
    global0 = func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-527f * 749f), _wgslsmith_f_op_f32(f32(-1f) * -914f), -474f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1316f, -416f)), -1432f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(559f)) * 2183f), _wgslsmith_f_op_f32(f32(-1f) * -1491f), _wgslsmith_f_op_f32(-1f)))), Struct_1(vec4<i32>(i32(-1i) * -2147483647i, (var_0.x | 30732i) & ~(-31454i), func_2(u_input.c, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -1423i, var_0.x), global0.b, vec4<i32>(1i, global0.c.x, -30786i, u_input.a.x)), vec4<f32>(-797f, 1000f, -235f, -392f), true) & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -40580i, global0.c.x), vec3<i32>(-59307i, -2147483647i, -1i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-23809i, u_input.a.x), -2147483647i)), ~(~global0.b) >> (reverseBits(reverseBits(vec4<u32>(19936u, 0u, u_input.c, 1u))) % vec4<u32>(32u)), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(u_input.a.x, var_0.x, -5867i, u_input.b.x))), ~vec3<i32>(11396i, func_2(4294967295u, Struct_1(vec4<i32>(0i, -51953i, var_0.x, -1i), vec4<u32>(1u, 1u, arg_0, global0.b.x), u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(-315f, 419f, -166f, 834f), vec4<f32>(-602f, -379f, 1000f, -424f)), false), -10860i));
    var var_1 = !((_wgslsmith_f_op_f32(f32(-1f) * -1235f) == _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1184f, -1000f)))) | false);
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(656f, _wgslsmith_f_op_f32(-359f + -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1221f), _wgslsmith_f_op_f32(abs(1239f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(950f, 969f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(321f))))), Struct_1(vec4<i32>(-abs(global0.a.x), _wgslsmith_add_i32(~var_0.x, ~40157i), -21547i, -firstTrailingBit(var_0.x)), vec4<u32>(0u, ~func_4(vec4<f32>(-1000f, -1280f, 409f, -710f), Struct_1(vec4<i32>(2147483647i, u_input.a.x, var_0.x, u_input.a.x), vec4<u32>(1u, 74683u, u_input.c, u_input.c), vec4<i32>(-1i, global0.a.x, -2147483647i, var_0.x)), u_input.b.zyx).b.x, global0.b.x, 1u), firstTrailingBit(vec4<i32>(u_input.a.x, 2147483647i, 0i, var_0.x)) ^ abs(vec4<i32>(var_0.x, 1711i, var_0.x, var_0.x))), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, 1030f, -435f, 759f)), vec4<f32>(1591f, -335f, 308f, 903f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2110f, -849f, -532f, 445f) * vec4<f32>(-589f, -394f, 489f, 433f)), vec4<f32>(1264f, -597f, -931f, -1523f))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(269f, -1000f, 1690f, 967f) * vec4<f32>(-657f, 803f, 1722f, -1091f)), func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-284f, -739f, 447f, -1513f))), Struct_1(vec4<i32>(var_0.x, var_0.x, u_input.b.x, -21484i), vec4<u32>(68338u, global0.b.x, u_input.c, 0u), u_input.a), vec3<i32>(global0.a.x, u_input.a.x, u_input.b.x) & global0.c.yyz), func_4(vec4<f32>(-473f, -1179f, 1636f, -175f), func_4(vec4<f32>(-408f, 145f, -909f, 1598f), Struct_1(vec4<i32>(32932i, 0i, global0.a.x, 4477i), global0.b, vec4<i32>(24636i, var_0.x, global0.c.x, -8614i)), u_input.b.yzw), _wgslsmith_mod_vec3_i32(global0.a.yxy, vec3<i32>(var_0.x, 0i, 1i))).a.xwx), -(vec3<i32>(-1i) * -u_input.b.wxw)).c.zzy);
    var var_2 = Struct_1(vec4<i32>(u_input.b.x, abs(min(global0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, global0.a.x, -15479i), vec3<i32>(var_0.x, -3873i, var_0.x)))), var_0.x, 2147483647i), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.c), ~vec3<u32>(u_input.c, 24117u, 0u)), countOneBits(vec3<u32>(global0.b.x, 1u, 1u)) << (vec3<u32>(4294967295u, 64132u, global0.b.x) % vec3<u32>(32u))), abs(23523u), _wgslsmith_div_u32(global0.b.x, reverseBits(~arg_0)), max(min(arg_0, ~arg_0), _wgslsmith_dot_vec4_u32(global0.b, global0.b) | global0.b.x)), -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(global0.c), vec4<i32>(global0.a.x, global0.c.x, -2147483647i, 1i)), global0.c << (vec4<u32>(1u, 15785u, arg_0, global0.b.x) % vec4<u32>(32u))));
    return Struct_1(u_input.b, vec4<u32>((_wgslsmith_div_u32(arg_0, 4294967295u) & _wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(0u, 4294967295u, var_2.b.x, 76649u))) ^ 1u, max(global0.b.x, 8065u), global0.b.x, abs(_wgslsmith_dot_vec3_u32(var_2.b.yxz, global0.b.xxw))), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0.x, global0.a.x, -2147483647i) & vec4<i32>(-2147483647i, u_input.b.x, 1i, -2147483647i), _wgslsmith_mod_vec4_i32(var_2.c, u_input.a) & max(vec4<i32>(-25789i, u_input.b.x, 2147483647i, var_2.c.x), vec4<i32>(var_2.c.x, 2147483647i, -2147483647i, -10898i)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = select(select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, ~8568i > _wgslsmith_add_i32(global0.a.x, u_input.a.x)), vec2<bool>(var_0, true)), !vec2<bool>(all(!vec3<bool>(false, var_0, arg_2.x)), any(!vec3<bool>(var_0, false, false))), true);
    let var_2 = var_0;
    var var_3 = Struct_1(firstTrailingBit(arg_1.c), ~vec4<u32>(min(arg_1.b.x, u_input.c), _wgslsmith_clamp_u32(24740u, u_input.c, 15681u), global0.b.x, abs(8312u)) | vec4<u32>(82813u, ~arg_1.b.x, ~(~u_input.c), arg_1.b.x), select(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(12519i, i32(-1i) * -1177i, global0.c.x, -global0.a.x)), u_input.b, true));
    let var_4 = u_input.a.zxz;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1482f)))))));
    var var_1 = func_5((u_input.b.zxz ^ vec3<i32>(u_input.a.x, -5996i, u_input.a.x)) >> (vec3<u32>(u_input.c, global0.b.x, ~(~u_input.c)) % vec3<u32>(32u)), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0.b.x, 4294967295u), global0.b.x, global0.b.x | 4294967295u, u_input.c), vec4<u32>(_wgslsmith_mult_u32(u_input.c, global0.b.x), 1u, 65694u, reverseBits(u_input.c)))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    global0 = Struct_1(vec4<i32>(global0.a.x, _wgslsmith_sub_i32(global0.c.x | ~var_1.c.x, u_input.b.x), -47170i, var_1.c.x ^ -15079i), vec4<u32>(max(global0.b.x & u_input.c, func_4(vec4<f32>(1838f, 227f, 282f, 1000f), Struct_1(vec4<i32>(var_1.c.x, 2147483647i, global0.c.x, 39945i), vec4<u32>(global0.b.x, u_input.c, 16308u, var_1.b.x), vec4<i32>(30900i, u_input.b.x, var_1.c.x, 0i)), vec3<i32>(var_1.c.x, global0.a.x, u_input.b.x)).b.x) ^ abs(792u), ~(~33100u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 1u, 1u), global0.b.yyw)), ~_wgslsmith_add_u32(func_1(global0.b.x).b.x, 6222u), _wgslsmith_dot_vec2_u32(global0.b.yw, select(abs(var_1.b.zx), ~vec2<u32>(u_input.c, var_1.b.x), false))), vec4<i32>(func_3(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), false)).x, abs(var_1.c.x), countOneBits(64738i << (var_1.b.x % 32u)), i32(-1i) * -1i) & global0.c);
    global0 = func_4(vec4<f32>(-616f, _wgslsmith_f_op_f32(floor(-1000f)), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1928f, -789f)) * _wgslsmith_f_op_f32(162f - -1637f))))), func_1(func_1(~min(var_1.b.x, u_input.c)).b.x), vec3<i32>(0i, global0.c.x | (0i << (var_1.b.x % 32u)), _wgslsmith_mult_i32(global0.a.x, global0.c.x)));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, -1178f, 699f, 1000f) + vec4<f32>(-458f, -1294f, -314f, -568f))))), Struct_1(var_1.c, vec4<u32>(global0.b.x, u_input.c, ~global0.b.x, ~42532u) << ((~var_1.b >> (vec4<u32>(12977u, var_1.b.x, global0.b.x, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), ((vec4<i32>(var_1.c.x, -24217i, global0.c.x, global0.c.x) | vec4<i32>(global0.a.x, var_1.a.x, u_input.b.x, 0i)) << (reverseBits(vec4<u32>(4294967295u, 1u, 51193u, var_1.b.x)) % vec4<u32>(32u))) >> (select(~var_1.b, vec4<u32>(54662u, u_input.c, 49419u, var_1.b.x) ^ vec4<u32>(var_1.b.x, var_1.b.x, 1u, 1u), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))) % vec4<u32>(32u))), ~vec3<i32>(~u_input.a.x, 1i, global0.a.x));
    var_1 = Struct_1(-(-vec4<i32>(u_input.b.x, var_2.c.x, global0.a.x, global0.a.x) << (_wgslsmith_sub_vec4_u32(func_5(vec3<i32>(var_1.a.x, -1i, var_1.c.x), var_2, vec2<bool>(false, true)).b, ~vec4<u32>(var_2.b.x, global0.b.x, global0.b.x, 0u)) % vec4<u32>(32u))), var_1.b, vec4<i32>(-firstLeadingBit(1i), _wgslsmith_mod_i32(_wgslsmith_add_i32(global0.a.x, var_1.c.x), -var_2.a.x) ^ ~(~u_input.b.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, global0.c.x, var_1.c.x, var_1.a.x), var_1.a)), global0.a.x << (~87423u % 32u)), ~var_2.a.x));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1705f), _wgslsmith_f_op_f32(1290f + 436f)))))));
    var var_3 = _wgslsmith_add_u32(global0.b.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -116f), 1f, any(vec3<bool>(false, false, true)))))) * 255f), global0.b.x);
}

