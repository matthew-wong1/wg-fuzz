struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32 = -846f;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-247f)));
    var var_1 = ~countOneBits(~(~min(vec3<u32>(global0.b.a, global0.a.a, 1u), vec3<u32>(global0.b.a, global0.b.a, global0.b.a))));
    let var_2 = 1678f;
    global0 = Struct_4(global0.a, global0.b, false);
    global0 = Struct_4(global0.b, Struct_1(31841u), any(select(vec2<bool>(global0.c, true), vec2<bool>(arg_0, true), true)));
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3((1796u & global0.b.a) > global0.a.a, select(!vec2<bool>(false, global0.c), vec2<bool>(global0.c, global0.c), select(vec2<bool>(true, global0.c), vec2<bool>(arg_0, false), arg_0)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1108f + -685f))));
    let var_1 = vec2<bool>(true, true);
    global1 = var_0.x;
    var var_2 = u_input.b.x;
    var var_3 = -abs(u_input.c);
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<i32> {
    global1 = 1000f;
    var var_0 = true;
    var var_1 = vec4<bool>(any(select(vec3<bool>(true, all(vec3<bool>(false, global0.c, true)), global0.c), select(!vec3<bool>(global0.c, false, false), !vec3<bool>(global0.c, true, global0.c), global0.c), vec3<bool>(global0.c | global0.c, !global0.c, !global0.c))), any(vec4<bool>(global0.c, global2.x <= max(2147483647i, 2147483647i), global0.c, any(!vec3<bool>(global0.c, true, global0.c)))), global0.c, global0.c);
    var var_2 = Struct_3(Struct_2(41383i, select(-(~arg_1.zw), vec2<i32>(0i >> (arg_0.a % 32u), 1i), !global0.c), -1361i, Struct_1(1u)), Struct_2(arg_1.x, arg_1.xz, _wgslsmith_div_i32(-(1i | arg_1.x), 29543i << (0u % 32u)), global0.b), select(!vec4<bool>(any(vec4<bool>(false, false, global0.c, true)), true, var_1.x, false), !select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(global0.c, var_1.x, global0.c, true), true), vec4<bool>(var_1.x, var_1.x, false, global0.c)), vec4<bool>(_wgslsmith_mult_i32(-48728i, u_input.b.x) != global2.x, all(select(vec4<bool>(false, var_1.x, var_1.x, global0.c), vec4<bool>(false, var_1.x, var_1.x, global0.c), var_1.x)), var_1.x, any(select(vec4<bool>(var_1.x, global0.c, global0.c, false), vec4<bool>(false, false, false, global0.c), vec4<bool>(var_1.x, global0.c, true, global0.c))))), Struct_1(abs(reverseBits(arg_0.a)) & global0.b.a), !(!(!(!var_1.x))));
    return abs(vec2<i32>(-10082i, var_2.a.c));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = u_input.b;
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(378f + _wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, global0.c, global0.c)), vec2<bool>(any(vec3<bool>(global0.c, global0.c, false)), false))))));
    global2 = -countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(5086i, 40946i), _wgslsmith_mult_vec2_i32(var_1.xz, vec2<i32>(27879i, 1i))) | (vec2<i32>(arg_3.a, 13838i) & u_input.a.wz));
    let var_2 = Struct_2(arg_3.b.x, vec2<i32>(u_input.b.x, abs(_wgslsmith_div_i32(arg_1, firstTrailingBit(3799i)))), _wgslsmith_clamp_i32(var_1.x, -(7872i >> (arg_2.x % 32u)), (i32(-1i) * -42104i) ^ (var_1.x ^ arg_3.c)) << (select(_wgslsmith_dot_vec2_u32(arg_2, arg_2), ~92195u, false) % 32u), func_2(!(global0.a.a == ~0u)));
    return Struct_2(0i, u_input.a.yy, arg_1, Struct_1(min(0u ^ func_2(true).a, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 1u, 451u, 0u), min(vec4<u32>(var_2.d.a, 12692u, 4294967295u, 1u), vec4<u32>(arg_0, arg_0, var_0.x, arg_0))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = arg_0.x;
    let var_2 = Struct_3(func_5(~global0.a.a, var_0.x, vec2<u32>(global0.b.a, 12961u), Struct_2(~_wgslsmith_mod_i32(arg_3.x, -1i), func_4(func_2(true), ~vec4<i32>(u_input.b.x, u_input.c.x, var_0.x, 30177i)), 0i, Struct_1(7274u))), func_5(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(global0.b.a, global0.a.a, global0.b.a, global0.a.a), vec4<u32>(global0.b.a, global0.a.a, global0.b.a, 1u), arg_2.x), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(25101u, global0.b.a, 6020u, 9461u)), abs(vec4<u32>(global0.b.a, 57068u, 1u, global0.b.a)))), -18144i, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(43646u, 41703u), vec2<u32>(19258u, 4294967295u))), func_5(min(0u, ~global0.b.a), func_4(global0.a, arg_3).x, vec2<u32>(global0.a.a, ~18175u), func_5(~1u, -arg_3.x, _wgslsmith_mod_vec2_u32(vec2<u32>(88607u, global0.a.a), vec2<u32>(global0.a.a, 4294967295u)), Struct_2(-4047i, vec2<i32>(-1i, arg_1.x), 23304i, global0.a)))), vec4<bool>(true, !all(arg_2), !(!(global0.c & false)), select(false, false, true)), global0.a, all(select(vec4<bool>(true, true, all(vec3<bool>(false, arg_2.x, false)), any(arg_2)), vec4<bool>(true, global0.c || false, all(arg_2), false), _wgslsmith_f_op_f32(f32(-1f) * -1653f) < _wgslsmith_div_f32(arg_0.x, arg_0.x))));
    var var_3 = ~(-firstTrailingBit(0i)) ^ 51733i;
    var var_4 = Struct_4(func_5(var_2.d.a, ~((var_0.x | var_0.x) & arg_3.x), vec2<u32>(countOneBits(global0.a.a), 4294967295u), var_2.b).d, Struct_1(func_5(~_wgslsmith_sub_u32(33901u, var_2.b.d.a), _wgslsmith_div_i32(0i, -2147483647i), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(0u, 1u)), ~vec2<u32>(global0.b.a, 0u)), func_5(18114u, _wgslsmith_add_i32(var_0.x, -44205i), ~vec2<u32>(var_2.a.d.a, 9416u), func_5(4294967295u, -2147483647i, vec2<u32>(1u, var_2.a.d.a), var_2.a))).d.a), true);
    return var_2.c.yw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-838f, -178f, -2255f, 217f)), vec3<i32>(26788i, global2.x, u_input.c.x), select(vec4<bool>(global0.c, global0.c, false, true), vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(false, global0.c, true, false)), abs(vec4<i32>(global2.x, -10788i, 0i, 0i))), vec2<bool>(true, false), !(!vec2<bool>(true, global0.c))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-319f, -2467f, _wgslsmith_f_op_f32(step(-622f, _wgslsmith_f_op_f32(f32(-1f) * -773f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -3070f), _wgslsmith_f_op_f32(select(-589f, -662f, false))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1214f - _wgslsmith_f_op_f32(select(895f, -1408f, global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f - -159f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1071f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f * _wgslsmith_f_op_f32(abs(-970f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-289f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(727f - -568f))))));
    global1 = 1062f;
    let var_2 = func_5(0u << ((~select(global0.a.a, 12057u, true) & ~global0.b.a) % 32u), global2.x, _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(645u, 25362u))), vec2<u32>(~(global0.b.a ^ 1u), global0.b.a)), Struct_2(1i, func_4(Struct_1(30628u), -reverseBits(u_input.a)), 0i, global0.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, vec2<bool>(true, true)))));
    var_3 = 2657f;
    var_3 = 189f;
    let var_4 = func_5(func_2(any(select(select(vec4<bool>(false, global0.c, global0.c, true), vec4<bool>(global0.c, false, global0.c, true), vec4<bool>(false, true, false, var_0.x)), select(vec4<bool>(var_0.x, false, global0.c, global0.c), vec4<bool>(true, global0.c, false, true), vec4<bool>(true, var_0.x, var_0.x, global0.c)), vec4<bool>(false, false, true, true)))).a, -2147483647i, max(_wgslsmith_add_vec2_u32(~(vec2<u32>(0u, global0.b.a) & vec2<u32>(var_2.d.a, global0.b.a)), ~max(vec2<u32>(42075u, 2922u), vec2<u32>(4948u, 1u))), ~reverseBits(vec2<u32>(4294967295u, 33227u) ^ vec2<u32>(var_2.d.a, 37787u))), func_5(41416u, -1i, firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.d.a, global0.a.a), firstLeadingBit(vec2<u32>(82579u, global0.b.a)))), func_5(26980u, -1i, ~select(vec2<u32>(4294967295u, 1931u), vec2<u32>(var_2.d.a, var_2.d.a), var_0.x), var_2)));
    let var_5 = vec3<bool>(all(!vec3<bool>(global0.c != true, global0.c, true)), var_0.x, any(vec4<bool>(~global0.a.a <= 4294967295u, var_0.x, true, global0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-61555i, _wgslsmith_sub_i32(global2.x, global2.x | _wgslsmith_sub_i32(-42401i, var_2.b.x)), (~global2.x & ~(-427i)) ^ u_input.d), -2147483647i);
}

