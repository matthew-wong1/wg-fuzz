struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: i32 = -2316i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = array<vec4<u32>, 3>();
    var var_0 = any(vec2<bool>(arg_0.e.e, true));
    var var_1 = u_input.d.x;
    let var_2 = !vec2<bool>(true, arg_0.b);
    var_1 = arg_0.c.x;
    return arg_0.a;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    global1 = -8348i;
    var var_0 = vec3<bool>(!arg_3.e, arg_2.x >= 1i, true);
    var var_1 = func_2(Struct_2(Struct_1(firstLeadingBit(1i), vec3<u32>(~arg_3.b.x, func_2(Struct_2(arg_3, true, u_input.b, arg_0, Struct_1(arg_3.d.x, arg_3.b, vec4<u32>(85510u, arg_3.c.x, u_input.a, u_input.a), arg_3.d, true))).b.x, ~u_input.a), abs(countOneBits(arg_3.c)), _wgslsmith_sub_vec2_i32(u_input.d.xz, ~arg_3.d), true), false, u_input.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), -1000f), 1000f), arg_3));
    let var_2 = var_1.e;
    let var_3 = Struct_2(arg_3, all(select(select(var_0.yy, select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_1.e), arg_3.e), arg_3.e), !vec2<bool>(arg_1.x, true), vec2<bool>(true, true))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~u_input.b, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_2.x, u_input.c, 37871i), vec4<i32>(9305i, -1i, arg_2.x, u_input.e))), _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(arg_3.a, u_input.d.x, 2147483647i, arg_2.x), u_input.b)), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 1f))), func_2(Struct_2(func_2(Struct_2(Struct_1(37914i, vec3<u32>(arg_3.c.x, var_1.b.x, 22687u), vec4<u32>(u_input.a, 28892u, 1u, 5154u), vec2<i32>(-1i, 22034i), var_1.e), arg_1.x, u_input.d, 301f, arg_3)), true, vec4<i32>(_wgslsmith_mod_i32(var_1.a, -2147483647i), _wgslsmith_sub_i32(u_input.c, 1i), u_input.d.x, -u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), func_2(Struct_2(arg_3, arg_3.e, u_input.b, arg_0, arg_3)))));
    return var_1.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.d)))));
    global1 = -arg_0.d.x;
    var var_1 = ~arg_0.b.x;
    global1 = arg_1.e.a;
    var var_2 = arg_1;
    return u_input.b.x << (26291u % 32u);
}

fn func_1() -> u32 {
    let var_0 = 1f;
    global1 = func_4(Struct_1(func_3(1105f, vec3<bool>(all(vec2<bool>(false, false)), true, any(vec3<bool>(false, true, false))), u_input.b.ywy | (vec3<i32>(1i, 0i, -1i) | u_input.d.zxz), func_2(Struct_2(Struct_1(1i, vec3<u32>(44031u, u_input.a, 0u), vec4<u32>(u_input.a, 24363u, 0u, 80267u), u_input.d.wz, false), false, vec4<i32>(u_input.c, 1i, 1i, 2147483647i), var_0, Struct_1(u_input.b.x, vec3<u32>(1u, u_input.a, 1u), global0[_wgslsmith_index_u32(u_input.a, 3u)], vec2<i32>(-1i, 27607i), false)))), select(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.a, 1u), countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a))), select(~vec3<u32>(u_input.a, u_input.a, 46946u), vec3<u32>(u_input.a, 50304u, 95185u), func_2(Struct_2(Struct_1(u_input.d.x, vec3<u32>(u_input.a, 127225u, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 3u)], vec2<i32>(u_input.d.x, u_input.d.x), true), false, vec4<i32>(-1i, 0i, u_input.d.x, 2942i), -1249f, Struct_1(u_input.d.x, vec3<u32>(u_input.a, u_input.a, 24330u), vec4<u32>(1u, u_input.a, 1u, u_input.a), u_input.d.zy, true))).e), all(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(1u, 3u)], u_input.b.xx, var_0 > var_0), Struct_2(func_2(Struct_2(Struct_1(2147483647i, vec3<u32>(u_input.a, 71387u, 0u), global0[_wgslsmith_index_u32(u_input.a, 3u)], vec2<i32>(2147483647i, 1i), true), any(vec2<bool>(true, true)), vec4<i32>(u_input.c, -10559i, u_input.e, u_input.b.x), _wgslsmith_f_op_f32(trunc(525f)), func_2(Struct_2(Struct_1(u_input.c, vec3<u32>(24331u, 1u, u_input.a), global0[_wgslsmith_index_u32(60885u, 3u)], u_input.d.wx, true), true, u_input.b, -659f, Struct_1(u_input.c, vec3<u32>(u_input.a, 4435u, 13262u), global0[_wgslsmith_index_u32(u_input.a, 3u)], vec2<i32>(u_input.c, 2147483647i), false))))), func_2(Struct_2(Struct_1(u_input.e, vec3<u32>(u_input.a, u_input.a, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b.zy, false), true, u_input.d >> (vec4<u32>(114881u, 41586u, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_0), func_2(Struct_2(Struct_1(u_input.c, vec3<u32>(u_input.a, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 3u)], vec2<i32>(-2147483647i, u_input.b.x), true), false, u_input.d, 1309f, Struct_1(u_input.b.x, vec3<u32>(u_input.a, 6198u, 71373u), vec4<u32>(u_input.a, 0u, 49703u, 57921u), u_input.d.xz, true))))).e, vec4<i32>(u_input.e, 0i, u_input.b.x, _wgslsmith_sub_i32(func_3(1284f, vec3<bool>(true, false, true), u_input.b.yyy, Struct_1(2147483647i, vec3<u32>(17842u, 0u, 24644u), vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec2<i32>(16935i, u_input.c), true)), ~8962i)), var_0, func_2(Struct_2(func_2(Struct_2(Struct_1(2147483647i, vec3<u32>(u_input.a, 4294967295u, 32398u), vec4<u32>(u_input.a, u_input.a, 24470u, u_input.a), u_input.b.wy, false), false, vec4<i32>(u_input.e, u_input.c, u_input.d.x, -16016i), var_0, Struct_1(u_input.d.x, vec3<u32>(15831u, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u), vec2<i32>(u_input.c, u_input.e), true))), true, min(vec4<i32>(0i, 20365i, u_input.b.x, u_input.d.x), u_input.d), var_0, func_2(Struct_2(Struct_1(u_input.d.x, vec3<u32>(u_input.a, u_input.a, 1u), global0[_wgslsmith_index_u32(35308u, 3u)], vec2<i32>(2147483647i, 0i), true), true, vec4<i32>(-3240i, -14250i, u_input.e, u_input.c), var_0, Struct_1(u_input.d.x, vec3<u32>(u_input.a, 4294967295u, 4422u), global0[_wgslsmith_index_u32(4294967295u, 3u)], vec2<i32>(12118i, u_input.e), true)))))), any(vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false)), u_input.c < (u_input.b.x >> (17669u % 32u)))));
    global0 = array<vec4<u32>, 3>();
    var var_1 = _wgslsmith_f_op_f32(round(494f));
    var var_2 = func_3(_wgslsmith_f_op_f32(sign(-186f)), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(func_2(Struct_2(Struct_1(27507i, vec3<u32>(u_input.a, 1u, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.d.zw, false), false, u_input.b, var_0, Struct_1(-54306i, vec3<u32>(u_input.a, 33335u, u_input.a), vec4<u32>(u_input.a, 7621u, 0u, u_input.a), u_input.d.zz, true))).e, true, true)), u_input.d.zyy | -u_input.d.xxy, func_2(Struct_2(Struct_1(u_input.b.x, vec3<u32>(0u, u_input.a, 1u), vec4<u32>(36884u, u_input.a, u_input.a, 33214u), vec2<i32>(u_input.b.x, u_input.e), any(vec4<bool>(false, true, false, true))), false, u_input.d << ((vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | global0[_wgslsmith_index_u32(36050u, 3u)]) % vec4<u32>(32u)), var_0, func_2(Struct_2(Struct_1(2147483647i, vec3<u32>(0u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), u_input.d.yz, true), true, u_input.d, -854f, Struct_1(15620i, vec3<u32>(u_input.a, 32193u, u_input.a), global0[_wgslsmith_index_u32(11066u, 3u)], vec2<i32>(u_input.b.x, u_input.c), true))))));
    return 89993u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> StorageBuffer {
    let var_0 = 1699f;
    let var_1 = ~arg_1.a;
    var var_2 = !select(any(vec4<bool>(arg_3.x, false, arg_0.e, arg_3.x)) || (43680u >= u_input.a), false, true) & (all(vec2<bool>(all(arg_3.yy), var_0 == var_0)) & false);
    var var_3 = Struct_2(arg_1, arg_3.x, vec4<i32>(max(i32(-1i) * -33922i, arg_1.a), func_4(func_2(Struct_2(arg_0, arg_3.x, u_input.b, var_0, Struct_1(2147483647i, vec3<u32>(arg_2.x, 18979u, 1u), arg_1.c, vec2<i32>(arg_0.d.x, -1i), arg_3.x))), Struct_2(Struct_1(arg_1.a, vec3<u32>(4294967295u, 57011u, arg_0.c.x), arg_0.c, vec2<i32>(var_1, 2147483647i), true), !arg_1.e, firstLeadingBit(vec4<i32>(1i, arg_0.d.x, 1i, 11476i)), 1695f, Struct_1(arg_1.d.x, vec3<u32>(u_input.a, arg_1.b.x, 48232u), vec4<u32>(38693u, 0u, 63385u, u_input.a), arg_0.d, arg_0.e)), false), var_1, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f))), Struct_1(reverseBits(1858i), countOneBits(arg_0.c.ywz), ~vec4<u32>(47568u, abs(20220u), arg_1.c.x, ~1u), _wgslsmith_clamp_vec2_i32(arg_1.d, arg_1.d ^ vec2<i32>(u_input.c, var_1), ~_wgslsmith_div_vec2_i32(arg_1.d, vec2<i32>(var_1, 1i))), true));
    var var_4 = ~1u;
    return StorageBuffer(~arg_1.c.yww);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-countOneBits(vec4<i32>(u_input.d.x, ~(-35550i), 28711i >> (u_input.a % 32u), ~u_input.b.x)));
    let x = u_input.a;
    s_output = func_5(Struct_1(abs(15738i << (u_input.a % 32u)) >> (u_input.a % 32u), vec3<u32>(u_input.a, 0u, u_input.a), ~(global0[_wgslsmith_index_u32(20355u, 3u)] << (global0[_wgslsmith_index_u32(17031u, 3u)] % vec4<u32>(32u))) >> ((vec4<u32>(u_input.a, u_input.a, 7616u, 20420u) >> (~vec4<u32>(u_input.a, 7514u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec2<i32>(45885i, -23579i) & var_0.xz, true), Struct_1(u_input.e, vec3<u32>(4502u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), global0[_wgslsmith_index_u32(select(4294967295u, 1u, true), 3u)]), ~_wgslsmith_sub_u32(u_input.a, 4294967295u)), ~vec4<u32>(~1u, func_1(), 58283u, ~1u), (~u_input.d.xw ^ vec2<i32>(var_0.x, 2147483647i)) ^ var_0.wz, 4294967295u > (u_input.a | u_input.a)), vec2<u32>(~max(_wgslsmith_mult_u32(1u, u_input.a), u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), vec3<bool>(!all(vec3<bool>(false, false, true)), all(vec3<bool>(false, true, true)) && true, true)));
}

