struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 0u);

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_1(false), vec3<u32>(8826u, 20408u, 4294967295u)), Struct_4(Struct_1(false), vec3<u32>(7823u, 32953u, 58292u)), Struct_4(Struct_1(false), vec3<u32>(0u, 54763u, 1u)), Struct_4(Struct_1(true), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_4(Struct_1(false), vec3<u32>(0u, 0u, 1u)), Struct_4(Struct_1(false), vec3<u32>(4294967295u, 46196u, 8570u)), Struct_4(Struct_1(true), vec3<u32>(29618u, 1u, 28078u)), Struct_4(Struct_1(false), vec3<u32>(1u, 6911u, 54906u)), Struct_4(Struct_1(false), vec3<u32>(18692u, 71806u, 1u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    var var_0 = 0u;
    var_0 = ~_wgslsmith_div_u32(1u, ~global0.x);
    let var_1 = vec2<u32>(116059u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_3.x, u_input.a, 25701u, 26203u), firstLeadingBit(vec4<u32>(1u, 5754u, 0u, 0u))), abs(~vec4<u32>(u_input.a, global0.x, 1u, 7086u)))) >> (~_wgslsmith_mult_vec2_u32(arg_3.zz, vec2<u32>(0u, 1u)) % vec2<u32>(32u));
    var var_2 = reverseBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(~1i, u_input.b), max(vec2<i32>(1i, u_input.b), ~vec2<i32>(u_input.b, 0i)), -(~vec2<i32>(0i, u_input.b))));
    global1 = array<Struct_4, 9>();
    return firstLeadingBit(1u);
}

fn func_2(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = vec3<u32>(4294967295u, u_input.a, min(4294967295u & _wgslsmith_div_u32(~u_input.a, _wgslsmith_mod_u32(0u, global0.x)), _wgslsmith_dot_vec2_u32(global0.yz, abs(~global0.xx))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1072f)) - 124f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f - -658f) + _wgslsmith_f_op_f32(abs(-322f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(551f, 678f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1119f, 708f, 691f), vec3<f32>(-805f, -1210f, 2357f), true)) + vec3<f32>(325f, 797f, 2145f))), !(!(!arg_0.a.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 903f, -370f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-694f + -167f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-400f, 1056f)))));
    global0 = vec3<u32>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -247f), arg_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -216f)), -1597f)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 38093u, u_input.a), vec3<u32>(global0.x, 1u, 9401u)), 8562u, firstLeadingBit(u_input.a)), (vec3<u32>(u_input.a, global0.x, global0.x) & vec3<u32>(3144u, u_input.a, 48628u)) ^ ~vec3<u32>(4294967295u, u_input.a, u_input.a))), 0u, 1u);
    var var_2 = true;
    var_2 = 28843u >= ~(~(var_0.x >> ((global0.x | u_input.a) % 32u)));
    return !vec4<bool>(true && arg_0.a.a.a, true, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 7853i), vec3<i32>(-2147483647i, -22809i, u_input.b)) < _wgslsmith_sub_i32(16431i, u_input.b)) || false, false);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_5) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(414f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(204f)), _wgslsmith_f_op_f32(ceil(943f)), any(arg_2.b.zx))))))), -1020f));
    global1 = array<Struct_4, 9>();
    let var_1 = Struct_1(true);
    let var_2 = select(func_2(arg_0), arg_3.a, !any(func_2(Struct_3(Struct_2(Struct_1(arg_0.a.c.a), var_1, Struct_1(false)), arg_0.b))));
    let var_3 = arg_2;
    return Struct_5(arg_3.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: Struct_5) -> i32 {
    let var_0 = arg_0.a;
    var var_1 = min(reverseBits((_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -19794i), vec4<i32>(u_input.b, u_input.b, u_input.b, 2012i)) & firstTrailingBit(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b))) >> ((~vec4<u32>(global0.x, u_input.a, 75863u, 2494u) << ((vec4<u32>(u_input.a, 60015u, u_input.a, 59535u) ^ vec4<u32>(31192u, global0.x, u_input.a, global0.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), select(select(firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, 13469i, u_input.b)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(2147483647i, 15055i, u_input.b, 1i), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 7906i, u_input.b), vec4<i32>(-2147483647i, u_input.b, -14456i, u_input.b)), max(vec4<i32>(u_input.b, u_input.b, 0i, 1i), vec4<i32>(2147483647i, 2147483647i, 44957i, 1i))), vec4<bool>(true, arg_0.c.a, true, true)), ~vec4<i32>(abs(u_input.b), u_input.b ^ -34646i, _wgslsmith_mult_i32(u_input.b, 1i), u_input.b), !all(func_2(Struct_3(arg_0, vec3<bool>(true, true, true))))));
    var_1 = countOneBits(_wgslsmith_mult_vec4_i32(select(abs(~vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, u_input.b, 28177i), vec4<i32>(-16430i, 15549i, var_1.x, u_input.b), vec4<i32>(u_input.b, var_1.x, u_input.b, var_1.x)) & (vec4<i32>(28585i, -20922i, u_input.b, u_input.b) & vec4<i32>(u_input.b, 1i, -2147483647i, -27725i)), arg_3.a.x), -max(abs(vec4<i32>(-2147483647i, -1i, u_input.b, -50964i)), vec4<i32>(-16705i, 1i, 0i, -2147483647i) >> (vec4<u32>(global0.x, 3474u, 43642u, 4294967295u) % vec4<u32>(32u)))));
    var var_2 = i32(-1i) * -63956i;
    let var_3 = var_1.x;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, -firstTrailingBit(-21206i)), i32(-1i) * -1i), select(_wgslsmith_clamp_i32(func_4(Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), vec4<bool>(true, true, true, true), func_1(Struct_3(Struct_2(Struct_1(true), Struct_1(false), Struct_1(false)), vec3<bool>(false, false, false)), -2147483647i, Struct_3(Struct_2(Struct_1(true), Struct_1(true), Struct_1(true)), vec3<bool>(true, false, true)), Struct_5(vec4<bool>(false, true, false, false))), func_1(Struct_3(Struct_2(Struct_1(true), Struct_1(true), Struct_1(true)), vec3<bool>(false, true, true)), 36329i, Struct_3(Struct_2(Struct_1(false), Struct_1(false), Struct_1(true)), vec3<bool>(false, false, false)), Struct_5(vec4<bool>(false, true, false, true)))), -2147483647i, 1i), min(1i, abs(firstTrailingBit(u_input.b))), func_1(Struct_3(Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), vec3<bool>(true, true, true)), -19600i | (u_input.b << (global0.x % 32u)), Struct_3(Struct_2(Struct_1(false), Struct_1(true), Struct_1(false)), vec3<bool>(true, true, true)), func_1(Struct_3(Struct_2(Struct_1(false), Struct_1(true), Struct_1(true)), vec3<bool>(false, true, true)), u_input.b, Struct_3(Struct_2(Struct_1(false), Struct_1(false), Struct_1(true)), vec3<bool>(true, true, true)), Struct_5(vec4<bool>(false, true, true, true)))).a.x));
    let var_1 = _wgslsmith_f_op_f32(abs(-949f));
    let var_2 = Struct_5(!func_1(Struct_3(Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), var_0, Struct_3(Struct_2(Struct_1(false), Struct_1(false), Struct_1(false)), vec3<bool>(true, true, true)), func_1(Struct_3(Struct_2(Struct_1(true), Struct_1(false), Struct_1(true)), vec3<bool>(true, false, false)), func_4(Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), vec4<bool>(true, false, true, false), Struct_5(vec4<bool>(true, false, false, true)), Struct_5(vec4<bool>(false, true, true, true))), Struct_3(Struct_2(Struct_1(true), Struct_1(false), Struct_1(false)), vec3<bool>(false, false, true)), Struct_5(vec4<bool>(true, true, false, false)))).a);
    global1 = array<Struct_4, 9>();
    let var_3 = 1u;
    global0 = ~_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, global0.x, 1u)), vec3<u32>(var_3, 18031u, 1u)), ~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3, 1u, 1u), vec3<u32>(23599u, u_input.a, 28985u))));
    let var_4 = var_2;
    var var_5 = Struct_3(Struct_2(Struct_1(true), Struct_1(select(var_4.a.x, true, true)), Struct_1(var_2.a.x)), var_2.a.zzx);
    var var_6 = Struct_3(var_5.a, vec3<bool>(!(!(true && var_4.a.x)), var_2.a.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), abs(vec2<u32>(max(u_input.a, 27827u) << (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(24751u, var_3, u_input.a, 46857u), abs(vec4<u32>(49263u, 0u, 0u, 4294967295u))))), firstTrailingBit(vec3<i32>(reverseBits(i32(-1i) * -21367i), 31536i, _wgslsmith_div_i32(u_input.b, ~var_0))));
}

