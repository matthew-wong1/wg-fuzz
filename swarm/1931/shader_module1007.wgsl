struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec3<i32> {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_2(u_input.b.x, arg_0, global0[_wgslsmith_index_u32(~20199u, 6u)], vec3<i32>(~(~u_input.a), u_input.b.x, u_input.d), arg_1.x);
    global0 = array<Struct_1, 6>();
    var var_1 = vec2<bool>(!((max(1u, var_0.b) < arg_0) & true), arg_3.x);
    return ~var_0.c.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_4) -> i32 {
    var var_0 = abs(select(_wgslsmith_add_u32(~arg_1.b.b, _wgslsmith_mod_u32(arg_1.c.b, ~arg_1.b.b)), arg_2, !select(false, arg_3.e.e.x, arg_3.a.x && true)));
    let var_1 = select(func_3(arg_2, _wgslsmith_div_vec3_f32(vec3<f32>(100f, 155f, _wgslsmith_f_op_f32(max(arg_3.e.b.e, arg_3.b))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.e + arg_3.e.c.e), _wgslsmith_f_op_f32(-638f * arg_1.a), _wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1989f, arg_3.c.e, arg_1.b.e))), vec2<bool>(any(vec4<bool>(arg_1.d.x, true, true, arg_3.a.x)), !select(true, false, arg_1.e.x))), vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -arg_1.c.a, -2147483647i | _wgslsmith_mult_i32(arg_3.d.x, arg_1.b.a)), ~_wgslsmith_add_i32(-26625i, 0i) >> (0u % 32u), arg_1.c.c.a.x), any(select(select(vec2<bool>(arg_3.e.e.x, arg_3.a.x), select(arg_1.d.ww, vec2<bool>(arg_3.e.e.x, arg_1.e.x), false), arg_3.e.e.x), !(!arg_1.e.yx), all(arg_3.e.e))));
    let var_2 = arg_1.c.e;
    global0 = array<Struct_1, 6>();
    var var_3 = arg_3.e.c.c;
    return 2147483647i;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = select(select(select(vec2<bool>(true, true), !vec2<bool>(arg_0.e.e.x, true), false), vec2<bool>(arg_0.a.x, true), false), select(select(arg_0.e.d.yx, vec2<bool>(all(arg_0.e.d.wx), true), all(arg_0.a)), !(!arg_0.a.zz), select(!arg_0.a.yz, arg_0.a.yw, select(vec2<bool>(false, arg_0.a.x), !vec2<bool>(false, arg_0.e.d.x), true))), all(vec3<bool>(arg_0.a.x, select(true, arg_0.a.x, arg_0.a.x), true)));
    global0 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e.b.e, -1071f, 1486f, 469f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.e, arg_0.c.e, -1955f, arg_0.e.c.e)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.e, -1612f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.e.a - arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.e.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -373f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 199f, -130f, 425f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, 1000f, arg_0.e.b.e, -1453f)))))));
    let var_2 = arg_0.e;
    let var_3 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(~2147483647i, func_2(select(u_input.c, u_input.b.ww, var_2.e.yz), arg_0.e, ~var_2.b.b, arg_0), u_input.d), ~(-select(vec3<i32>(0i, var_2.c.a, -1i), var_2.b.d, true))), arg_0.e.b.d.yy ^ -(vec2<i32>(-1i) * -arg_0.c.d.yz));
    return var_2.b;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_4(Struct_4(vec4<bool>(all(vec4<bool>(true, true, true, true)), min(u_input.d, 1i) >= -1185i, true, true), -1000f, Struct_2(u_input.c.x & func_2(vec2<i32>(-2147483647i, u_input.c.x), Struct_3(246f, Struct_2(-11602i, 7957u, global0[_wgslsmith_index_u32(38145u, 6u)], u_input.b.xwx, -1000f), Struct_2(36959i, 31235u, global0[_wgslsmith_index_u32(41873u, 6u)], vec3<i32>(u_input.c.x, u_input.a, -1i), 1807f), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), 4294967295u, Struct_4(vec4<bool>(true, true, true, true), 984f, Struct_2(17802i, 0u, global0[_wgslsmith_index_u32(34035u, 6u)], vec3<i32>(35588i, -17773i, u_input.d), -569f), vec3<i32>(-2542i, -2147483647i, 2147483647i), Struct_3(491f, Struct_2(u_input.d, 43790u, global0[_wgslsmith_index_u32(73536u, 6u)], u_input.b.zwz, -226f), Struct_2(u_input.d, 43160u, Struct_1(vec3<i32>(1i, 1i, u_input.a), vec2<i32>(u_input.a, 0i)), u_input.b.wxx, -790f), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))), 0u, Struct_1(abs(vec3<i32>(-52734i, 0i, -1i)), u_input.c), ~(~u_input.b.xwy), _wgslsmith_f_op_f32(round(-1000f))), vec3<i32>(~1i, u_input.b.x, -_wgslsmith_dot_vec3_i32(u_input.b.yyx, u_input.b.yxw)), Struct_3(_wgslsmith_f_op_f32(trunc(128f)), Struct_2(_wgslsmith_div_i32(-2147483647i, -54927i), _wgslsmith_clamp_u32(4294967295u, 176u, 1u), Struct_1(vec3<i32>(-82779i, u_input.c.x, u_input.b.x), vec2<i32>(0i, 50299i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -1i, 23635i), u_input.b.xzw), _wgslsmith_f_op_f32(sign(-274f))), Struct_2(reverseBits(u_input.d), _wgslsmith_mult_u32(7778u, 16125u), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.d), u_input.b.wy), ~vec3<i32>(u_input.a, u_input.c.x, 4711i), 1f), vec4<bool>(select(true, true, false), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false)))));
    let var_1 = ~vec3<i32>(_wgslsmith_mult_i32(func_3(~var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, -306f, var_0.e) + vec3<f32>(846f, var_0.e, 1000f)), vec3<f32>(-1518f, var_0.e, -351f), vec2<bool>(true, true)).x, _wgslsmith_mod_i32(103047i & var_0.c.b.x, u_input.b.x ^ -34909i)), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_i32(countOneBits(~u_input.c.x), var_0.a, _wgslsmith_div_i32(~(-34509i), -10042i)));
    var_0 = Struct_2(12096i, 0u, func_4(Struct_4(vec4<bool>(select(true, false, true), false, true, true), _wgslsmith_f_op_f32(1576f - -924f), Struct_2(-var_0.d.x, var_0.b >> (var_0.b % 32u), global0[_wgslsmith_index_u32(~1u, 6u)], vec3<i32>(-72869i, 70339i, -38007i), _wgslsmith_f_op_f32(sign(var_0.e))), ~vec3<i32>(27926i, 2147483647i, var_0.c.b.x), Struct_3(1f, func_4(Struct_4(vec4<bool>(true, true, true, false), 144f, Struct_2(var_0.c.b.x, var_0.b, Struct_1(var_1, u_input.c), vec3<i32>(7400i, -45450i, var_1.x), -282f), vec3<i32>(25968i, var_0.c.b.x, u_input.b.x), Struct_3(558f, Struct_2(u_input.d, var_0.b, global0[_wgslsmith_index_u32(4294967295u, 6u)], var_1, var_0.e), Struct_2(var_0.a, 4294967295u, var_0.c, var_1, var_0.e), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)))), Struct_2(u_input.b.x, var_0.b, Struct_1(var_1, vec2<i32>(9376i, var_1.x)), vec3<i32>(u_input.b.x, 43946i, 3109i), var_0.e), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, true, false)))).c, _wgslsmith_sub_vec3_i32(~abs(u_input.b.yzx), vec3<i32>(select(var_0.d.x, var_0.c.b.x, false), _wgslsmith_mult_i32(var_1.x, 1442i), 1i)) >> (select(countOneBits(vec3<u32>(16327u, 49123u, 0u)), vec3<u32>(77142u, 23467u ^ var_0.b, ~var_0.b), select(true, true, all(vec3<bool>(false, false, false)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(ceil(-903f)));
    global0 = array<Struct_1, 6>();
    var_0 = Struct_2(abs(~(-2147483647i)), var_0.b, Struct_1(vec3<i32>(1i, _wgslsmith_sub_i32(abs(var_0.a), ~u_input.d), var_0.a), ~abs(var_1.zx << (vec2<u32>(77645u, var_0.b) % vec2<u32>(32u)))), ~(~vec3<i32>(var_1.x & var_0.a, _wgslsmith_sub_i32(var_0.a, 27013i), 2147483647i | var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(146f, 347f)));
    return StorageBuffer(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = func_1();
}

