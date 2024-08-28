struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> vec2<f32> {
    var var_0 = arg_1.c;
    let var_1 = arg_2;
    var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1153f, arg_0)))) >= -536f);
    let var_2 = (arg_0 <= -1657f) | all(select(select(select(arg_1.a.zy, arg_1.a.yy, arg_1.c), !arg_1.a.xx, !arg_1.a.x), !arg_1.a.yy, !select(vec2<bool>(true, arg_1.a.x), arg_1.a.yx, false)));
    var_0 = ((~arg_1.b & ~7390u) != arg_2) || var_2;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), vec2<i32>(min(i32(-1i) * -11105i, ~u_input.a), 0i));
    let var_1 = vec3<i32>(-u_input.b.x, -2147483647i, _wgslsmith_clamp_i32(-u_input.a, -3563i, 1i));
    var var_2 = vec2<f32>(-449f, var_0.a);
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -1885f) * vec2<f32>(-600f, 891f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_2.x, Struct_3(vec4<bool>(arg_3.c, arg_3.a.x, arg_3.c, true), arg_3.b, arg_3.a.x), 77922u))), any(vec4<bool>(arg_3.a.x, true, arg_3.c, arg_3.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 788f)) - vec2<f32>(var_0.a, 2072f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1262f, -1872f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 562f))))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -950f))))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, -17939i, -10766i, -2147483647i), -vec4<i32>(u_input.b.x, u_input.a, 21725i, 1i)) | 54282i, countOneBits(var_0.b.x)));
    return -(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, var_1.x, 32690i, var_0.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 24672i, 0i, var_1.x), vec4<i32>(-14895i, 0i, var_1.x, -25230i)) << (vec4<u32>(arg_2.x, arg_0.x, arg_1.x, arg_0.x) % vec4<u32>(32u))) | countOneBits(vec4<i32>(-1i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.x, var_1.x, var_1.x, 10946i), vec4<i32>(var_0.b.x, 0i, var_0.b.x, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -26676i, 9325i, -2147483647i), vec4<i32>(-60606i, u_input.a, u_input.a, 0i)), 3110i)));
}

fn func_1() -> vec4<bool> {
    var var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = 1015f;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(func_2(~(~vec4<u32>(18628u, 67080u, 16794u, 22058u)), vec3<u32>(1u, 1u, 1u), max(select(vec4<u32>(4294967295u, 70376u, 1u, 1u), vec4<u32>(39418u, 0u, 6206u, 4294967295u), true), vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(vec4<bool>(false, true, false, false), countOneBits(84623u), select(true, true, false))), vec4<i32>(abs(_wgslsmith_mod_i32(u_input.a, u_input.a)), min(select(u_input.a, 22033i, false), u_input.a >> (0u % 32u)), countOneBits(-23780i), 27840i)), -6109i);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -232f), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, false), true)), 625f);
    return !select(!(!vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x)), vec4<bool>(var_3.c >= var_3.a, true, true, true), !select(vec4<bool>(true, var_3.b.x, var_3.b.x, var_3.b.x), vec4<bool>(var_3.b.x, true, var_3.b.x, false), !vec4<bool>(true, var_3.b.x, var_3.b.x, false)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * -813f) - _wgslsmith_f_op_f32(arg_0.a + arg_0.a)), -864f))));
    var var_1 = 4294967295u;
    var_1 = (arg_1.b << (arg_1.b % 32u)) >> (arg_1.b % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-705f, -850f)) - _wgslsmith_f_op_f32(arg_0.a * arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a))), 340f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 335f, arg_0.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-133f, 1598f, arg_0.a) - vec3<f32>(arg_0.a, arg_0.a, 456f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, 206f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.a) - vec3<f32>(552f, arg_0.a, arg_0.a)))))));
    var var_3 = arg_0.a;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(-906f, vec2<i32>(_wgslsmith_mult_i32(~(-1i), u_input.a), select(u_input.a, u_input.b.x, false)));
    var_0 = Struct_1(arg_1.a, vec2<i32>(countOneBits(_wgslsmith_mult_i32(-var_0.b.x, var_0.b.x)), reverseBits(var_0.b.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(-123f)), vec2<i32>(_wgslsmith_mult_i32(-5517i, 1i), var_0.b.x) | (_wgslsmith_mult_vec2_i32(u_input.b.yx, _wgslsmith_sub_vec2_i32(var_0.b, var_0.b)) | var_0.b));
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(ceil(-1843f)), abs(var_0.b)), Struct_3(vec4<bool>(false, 18409u > ~arg_0.b, var_0.a < _wgslsmith_f_op_f32(1068f * arg_1.a), any(!arg_0.a.wyz)), _wgslsmith_sub_u32(select(25402u, arg_0.b, any(vec2<bool>(false, arg_0.c))), ~_wgslsmith_clamp_u32(arg_0.b, 0u, 0u)), true));
    let var_3 = Struct_2(arg_2, select(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_sub_vec2_i32(var_1.b, vec2<i32>(u_input.a, -35874i))), Struct_3(vec4<bool>(false, true, true, arg_0.c), min(2907u, 4294967295u), arg_0.c)).a.yzw, func_1().wyz, arg_0.a.wyz), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(var_1.a, 263f))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(216f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c - 3209f)))), var_0.b << (firstTrailingBit(min(countOneBits(vec2<u32>(0u, var_2.b)), vec2<u32>(1u, 13827u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -419f))), vec2<i32>(0i ^ u_input.a, -1i)), Struct_3(func_1(), ~1u, !any(vec3<bool>(false, true, true)))), Struct_2(_wgslsmith_f_op_f32(2153f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(311f, -625f)) * 217f)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -802f)), _wgslsmith_f_op_f32(step(430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(-1167f, Struct_3(vec4<bool>(true, true, true, false), 4294967295u, true), 2256u)).x * _wgslsmith_f_op_f32(-117f + -561f))))));
    let var_1 = func_5(Struct_3(func_1(), abs(1u) | func_4(Struct_1(-624f, vec2<i32>(u_input.a, 1i)), func_4(Struct_1(var_0.a, vec2<i32>(2147483647i, 2147483647i)), Struct_3(vec4<bool>(false, true, false, false), 1u, true))).b, func_1().x), Struct_2(var_0.a, vec3<bool>(_wgslsmith_f_op_f32(var_0.a - -1017f) <= _wgslsmith_f_op_f32(f32(-1f) * -2241f), true, true), _wgslsmith_f_op_f32(395f * 1270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))).b.x;
    let var_2 = -(vec3<i32>(var_0.b.x, ~abs(22889i), var_0.b.x) & ~u_input.b);
    var_0 = func_5(Struct_3(vec4<bool>(true | all(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, true)), !select(true, false, false), all(vec2<bool>(true, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u << (0u % 32u), 29324u), vec2<u32>(~63458u, 50337u)), func_1().x), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(1311f * -385f)))), !vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, false)), select(false, false, false)), 116f), _wgslsmith_f_op_f32(f32(-1f) * -757f));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -656f), ~(~var_0.b & var_0.b) | ~(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), var_2.yz) << (select(vec2<u32>(43312u, 74252u), vec2<u32>(136173u, 3847u), false) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_mult_u32(~21533u, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(53979u, 1u, 435u), _wgslsmith_div_u32(4294967295u, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 8601u)), ~49855u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a) - -463f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.a, var_3.a, var_3.a, var_0.a))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_3.a, 1572f, var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 223f, -631f) - vec4<f32>(var_0.a, var_3.a, var_0.a, 138f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1159f, 518f, -255f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, var_0.a, var_0.a, var_3.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 713f, var_3.a, var_3.a) + vec4<f32>(var_0.a, 101f, -1113f, 1936f)))))));
}

