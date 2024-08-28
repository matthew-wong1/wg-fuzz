struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = !(!(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -679f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-146f)))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1462f, 117f)) * _wgslsmith_f_op_f32(-596f - -1000f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(140f, _wgslsmith_f_op_f32(round(159f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(180f * -2137f))), -1019f)));
    var_0 = !select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), false);
    var_0 = any(vec4<bool>(true, !all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))), !(!any(vec4<bool>(false, false, true, false))), _wgslsmith_clamp_u32(55815u, 1u, ~1u) == _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 98098u, 32772u), vec4<u32>(11602u, 51874u, 61773u, 52036u)), firstTrailingBit(4294967295u))));
    var var_2 = vec2<i32>(u_input.a.x, 703i);
    return ~0u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f + _wgslsmith_f_op_f32(-1278f + 1974f)) - _wgslsmith_f_op_f32(f32(-1f) * -1014f)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(9571u, arg_2.c, arg_0.c, arg_0.c), ~vec4<u32>(arg_2.c, 1u, arg_2.c, 25718u))), vec3<u32>(~(func_3() << (func_3() % 32u)), firstLeadingBit(0u), arg_0.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.b, -819f, false && any(arg_2.a.yz))))), Struct_1(vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_1, u_input.a.x, -2147483647i), vec4<i32>(22561i, arg_1, u_input.a.x, arg_1)) == max(global0.x, 0i), false, arg_3, true), 1f, 4294967295u), Struct_1(arg_2.a, -1385f, func_3()));
    let var_1 = Struct_1(select(vec4<bool>(var_0.d.a.x, all(select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.e.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, false))), true, arg_3), var_0.d.a, select(false, all(!vec3<bool>(true, var_0.d.a.x, var_0.e.a.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1301f)) + _wgslsmith_f_op_f32(arg_0.b + 1434f)), 37362u);
    global0 = vec4<i32>(global0.x, -1i, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(i32(-1i) * -35815i, -6300i), -12191i), ~(~global0.yxz)));
    var var_2 = arg_1;
    let var_3 = arg_2;
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = countOneBits(select(_wgslsmith_sub_vec3_i32(abs(global0.zzx << (arg_3.b % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, u_input.a.x, 521i), vec3<i32>(u_input.a.x, u_input.a.x, arg_0) ^ vec3<i32>(-1i, -2147483647i, 14906i))), ~vec3<i32>(u_input.a.x, -1i, global0.x), true));
    let var_1 = func_2(arg_3.e, _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, global0.x), 1i >> (~4294967295u % 32u)) ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(-58191i, arg_0, var_0.x, 1i), (vec4<i32>(-1i, var_0.x, global0.x, 1i) << (vec4<u32>(arg_2, 1u, arg_2, 46308u) % vec4<u32>(32u))) | (vec4<i32>(14557i, u_input.a.x, 31539i, u_input.a.x) << (vec4<u32>(arg_1, 18875u, 25544u, arg_3.a.c) % vec4<u32>(32u)))), arg_3.a, false);
    global0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(u_input.a.x, 15798i, -22998i, -419i) << (vec4<u32>(1u, arg_2, 38751u, arg_2) % vec4<u32>(32u))), ~vec4<i32>(-1i, -2640i, var_0.x, 2147483647i) & ~(vec4<i32>(var_0.x, 34862i, 33759i, u_input.a.x) & vec4<i32>(var_0.x, -1i, u_input.a.x, var_0.x))), vec4<i32>(~1i, firstTrailingBit(var_0.x), global0.x, global0.x));
    var var_2 = Struct_2(func_2(arg_3.d, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -41339i), 36684i, u_input.a.x, ~global0.x), min(vec4<i32>(28388i, u_input.a.x, global0.x, arg_0), -vec4<i32>(u_input.a.x, var_0.x, var_0.x, u_input.a.x))), var_1, !(func_2(arg_3.e, u_input.a.x, var_1, var_1.a.x).b < arg_3.e.b)), ~vec3<u32>(1u | ~var_1.c, 4294967295u, _wgslsmith_dot_vec3_u32(countOneBits(arg_3.b), reverseBits(arg_3.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -282f))), arg_3.a, var_1);
    let var_3 = var_2.e.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec4<bool>(!func_1(14101i, 1u, 25380u, Struct_2(Struct_1(vec4<bool>(true, true, false, true), 1687f, 50128u), vec3<u32>(4294967295u, 1u, 47673u), -404f, Struct_1(vec4<bool>(true, true, false, false), 949f, 21088u), Struct_1(vec4<bool>(false, false, false, true), -1583f, 0u))), 1f >= func_2(Struct_1(vec4<bool>(false, true, true, false), 112f, 33341u), global0.x, Struct_1(vec4<bool>(false, true, false, false), -2141f, 3173u), false).b, all(vec4<bool>(false, false, false, true)) & (global0.x >= 5573i), !any(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, any(vec2<bool>(true, true)), all(vec3<bool>(false, true, true)), false), vec4<bool>(true, true, true, true)), func_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -341f), ~1639u), global0.x >> (_wgslsmith_div_u32(34775u, 1u) % 32u), func_2(func_2(Struct_1(vec4<bool>(true, true, true, false), 1154f, 4294967295u), global0.x, Struct_1(vec4<bool>(false, true, false, true), -1503f, 21230u), false), global0.x, func_2(Struct_1(vec4<bool>(true, true, false, false), 383f, 0u), 37435i, Struct_1(vec4<bool>(false, false, true, true), 973f, 32771u), true), true), false).a));
    global0 = _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(firstLeadingBit(global0.x), -1i, 2970i, global0.x) << (~(~vec4<u32>(29807u, 33125u, 19263u, 15788u)) % vec4<u32>(32u))), vec4<i32>(u_input.a.x ^ -firstTrailingBit(-1i), 0i, -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, 5713i) ^ u_input.a), 9055i));
    let var_1 = func_2(func_2(func_2(func_2(func_2(Struct_1(vec4<bool>(var_0, var_0, var_0, var_0), 924f, 76819u), u_input.a.x, Struct_1(vec4<bool>(var_0, var_0, var_0, true), 604f, 31266u), true), 2147483647i, Struct_1(vec4<bool>(true, var_0, var_0, false), 144f, 123338u), var_0), _wgslsmith_mod_i32(~global0.x, _wgslsmith_sub_i32(-2147483647i, -1i)), Struct_1(!vec4<bool>(var_0, false, true, true), _wgslsmith_f_op_f32(select(-1550f, 772f, var_0)), 27025u), (false && var_0) && var_0), u_input.a.x, Struct_1(!vec4<bool>(false, true, false, var_0), 771f, ~_wgslsmith_div_u32(31425u, 1u)), var_0), (2147483647i ^ global0.x) ^ u_input.a.x, Struct_1(select(vec4<bool>(var_0, true, !var_0, true), func_2(func_2(Struct_1(vec4<bool>(true, var_0, false, true), 191f, 23971u), u_input.a.x, Struct_1(vec4<bool>(var_0, true, false, true), -150f, 55662u), false), firstLeadingBit(u_input.a.x), func_2(Struct_1(vec4<bool>(var_0, false, var_0, true), -813f, 4294967295u), global0.x, Struct_1(vec4<bool>(var_0, true, var_0, false), -1416f, 24552u), var_0), true).a, true), _wgslsmith_f_op_f32(f32(-1f) * -325f), 1u << (select(firstTrailingBit(3390u), max(0u, 73663u), any(vec4<bool>(false, false, true, var_0))) % 32u)), var_0);
    var var_2 = vec2<u32>(max(var_1.c, 50452u), ~(~var_1.c)) >> ((vec2<u32>(1u, 1u) ^ (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c, var_1.c), vec2<u32>(3480u, 55379u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.c, var_1.c), vec2<u32>(var_1.c, 25993u))) & vec2<u32>(7257u, reverseBits(var_1.c)))) % vec2<u32>(32u));
    global0 = (vec4<i32>(_wgslsmith_mult_i32(~global0.x, -global0.x), global0.x, _wgslsmith_mod_i32(~(-54079i), abs(-36973i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, u_input.a.x), vec3<i32>(u_input.a.x, global0.x, 25916i))) << (~(~(vec4<u32>(4294967295u, var_1.c, 0u, 29088u) | vec4<u32>(var_2.x, var_1.c, var_1.c, 343u))) % vec4<u32>(32u))) | -(select(abs(vec4<i32>(global0.x, -13658i, u_input.a.x, 39416i)), vec4<i32>(u_input.a.x, u_input.a.x, global0.x, u_input.a.x), 50408u == var_1.c) & (countOneBits(vec4<i32>(global0.x, u_input.a.x, 2147483647i, global0.x)) ^ select(vec4<i32>(-3486i, 12753i, 16592i, u_input.a.x), vec4<i32>(0i, 2147483647i, -6937i, u_input.a.x), var_0)));
    let var_3 = Struct_2(var_1, ~firstTrailingBit(vec3<u32>(16024u, var_2.x << (0u % 32u), firstLeadingBit(var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -715f), var_1, var_1);
    global0 = ~abs(~_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(1i, 12184i, global0.x, -548i)), vec4<i32>(u_input.a.x, 73001i, 1i, global0.x)));
    let var_4 = var_3.b;
    var_2 = ~vec2<u32>(var_4.x, 51020u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, 1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.e.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.d.b + var_3.e.b)))) * -632f));
}

