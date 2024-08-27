struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(1000f, 914f, 1000f, 830f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, -404f, -395f, global1.x)))))))))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global1.x, global1.x, global0.b) * vec4<f32>(global0.b, global1.x, global1.x, -808f)))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1002f, -1865f, 1625f, _wgslsmith_f_op_f32(-global0.b))))));
    global0 = Struct_1(10547i, global0.b, true, global0.d, ~vec3<i32>(_wgslsmith_div_i32(global0.a, u_input.b) ^ global0.e.x, global0.a, -firstLeadingBit(-2147483647i)));
    var var_0 = false;
    let var_1 = _wgslsmith_sub_u32(max(_wgslsmith_add_u32(0u ^ ~u_input.a, u_input.a), u_input.a << (35442u % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(7777u, u_input.c, 59334u, u_input.c), vec4<u32>(u_input.c, 27608u, 75148u, u_input.a) | vec4<u32>(u_input.a, 1u, 16788u, u_input.a)), ~vec4<u32>(1u, 1u, u_input.c, u_input.c)), 4294967295u));
    return firstTrailingBit(vec3<i32>(1i, u_input.b | ~u_input.b, firstLeadingBit(u_input.b)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = arg_2;
    let var_1 = var_0;
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(max(~u_input.a, 3087u), 35955u, ~(~max(67981u, u_input.a))), vec3<u32>(~0u, ~8189u ^ u_input.c, u_input.a) | vec3<u32>(_wgslsmith_mod_u32(~31842u, u_input.a), min(59581u, u_input.a), _wgslsmith_mult_u32(u_input.a, 1u)));
    let var_3 = ~(~var_2.xz);
    let var_4 = Struct_2(_wgslsmith_div_vec3_i32(var_0.e, func_3()), Struct_1(-1i, _wgslsmith_f_op_f32(floor(arg_2.b)), !(!(!arg_2.c)), !vec3<bool>(true, 2569u != var_3.x, global0.c == false), abs(abs(~var_0.e))));
    return any(select(!select(!vec4<bool>(false, global0.d.x, true, true), select(vec4<bool>(arg_2.c, false, arg_2.d.x, false), vec4<bool>(var_4.b.c, global0.d.x, var_1.d.x, arg_2.c), var_4.b.d.x), any(global0.d.xy)), vec4<bool>(true, false, false, any(select(vec4<bool>(false, global0.c, true, var_1.c), vec4<bool>(global0.d.x, var_4.b.c, global0.d.x, global0.d.x), vec4<bool>(false, var_4.b.d.x, var_0.d.x, true)))), false));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_mod_u32(~u_input.a << (_wgslsmith_div_u32(~0u, 25611u) % 32u), _wgslsmith_mod_u32(~u_input.c, 4294967295u));
    var var_1 = Struct_1(-18816i, global1.x, global0.c, !vec3<bool>(!func_2(-334f, u_input.b, Struct_1(u_input.b, global1.x, false, global0.d, vec3<i32>(1i, global0.e.x, global0.e.x)), -1i), false, any(vec2<bool>(true, global0.d.x)) && true), -_wgslsmith_mod_vec3_i32(select(-vec3<i32>(global0.e.x, global0.a, 2147483647i), ~vec3<i32>(-5991i, 41241i, 2147483647i), global0.d), vec3<i32>(func_3().x, max(u_input.b, u_input.b), -33565i)));
    global0 = Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -582f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.b, 558f)))))), true, vec3<bool>(var_1.d.x, all(vec3<bool>(true, global0.d.x || var_1.c, true)), any(select(!vec4<bool>(global0.d.x, false, var_1.d.x, global0.c), !vec4<bool>(global0.c, true, false, var_1.d.x), select(vec4<bool>(global0.c, global0.d.x, false, false), vec4<bool>(false, true, global0.c, false), vec4<bool>(global0.c, true, global0.c, global0.c))))), abs(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-69631i, -5619i), var_1.a), _wgslsmith_clamp_i32(1i, -18019i & global0.e.x, countOneBits(u_input.b)), -7489i)));
    var_1 = Struct_1(global0.a & global0.a, 1000f, var_1.c, select(select(select(select(vec3<bool>(var_1.c, global0.d.x, false), vec3<bool>(false, true, var_1.d.x), global0.d.x), vec3<bool>(true, true, true), global0.d), var_1.d, select(vec3<bool>(false, var_1.c, true), select(vec3<bool>(false, var_1.d.x, global0.c), var_1.d, var_1.d), any(vec4<bool>(false, var_1.d.x, true, false)))), select(select(select(vec3<bool>(true, false, true), var_1.d, global0.d), global0.d, !var_1.d), select(!var_1.d, vec3<bool>(var_1.d.x, false, true), vec3<bool>(false, global0.c, false)), var_1.d), true), ~countOneBits(global0.e));
    let var_2 = Struct_2(~vec3<i32>(_wgslsmith_mod_i32(u_input.b, global0.a) << (~var_0 % 32u), u_input.b, -global0.e.x), Struct_1(-((u_input.b << (1u % 32u)) >> (u_input.a % 32u)), _wgslsmith_f_op_f32(select(691f, -516f, var_1.d.x)), !(global0.b >= _wgslsmith_f_op_f32(select(-1123f, global0.b, var_1.d.x))), var_1.d, vec3<i32>(_wgslsmith_dot_vec3_i32(-var_1.e, var_1.e), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, 11646i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, var_1.a, global0.e.x), vec4<i32>(-3121i, global0.a, var_1.a, -15324i))), u_input.b)));
    return select(select(vec4<bool>(true, true, all(vec2<bool>(var_1.d.x, var_1.d.x)) == false, !var_1.c), !select(vec4<bool>(var_1.c, var_2.b.d.x, global0.d.x, true), select(vec4<bool>(global0.c, false, var_2.b.c, false), vec4<bool>(var_2.b.c, false, false, var_1.d.x), var_1.c), vec4<bool>(var_1.c, true, false, false)), vec4<bool>(!var_2.b.d.x, true, any(select(vec4<bool>(var_1.c, var_2.b.d.x, var_1.c, global0.d.x), vec4<bool>(global0.c, global0.c, true, var_2.b.c), vec4<bool>(true, global0.c, global0.d.x, global0.c))), true)), !(!select(select(vec4<bool>(false, var_1.c, global0.d.x, global0.d.x), vec4<bool>(true, var_2.b.c, false, true), true), !vec4<bool>(false, false, true, var_2.b.d.x), all(global0.d))), 1u >= ~u_input.c);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0.x;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.b, global1.x, global0.b) - vec4<f32>(1000f, global1.x, -187f, global0.b))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -977f, -1292f, global1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-227f, -542f, global1.x, -254f))))));
    let var_1 = Struct_1(~(-(~(i32(-1i) * -49205i))), 272f, global0.d.x, !global0.d, vec3<i32>(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_1.x, u_input.b, -2147483647i) >> (vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.c) % vec4<u32>(32u)), vec4<i32>(arg_1.x, -2147483647i, global0.a, -1i) ^ arg_1), u_input.b));
    let var_2 = 39435u;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), 955f, _wgslsmith_f_op_f32(f32(-1f) * -1145f), _wgslsmith_f_op_f32(-global1.x));
    return Struct_2(global0.e, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(vec4<bool>(any(vec2<bool>(false, true)), true, true, any(vec4<bool>(global0.c, true, global0.c, true)) | all(vec4<bool>(global0.d.x, global0.c, false, false))), select(vec4<bool>(all(global0.d), all(vec3<bool>(true, global0.d.x, true)), true, any(vec4<bool>(true, global0.d.x, true, true))), !func_1(), vec4<bool>(func_2(-258f, global0.a, Struct_1(0i, global1.x, false, global0.d, global0.e), global0.e.x), true, global0.c | false, true)), !vec4<bool>(false, global0.d.x, 2147483647i >= global0.a, true)), vec4<i32>(firstLeadingBit(global0.e.x), -1i, min(-global0.a, 1i ^ _wgslsmith_mod_i32(global0.e.x, 2147483647i)), -global0.e.x));
    let var_1 = ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, u_input.c), vec4<u32>(0u, u_input.c, 9750u, 15455u))) | (~(~vec4<u32>(u_input.c, 1u, u_input.a, u_input.a)) >> (vec4<u32>(18436u, 0u << (0u % 32u), ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 5057u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 1u, 0u))) % vec4<u32>(32u))));
    var_0 = func_4(select(!vec4<bool>(false, global0.d.x && false, true, global0.d.x), !(!vec4<bool>(false, var_0.b.c, false, var_0.b.c)), select(select(!vec4<bool>(var_0.b.c, global0.d.x, true, var_0.b.d.x), vec4<bool>(false, true, true, var_0.b.c), var_0.b.c), select(vec4<bool>(true, global0.d.x, false, global0.c), select(vec4<bool>(false, true, global0.c, var_0.b.c), vec4<bool>(var_0.b.d.x, false, var_0.b.d.x, true), vec4<bool>(true, global0.d.x, global0.d.x, var_0.b.d.x)), vec4<bool>(global0.c, global0.c, var_0.b.d.x, false)), var_0.b.c)), vec4<i32>(global0.a, -4323i, _wgslsmith_sub_i32(1i, -_wgslsmith_clamp_i32(18590i, 55881i, var_0.b.a)), -max(_wgslsmith_clamp_i32(global0.a, global0.e.x, 2147483647i), -var_0.b.e.x)));
    let var_2 = func_4(select(!select(vec4<bool>(var_0.b.d.x, var_0.b.c, var_0.b.d.x, global0.c), vec4<bool>(var_0.b.d.x, true, false, true), !vec4<bool>(false, false, global0.d.x, var_0.b.c)), !func_1(), true), vec4<i32>(min(~(-24003i), reverseBits(-31662i & var_0.a.x)), ~(~_wgslsmith_div_i32(u_input.b, var_0.a.x)), global0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -52863i, global0.e.x), -vec3<i32>(var_0.b.e.x, 0i, -2147483647i), ~vec3<i32>(u_input.b, 5222i, 56169i)), -abs(vec3<i32>(-2147483647i, u_input.b, 35944i))))).b;
    var var_3 = ~(-29148i);
    let var_4 = ~var_1 >> (vec4<u32>(~abs(~var_1.x), u_input.c, 1u, 150499u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(28642u, var_1.x, var_1.x, 4294967295u), firstTrailingBit(~vec2<u32>(4294967295u, var_1.x) >> (vec2<u32>(_wgslsmith_mult_u32(29529u, 94001u), 14014u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(647f, 1000f, -1332f, 929f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.b)), var_2.b, _wgslsmith_div_f32(global1.x, var_2.b), _wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(abs(1093f)), _wgslsmith_f_op_f32(floor(global0.b)), -872f))), ~(-_wgslsmith_mult_vec4_i32(abs(vec4<i32>(2147483647i, var_2.a, 2147483647i, var_0.a.x)), reverseBits(vec4<i32>(12003i, var_2.e.x, u_input.b, var_0.a.x)))));
}

