struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, -772f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) - vec4<f32>(arg_0, arg_0, arg_0, arg_0))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-47828i, _wgslsmith_mult_i32(~u_input.a, 0i), arg_1.x, _wgslsmith_mod_i32(1i, -2147483647i)), max(abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, -15404i, arg_1.x), vec4<i32>(0i, 48366i, 1i, arg_1.x))), ~vec4<i32>(arg_1.x, 21117i, 2538i, u_input.a) | ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a))), Struct_1((vec2<u32>(54280u, u_input.b) & _wgslsmith_add_vec2_u32(vec2<u32>(73013u, u_input.b), vec2<u32>(u_input.b, u_input.b))) | ~(~vec2<u32>(u_input.b, 43426u)), _wgslsmith_mod_u32(u_input.b, 0u), vec4<bool>(false, !all(vec3<bool>(false, true, true)), true, true), arg_1.x), abs(~countOneBits(countOneBits(u_input.b))), Struct_2(arg_0, 1i, _wgslsmith_mult_i32(~arg_1.x, abs(~(-1i)))));
    let var_1 = abs(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(24215i, var_0.c.d) | u_input.c.zy, ~arg_1.yy), select(abs(arg_1.yy), min(u_input.c.zy, arg_1.yx), true))) & u_input.c.yy;
    let var_2 = !var_0.c.c.x;
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.c.a.x, 8896u), u_input.b, abs(0u)), select(~abs(vec3<u32>(74875u, u_input.b, 5827u) >> (vec3<u32>(u_input.b, u_input.b, var_0.c.b) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(var_0.c.b, var_0.d, u_input.b))), select(select(vec3<bool>(var_0.c.c.x, var_0.c.c.x, false), vec3<bool>(false, var_0.c.c.x, var_2), true), var_0.c.c.wwy, var_2)));
    var var_4 = select(vec4<i32>(-18246i, u_input.a, _wgslsmith_sub_i32(~(-var_0.e.b), -17617i), _wgslsmith_div_i32(7261i, abs(var_0.e.c)) & u_input.c.x), _wgslsmith_div_vec4_i32(min(-(vec4<i32>(-25515i, 55752i, arg_1.x, var_0.c.d) << (vec4<u32>(18625u, 61268u, var_0.c.a.x, var_0.c.b) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-13833i, arg_1.x, 12203i, 0i)), ~vec4<i32>(arg_1.x, u_input.c.x, 0i, 12229i))), vec4<i32>(1i, 1i, 0i, var_0.b)), select(!select(vec4<bool>(true, false, var_0.c.c.x, true), var_0.c.c, !var_2), var_0.c.c, !vec4<bool>(var_2, all(vec4<bool>(var_2, false, false, true)), var_0.c.c.x, var_2)));
    return any(!vec4<bool>(false, all(vec2<bool>(var_0.c.c.x, var_2)), select(!var_2, !var_0.c.c.x, true), all(!vec3<bool>(false, var_2, true))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(~(~(~vec2<u32>(u_input.b, 1u))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, ~u_input.b), vec2<u32>(44592u, reverseBits(40117u)), vec2<u32>(u_input.b, 0u) & firstLeadingBit(vec2<u32>(0u, u_input.b))) % vec2<u32>(32u)), min(u_input.b << (_wgslsmith_div_u32(~u_input.b, abs(7968u)) % 32u), 73618u), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(!(u_input.b >= 38594u), func_3(_wgslsmith_f_op_f32(abs(-1057f)), ~vec3<i32>(16840i, u_input.c.x, 18018i)), func_3(1000f, u_input.c) && true, -u_input.a < abs(-39519i))), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.c), u_input.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1047f, 1f));
    let var_2 = ~_wgslsmith_mult_vec4_u32(~(~min(vec4<u32>(u_input.b, u_input.b, var_0.a.x, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, 1u))), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(86096u, 0u, var_0.b, 30436u)), vec4<u32>(u_input.b, u_input.b, 23555u, 41543u) & vec4<u32>(29184u, 16684u, 1u, u_input.b)));
    var_0 = Struct_1(firstLeadingBit(~var_0.a), _wgslsmith_sub_u32(abs(var_2.x), countOneBits(var_0.b ^ 0u)), select(var_0.c, !select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), select(vec4<bool>(var_0.c.x, false, true, false), var_0.c, true), true), vec4<bool>(any(!vec3<bool>(true, var_0.c.x, var_0.c.x)), false, any(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)) & var_0.c.x, var_0.c.x && true)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, select(2147483647i, 1i, false)), select(firstLeadingBit(u_input.c.xx), ~u_input.c.zy, var_0.c.zz)));
    let var_3 = any(!select(!vec2<bool>(var_0.c.x, var_0.c.x), select(var_0.c.xx, vec2<bool>(var_0.c.x, var_0.c.x), var_0.c.ww), true)) == var_0.c.x;
    return Struct_2(_wgslsmith_f_op_f32(min(-1000f, -333f)), var_0.d, u_input.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    let var_0 = func_2();
    let var_1 = !vec2<bool>(any(select(!vec3<bool>(arg_1, false, true), vec3<bool>(false, arg_1, arg_0.x), select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, true, true)))), select(true, true, true));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1261f, var_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))))), reverseBits(i32(-1i) * -36352i) & _wgslsmith_add_i32(2147483647i << (u_input.b % 32u), _wgslsmith_dot_vec2_i32(arg_2, _wgslsmith_sub_vec2_i32(vec2<i32>(-58107i, var_0.b), arg_2))), ~15647i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -305f, var_0.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1908f, -493f, var_2.a) * vec3<f32>(var_0.a, 1000f, 1138f)))))));
    var var_4 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 2517u)) << (_wgslsmith_add_u32(~4294967295u, abs(u_input.b)) % 32u), 41445u), _wgslsmith_mult_u32(~u_input.b, _wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(u_input.b, ~u_input.b))), !(!vec4<bool>(!var_1.x, true, true, false)), -2147483647i);
    return ~(~var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 24451i;
    var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.b, ~18343u, u_input.b, ~func_1(vec2<bool>(true, true), any(vec3<bool>(false, true, true)), max(u_input.c.xx, u_input.c.xz))), 0u, ~(~vec4<u32>(func_1(vec2<bool>(true, false), false, vec2<i32>(-1i, u_input.c.x)), abs(26053u), ~u_input.b, u_input.b)));
}

