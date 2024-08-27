struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(1031f * 1016f);
    var_0 = -3694f;
    let var_1 = -5347i;
    let var_2 = u_input.a.xy;
    var_0 = 1697f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = abs(u_input.a.x);
    var var_1 = 1340f;
    let var_2 = 0i;
    let var_3 = arg_1.e.c.zy;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.a.x + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-804f, -1122f, false))))))));
    return Struct_1(vec3<f32>(arg_1.a.a.x, 320f, _wgslsmith_f_op_f32(arg_1.e.a.x + arg_1.d.a.x)), u_input.a.xxw, !arg_1.a.d, select(arg_1.e.d, select(select(select(vec4<bool>(false, true, false, arg_1.b.x), arg_1.e.d, arg_1.b.x), arg_1.e.d, var_3.x), vec4<bool>(true, any(vec2<bool>(false, true)), false, true), all(!vec3<bool>(arg_1.e.c.x, true, false))), arg_1.e.d.x), select(countOneBits(-arg_0 ^ 1i), _wgslsmith_sub_i32(arg_1.d.e, ~5846i), !(!all(var_3))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(434f * _wgslsmith_f_op_f32(f32(-1f) * -307f)), -1449f);
    let var_1 = 0u;
    var var_2 = Struct_4(Struct_3(func_2(-23702i, Struct_2(Struct_1(vec3<f32>(1623f, 172f, 1000f), vec3<u32>(14089u, 1u, 1u), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), 1337i), vec3<bool>(false, false, false), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a), Struct_1(vec3<f32>(1022f, 217f, var_0), u_input.a.wxz, vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), 0i), Struct_1(vec3<f32>(var_0, 1151f, var_0), vec3<u32>(u_input.a.x, 1947u, 43307u), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), 0i))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(40020i, -58700i), vec2<i32>(1i, 2147483647i)) & min(26394i, -1i), -1i, _wgslsmith_mult_i32(30030i, i32(-1i) * -39739i))), vec2<i32>(firstTrailingBit(0i), _wgslsmith_mod_i32(1i, 1i)));
    let var_3 = u_input.a.xx;
    let var_4 = var_2.a.a.c.wzw;
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.a.a) * _wgslsmith_f_op_vec3_f32(-var_2.a.a.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.a.x, -402f, -688f))))))), ~var_2.a.a.b, !select(!(!var_2.a.a.c), var_2.a.a.c, var_2.a.a.d), func_2(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(var_2.b, var_2.b, var_2.a.b.zy)), vec2<i32>(1i, abs(var_2.a.b.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a.a.a - var_2.a.a.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 54223u, 0u), vec3<u32>(25543u, 87130u, 32095u), vec3<u32>(4611u, 4294967295u, 1u)), !var_2.a.a.d, vec4<bool>(var_2.a.a.d.x, true, true, var_4.x), ~0i), var_2.a.a.c.zzz, u_input.a << (~vec4<u32>(var_2.a.a.b.x, 0u, 0u, var_2.a.a.b.x) % vec4<u32>(32u)), var_2.a.a, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-749f, -1124f, var_2.a.a.a.x) * var_2.a.a.a), func_2(35307i, Struct_2(Struct_1(var_2.a.a.a, u_input.a.wxz, vec4<bool>(true, false, var_4.x, false), vec4<bool>(true, true, true, var_2.a.a.c.x), 10666i), var_2.a.a.c.yww, vec4<u32>(14575u, u_input.b, var_2.a.a.b.x, var_1), Struct_1(var_2.a.a.a, u_input.a.zww, vec4<bool>(var_4.x, var_4.x, var_2.a.a.d.x, var_2.a.a.d.x), vec4<bool>(var_2.a.a.c.x, var_4.x, false, var_2.a.a.c.x), var_2.a.a.e), Struct_1(var_2.a.a.a, vec3<u32>(4294967295u, 1u, 13236u), var_2.a.a.d, var_2.a.a.d, var_2.b.x))).b, var_2.a.a.c, var_2.a.a.d, 62073i))).d, ~(var_2.a.a.e | _wgslsmith_add_i32(14022i, ~var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-466f - 827f)))))));
    let var_1 = true;
    var var_2 = Struct_5(Struct_2(func_1(), func_2(-41991i, Struct_2(func_2(-21214i, Struct_2(Struct_1(vec3<f32>(var_0, -1877f, var_0), u_input.a.zyx, vec4<bool>(false, false, false, false), vec4<bool>(true, var_1, var_1, var_1), 1i), vec3<bool>(true, true, true), vec4<u32>(u_input.a.x, 1u, 17700u, u_input.a.x), Struct_1(vec3<f32>(-1608f, 492f, 189f), vec3<u32>(0u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, var_1, var_1), vec4<bool>(var_1, var_1, false, true), 23531i), Struct_1(vec3<f32>(236f, var_0, var_0), u_input.a.yzw, vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, true, true, var_1), -1i))), !vec3<bool>(var_1, var_1, var_1), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.b), Struct_1(vec3<f32>(var_0, 199f, var_0), u_input.a.xzz, vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(true, var_1, var_1, var_1), 37414i), Struct_1(vec3<f32>(198f, -1138f, var_0), u_input.a.zww, vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, false, true, true), 39826i))).c.yyw, u_input.a, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1083f, var_0))), func_1().b, !func_1().c, func_1().c, _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, 25452i), ~(-3531i))), func_1()), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(851f, -1916f, -1499f)))), abs(vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a.x), ~4294967295u, 1u)), vec4<bool>(all(vec3<bool>(var_1, var_1, true)), false, false, all(func_1().d)), !select(!vec4<bool>(var_1, true, var_1, true), !vec4<bool>(false, var_1, var_1, var_1), !vec4<bool>(false, var_1, true, var_1)), 1i), ~(-1i), min(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(~_wgslsmith_sub_i32(-2147483647i, -61093i), -2903i, -1i, -1i)));
    var_2 = Struct_5(var_2.a, func_1(), 1i, _wgslsmith_add_vec4_i32(var_2.d << (select(u_input.a, vec4<u32>(var_2.a.e.b.x, var_2.b.b.x, 4294967295u, var_2.b.b.x) & vec4<u32>(0u, u_input.b, var_2.b.b.x, u_input.a.x), !var_2.a.d.d) % vec4<u32>(32u)), vec4<i32>(~reverseBits(0i), var_2.c << (~var_2.b.b.x % 32u), _wgslsmith_clamp_i32(firstTrailingBit(0i), var_2.c, _wgslsmith_dot_vec4_i32(var_2.d, vec4<i32>(var_2.c, 10809i, -1i, -2147483647i))), var_2.d.x)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1149f), var_2.b.a.x, ~var_2.b.b.x != u_input.b))), var_2.a.e.a.x);
    let var_4 = -countOneBits(vec3<i32>(select(_wgslsmith_clamp_i32(2147483647i, var_2.b.e, 1223i), var_2.a.d.e, all(vec4<bool>(var_1, false, true, var_2.a.d.c.x))), 1i, reverseBits(-2147483647i)));
    var var_5 = var_2.d;
    let var_6 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(f32(-1f) * -296f)) - var_0)), _wgslsmith_f_op_f32(func_3()));
    var_2 = Struct_5(var_2.a, Struct_1(vec3<f32>(var_3.x, -284f, 1000f), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.b.x, var_2.b.b.x, var_2.a.d.b.x), vec3<u32>(1u, u_input.b, 3574u), vec3<u32>(4294967295u, var_2.a.d.b.x, 1u)), u_input.a.xwz & u_input.a.xxx), vec3<u32>(var_2.b.b.x, ~u_input.b, _wgslsmith_mult_u32(12197u, var_2.b.b.x))), !func_1().d, func_1().c, -355i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~var_2.d, vec4<i32>(var_2.c, var_4.x, var_4.x, var_2.a.d.e)), _wgslsmith_mult_vec4_i32(firstTrailingBit(var_2.d), _wgslsmith_add_vec4_i32(vec4<i32>(var_4.x, 43682i, var_4.x, var_2.b.e), var_2.d))), vec4<i32>(_wgslsmith_add_i32(var_2.b.e >> (var_2.b.b.x % 32u), var_4.x), -abs(var_5.x), ~(~(-1i)), _wgslsmith_add_i32(1i, var_4.x))), firstTrailingBit(-vec4<i32>(var_2.a.e.e, var_4.x, var_4.x, 7819i) | -_wgslsmith_add_vec4_i32(var_2.d, vec4<i32>(-2147483647i, 2147483647i, -47192i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32((~var_2.a.c.yxy & (vec3<u32>(var_2.a.d.b.x, var_2.a.d.b.x, var_2.b.b.x) >> (var_2.b.b % vec3<u32>(32u)))) ^ u_input.a.ywx, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~u_input.b, u_input.b ^ u_input.a.x), func_1().b, abs(abs(var_2.b.b)))));
}

