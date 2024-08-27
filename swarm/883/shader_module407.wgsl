struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 30> = array<f32, 30>(-1265f, 1483f, 1009f, 1105f, 648f, 1529f, 1873f, 1019f, -1161f, 2694f, -1012f, 1428f, -1546f, -792f, -2056f, 1000f, -664f, 1126f, -563f, -515f, -1032f, -1636f, -1179f, 460f, 317f, 351f, 974f, -198f, -360f, 1000f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(u_input.c), _wgslsmith_sub_u32(~arg_0.d, abs(arg_0.d | 1u))), ~u_input.d, _wgslsmith_div_u32(646u, ~1u) & ~arg_0.d);
    global1 = array<f32, 30>();
    var_0 = u_input.b;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), -477f);
    var_0 = ~_wgslsmith_mod_vec3_u32(min(~vec3<u32>(35901u, 143975u, global0.a.x), u_input.b), global0.a.zwz);
    return global0.c;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(global0.b - global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.c), 30u)]);
    var var_1 = Struct_1(vec4<u32>(~global0.c.x, u_input.c, 10572u, _wgslsmith_dot_vec2_u32(global0.c.wz, global0.c.wz)), _wgslsmith_f_op_f32(ceil(global0.b)), vec4<u32>(20581u, ~_wgslsmith_div_u32(~0u, global0.a.x), firstTrailingBit(~(u_input.b.x | 1u)), abs(global0.a.x)), (i32(-1i) * -(global0.d & -13844i)) << ((39968u | ~u_input.b.x) % 32u));
    global1 = array<f32, 30>();
    global0 = Struct_1(countOneBits(abs(abs(var_1.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.b)))) - 809f), _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -548f)), true)))), func_2(Struct_2(true, Struct_1(vec4<u32>(var_1.a.x, global0.a.x, 38830u, 1u) << (vec4<u32>(global0.c.x, 4294967295u, var_1.a.x, u_input.d) % vec4<u32>(32u)), -918f, _wgslsmith_div_vec4_u32(global0.a, vec4<u32>(46446u, global0.a.x, u_input.b.x, 45889u)), var_1.d), Struct_1(~vec4<u32>(global0.c.x, 90753u, global0.a.x, 0u), _wgslsmith_div_f32(303f, global1[_wgslsmith_index_u32(0u, 30u)]), vec4<u32>(1u, 4294967295u, var_1.a.x, 4294967295u), abs(var_1.d)), 58768u)), countOneBits(i32(-1i) * -2147483647i));
    var_1 = Struct_1(min(~var_1.c, ~vec4<u32>(_wgslsmith_mult_u32(4294967295u, 1u), global0.c.x, u_input.d << (1u % 32u), ~u_input.c)), -733f, vec4<u32>(~0u, ~0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.yy), ~var_1.a.x), countOneBits(~global0.c.x)) >> (var_1.c % vec4<u32>(32u)), ~(-var_1.d));
    return var_1.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<u32> {
    global0 = Struct_1(vec4<u32>(global0.c.x, arg_1.a.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, 1u >> (0u % 32u)), _wgslsmith_sub_u32(43704u, arg_2.x) & ~arg_2.x), ~10121u), _wgslsmith_f_op_f32(f32(-1f) * -1508f), ~vec4<u32>(arg_2.x, ~(~u_input.b.x), 1u, 1u), ~_wgslsmith_clamp_i32(abs(~global0.d), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-9073i, u_input.a), reverseBits(24462i)), 19565i));
    var var_0 = select(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), vec3<bool>(true, (abs(-43787i) >= (u_input.a & global0.d)) && true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.b)))) + global0.b) > global1[_wgslsmith_index_u32(abs(0u), 30u)]);
    let var_1 = max(~vec3<i32>(~max(-27086i, global0.d), ~0i, arg_1.d), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, 2147483647i, global0.d, arg_1.d), select(vec4<i32>(global0.d, u_input.a, 0i, u_input.a), vec4<i32>(26349i, 1i, 30993i, -12292i), true)), ~max(arg_1.d, u_input.a), -global0.d), ~(~vec3<i32>(global0.d, 1i, -10386i)) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-3986i, global0.d, 2147483647i, 51429i), vec4<i32>(-45357i, arg_1.d, -24747i, -25162i)), u_input.a, u_input.a >> (arg_2.x % 32u))));
    let var_2 = -5132i;
    let var_3 = Struct_1(vec4<u32>(~207u, u_input.d, arg_2.x >> (u_input.b.x % 32u), min(global0.c.x, ~_wgslsmith_sub_u32(arg_2.x, arg_0))), _wgslsmith_f_op_f32(floor(1048f)), global0.c, ~abs(1i));
    return ~select(vec2<u32>(~firstTrailingBit(var_3.c.x), arg_2.x), u_input.b.zz, select(var_0.zx, select(!var_0.yy, var_0.xy, select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x))), var_0.xz));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    global1 = array<f32, 30>();
    let var_0 = ~_wgslsmith_clamp_vec2_u32(func_4(arg_1.a.c.x ^ 1u, Struct_1(func_2(Struct_2(false, Struct_1(global0.a, -2196f, arg_1.a.a, -5443i), Struct_1(vec4<u32>(1u, 47719u, u_input.b.x, 0u), 1274f, vec4<u32>(1u, arg_1.a.c.x, u_input.b.x, u_input.b.x), -2147483647i), 0u)), _wgslsmith_f_op_f32(func_3()), ~arg_1.a.a, -u_input.a), vec3<u32>(~arg_1.a.c.x, 4294967295u, u_input.b.x)), vec2<u32>(arg_1.a.c.x, _wgslsmith_clamp_u32(1u, ~4294967295u, _wgslsmith_add_u32(20342u, 8819u))), arg_1.a.a.xx);
    global0 = arg_1.a;
    let var_1 = select(true, false, false);
    let var_2 = arg_1.a;
    return arg_1;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = Struct_3(func_1(u_input.a, arg_1).a);
    var var_1 = arg_1;
    var var_2 = ~u_input.b.x;
    let var_3 = ~abs(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.d, var_1.a.d, u_input.a), vec3<i32>(arg_1.a.d, 20845i, 16205i)), u_input.a));
    var var_4 = -(u_input.a & var_0.a.d);
    return _wgslsmith_mod_vec4_u32(~(var_1.a.c & _wgslsmith_div_vec4_u32(arg_1.a.c, arg_1.a.a)) | var_0.a.a, arg_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_add_vec4_u32(~func_5(vec3<bool>(false, false, true), func_1(2147483647i, Struct_3(Struct_1(vec4<u32>(4294967295u, global0.c.x, u_input.d, u_input.b.x), global0.b, vec4<u32>(u_input.c, 14494u, 1u, 4294967295u), global0.d)))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, 49166u, 0u, u_input.d), vec4<u32>(4294967295u, global0.c.x, 1u, u_input.d)) & vec4<u32>(46870u, 90141u, 16798u, 4294967295u))), _wgslsmith_f_op_f32(-global0.b), global0.c, global0.d);
    global0 = Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.b, global1[_wgslsmith_index_u32(~1u, 30u)]), global0.b), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d & u_input.b.x, ~u_input.d), func_4(_wgslsmith_clamp_u32(u_input.c, 21641u, 14189u), Struct_1(vec4<u32>(66583u, 11494u, 1u, 1u), global1[_wgslsmith_index_u32(global0.a.x, 30u)], global0.c, 2147483647i), vec3<u32>(65978u, global0.c.x, u_input.b.x))), _wgslsmith_mult_u32(~73528u, global0.c.x), ~(func_5(vec3<bool>(false, false, true), Struct_3(Struct_1(global0.a, -534f, vec4<u32>(u_input.b.x, 32399u, u_input.c, 52119u), u_input.a))).x ^ _wgslsmith_mult_u32(31441u, 1u)), abs(~(~1u))), _wgslsmith_add_i32(global0.d, global0.d));
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(global0.a, vec4<u32>(7458u, global0.c.x, 0u, 1u)), global0.c, func_1(u_input.a, Struct_3(Struct_1(global0.c, 1153f, global0.c, 62374i))).a.c), ~min(vec4<u32>(4294967295u, global0.c.x, 12497u, u_input.c), global0.a)) << (~0u % 32u), max(u_input.b.x, firstLeadingBit(66680u)));
    let var_1 = ~vec4<u32>(4294967295u, var_0, var_0, 1u);
    let var_2 = !(!(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false))));
    let var_3 = Struct_2(var_2.x && var_2.x, Struct_1(func_5(vec3<bool>(any(vec3<bool>(var_2.x, var_2.x, var_2.x)), var_2.x | true, true), func_1(u_input.a, func_1(u_input.a, Struct_3(Struct_1(var_1, global0.b, vec4<u32>(u_input.d, 4294967295u, 0u, global0.c.x), global0.d))))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(-22006i, Struct_3(Struct_1(vec4<u32>(u_input.c, u_input.d, 19524u, 65575u), -360f, vec4<u32>(var_0, 6656u, global0.c.x, u_input.b.x), 0i))).a.a.x, ~global0.c.x), 30u)], global0.b), vec4<u32>(~16078u, countOneBits(4294967295u), 0u, var_1.x) | var_1, max(countOneBits(global0.d), global0.d)), Struct_1(~(~select(vec4<u32>(var_1.x, var_0, 7366u, var_1.x), global0.c, var_2)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 51157u), u_input.b.yy), 30u)], global0.a, global0.d), ~(~global0.a.x));
    var var_4 = Struct_2(var_2.x, Struct_1(~select(vec4<u32>(4294967295u, 4294967295u, 1u, 24818u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, global0.a.x, 26773u), var_3.c.a), !var_2.x), -916f, func_2(Struct_2(var_2.x, Struct_1(var_1, global0.b, vec4<u32>(4294967295u, global0.c.x, 15380u, 0u), global0.d), var_3.c, 4294967295u)), -countOneBits(var_3.b.d)), Struct_1(~func_5(!vec3<bool>(true, var_3.a, false), func_1(38343i, Struct_3(var_3.b))), 1996f, vec4<u32>(~0u, global0.a.x, 53969u | _wgslsmith_mod_u32(global0.a.x, 46286u), 27170u), firstTrailingBit(26132i)), _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, var_0, var_1.x)), abs(u_input.b)), ~global0.c.xzz)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_mult_vec3_i32(-max(-vec3<i32>(0i, var_3.b.d, var_3.b.d), _wgslsmith_mod_vec3_i32(vec3<i32>(var_4.b.d, 26307i, u_input.a), vec3<i32>(var_4.c.d, 22508i, global0.d))), abs((vec3<i32>(var_3.b.d, -40242i, global0.d) & vec3<i32>(u_input.a, global0.d, global0.d)) << (~var_3.b.a.yzw % vec3<u32>(32u)))), var_3.c.b, var_3.b.c.x, var_3.b.a.xyw);
}

