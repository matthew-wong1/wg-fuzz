struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = vec2<u32>(abs(~u_input.a), _wgslsmith_add_u32(_wgslsmith_clamp_u32(max(arg_2.b.d.x, u_input.b.x), abs(26388u), 4294967295u), _wgslsmith_dot_vec2_u32(u_input.b, min(vec2<u32>(arg_2.b.c, 4294967295u), arg_2.b.d)))) & abs(~_wgslsmith_div_vec2_u32(arg_1.b.d & u_input.b, min(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, arg_1.b.c))));
    let var_1 = !select(select(vec2<bool>(arg_0.a.x <= arg_2.a.x, 20734u > arg_2.b.c), vec2<bool>(arg_1.b.b.x, arg_0.c.x), arg_2.b.b.x), !arg_1.c.zx, arg_1.b.b.wx);
    var_0 = vec2<u32>(~_wgslsmith_add_u32(arg_1.b.c, arg_2.b.c), ~(arg_0.b.c & u_input.a));
    var_0 = ~vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(64374u, var_0.x), countOneBits(1u))), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(28975u, arg_1.b.d.x, u_input.a, 7208u), max(vec4<u32>(1u, var_0.x, arg_1.b.d.x, 0u), vec4<u32>(4294967295u, arg_0.b.d.x, 28965u, 8437u))), arg_1.b.d.x));
    var_0 = abs(vec2<u32>(_wgslsmith_mod_u32(reverseBits(u_input.b.x), firstLeadingBit(0u)), _wgslsmith_clamp_u32(~(~arg_0.b.c), var_0.x, ~0u)));
    return arg_2.b.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<i32>(arg_0.x, -2147483647i, 18296i), Struct_1(vec4<f32>(-1108f, 262f, 520f, -444f), vec4<bool>(false, false, true, false), 39673u, u_input.b), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), Struct_2(firstTrailingBit(arg_0.wzx), Struct_1(vec4<f32>(-841f, 1498f, -1008f, 844f), vec4<bool>(true, false, true, false), u_input.b.x, vec2<u32>(u_input.a, u_input.a)), vec3<bool>(true, true, true)), Struct_2(firstTrailingBit(arg_0.zyx), Struct_1(vec4<f32>(-1132f, -1000f, -1195f, 740f), vec4<bool>(true, false, false, false), u_input.a, vec2<u32>(arg_1, u_input.b.x)), vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(521f, -734f)))), 1239f), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), select(false, all(vec3<bool>(false, true, true)), all(vec4<bool>(false, false, false, true)))), 4294967295u, ~firstLeadingBit((vec2<u32>(u_input.b.x, arg_1) & vec2<u32>(u_input.b.x, u_input.b.x)) ^ select(u_input.b, u_input.b, vec2<bool>(false, false))));
    let var_1 = _wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(0u, u_input.a, 4294967295u, 19777u) << (~(~vec4<u32>(arg_1, u_input.b.x, u_input.b.x, arg_1)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 60700u), vec3<u32>(4294967295u, 0u, 8381u)), 0u, 5141u, _wgslsmith_dot_vec2_u32(vec2<u32>(34166u, 4294967295u), var_0.d)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c, 0u, 34297u, 4294967295u), vec4<u32>(4294967295u, arg_1, 31071u, 13100u), vec4<u32>(1u, arg_1, 67285u, 4294967295u))), vec4<u32>(var_0.c, (var_0.d.x >> (48663u % 32u)) ^ _wgslsmith_mult_u32(62208u, u_input.a), 28322u, ~arg_1), ~(~vec4<u32>(var_0.c, 6642u, var_0.c, 44139u) << ((vec4<u32>(var_0.c, 4294967295u, 0u, u_input.a) << (vec4<u32>(u_input.a, arg_1, u_input.b.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1250f, 112f, -1000f) * var_0.a), vec4<bool>(var_0.b.x, !var_0.b.x || (_wgslsmith_f_op_f32(select(1063f, -900f, var_0.b.x)) >= var_0.a.x), true, false), ~(~min(0u << (var_0.d.x % 32u), u_input.a << (31232u % 32u))), min(var_1.yw, ~(~(vec2<u32>(24427u, arg_1) | var_1.yy))));
    var_0 = Struct_1(var_0.a, var_0.b, 52455u, ~u_input.b);
    let var_2 = var_0.c & 2576u;
    return Struct_2(~vec3<i32>(1i, _wgslsmith_sub_i32(countOneBits(arg_0.x), ~u_input.c.x), -17730i), Struct_1(_wgslsmith_f_op_vec4_f32(abs(var_0.a)), !vec4<bool>(!var_0.b.x, true, var_0.b.x, any(var_0.b.wxy)), var_1.x, firstTrailingBit(vec2<u32>(21554u | var_2, reverseBits(4294967295u)))), var_0.b.ywx);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2.b;
    let var_1 = func_2(countOneBits(vec4<i32>(-countOneBits(10189i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, arg_2.a.x, arg_0.a.x, u_input.c.x), vec4<i32>(1i, arg_2.a.x, 2147483647i, 2147483647i)), max(vec4<i32>(-2147483647i, arg_0.a.x, arg_2.a.x, -2147483647i), vec4<i32>(arg_0.a.x, -2147483647i, 0i, u_input.c.x))), 1i, arg_2.a.x)), 0u, i32(-1i) * -(~(~(-22274i)))).c;
    let var_2 = var_0.b.wyx;
    let var_3 = arg_0.b.b;
    let var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.d.x, abs(1u), ~arg_0.b.d.x, arg_0.b.c), ~(~vec4<u32>(arg_0.b.d.x, 4294967295u, 0u, var_0.c))) << ((firstLeadingBit(select(vec4<u32>(arg_2.b.d.x, arg_0.b.d.x, arg_2.b.c, arg_2.b.c), vec4<u32>(u_input.a, arg_0.b.c, 0u, arg_2.b.d.x), arg_0.b.b.x)) ^ vec4<u32>(18138u | var_0.d.x, 4294967295u, ~75536u, 4294967295u)) % vec4<u32>(32u)), firstTrailingBit(~abs(vec4<u32>(53199u, arg_0.b.c, var_0.c, arg_0.b.c)) >> (~(vec4<u32>(44142u, var_0.c, var_0.d.x, arg_2.b.c) >> (vec4<u32>(arg_0.b.d.x, var_0.d.x, u_input.b.x, 14117u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.c;
    let var_1 = func_4(func_2(select(abs(~vec4<i32>(var_0.x, var_0.x, u_input.c.x, -2147483647i)), firstLeadingBit(vec4<i32>(-62759i, var_0.x, var_0.x, -1i) | vec4<i32>(51659i, -1i, var_0.x, u_input.c.x)), true | (u_input.c.x == var_0.x)), _wgslsmith_mult_u32(max(4294967295u, max(u_input.b.x, 0u)), abs(~arg_1.c)), i32(-1i) * -2147483647i), arg_1.b.x, Struct_2(~vec3<i32>(select(var_0.x, u_input.c.x, arg_0.x), u_input.c.x, var_0.x), arg_1, !(!(!vec3<bool>(false, arg_0.x, arg_1.b.x)))));
    return func_4(Struct_2(reverseBits(~vec3<i32>(var_0.x, var_0.x, var_1.a.x)) >> (~firstLeadingBit(vec3<u32>(1u, 0u, var_1.b.c)) % vec3<u32>(32u)), func_2(_wgslsmith_mod_vec4_i32(min(vec4<i32>(var_1.a.x, var_0.x, 1i, 12522i), vec4<i32>(0i, u_input.c.x, -13256i, var_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.x, var_0.x, u_input.c.x, var_0.x), vec4<i32>(-14207i, var_1.a.x, var_1.a.x, var_0.x))), ~4294967295u, 0i).b, select(!(!vec3<bool>(arg_0.x, true, true)), select(arg_0.xzw, !vec3<bool>(arg_0.x, true, var_1.c.x), vec3<bool>(arg_1.b.x, var_1.b.b.x, arg_0.x)), vec3<bool>(func_4(var_1, arg_0.x, var_1).c.x, all(vec4<bool>(arg_1.b.x, var_1.c.x, true, arg_0.x)), func_2(vec4<i32>(0i, var_0.x, u_input.c.x, 0i), u_input.b.x, -71159i).b.b.x))), true, var_1).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-36601i, _wgslsmith_mod_i32(u_input.c.x, -firstLeadingBit(min(0i, 2147483647i))), 14267i);
    var var_1 = func_1(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1484f, _wgslsmith_f_op_f32(max(-694f, -461f)), _wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_div_f32(-1242f, 1000f)))), vec4<bool>(_wgslsmith_mult_i32(-2147483647i, u_input.c.x) > u_input.c.x, !select(false, false, true), true, false), u_input.a, u_input.b));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, u_input.c.x, 1i), vec4<i32>(var_0.x, var_0.x, 22813i, var_0.x), vec4<i32>(39754i, -1i, 48566i, u_input.c.x)), u_input.a, 8918i).b.a.xww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.x, -1404f, 222f), var_1.a.zzw))), var_1.b.x)), var_1.a.wzw, vec3<bool>(var_1.b.x, var_1.b.x, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.zyw)) - var_1.a.xwz)));
    var_2 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~vec3<u32>(countOneBits(75346u), _wgslsmith_add_u32(var_1.c, 1u), 64388u), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(41841u, 16799u, 0u), vec3<u32>(var_1.d.x, 6047u, var_1.d.x), vec3<u32>(60241u, 67897u, 33494u)), vec3<u32>(0u, var_1.d.x, 1u) & vec3<u32>(4294967295u, var_1.c, var_1.c)), select(abs(vec3<u32>(0u, 108680u, var_1.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<u32>(23572u, 36024u, u_input.b.x)), all(vec4<bool>(true, true, false, var_1.b.x))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(4294967295u, 32270u, 4294967295u)))), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c, reverseBits(vec3<i32>(-2147483647i, -2147483647i, var_0.x))), u_input.c.x, -20488i >> (u_input.a % 32u), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(30876u, var_1.d.x, u_input.b.x, 4294967295u), vec4<u32>(var_1.d.x, 0u, var_1.c, u_input.b.x)) % 32u), ~(2147483647i & var_0.x))), -2147483647i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_4(func_2(vec4<i32>(var_0.x, -2147483647i, 13433i, u_input.c.x), 1u, -30534i), var_1.a.x < -103f, Struct_2(var_0, Struct_1(vec4<f32>(var_1.a.x, -857f, -339f, 1031f), vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), u_input.b.x, var_1.d), var_1.b.wzy)).b.a.x, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(684f, -726f))), var_1.a.yxw, select(any(select(vec3<bool>(true, var_1.b.x, true), var_1.b.yxy, true)), var_1.b.x, all(var_1.b)))), var_3.xx);
}

