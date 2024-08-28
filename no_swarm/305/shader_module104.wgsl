struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> bool {
    global0 = !(!(!all(vec4<bool>(false, false, true, false))) | false);
    return _wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(select(arg_3.c.e.zx, vec2<u32>(_wgslsmith_add_u32(arg_3.b.c, arg_0), 3463u >> (u_input.a.x % 32u)), !select(vec2<bool>(arg_3.c.b, arg_2), vec2<bool>(true, true), arg_2)), _wgslsmith_clamp_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, u_input.a.x), vec2<u32>(u_input.a.x, 1u)) >> (arg_3.d.e.zy % vec2<u32>(32u)), abs(~arg_3.d.e.zw)));
    var var_1 = ~_wgslsmith_div_vec4_u32(countOneBits(~(arg_3.c.e >> (arg_3.d.e % vec4<u32>(32u)))), vec4<u32>(32470u, select(0u, 0u, true) ^ 5927u, u_input.a.x, 4294967295u));
    var_1 = min(vec4<u32>(arg_3.d.e.x, ~arg_0, _wgslsmith_add_u32(_wgslsmith_mod_u32(63975u, arg_3.d.c) | ~4294967295u, arg_0), 4294967295u), ~vec4<u32>(_wgslsmith_mult_u32(arg_0 & var_1.x, var_1.x), max(~2262u, max(53532u, var_1.x)), _wgslsmith_div_u32(select(u_input.a.x, u_input.a.x, arg_3.d.b), 43799u), arg_0));
    global0 = !arg_3.b.a;
    var var_2 = 13403i == -(-(u_input.b | -23281i) ^ u_input.b);
    return _wgslsmith_f_op_f32(abs(-1705f));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_1 {
    return Struct_1(arg_1.x, arg_1.x, u_input.a.x, _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(min(u_input.a.x, u_input.a.x), vec2<f32>(arg_0, arg_0), true, Struct_2(-1001f, Struct_1(false, arg_1.x, u_input.a.x, 1554f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(true, arg_1.x, u_input.a.x, arg_0, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x)), Struct_1(arg_1.x, false, u_input.a.x, arg_0, vec4<u32>(u_input.a.x, 57418u, 27082u, 1u)))))))), select(_wgslsmith_add_vec4_u32(~select(vec4<u32>(u_input.a.x, u_input.a.x, 85562u, u_input.a.x), vec4<u32>(27117u, 66435u, 1u, u_input.a.x), vec4<bool>(true, arg_1.x, false, false)), vec4<u32>(1u, u_input.a.x, u_input.a.x, 29595u)), reverseBits(~(vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x) << (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), vec4<bool>(true, !any(arg_1.yz), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~25613u);
    var var_1 = func_2(-1000f, vec3<bool>(select(false, true, true), any(vec3<bool>(true, true, true)) || (~55819u == _wgslsmith_sub_u32(0u, var_0)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1609f, 381f, 1436f, -1064f) * vec4<f32>(129f, 1483f, -1124f, -626f))), 57368u)), _wgslsmith_add_vec3_i32(-select(~vec3<i32>(u_input.b, u_input.b, -3610i), _wgslsmith_mult_vec3_i32(vec3<i32>(-26953i, 47510i, u_input.b), vec3<i32>(0i, u_input.b, 34390i)), all(vec4<bool>(false, true, false, false))), vec3<i32>(_wgslsmith_sub_i32(u_input.b, ~u_input.b), _wgslsmith_mult_i32(~u_input.b, ~u_input.b), _wgslsmith_mult_i32(-1i, u_input.b))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -475f);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.d, var_1.d)), -1775f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.d))));
    var var_4 = Struct_2(-324f, Struct_1(true, false, 5701u, -175f, select(countOneBits(vec4<u32>(u_input.a.x, 22101u, var_0, u_input.a.x)) >> ((var_1.e << (var_1.e % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 0u), vec4<u32>(0u, var_0, u_input.a.x, 4294967295u)), vec4<bool>(select(var_1.b, false, true), var_1.a, var_1.b, !var_1.a))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) - _wgslsmith_f_op_f32(var_3.x + var_1.d)), vec3<bool>(!func_1(vec4<f32>(1181f, 1852f, -882f, var_3.x), 41198u), false, true), vec3<i32>(~u_input.b, u_input.b, ~0i) << (min(var_1.e.yxy, vec3<u32>(var_0, var_0, var_0)) % vec3<u32>(32u))), func_2(_wgslsmith_f_op_f32(-843f + var_1.d), vec3<bool>(var_1.b, true, var_1.c <= var_0), ~vec3<i32>(u_input.b, _wgslsmith_div_i32(-2147483647i, -8382i), u_input.b)));
    let var_5 = var_4.c.b;
    global0 = true;
    let var_6 = var_4.d;
    var_1 = Struct_1(!(var_1.a == false), true, _wgslsmith_add_u32(103564u, ~(~1u)) | _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(82726u, 4294967295u, 55033u, var_6.c)), var_4.d.e), 46860u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.d)))), ~min(vec4<u32>(8854u, ~1u, u_input.a.x & var_6.e.x, 4294967295u), ~vec4<u32>(17348u, 0u, 20037u, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_6.e.x), var_6.e, vec3<u32>(_wgslsmith_sub_u32(var_4.c.c, ~reverseBits(31375u)), _wgslsmith_sub_u32(1497u, 1u), 18257u), u_input.b, vec2<f32>(_wgslsmith_div_f32(-2537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.x)))), 332f));
}

