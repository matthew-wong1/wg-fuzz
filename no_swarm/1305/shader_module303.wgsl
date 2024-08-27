struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = select(vec4<bool>(!global0[_wgslsmith_index_u32(~16201u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(70030u, 50173u, 4317u, 1u), vec4<u32>(1748u, 4294967295u, 1u, 4294967295u)) % 32u), 20u)], any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(51250u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], true), !vec4<bool>(true, arg_0.a.b, global0[_wgslsmith_index_u32(0u, 20u)], true), false)), any(select(!vec2<bool>(arg_0.a.b, false), vec2<bool>(global0[_wgslsmith_index_u32(35985u, 20u)], arg_0.a.b), arg_0.c || arg_0.b.b)), any(vec3<bool>(any(vec3<bool>(arg_0.c, true, true)), true, true))), select(vec4<bool>(false, true, arg_0.a.b, all(!vec4<bool>(global0[_wgslsmith_index_u32(17930u, 20u)], true, false, true))), !vec4<bool>(global0[_wgslsmith_index_u32(abs(0u), 20u)], false && global0[_wgslsmith_index_u32(16686u, 20u)], any(vec3<bool>(false, false, arg_0.a.b)), !arg_0.a.b), vec4<bool>(true, !all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], false, arg_0.a.b)), false, global0[_wgslsmith_index_u32(1u, 20u)])), false);
    var var_1 = firstTrailingBit((_wgslsmith_clamp_vec3_u32(~vec3<u32>(22537u, 42661u, 1u), ~vec3<u32>(1u, 4294967295u, 42665u), vec3<u32>(17592u, 1u, 1u)) ^ vec3<u32>(61844u, min(13934u, 20968u), _wgslsmith_dot_vec3_u32(vec3<u32>(58779u, 10085u, 25678u), vec3<u32>(22676u, 0u, 0u)))) ^ vec3<u32>(~1u, _wgslsmith_add_u32(abs(4294967295u), select(1u, 62804u, true)), ~46906u));
    var var_2 = Struct_4(min(~(~u_input.b), _wgslsmith_mod_i32(~(~1i), _wgslsmith_mod_i32(u_input.b ^ -29176i, 20273i))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, max(var_1.x, 31097u)), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 9537u, var_1.x, 69223u), vec4<u32>(28431u, var_1.x, 4294967295u, var_1.x)), var_1.x, var_1.x)), Struct_3(abs(var_1.x & var_1.x) | ~(~var_1.x), arg_0, min(-reverseBits(arg_0.d), _wgslsmith_sub_i32(-1i, 2147483647i))), _wgslsmith_add_vec3_i32(vec3<i32>(~(-1i), -21347i, ~(-10747i)), _wgslsmith_add_vec3_i32(vec3<i32>(34421i, 24686i, -1i), vec3<i32>(u_input.c.x, arg_0.d, 0i))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, select(var_1.x, var_1.x, var_0.x), var_1.x >> (var_1.x % 32u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(55578u, var_1.x, var_1.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_1.x, 0u), vec3<u32>(var_1.x, 0u, var_1.x)))) % vec3<u32>(32u)));
    var_1 = vec3<u32>(_wgslsmith_add_u32(max(~40832u, 1u), var_1.x) << (abs(~15105u) % 32u), 1784u, _wgslsmith_clamp_u32(~var_1.x, var_2.c.a, ~_wgslsmith_mult_u32(12248u, ~var_2.b)));
    var var_3 = vec4<u32>(var_1.x, 1u, var_2.c.a, ~(~select(var_2.c.a, var_1.x, true)));
    return arg_0.d;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = func_3(arg_0.c.b);
    let var_1 = 4295i;
    global0 = array<bool, 20>();
    var var_2 = vec4<bool>(true, 1i == var_1, !all(select(select(vec3<bool>(global0[_wgslsmith_index_u32(40569u, 20u)], true, global0[_wgslsmith_index_u32(arg_0.b, 20u)]), vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(46716u, 20u)], arg_0.c.b.a.b, false)), select(vec3<bool>(arg_0.c.b.c, false, true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.b, 20u)]), vec3<bool>(arg_0.c.b.c, arg_0.c.b.c, arg_0.c.b.b.b)), vec3<bool>(false, true, arg_0.c.b.c))), select(arg_0.c.b.c, true || any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 20u)], global0[_wgslsmith_index_u32(arg_0.b, 20u)], arg_0.c.b.a.b, global0[_wgslsmith_index_u32(arg_0.c.a, 20u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(arg_0.c.a, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.a, 20u)], true, arg_0.c.b.c, true))), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(17329u, 52204u), 20u)]));
    let var_3 = u_input.c.wwx;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x))), global0[_wgslsmith_index_u32((arg_0.b | abs(arg_0.b)) & _wgslsmith_sub_u32(arg_0.b, arg_0.b), 20u)], _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(179f, _wgslsmith_f_op_f32(abs(478f)))))), arg_0.c.b.b, global0[_wgslsmith_index_u32(arg_0.b, 20u)], _wgslsmith_div_i32(-2147483647i, reverseBits(var_0)), _wgslsmith_f_op_f32(-arg_0.c.b.b.a));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    var var_0 = Struct_3(0u, func_2(Struct_4(u_input.a, 0u, Struct_3(~arg_0.a, Struct_2(Struct_1(-1085f, global0[_wgslsmith_index_u32(arg_0.a, 20u)], vec2<f32>(arg_0.b.a.c.x, arg_0.b.a.c.x)), Struct_1(arg_0.b.a.a, true, arg_0.b.b.c), global0[_wgslsmith_index_u32(arg_0.a, 20u)], u_input.c.x, arg_0.b.b.c.x), u_input.c.x), ~(vec3<i32>(-2426i, 22211i, arg_0.b.d) & vec3<i32>(arg_0.c, 9037i, arg_0.b.d))), -(u_input.c.zx | ~u_input.c.ww), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a.c.x, -2175f, -770f, arg_0.b.b.a) + vec4<f32>(arg_0.b.b.a, arg_0.b.a.c.x, arg_0.b.e, arg_0.b.e)) + vec4<f32>(-1075f, -1000f, 1000f, arg_0.b.a.c.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 632f, arg_0.b.a.c.x, arg_0.b.b.a))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.e, 1099f, -1592f, -886f), vec4<f32>(-2226f, arg_0.b.b.a, 1139f, -1000f)))), firstTrailingBit(arg_0.a) <= ~1u))), 1750i);
    var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = arg_0.a;
    global0 = array<bool, 20>();
    return Struct_4(0i, countOneBits(var_2), arg_0, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.wyw, _wgslsmith_mod_vec3_i32(vec3<i32>(-49131i, 6126i, arg_0.b.d), vec3<i32>(u_input.c.x, u_input.a, var_1.c))), vec3<i32>(34941i, 1i, u_input.b) | ~u_input.c.wzw) & -abs(_wgslsmith_div_vec3_i32(u_input.c.zwx, u_input.c.yyx)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>) -> Struct_2 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(0u), arg_0.b, 67074u, 1u), ~(~vec4<u32>(arg_0.b, 4294967295u, arg_0.c.a, arg_0.b))), vec4<u32>(~1u, ~arg_0.b, 75566u >> (arg_0.b % 32u), 42657u)) | vec4<u32>(41924u, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.c.a, arg_0.c.a, 69452u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.a, 11499u, arg_0.c.a, 6359u), vec4<u32>(0u, arg_0.c.a, arg_0.c.a, 4294967295u))), _wgslsmith_mult_u32(~(~arg_0.c.a), 24023u), 4294967295u);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(44614u, 30195u), 20u)];
    var_0 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(~4294967295u, _wgslsmith_sub_u32(86929u, arg_0.c.a), 12412u, max(4294967295u, 50523u))) >> (vec4<u32>(_wgslsmith_add_u32(0u, 0u), 20343u ^ (arg_0.c.a | 1u), 26185u, arg_0.c.a) % vec4<u32>(32u)), ~(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(17138u, 7343u, var_0.x, 5312u), vec4<u32>(37495u, var_0.x, 27058u, var_0.x), vec4<u32>(var_0.x, 0u, 22437u, 82289u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_0.c.a, 1u), vec4<u32>(arg_0.b, arg_0.b, 0u, 1u), vec4<u32>(arg_0.c.a, arg_0.b, 30929u, arg_0.b)), true) | vec4<u32>(0u, var_0.x >> (var_0.x % 32u), 1u, arg_0.b)));
    return arg_0.c.b;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = Struct_3(0u, func_5(func_4(Struct_3(_wgslsmith_add_u32(arg_0.x, arg_0.x), func_2(Struct_4(-31535i, 0u, Struct_3(arg_0.x, Struct_2(Struct_1(-1263f, true, vec2<f32>(1615f, 788f)), Struct_1(391f, global0[_wgslsmith_index_u32(0u, 20u)], vec2<f32>(491f, 497f)), global0[_wgslsmith_index_u32(arg_0.x, 20u)], u_input.a, 1436f), u_input.b), vec3<i32>(0i, u_input.a, -1i)), u_input.c.yx, vec4<f32>(-1000f, -107f, 1002f, 139f)), 0i)), select(vec2<bool>(true, global0[_wgslsmith_index_u32(~arg_0.x, 20u)]), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(20642u, 20u)])), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]), global0[_wgslsmith_index_u32(~arg_0.x, 20u)]), global0[_wgslsmith_index_u32(5390u, 20u)])), u_input.c.x);
    var_0 = Struct_3(~0u, var_0.b, select(u_input.a, _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(-u_input.a, var_0.c)), any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 20u)], global0[_wgslsmith_index_u32(arg_0.x, 20u)], false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)], false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(23667u, 20u)], false, var_0.b.a.b))) != var_0.b.a.b));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    var var_0 = Struct_2(Struct_1(279f, true, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(-665f)), -337f)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(489f, -150f), -435f)))), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1387f))), -1189f)), !global0[_wgslsmith_index_u32(1u, 20u)], u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-857f)) * _wgslsmith_f_op_f32(1177f * 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1025f * -1008f), _wgslsmith_f_op_f32(f32(-1f) * -1661f)))));
    var var_1 = func_1(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(31870u, countOneBits(55622u), firstLeadingBit(0u))), max(select(~vec3<u32>(93857u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u), global0[_wgslsmith_index_u32(~4294967295u, 20u)]), ~(~vec3<u32>(78411u, 34917u, 29515u)))));
    var var_2 = func_4(Struct_3(~(~max(12246u, 4294967295u)), func_4(Struct_3(func_4(Struct_3(4294967295u, Struct_2(Struct_1(var_0.b.c.x, global0[_wgslsmith_index_u32(1u, 20u)], vec2<f32>(var_0.b.a, var_0.a.c.x)), var_0.a, var_1.b.b, 1i, 646f), -2998i)).b, Struct_2(var_1.a, Struct_1(755f, true, vec2<f32>(1176f, var_1.e)), false, 18618i, 319f), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-20128i, var_1.d)))).c.b, _wgslsmith_div_i32(-67558i, u_input.b))).c;
    var var_3 = 1258f;
    var_2 = Struct_3(var_2.a, Struct_2(func_1(abs(select(vec3<u32>(8042u, 33152u, var_2.a), vec3<u32>(1u, 37039u, 4294967295u), true))).a, var_1.b, any(vec4<bool>(func_5(Struct_4(-23419i, 0u, Struct_3(94913u, Struct_2(var_1.b, var_0.b, true, -2147483647i, 1000f), var_1.d), u_input.c.yww), vec2<bool>(false, false)).c, func_2(Struct_4(-39517i, var_2.a, Struct_3(var_2.a, var_2.b, var_1.d), u_input.c.wyw), u_input.c.zw, vec4<f32>(var_2.b.a.c.x, 1850f, var_0.a.a, var_1.e)).c, true, all(vec4<bool>(global0[_wgslsmith_index_u32(52072u, 20u)], false, var_1.b.b, false)))), -11771i, var_0.b.a), var_2.c);
    let var_4 = ~23397u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(18087u, var_2.a)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_2.a, var_4), select(vec2<u32>(var_2.a, 17815u), vec2<u32>(0u, var_4), true)), (vec2<u32>(0u, 1u) << (vec2<u32>(var_2.a, var_2.a) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a, 16471u), vec2<u32>(0u, 21916u)) % vec2<u32>(32u))), _wgslsmith_mult_i32(func_2(Struct_4(countOneBits(-57242i), 81196u, func_4(Struct_3(62813u, Struct_2(var_1.a, Struct_1(var_0.e, var_0.b.b, var_1.a.c), true, 33182i, var_2.b.e), -13760i)).c, _wgslsmith_sub_vec3_i32(vec3<i32>(-25896i, var_0.d, var_2.c), u_input.c.xxw)), vec2<i32>(func_4(Struct_3(var_2.a, var_2.b, var_2.b.d)).c.b.d, i32(-1i) * -3034i), vec4<f32>(373f, -1435f, -1059f, var_0.a.a)).d, var_2.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1338f)) - var_0.a.a), var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.e)))), var_2.a);
}

