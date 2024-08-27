struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    global0 = true;
    global0 = false;
    let var_0 = u_input.b.x;
    var var_1 = 2147483647i;
    var_1 = abs(~(-24176i) & u_input.b.x);
    return ~_wgslsmith_dot_vec3_i32(u_input.b.yyz, firstLeadingBit(vec3<i32>(0i, var_0, 1i) << (~vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1786f) + 1000f), select((vec3<i32>(-60842i, 1i, 3557i) ^ arg_2.b) << (vec3<u32>(arg_3, u_input.d, arg_0) % vec3<u32>(32u)), u_input.b.zww, select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), -u_input.b.x), ~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, u_input.c, u_input.c), vec3<u32>(u_input.d, arg_3, u_input.c))) << (~abs(~vec3<u32>(arg_0, 0u, u_input.a)) % vec3<u32>(32u)), min(~max(max(vec3<u32>(1u, arg_0, arg_3), vec3<u32>(9041u, 24912u, arg_3)), ~vec3<u32>(arg_3, 4294967295u, u_input.d)), ~vec3<u32>(1u, abs(u_input.c), 1u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a, arg_2.a, true)))), ~_wgslsmith_div_vec3_i32(u_input.b.wwx, ~arg_2.b), 26601i), vec3<u32>(48501u, abs(~(arg_3 | 1u)), u_input.a), _wgslsmith_mult_vec3_u32(var_0.b, ~var_0.c));
    let var_2 = vec2<bool>(_wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-1000f * var_0.a.a)))) == arg_1, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, 518f, var_0.a.a, var_0.a.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(182f, var_1.a.a, arg_2.a, var_1.a.a), vec4<f32>(arg_2.a, 1052f, arg_1, 1478f), vec4<bool>(false, var_2.x, false, var_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, 1172f, -931f, arg_1)), var_2.x))) * vec4<f32>(3257f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.a, 1422f)) * -1398f) + var_1.a.a), _wgslsmith_f_op_f32(1193f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1930f))))));
    let var_4 = _wgslsmith_f_op_f32(select(arg_2.a, var_3.x, true));
    return -342f;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_4(~34859u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(255f, 127f)), Struct_1(-1620f, -vec3<i32>(select(-18373i, 38761i, true), func_3(vec4<bool>(true, false, false, false)), arg_0.x), -2147483647i), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~4294967295u, u_input.a), ~(vec3<u32>(17660u, 0u, u_input.a) & vec3<u32>(u_input.a, 4294967295u, u_input.c)))));
    var var_1 = select(vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -367f))) > _wgslsmith_f_op_f32(-2498f * _wgslsmith_f_op_f32(-2207f + var_0)), true & (true | all(vec4<bool>(false, false, false, true)))), vec2<bool>(all(vec4<bool>(u_input.b.x >= -1i, true, false, all(vec3<bool>(false, false, false)))), true), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -502f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 * -1258f)))), vec3<i32>(_wgslsmith_clamp_i32(0i, -26098i, 1i), u_input.b.x, arg_0.x), arg_0.x >> (~(15572u >> (u_input.c % 32u)) % 32u)), vec3<u32>(u_input.d, u_input.a ^ 33563u, min(_wgslsmith_mult_u32(abs(u_input.a), u_input.d), u_input.c)), ~_wgslsmith_mult_vec3_u32(max(vec3<u32>(4294967295u, 33074u, 27089u) << (vec3<u32>(u_input.d, u_input.c, 61017u) % vec3<u32>(32u)), vec3<u32>(27857u, u_input.a, 1u) << (vec3<u32>(u_input.c, 55909u, u_input.d) % vec3<u32>(32u))), select(vec3<u32>(u_input.d, u_input.d, u_input.d), abs(vec3<u32>(0u, u_input.d, 4294967295u)), true & var_1.x)));
    var_1 = !vec2<bool>(min(var_2.a.b.x >> (u_input.c % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), u_input.b.wy)) == max(-2147483647i, u_input.b.x << (var_2.c.x % 32u)), !(var_2.a.a != var_0));
    global0 = 1i < u_input.b.x;
    return _wgslsmith_f_op_f32(ceil(604f)) > _wgslsmith_f_op_f32(-var_2.a.a);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    global0 = false;
    global0 = func_2(vec2<i32>(-2147483647i, -4988i));
    var var_0 = max(firstLeadingBit(u_input.c), arg_0.b.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d, ~0u, ~select(3807u, u_input.c, true), u_input.c), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(4294967295u, arg_0.b.x, u_input.c, arg_0.b.x)), vec4<u32>(_wgslsmith_clamp_u32(56991u, u_input.d, u_input.a), _wgslsmith_mod_u32(arg_0.c.x, u_input.a), firstTrailingBit(76680u), ~arg_0.c.x))) % 32u);
    return Struct_2(arg_0.a, vec3<u32>(arg_0.c.x, 0u, _wgslsmith_clamp_u32(u_input.d, min(arg_0.c.x | 4294967295u, _wgslsmith_sub_u32(u_input.a, 1u)), ~arg_0.b.x)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c, 0u), vec3<u32>(u_input.c, arg_0.b.x, u_input.c)), max(vec3<u32>(arg_0.b.x, u_input.c, 12134u), arg_0.b)) & _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(35305u, u_input.a, 60382u) | vec3<u32>(arg_0.b.x, 1u, arg_0.c.x)), firstTrailingBit(vec3<u32>(27193u, u_input.a, 15574u))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = arg_0.a;
    global0 = true;
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)) & (1498f > var_1.a), !all(vec2<bool>(false, false)), func_2(abs(u_input.b.xz))), true), select(vec3<bool>(all(vec3<bool>(true, true, true)), false, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(false, select(false, false, true), true), true), vec3<bool>(func_2(-vec2<i32>(-2147483647i, var_1.c)), true, true)), false);
    var var_3 = ~firstLeadingBit(~abs(vec4<u32>(30613u, var_0.b.x, 0u, arg_0.c.x)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(Struct_2(Struct_1(-173f, _wgslsmith_div_vec3_i32(u_input.b.yzx, u_input.b.ywy), u_input.b.x), countOneBits(vec3<u32>(u_input.d, 1u, 1u)), max(~vec3<u32>(u_input.d, u_input.c, 0u), vec3<u32>(5082u, u_input.c, 23338u))), ~2147483647i));
    let var_1 = firstLeadingBit(0i);
    var var_2 = var_0.a.c;
    var var_3 = ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), func_5(func_1(Struct_2(var_0.a, var_0.c, vec3<u32>(6557u, 57309u, var_0.b.x)), _wgslsmith_div_i32(var_0.a.c, 32414i))).a.b.yx);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(12387u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, var_0.c.x), vec2<u32>(var_0.b.x, 8980u))), -624f);
}

