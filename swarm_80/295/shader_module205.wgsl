struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1054f)))) - 1175f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> bool {
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = func_4(Struct_1(_wgslsmith_mod_vec2_u32(reverseBits(arg_1.b.zx), vec2<u32>(arg_1.b.x, 1u >> (arg_1.b.x % 32u))), countOneBits(countOneBits(vec4<u32>(arg_1.b.x, 4294967295u, arg_1.b.x, arg_1.a.x))), _wgslsmith_dot_vec3_u32((vec3<u32>(arg_0.c, arg_0.b.x, 4294967295u) ^ arg_0.b.ywz) & _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.b.x), vec3<u32>(arg_0.b.x, 0u, 15009u)), _wgslsmith_mod_vec3_u32(vec3<u32>(61287u, arg_0.a.x, arg_1.c), arg_1.b.zwx))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 696f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_1, -vec3<i32>(u_input.b, -2147483647i, 0i))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-384f, 420f), _wgslsmith_f_op_f32(min(-648f, 630f)), all(vec3<bool>(true, true, true)))))), ~arg_0.a.x & min(arg_0.b.x, _wgslsmith_clamp_u32(15211u, 42577u, arg_1.c) ^ 1u), arg_0);
    var var_1 = !(!vec4<bool>(true, u_input.c.x < 0i, any(vec3<bool>(false, false, true)), func_4(Struct_1(arg_0.b.xz, arg_0.b, 0u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-226f, -816f, -623f))), 67114u, arg_0)));
    let var_2 = arg_1;
    var_0 = any(select(select(select(vec2<bool>(var_1.x, var_1.x), var_1.xx, var_1.x), !(!vec2<bool>(var_1.x, false)), func_4(Struct_1(vec2<u32>(var_2.c, 23283u), var_2.b, 2761u), vec3<f32>(2198f, -1532f, -1094f), arg_1.c, Struct_1(var_2.a, vec4<u32>(34808u, 20994u, 4294967295u, var_2.a.x), arg_1.c))), var_1.yw, (abs(u_input.c.x) == -53172i) && all(!vec4<bool>(false, var_1.x, var_1.x, var_1.x))));
    let var_3 = -_wgslsmith_clamp_vec4_i32(u_input.a, select(-vec4<i32>(-4198i, 28033i, u_input.c.x, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, 0i, u_input.b), u_input.a), select(!vec4<bool>(var_1.x, true, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, false, true))), -(countOneBits(u_input.a) << ((arg_1.b & arg_1.b) % vec4<u32>(32u))));
    return select(var_1.xx, select(select(var_1.wx, select(select(vec2<bool>(false, false), var_1.wz, vec2<bool>(var_1.x, true)), var_1.xw, any(vec4<bool>(true, var_1.x, true, var_1.x))), select(var_1.zz, vec2<bool>(false, true), var_1.zx)), var_1.wx, all(!vec4<bool>(var_1.x, true, true, true))), var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = false;
    var_0 = select(true, any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), all(select(vec2<bool>(false, true), func_2(arg_1, Struct_1(arg_2.xz, vec4<u32>(arg_3.b.x, 0u, arg_0.b.x, 1u), arg_1.a.x)), vec2<bool>(false, true)))) & true;
    var var_1 = arg_1;
    var_0 = false;
    let var_2 = u_input.a.x;
    return Struct_1(var_1.a, arg_0.b, 4294967295u);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-267f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a, arg_1.b, arg_1.b.x), u_input.c))))))));
    var var_1 = ~arg_1.c ^ reverseBits(_wgslsmith_sub_u32(43089u, countOneBits(~arg_1.a.x)));
    var_0 = -319f;
    let var_2 = vec4<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), all(vec2<bool>(true, true)), true, false);
    var_1 = ~_wgslsmith_dot_vec3_u32(arg_1.b.xxx, _wgslsmith_div_vec3_u32(arg_1.b.xxx, ~vec3<u32>(4294967295u, 0u, arg_1.a.x))) >> (~1u % 32u);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 103384u, 36979u, 4294967295u), vec4<u32>(5311u, 29389u, 4294967295u, 1u))), func_5(-vec3<i32>(0i, -2147483647i, u_input.b), func_1(Struct_1(vec2<u32>(36035u, 41414u), vec4<u32>(1u, 4294967295u, 0u, 9162u), 1521u), Struct_1(vec2<u32>(57677u, 1u), vec4<u32>(0u, 4294967295u, 31404u, 1u), 1u), vec4<u32>(0u, 0u, 4294967295u, 776u), Struct_1(vec2<u32>(1u, 33414u), vec4<u32>(1u, 60834u, 39742u, 13749u), 4294967295u)))), ~(~vec4<u32>(1u, 1u, 1u, 1u)), ~1u);
    var var_1 = 1f;
    var var_2 = func_1(Struct_1(var_0.b.wy, select(vec4<u32>(0u, 1u, 1u, _wgslsmith_mod_u32(39600u, var_0.b.x)), abs(~var_0.b), vec4<bool>(true, true, true, true)), firstLeadingBit(34234u)), Struct_1(_wgslsmith_div_vec2_u32(abs(var_0.a ^ vec2<u32>(0u, var_0.c)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(17009u, var_0.b.x), var_0.a))), ~var_0.b, _wgslsmith_sub_u32(~(~79530u), ~var_0.b.x)), var_0.b, func_1(func_1(Struct_1(~vec2<u32>(44955u, var_0.c), var_0.b | var_0.b, ~42353u), func_1(Struct_1(var_0.a, var_0.b, var_0.a.x), Struct_1(var_0.a, var_0.b, var_0.a.x), vec4<u32>(var_0.c, 1u, 0u, 0u), func_1(Struct_1(vec2<u32>(var_0.b.x, var_0.b.x), vec4<u32>(30696u, 7401u, 4294967295u, var_0.c), 1u), Struct_1(vec2<u32>(var_0.a.x, 22516u), var_0.b, var_0.a.x), var_0.b, Struct_1(vec2<u32>(var_0.c, 23570u), var_0.b, 1943u))), var_0.b, func_1(Struct_1(var_0.a, vec4<u32>(var_0.a.x, var_0.c, var_0.c, var_0.c), var_0.b.x), func_1(Struct_1(vec2<u32>(4294967295u, 32145u), var_0.b, 0u), Struct_1(var_0.b.zz, var_0.b, 0u), var_0.b, Struct_1(vec2<u32>(0u, 4294967295u), vec4<u32>(var_0.b.x, 0u, 24236u, 79806u), var_0.a.x)), vec4<u32>(24357u, var_0.a.x, var_0.c, var_0.b.x) ^ var_0.b, func_1(Struct_1(vec2<u32>(var_0.a.x, 0u), var_0.b, 33315u), Struct_1(var_0.b.xz, var_0.b, 40926u), var_0.b, Struct_1(vec2<u32>(var_0.b.x, var_0.c), var_0.b, var_0.c)))), Struct_1(~var_0.a, var_0.b, ~var_0.b.x), var_0.b, Struct_1(abs(var_0.a), vec4<u32>(41926u, 1u, var_0.a.x, 4294967295u), ~var_0.b.x)));
    let var_3 = func_4(Struct_1(vec2<u32>(6760u, var_2.b.x), _wgslsmith_mod_vec4_u32(func_1(Struct_1(vec2<u32>(126533u, 0u), vec4<u32>(var_2.c, var_2.c, 0u, 0u), 4294967295u), func_1(Struct_1(vec2<u32>(var_2.b.x, var_0.c), vec4<u32>(var_2.b.x, 38882u, var_0.c, var_2.c), 7708u), Struct_1(vec2<u32>(var_2.c, 4294967295u), vec4<u32>(46394u, 1u, var_0.b.x, 14601u), 4294967295u), var_2.b, Struct_1(vec2<u32>(var_2.b.x, var_2.b.x), vec4<u32>(4294967295u, 4294967295u, var_2.a.x, 4294967295u), var_2.b.x)), var_0.b, Struct_1(var_2.b.yz, var_2.b, 878u)).b, vec4<u32>(var_2.c, var_0.a.x, reverseBits(4294967295u), 4294967295u)), ~abs(min(var_0.b.x, var_2.b.x))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1229f - 1363f)))), _wgslsmith_f_op_f32(-1090f * _wgslsmith_f_op_f32(sign(-1488f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(274f - 1855f)))), _wgslsmith_dot_vec4_u32(var_2.b, ~var_0.b), func_1(Struct_1(vec2<u32>(abs(var_2.c), ~var_0.a.x), vec4<u32>(~var_0.c, 82791u, _wgslsmith_dot_vec3_u32(var_2.b.xxz, var_2.b.zxw), func_1(Struct_1(vec2<u32>(3756u, var_0.c), vec4<u32>(4294967295u, 4294967295u, 1u, var_0.b.x), 0u), Struct_1(var_2.b.yz, var_2.b, 4294967295u), vec4<u32>(28874u, 0u, var_2.b.x, var_0.a.x), Struct_1(var_0.a, var_2.b, var_0.c)).a.x), firstLeadingBit(~0u)), func_1(func_1(Struct_1(var_0.b.xx, var_0.b, 0u), Struct_1(var_2.b.xz, var_2.b, 33648u), select(vec4<u32>(var_2.b.x, var_2.b.x, var_0.a.x, var_2.a.x), vec4<u32>(var_0.a.x, var_2.b.x, var_0.b.x, 13490u), vec4<bool>(true, false, true, false)), func_1(Struct_1(vec2<u32>(var_0.c, var_2.a.x), vec4<u32>(54637u, var_0.b.x, var_0.c, var_2.b.x), var_0.b.x), Struct_1(var_2.b.yy, vec4<u32>(33236u, var_0.a.x, var_2.c, var_0.c), 38614u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), Struct_1(vec2<u32>(1u, 30148u), vec4<u32>(var_0.b.x, 1u, var_2.a.x, var_0.a.x), var_0.c))), Struct_1(reverseBits(vec2<u32>(4294967295u, 23922u)), var_2.b << (vec4<u32>(0u, var_2.c, 61061u, 3827u) % vec4<u32>(32u)), ~78625u), vec4<u32>(var_0.b.x, var_2.c, 2661u, 92961u), func_1(func_1(Struct_1(vec2<u32>(20168u, var_0.b.x), var_0.b, 40u), Struct_1(vec2<u32>(var_0.a.x, 15257u), var_2.b, var_2.b.x), vec4<u32>(1u, var_2.a.x, 0u, var_0.c), Struct_1(var_2.a, var_2.b, 0u)), Struct_1(vec2<u32>(1u, 1u), var_2.b, 0u), var_0.b, func_1(Struct_1(var_0.a, vec4<u32>(var_0.a.x, var_0.c, 1u, var_0.a.x), 4294967295u), Struct_1(var_2.b.zw, var_0.b, var_2.b.x), vec4<u32>(var_0.b.x, var_2.c, var_0.a.x, 56863u), Struct_1(vec2<u32>(52948u, 1u), vec4<u32>(var_2.a.x, 4294967295u, 1u, var_2.b.x), 0u)))), ~(~vec4<u32>(33523u, 4378u, var_0.a.x, var_0.a.x)), func_1(Struct_1(vec2<u32>(var_2.a.x, var_2.a.x), ~vec4<u32>(75589u, 53878u, 4294967295u, 3651u), max(57890u, 4294967295u)), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c, var_0.a.x), vec2<u32>(33829u, var_0.a.x), var_0.a), _wgslsmith_div_vec4_u32(var_0.b, var_2.b), min(17240u, var_0.a.x)), ~vec4<u32>(29525u, var_0.c, var_2.c, 26929u), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 36244u), vec2<u32>(3909u, var_2.b.x)), func_1(Struct_1(vec2<u32>(var_2.a.x, 0u), var_0.b, 26653u), Struct_1(var_2.a, var_2.b, var_0.a.x), vec4<u32>(var_0.a.x, var_0.a.x, var_2.c, 6440u), Struct_1(var_2.a, var_0.b, 1u)).b, var_0.b.x & 0u))));
    let var_4 = 4223u;
    var_0 = func_1(Struct_1(_wgslsmith_mult_vec2_u32(var_0.a, var_2.a), ~(~var_0.b), _wgslsmith_div_u32(var_2.c, _wgslsmith_sub_u32(var_0.c, 1u) & _wgslsmith_dot_vec4_u32(var_0.b, var_0.b))), Struct_1(~(vec2<u32>(1u, var_2.b.x) ^ select(vec2<u32>(var_4, 1u), var_2.a, vec2<bool>(var_3, true))), ~(~max(vec4<u32>(var_4, var_2.a.x, 14796u, var_0.c), var_0.b)), 4294967295u), vec4<u32>(11724u, var_4, 1u, 59656u), Struct_1(vec2<u32>(12018u, _wgslsmith_mult_u32(var_4 & 4294967295u, ~1u)), var_0.b, 0u));
    var_2 = Struct_1(var_0.b.yy, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(82575u, var_0.c), 1u, 1u, _wgslsmith_dot_vec3_u32(var_0.b.yyy, var_0.b.yyz)), vec4<u32>(var_2.c, var_0.a.x ^ 1u, var_2.a.x, ~var_2.c)) ^ firstTrailingBit(_wgslsmith_add_vec4_u32(var_2.b ^ vec4<u32>(var_2.c, var_4, var_4, var_0.b.x), firstLeadingBit(var_2.b))), func_1(Struct_1(firstTrailingBit(~var_2.b.xx), firstLeadingBit(var_0.b), 30900u), Struct_1(var_0.a, ~vec4<u32>(0u, 30548u, 24110u, 1u), _wgslsmith_sub_u32(~var_2.a.x, var_0.a.x)), vec4<u32>(0u, select(max(1u, var_2.a.x), ~0u, var_3), ~(~var_2.c), var_4), func_1(Struct_1(~var_2.a, countOneBits(var_2.b), 4294967295u | var_2.c), func_1(Struct_1(var_2.a, var_0.b, 0u), func_1(Struct_1(var_2.b.yy, vec4<u32>(0u, 76285u, 0u, 4294967295u), 1u), Struct_1(vec2<u32>(1u, var_4), var_0.b, var_4), var_2.b, Struct_1(var_0.a, var_2.b, var_0.b.x)), var_0.b, func_1(Struct_1(var_2.b.yx, var_0.b, 63971u), Struct_1(vec2<u32>(var_4, 56578u), var_2.b, var_0.b.x), var_2.b, Struct_1(vec2<u32>(0u, var_2.a.x), vec4<u32>(1u, var_2.a.x, 47148u, var_2.c), 84829u))), ~vec4<u32>(4294967295u, 14907u, 1u, 52337u), func_1(Struct_1(vec2<u32>(17162u, var_2.b.x), vec4<u32>(4294967295u, 1u, 48579u, var_0.b.x), 0u), func_1(Struct_1(var_2.b.zw, var_0.b, var_2.c), Struct_1(var_0.a, vec4<u32>(1350u, var_2.a.x, 4294967295u, 21754u), 51277u), var_2.b, Struct_1(var_2.a, vec4<u32>(4294967295u, var_4, var_0.b.x, 22138u), var_2.a.x)), ~vec4<u32>(var_2.b.x, 56759u, var_0.a.x, var_2.a.x), Struct_1(var_0.b.zw, vec4<u32>(4294967295u, var_0.b.x, 4294967295u, var_4), 79973u)))).b.x);
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-630f, 637f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f + 992f)))) + _wgslsmith_f_op_f32(abs(1f)))));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f * -1327f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_1(Struct_1(vec2<u32>(var_4, var_4), var_2.b, 12207u), Struct_1(var_2.b.xz, var_2.b, 0u), vec4<u32>(var_2.c, 0u, 62883u, var_4), Struct_1(var_0.a, vec4<u32>(var_4, var_0.c, var_2.a.x, 84999u), 4294967295u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 39687i, 12146i), vec3<i32>(-7069i, -1i, 2147483647i)))) + _wgslsmith_f_op_f32(sign(1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mod_u32(abs(func_1(func_1(Struct_1(var_2.b.xy, var_0.b, var_2.c), Struct_1(vec2<u32>(0u, 53910u), vec4<u32>(52721u, var_4, var_0.b.x, 0u), var_0.a.x), vec4<u32>(var_0.c, var_2.c, 0u, var_4), Struct_1(var_0.b.yw, var_0.b, 4294967295u)), Struct_1(var_2.a, var_2.b, var_4), vec4<u32>(4294967295u, 956u, var_2.b.x, 0u), func_1(Struct_1(var_0.b.zy, vec4<u32>(var_2.a.x, 32369u, var_0.a.x, var_4), 72853u), Struct_1(vec2<u32>(4294967295u, 33501u), vec4<u32>(var_2.a.x, var_2.c, var_2.b.x, 31735u), 53510u), var_0.b, Struct_1(vec2<u32>(var_0.b.x, var_0.c), var_2.b, 110965u))).a.x), var_4));
}

