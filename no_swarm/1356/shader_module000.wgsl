struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, -31671i, Struct_1(vec3<i32>(-1i, 2147483647i, -7527i), -1107f, true, true));

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-1000f, -1372f, 298f), vec3<f32>(415f, 790f, -1068f), vec3<f32>(904f, -149f, -1673f), vec3<f32>(-393f, -687f, 1826f), vec3<f32>(874f, 310f, -1397f), vec3<f32>(-1000f, -723f, -650f), vec3<f32>(932f, 1000f, -135f), vec3<f32>(-1154f, -321f, -597f), vec3<f32>(352f, -540f, 1125f), vec3<f32>(1413f, -1226f, 950f), vec3<f32>(580f, -1000f, 1249f), vec3<f32>(1187f, 145f, -1381f), vec3<f32>(-249f, 273f, 572f), vec3<f32>(-913f, -1000f, -776f), vec3<f32>(332f, 1194f, 1683f), vec3<f32>(-263f, -581f, 886f), vec3<f32>(-850f, -155f, 353f), vec3<f32>(-164f, -797f, -198f), vec3<f32>(418f, -1950f, 753f), vec3<f32>(557f, -1130f, -735f), vec3<f32>(-649f, 2018f, -1946f), vec3<f32>(-1000f, -1177f, 308f), vec3<f32>(-495f, -213f, 402f), vec3<f32>(1177f, -1737f, -1000f), vec3<f32>(450f, 1318f, -1424f), vec3<f32>(1849f, 493f, -1000f), vec3<f32>(290f, -1765f, 1000f), vec3<f32>(-1100f, 2175f, -1444f), vec3<f32>(815f, -1151f, 478f), vec3<f32>(1000f, -628f, -772f), vec3<f32>(415f, -155f, 960f), vec3<f32>(2627f, -1637f, 210f));

var<private> global3: f32 = -216f;

var<private> global4: vec3<i32> = vec3<i32>(-48167i, 1i, i32(-2147483648));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_5) -> vec2<i32> {
    global3 = _wgslsmith_div_f32(arg_3.b.a.b, global0.c.b);
    let var_0 = u_input.b;
    global0 = Struct_2(!(all(select(vec4<bool>(global0.c.c, true, false, false), vec4<bool>(global0.a, false, arg_3.b.a.c, false), false)) & true), reverseBits(-((global0.b << (arg_0 % 32u)) | reverseBits(arg_3.b.b))), global0.c);
    return max(~(~vec2<i32>(global0.b, -global0.c.a.x)), countOneBits(-vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), -global0.c.a.x)));
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_4(Struct_3(global0.c, u_input.e.x, ~vec3<u32>(arg_0.x, arg_0.x, arg_0.x) << (vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x, 1u) % vec3<u32>(32u)), -_wgslsmith_mult_i32(~(-15059i), u_input.e.x)), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(3152i, ~43568i)), func_3(u_input.b.x, _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, 0u, 53130u)), vec3<u32>(4294967295u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c.b, global0.c.b, 1700f, global0.c.b)))), Struct_5(_wgslsmith_f_op_f32(global0.c.b - 1698f), Struct_3(global0.c, 2696i, vec3<u32>(27355u, u_input.b.x, 480u), -6955i), -u_input.c))));
    let var_1 = u_input.a.x <= (-global0.b | ((var_0.b.x | ~(-16194i)) >> (reverseBits(1u) % 32u)));
    let var_2 = u_input.b.x;
    let var_3 = 4294967295u;
    var var_4 = select(select(!select(!vec3<bool>(true, var_0.a.a.c, global0.a), select(vec3<bool>(true, true, var_0.a.a.c), vec3<bool>(true, global0.c.d, var_0.a.a.c), false), select(vec3<bool>(var_0.a.a.c, var_0.a.a.d, var_1), vec3<bool>(true, true, true), false)), select(vec3<bool>(false, !var_1, false), select(vec3<bool>(false, true, var_1), select(vec3<bool>(var_0.a.a.c, true, var_0.a.a.d), vec3<bool>(var_1, global0.a, true), vec3<bool>(var_0.a.a.d, false, var_0.a.a.c)), all(vec3<bool>(false, true, false))), !vec3<bool>(false, var_1, false)), select(!select(var_1, var_0.a.a.c, var_0.a.a.c), var_1, true)), select(vec3<bool>(any(!vec3<bool>(var_1, false, var_1)), false, var_0.a.a.d), !(!vec3<bool>(var_0.a.a.d, var_0.a.a.d, true)), !select(select(vec3<bool>(global0.c.c, true, global0.c.c), vec3<bool>(var_0.a.a.d, true, var_0.a.a.d), true), select(vec3<bool>(true, false, var_0.a.a.d), vec3<bool>(false, var_1, global0.a), var_1), !vec3<bool>(var_1, var_0.a.a.d, var_1))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a.a.d, false, true), vec3<bool>(var_0.a.a.d, true, false), vec3<bool>(global0.c.d, true, global0.a)), true), vec3<bool>(all(vec4<bool>(false, false, true, var_1)) || var_1, false, var_1), !(!global0.a)));
    return firstLeadingBit(u_input.b.wz);
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = select(~vec2<u32>(u_input.b.x, ~40882u) ^ (~u_input.b.yw ^ u_input.b.yw), func_2(u_input.b) >> (u_input.b.ww % vec2<u32>(32u)), select(vec2<bool>(true, !any(vec2<bool>(false, global0.c.c))), vec2<bool>(true, !global0.c.d), vec2<bool>(!global0.a, !select(false, false, global0.a))));
    let var_1 = Struct_1((~arg_0 << (~(u_input.b.yzy | vec3<u32>(u_input.b.x, var_0.x, u_input.b.x)) % vec3<u32>(32u))) ^ ~(~vec3<i32>(-2147483647i, u_input.c.x, -60i) >> (u_input.b.yyx % vec3<u32>(32u))), global0.c.b, global0.c.c, global0.a);
    global3 = _wgslsmith_f_op_f32(ceil(-1540f));
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), 700f));
    var var_2 = Struct_2(var_1.d, min(-(~2147483647i), -(-1i & (var_1.a.x >> (1u % 32u)))), Struct_1(vec3<i32>(max(firstTrailingBit(0i), global0.c.a.x), ~(~global0.c.a.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1.a.x, arg_0.x, 52510i), 1i)), -1091f, global0.a, !(true | global0.c.c)));
    return Struct_3(global0.c, ~(var_2.c.a.x << (1u % 32u)), _wgslsmith_div_vec3_u32(~(select(vec3<u32>(1u, u_input.b.x, 67368u), u_input.b.wyz, true) << (u_input.b.yzx % vec3<u32>(32u))), vec3<u32>(var_0.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, var_0.x), u_input.b.ywy | vec3<u32>(u_input.b.x, u_input.b.x, var_0.x)))), i32(-1i) * -(~countOneBits(u_input.d)));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    let var_0 = Struct_2(countOneBits(_wgslsmith_sub_u32(min(17836u, u_input.b.x), ~18481u)) >= u_input.b.x, -24339i, Struct_1(arg_2.a.a.a, -1783f, arg_2.a.a.d, arg_0.b.a.c));
    var var_1 = Struct_2(!var_0.c.c, firstTrailingBit(var_0.c.a.x), func_1(~(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_0.b, -2147483647i), vec3<i32>(-9865i, global4.x, arg_2.b.x)) & -global0.c.a)).a);
    global1 = ~arg_0.b.c.x & (arg_2.a.c.x ^ ~(~arg_0.b.c.x & 0u));
    var var_2 = global0.b;
    global2 = array<vec3<f32>, 32>();
    return func_1(-(reverseBits(-arg_0.b.a.a) >> (u_input.b.zzx % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b)) + _wgslsmith_f_op_f32(global0.c.b * global0.c.b)), func_1(vec3<i32>(u_input.d | -1i, _wgslsmith_div_i32(11309i, global0.c.a.x), _wgslsmith_mod_i32(global0.b, -22055i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global4.x, -19792i, u_input.d), u_input.c), min(-2147483647i, _wgslsmith_mod_i32(22506i, -1i)), -_wgslsmith_add_i32(global0.c.a.x, 1i), global4.x)), 1580f, Struct_4(func_1(vec3<i32>(global4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-6916i, global0.c.a.x), vec2<i32>(7705i, -48717i)), i32(-1i) * -2438i)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(17180i, global0.b) | vec2<i32>(-2422i, -19720i)), ~global0.c.a.zy & ~vec2<i32>(global0.c.a.x, 0i), vec2<i32>(global0.c.a.x, 0i))));
    let var_1 = Struct_2((var_0.b >> (var_0.c.x % 32u)) == -(~2147483647i), ~abs(0i), Struct_1((_wgslsmith_div_vec3_i32(vec3<i32>(-28638i, u_input.d, var_0.d), global0.c.a) >> ((vec3<u32>(84603u, u_input.b.x, u_input.b.x) >> (vec3<u32>(var_0.c.x, 0u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) << (vec3<u32>(0u, u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, var_0.c.x, u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(704f - global0.c.b), global0.c.d, false));
    let var_2 = var_0.c << (~reverseBits(vec3<u32>(1u, _wgslsmith_mod_u32(17149u, u_input.b.x), 57052u)) % vec3<u32>(32u));
    global4 = var_1.c.a;
    var var_3 = Struct_5(var_0.a.b, var_0, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.x << (~u_input.b.x % 32u), _wgslsmith_div_u32(firstTrailingBit(u_input.b.x), var_0.c.x ^ 100073u) & ~_wgslsmith_mod_u32(1746u, 36142u), _wgslsmith_mult_u32(u_input.b.x, var_3.b.c.x), u_input.b.x), u_input.b.wy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), 834f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c.b, 264f)))), 56470u);
}

