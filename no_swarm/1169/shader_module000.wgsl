struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<u32> {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(max(arg_0, arg_0)) <= _wgslsmith_f_op_f32(round(2044f)), !(!(_wgslsmith_f_op_f32(-arg_0) == arg_0)), true);
    return vec2<u32>(~arg_1, ~6796u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = max(firstLeadingBit(vec2<u32>(~arg_0, u_input.a)), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(func_3(377f, arg_0), ~vec2<u32>(1u, 36311u)), func_3(_wgslsmith_f_op_f32(764f - 547f), select(0u, 1u, false)) >> ((countOneBits(u_input.d.yy) << (vec2<u32>(u_input.b, 111439u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_1 = Struct_1(1u, min(vec4<i32>(firstLeadingBit(0i), abs(0i), 3104i, _wgslsmith_dot_vec4_i32(vec4<i32>(40208i, -2147483647i, 13179i, 1i), vec4<i32>(1i, 1i, 1i, 1i))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-31699i, -17072i, -52512i, -48000i), -vec4<i32>(-23330i, 10383i, -1i, 17421i)))), 0u, 619f);
    let var_2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(abs(var_1.b.x), ~var_1.b.x), ~(~var_1.b.x), _wgslsmith_dot_vec2_i32(var_1.b.yz >> (u_input.d.ww % vec2<u32>(32u)), vec2<i32>(-2147483647i, -31569i))), var_1.b);
    var var_3 = firstLeadingBit(firstLeadingBit(-(var_1.b.xwz & vec3<i32>(var_2, 31088i, var_1.b.x)))) << (((select(u_input.d.wwy, vec3<u32>(4554u, 1u, u_input.b), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))) | _wgslsmith_add_vec3_u32(u_input.d.zwy >> (vec3<u32>(1u, var_1.c, var_0.x) % vec3<u32>(32u)), u_input.d.yxz & u_input.d.xwx)) & vec3<u32>(1u, 6236u, 0u)) % vec3<u32>(32u));
    var_3 = min(vec3<i32>(-(_wgslsmith_div_i32(-27601i, var_1.b.x) ^ countOneBits(3149i)), 22762i, -var_3.x), vec3<i32>(34805i, -9557i, min(firstLeadingBit(_wgslsmith_add_i32(var_1.b.x, 168i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(36857i, var_2), _wgslsmith_mult_i32(var_3.x, var_2)))));
    return Struct_1(var_0.x, vec4<i32>(var_3.x, _wgslsmith_div_i32(~(var_2 & var_3.x), var_3.x << (arg_0 % 32u)), reverseBits(-select(1i, -25867i, false)), countOneBits(var_1.b.x)), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.d, -984f), _wgslsmith_f_op_f32(min(var_1.d, 1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d, 508f)) * var_1.d))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(reverseBits(~(~_wgslsmith_clamp_u32(u_input.b, 58495u, u_input.b))));
    let var_1 = arg_1;
    var var_2 = 1u;
    var var_3 = vec4<i32>(abs(~(-2147483647i)) & -var_1.b.x, ~(-arg_1.b.x), 0i, arg_0.b.x);
    let var_4 = !(all(vec4<bool>(true, true, true, true)) & all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))));
    return func_2(_wgslsmith_sub_u32(1u, u_input.c));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = func_1(arg_0, Struct_1(~(u_input.c | u_input.b) & ~u_input.c, min(vec4<i32>(min(arg_0.b.x, -36007i), firstLeadingBit(arg_0.b.x), arg_0.b.x, 0i), vec4<i32>(_wgslsmith_add_i32(arg_0.b.x, arg_0.b.x), ~arg_0.b.x, 1i, 2238i)), firstTrailingBit(countOneBits(firstTrailingBit(arg_0.a))), arg_0.d));
    var var_1 = Struct_1(arg_0.a, arg_0.b, min(arg_0.c, _wgslsmith_sub_u32(~max(1u, 22053u), func_2(u_input.c).c)), _wgslsmith_f_op_f32(-1323f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d))))));
    var_1 = func_1(func_1(arg_0, Struct_1(554u, ~var_1.b, ~u_input.d.x, 1483f)), func_2(firstTrailingBit(3362u)));
    let var_2 = func_2(4294967295u).b.yw;
    var_1 = Struct_1(max(_wgslsmith_sub_u32(func_3(_wgslsmith_f_op_f32(trunc(var_1.d)), arg_0.c).x, u_input.a), arg_0.a), max(var_0.b, _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.b, ~arg_0.b, vec4<i32>(23821i, var_2.x, var_0.b.x, -27511i) | arg_0.b), ~countOneBits(vec4<i32>(27813i, var_1.b.x, -50117i, 22109i)))), var_1.a, var_1.d);
    return 46869u;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>) -> i32 {
    let var_0 = u_input.d.yyy;
    return (~(~arg_1) ^ firstLeadingBit(_wgslsmith_div_i32(arg_0.b.x, ~arg_0.b.x))) ^ arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_5(Struct_1(~u_input.d.x | u_input.b, countOneBits(countOneBits(vec4<i32>(-2147483647i, -41442i, 0i, 19562i))), func_4(func_1(Struct_1(61230u, vec4<i32>(4051i, -15805i, 46945i, 38254i), u_input.a, 169f), Struct_1(u_input.a, vec4<i32>(1i, 12720i, 1i, -1i), u_input.c, -231f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1832f)))), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 18533i, 6676i, 48344i), vec4<i32>(-1i, 23449i, 65780i, 24055i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -33397i, -49682i, -2147483647i), vec4<i32>(-2147483647i, -42233i, -9981i, 20437i), vec4<i32>(2147483647i, -1i, 0i, 41968i)))), vec2<bool>(any(vec4<bool>(false, false, false, false)), false));
    var var_1 = func_1(func_2(~4294967295u), Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.a), 12971u), 4294967295u), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), func_2(abs(4294967295u)).b), select(0u, ~(~4294967295u), all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(f32(-1f) * -685f)));
    let var_2 = 178f;
    var var_3 = func_2(~var_1.c);
    var var_4 = func_1(Struct_1(~4294967295u, min(var_1.b << (u_input.d % vec4<u32>(32u)), func_2(u_input.c).b) >> (vec4<u32>(var_3.c | 70823u, u_input.c, 5585u, ~var_3.a) % vec4<u32>(32u)), ~((16530u | var_1.a) & ~1u), _wgslsmith_div_f32(var_2, var_1.d)), Struct_1(~(~(~0u)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_1.b.x, var_1.b.x, 18986i, var_1.b.x)), -var_3.b), 4294967295u, 1062f));
    var_1 = func_1(Struct_1(~43028u, var_4.b, ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.d, 798f)))))), Struct_1(140677u, -vec4<i32>(_wgslsmith_clamp_i32(46112i, var_1.b.x, 10002i), _wgslsmith_clamp_i32(-31335i, var_3.b.x, -1i), var_3.b.x, _wgslsmith_mod_i32(-1i, 6962i)), ~(~(var_3.c & 0u)), var_2));
    var var_5 = _wgslsmith_add_vec2_u32(max(u_input.d.xx >> ((u_input.d.zy | u_input.d.wx) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 37057u), u_input.d.zy)) ^ u_input.d.xx, u_input.d.zy);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xw);
}

