struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, Struct_1(false), Struct_1(true));

var<private> global1: vec4<i32> = vec4<i32>(-21775i, 17882i, -14906i, -2100i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    global0 = Struct_2(firstTrailingBit(~global0.a), arg_2.b, global0.b);
    var var_0 = Struct_1(!any(!(!vec3<bool>(arg_2.c.a, arg_2.c.a, global0.c.a))));
    var var_1 = -1146f;
    let var_2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~global0.a, ~u_input.a.x), vec3<u32>(min(u_input.c.x, 45806u), 4294967295u, ~u_input.c.x)), ~min(abs(36810u), u_input.c.x ^ 916u)), ~u_input.a.x, ~min(u_input.b.x, global0.a), 14497u);
    var var_3 = Struct_4(max(1u, ~(26473u >> (abs(var_2.x) % 32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false))))))));
    return (~vec3<u32>(~0u, u_input.a.x, select(1u, var_2.x, true)) << (vec3<u32>(abs(arg_2.a) | 1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b), vec2<u32>(var_2.x, global0.a)), _wgslsmith_mult_u32(abs(var_2.x), u_input.c.x)) % vec3<u32>(32u))) << (~var_2.yww % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = ~countOneBits(_wgslsmith_div_i32(-(i32(-1i) * -1i), _wgslsmith_sub_i32(arg_1.x, ~u_input.d)));
    global0 = Struct_2(~max(~1u, 4294967295u), global0.b, Struct_1(!(select(global0.b.a, true, global0.b.a) | any(vec4<bool>(true, global0.c.a, false, arg_0.a)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-188f)), -1505f, _wgslsmith_f_op_f32(-613f - -555f));
    let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32((vec3<u32>(global0.a, 9419u, 0u) & vec3<u32>(4294967295u, 20426u, global0.a)) >> (~vec3<u32>(15956u, 9492u, 3281u) % vec3<u32>(32u)), func_3(_wgslsmith_f_op_vec2_f32(step(var_1.zx, vec2<f32>(-1122f, var_1.x))), ~arg_1.x, Struct_2(1u, arg_0, global0.c))), _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, 1u, u_input.a.x), vec3<u32>(4294967295u, 1u, 34111u), vec3<u32>(u_input.c.x, 44965u, u_input.a.x)), abs(vec3<u32>(15991u, u_input.b.x, global0.a)))), arg_0, Struct_1((select(true, true, global0.b.a) & true) & true));
    let var_3 = global0.b;
    return global0.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = vec3<i32>(~u_input.d ^ u_input.d, ~_wgslsmith_clamp_i32(u_input.d, global1.x, arg_0.d.x), _wgslsmith_mod_i32(arg_0.d.x, global1.x));
    let var_1 = global1.x;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(78023u, u_input.a.x, _wgslsmith_sub_u32(2669u, global0.a), abs(~arg_0.b.a)), vec4<u32>(~(~(~arg_0.c.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, global0.a, 91691u, arg_1.x), vec4<u32>(arg_1.x, arg_0.c.x, 4294967295u, 5049u)), 0u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 10411u), vec3<u32>(0u, 67617u, 41667u)), _wgslsmith_div_u32(u_input.c.x, 4294967295u))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, u_input.b.x), ~u_input.c)), 0u));
    return Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(9272u, 17572u, _wgslsmith_clamp_u32(global0.a, 47215u, 5477u), 4294967295u), min(vec4<u32>(arg_1.x, arg_0.c.x, 61596u, u_input.c.x) & vec4<u32>(arg_0.a.x, global0.a, arg_0.b.a, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 18359u, 61331u), vec4<u32>(global0.a, global0.a, u_input.c.x, 56804u)))) >> (abs(~(~u_input.a.x)) % 32u), Struct_1(arg_0.b.b.a), global0.c);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = vec3<f32>(1419f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + var_0.b)), -333f);
    global0 = func_4(Struct_3(_wgslsmith_div_vec2_u32(u_input.a, abs(firstTrailingBit(vec2<u32>(global0.a, var_0.a)))), Struct_2(~(~0u), func_2(Struct_1(arg_2.x), global1.wyx), Struct_1(true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(arg_0.a), 1u), firstLeadingBit(max(vec2<u32>(8048u, 0u), u_input.c)), vec2<u32>(33853u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 63623u), vec3<u32>(29117u, 53700u, 0u)))), vec4<i32>(-global1.x, ~(~1i), firstLeadingBit(global1.x), 0i)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 0u), ~vec3<u32>(84853u, 82677u, 0u))));
    let var_2 = _wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(-2147483647i, u_input.d, _wgslsmith_add_i32(-1i, -33510i)), 40327i), u_input.d | -(-49217i & u_input.d));
    var var_3 = global0.b.a;
    return vec2<bool>((-1277f > var_0.b) || (_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-157f)), 783f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x)))), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: f32) -> Struct_3 {
    global0 = Struct_2(global0.a, global0.b, Struct_1(arg_0.x));
    global0 = func_4(Struct_3(vec2<u32>(0u, ~u_input.a.x >> (global0.a % 32u)), Struct_2(countOneBits(u_input.c.x), func_4(Struct_3(vec2<u32>(0u, 1u), Struct_2(u_input.b.x, global0.c, global0.c), u_input.c, vec4<i32>(global1.x, -54575i, 26189i, global1.x)), vec3<u32>(20517u, 74467u, 66753u) << (vec3<u32>(4294967295u, global0.a, u_input.c.x) % vec3<u32>(32u))).b, Struct_1(true)), u_input.c, vec4<i32>(_wgslsmith_add_i32(u_input.d, -global1.x), -13240i, countOneBits(global1.x), -2147483647i)), ~select(vec3<u32>(~global0.a, select(global0.a, global0.a, arg_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(41099u, u_input.c.x, 9929u), vec3<u32>(u_input.a.x, 0u, 25916u))), ~vec3<u32>(96417u, 16568u, u_input.b.x) ^ ~vec3<u32>(u_input.b.x, 1u, u_input.a.x), global0.c.a));
    var var_0 = false;
    global1 = -vec4<i32>(u_input.d, ~(-4206i), u_input.d, min(global1.x ^ countOneBits(1137i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global1.yz, vec2<i32>(u_input.d, 2147483647i)), -1i)));
    var_0 = true;
    return Struct_3(u_input.c << (u_input.c % vec2<u32>(32u)), func_4(Struct_3(~vec2<u32>(15579u, 1u), Struct_2(u_input.c.x, global0.b, Struct_1(false)), vec2<u32>(4294967295u, 11681u), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-3022i, -8825i, 23743i, u_input.d), vec4<i32>(global1.x, -1i, global1.x, -25300i)), ~vec4<i32>(u_input.d, -1i, u_input.d, -1i), reverseBits(vec4<i32>(1i, global1.x, -24557i, u_input.d)))), _wgslsmith_div_vec3_u32(~vec3<u32>(86834u, 4294967295u, global0.a), ~(vec3<u32>(u_input.b.x, 11917u, global0.a) ^ vec3<u32>(global0.a, 0u, 32390u)))), countOneBits(~(~u_input.c << (~u_input.c % vec2<u32>(32u)))), vec4<i32>(global1.x, global1.x, _wgslsmith_mult_i32(21940i, -1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-global1.x, _wgslsmith_div_i32(global1.x, global1.x)), ~(global1.x | global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(select(vec2<bool>(!global0.c.a, global0.c.a), vec2<bool>(any(vec3<bool>(global0.b.a, global0.b.a, false)), true), _wgslsmith_dot_vec3_u32(vec3<u32>(46851u, u_input.b.x, 4294967295u), vec3<u32>(global0.a, 23539u, 0u)) < 1u), vec2<bool>(any(vec4<bool>(true, true, true, true)), !global0.c.a), select(select(func_1(Struct_4(global0.a, 394f), vec4<f32>(1143f, 605f, 1553f, -440f), vec3<bool>(true, global0.b.a, global0.b.a), vec4<f32>(-1000f, 386f, -1369f, 885f)), vec2<bool>(false, true), vec2<bool>(global0.c.a, global0.b.a)), !vec2<bool>(false, global0.c.a), func_1(Struct_4(1u, 1201f), vec4<f32>(1000f, 161f, -304f, -824f), select(vec3<bool>(false, false, global0.b.a), vec3<bool>(true, global0.c.a, global0.b.a), vec3<bool>(true, global0.c.a, false)), vec4<f32>(-170f, -795f, 1765f, -1401f)))), -323f);
    var var_1 = vec3<f32>(468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-2009f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f - _wgslsmith_f_op_f32(f32(-1f) * -1825f))))));
    let var_2 = ~countOneBits(abs(_wgslsmith_sub_i32(u_input.d ^ global1.x, abs(16439i))));
    var var_3 = vec2<bool>(func_4(var_0, _wgslsmith_div_vec3_u32(vec3<u32>(func_3(var_1.zy, 59346i, Struct_2(u_input.c.x, Struct_1(var_0.b.b.a), Struct_1(global0.b.a))).x, 29753u, var_0.b.a), select(~vec3<u32>(var_0.c.x, 1u, var_0.b.a), select(vec3<u32>(32540u, var_0.a.x, u_input.a.x), vec3<u32>(28822u, 22250u, 61539u), vec3<bool>(true, global0.b.a, var_0.b.c.a)), !vec3<bool>(var_0.b.c.a, true, var_0.b.b.a)))).b.a, !(!all(select(vec2<bool>(global0.c.a, true), vec2<bool>(false, global0.c.a), vec2<bool>(global0.b.a, false)))));
    var var_4 = vec2<bool>(var_0.b.c.a, false);
    let var_5 = var_0.d.x;
    var var_6 = Struct_4(_wgslsmith_sub_u32(select(func_5(func_1(Struct_4(102686u, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec3<bool>(global0.c.a, true, var_4.x), vec4<f32>(var_1.x, var_1.x, var_1.x, -1095f)), _wgslsmith_f_op_f32(min(var_1.x, var_1.x))).a.x, ~func_4(var_0, vec3<u32>(var_0.b.a, u_input.a.x, 30303u)).a, true), _wgslsmith_mult_u32(0u, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f), 748f)) + _wgslsmith_f_op_f32(218f + var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(global1.zx, _wgslsmith_mult_vec2_i32(global1.ww, global1.wy >> (vec2<u32>(global0.a, var_0.c.x) % vec2<u32>(32u)))), -firstLeadingBit(-var_5)), vec2<i32>(i32(-1i) * -2147483647i, ~var_2 & _wgslsmith_mult_i32(min(var_0.d.x, 12728i), _wgslsmith_mult_i32(-2147483647i, var_0.d.x))));
}

