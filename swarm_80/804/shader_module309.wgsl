struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(0u, vec3<u32>(19461u, 1u, 1u), vec3<i32>(-24083i, 0i, 2147483647i), Struct_1(4294967295u, vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, false, false)), Struct_1(32979u, vec2<u32>(0u, 4294967295u), vec4<bool>(true, true, true, false))), Struct_2(0u, vec3<u32>(4294967295u, 4294967295u, 80977u), vec3<i32>(6494i, 8170i, 1231i), Struct_1(1u, vec2<u32>(4294967295u, 25351u), vec4<bool>(true, true, false, false)), Struct_1(0u, vec2<u32>(4294967295u, 50303u), vec4<bool>(true, true, false, false))), Struct_2(15049u, vec3<u32>(1u, 4294967295u, 26350u), vec3<i32>(49656i, i32(-2147483648), 1i), Struct_1(0u, vec2<u32>(0u, 1u), vec4<bool>(true, true, true, true)), Struct_1(21371u, vec2<u32>(1u, 1u), vec4<bool>(true, true, true, true))), Struct_2(62179u, vec3<u32>(0u, 0u, 1u), vec3<i32>(1i, -40277i, 0i), Struct_1(0u, vec2<u32>(0u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(134598u, vec2<u32>(71731u, 4294967295u), vec4<bool>(false, false, true, true))), Struct_2(4294967295u, vec3<u32>(3732u, 91642u, 62498u), vec3<i32>(-8693i, -22833i, 0i), Struct_1(4294967295u, vec2<u32>(41060u, 0u), vec4<bool>(false, true, false, true)), Struct_1(126203u, vec2<u32>(22387u, 1u), vec4<bool>(true, true, true, false))), Struct_2(37937u, vec3<u32>(19180u, 0u, 22981u), vec3<i32>(25010i, -116i, 4053i), Struct_1(11549u, vec2<u32>(4294967295u, 16512u), vec4<bool>(true, true, false, false)), Struct_1(0u, vec2<u32>(4294967295u, 22450u), vec4<bool>(false, false, true, true))), Struct_2(4294967295u, vec3<u32>(0u, 21079u, 4294967295u), vec3<i32>(i32(-2147483648), 0i, -54026i), Struct_1(4294967295u, vec2<u32>(4887u, 5419u), vec4<bool>(false, true, true, true)), Struct_1(246u, vec2<u32>(38535u, 55259u), vec4<bool>(true, true, false, true))), Struct_2(72712u, vec3<u32>(0u, 1u, 69429u), vec3<i32>(-1i, -1334i, 0i), Struct_1(4294967295u, vec2<u32>(1u, 47068u), vec4<bool>(false, false, true, false)), Struct_1(37245u, vec2<u32>(8188u, 49197u), vec4<bool>(false, true, false, false))), Struct_2(39080u, vec3<u32>(38925u, 0u, 79099u), vec3<i32>(5761i, 0i, 1i), Struct_1(38107u, vec2<u32>(21069u, 3282u), vec4<bool>(false, false, false, false)), Struct_1(85561u, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, false, true, true))));

var<private> global1: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_4(!vec4<bool>(all(vec3<bool>(false, arg_0, true)), true, arg_0, arg_0), vec4<i32>(-1i) * -select(vec4<i32>(u_input.b.x, 1i, -1i, 0i), -vec4<i32>(-36214i, arg_1, u_input.a.x, u_input.c), true), Struct_3(~(~0i), Struct_1(_wgslsmith_dot_vec3_u32(arg_2, abs(arg_2)), vec2<u32>(arg_2.x, 4294967295u) | firstLeadingBit(vec2<u32>(37381u, arg_2.x)), !(!vec4<bool>(arg_0, arg_0, true, arg_0))), vec2<bool>(true, _wgslsmith_mult_i32(global1.x, arg_1) > firstTrailingBit(-2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1827f, -161f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(160f)))))), Struct_3(_wgslsmith_mult_i32(39914i, -1i), Struct_1(0u, max(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(4294967295u, 31017u)), !select(vec4<bool>(true, arg_0, true, false), vec4<bool>(arg_0, arg_0, false, true), true)), select(!(!vec2<bool>(arg_0, false)), !(!vec2<bool>(arg_0, false)), vec2<bool>(29169i <= global1.x, any(vec4<bool>(true, arg_0, false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-938f, 604f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-392f, -1338f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1255f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1040f, -136f) * vec2<f32>(-471f, -911f))))), abs(arg_2.x));
    let var_1 = firstLeadingBit(-39729i);
    let var_2 = 9248i;
    var var_3 = u_input.b.yy;
    let var_4 = var_0.c.b.c;
    return all(select(var_4, !var_4, countOneBits(_wgslsmith_div_i32(u_input.b.x, 0i)) >= countOneBits(-var_2)));
}

fn func_2() -> bool {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    let var_1 = vec3<i32>(~global1.x, _wgslsmith_div_i32(min(~(-46595i >> (var_0.b.x % 32u)), u_input.c), ~1i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(var_0.c.x, u_input.c, global1.x), var_0.c << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u)), func_3(var_0.d.c.x, var_0.c.x, vec3<u32>(56995u, 59915u, 4294967295u))), u_input.b ^ _wgslsmith_mod_vec3_i32(var_0.c, u_input.a.wzx)), min(global1.x, global1.x) >> (firstTrailingBit(0u) % 32u)));
    global0 = array<Struct_2, 9>();
    return all(select(var_0.d.c.zx, var_0.d.c.zz, var_0.e.c.x));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    global1 = vec2<i32>(-2147483647i, 2147483647i);
    let var_0 = vec4<bool>((!all(vec4<bool>(true, true, true, false)) && true) && (true == !select(true, true, true)), false && any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), any(!vec4<bool>(true, true, true, func_2())), any(vec4<bool>(false, true, true, false)));
    return Struct_3(firstLeadingBit(global1.x << (79436u % 32u)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~0u, countOneBits(29425u)), vec3<u32>(4294967295u, 0u, 1u)), ~min(_wgslsmith_sub_vec2_u32(vec2<u32>(52753u, 29947u), vec2<u32>(13212u, 0u)), vec2<u32>(1u, 1u)), var_0), select(vec2<bool>(true, true), vec2<bool>(!var_0.x, var_0.x), !select(!var_0.yw, var_0.ww, !vec2<bool>(false, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(-1000f + -905f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1156f, 1000f))))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    var var_0 = ~arg_1.b.b.x;
    global1 = u_input.b.yx;
    var_0 = ~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_1.b.b.x, 39879u, arg_1.b.a, 4294967295u)), vec4<u32>(7491u, abs(4294967295u | arg_1.b.b.x), 1u, ~abs(arg_1.b.b.x)));
    let var_1 = arg_1.d;
    global1 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.yy, vec2<i32>(global1.x, abs(0i))), vec2<i32>(-2147483647i, -33199i));
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(1259f, -1535f);
    var var_1 = Struct_3(u_input.a.x, func_4(false, func_1()), vec2<bool>(true || !any(vec4<bool>(false, false, false, false)), true), vec2<f32>(-218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))))));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.b.x, var_1.b.a, ~min(var_1.b.b.x, 4294967295u) & var_1.b.a, min(var_1.b.b.x, abs(~var_1.b.b.x))), vec4<u32>(~(~1u) & var_1.b.b.x, 7761u ^ _wgslsmith_clamp_u32(reverseBits(var_1.b.b.x), _wgslsmith_div_u32(0u, 18990u), var_1.b.b.x), ~1u, countOneBits(var_1.b.b.x)), vec4<u32>(countOneBits(~var_1.b.a), var_1.b.a << ((var_1.b.a & var_1.b.a) % 32u), 22976u, min(4294967295u, _wgslsmith_add_u32(51927u, var_1.b.b.x))) & ~vec4<u32>(0u, var_1.b.b.x, 4294967295u, var_1.b.b.x));
    let var_3 = var_2.x & ~31964u;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-780f, -675f, var_1.d.x >= -2589f)), var_1.d.x)))));
    let var_5 = func_4(var_1.c.x, Struct_3(~_wgslsmith_mod_i32(1i, var_1.a), func_1().b, var_1.c, _wgslsmith_f_op_vec2_f32(var_1.d * vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.d.x)), var_1.d.x))));
    let var_6 = func_4(all(var_1.b.c), func_1());
    global1 = u_input.a.wz;
    var var_7 = _wgslsmith_add_u32(var_6.b.x, firstTrailingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(u_input.a.xww, select(u_input.a.yxz, u_input.a.wyx, all(select(var_6.c, vec4<bool>(var_5.c.x, true, false, true), vec4<bool>(false, false, var_5.c.x, var_5.c.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) - var_1.d.x))), var_1.a);
}

