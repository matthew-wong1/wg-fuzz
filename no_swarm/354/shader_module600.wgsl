struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = -(vec4<i32>(-1i) * -(vec4<i32>(u_input.b, 2147483647i, -13636i, arg_1.a.x) << (reverseBits(u_input.a) % vec4<u32>(32u))));
    let var_1 = countOneBits(1u);
    let var_2 = arg_1;
    let var_3 = vec3<bool>(all(select(select(vec4<bool>(true, false, true, arg_1.b), vec4<bool>(var_2.b, var_2.b, true, true), false), select(vec4<bool>(true, arg_1.b, false, arg_0), vec4<bool>(arg_1.b, true, arg_0, true), vec4<bool>(false, false, true, arg_0)), vec4<bool>(arg_1.b, arg_0, false, false))) && var_2.b, false, true);
    let var_4 = _wgslsmith_f_op_f32(886f * _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c))))));
    return u_input.a.zy;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = select(!(!(!vec3<bool>(arg_0.b, arg_0.b, false))), !vec3<bool>(false, true, !select(arg_0.b, true, arg_0.b)), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) * vec2<f32>(476f, arg_0.c)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1058f, 525f)))), all(!vec4<bool>(arg_0.b, arg_0.b, var_0.x, var_0.x))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) + vec2<f32>(-1480f, -831f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1114f, -1282f), vec2<f32>(arg_0.c, arg_0.c)))))));
    var var_2 = ((((0i ^ arg_0.a.x) | -2147483647i) ^ ~countOneBits(u_input.b)) > arg_0.d.x) & ((all(select(var_0.zx, var_0.zx, vec2<bool>(arg_0.b, true))) | false) != any(select(vec4<bool>(var_0.x, true, true, true), select(vec4<bool>(var_0.x, true, arg_0.b, arg_0.b), vec4<bool>(var_0.x, true, true, arg_0.b), var_0.x), arg_0.b && true)));
    var var_3 = ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.x, 22635u, 1u)), vec3<u32>(u_input.a.x, u_input.a.x, arg_1.x)), 64749u), 1u, arg_1.x, 4294967295u);
    var_2 = all(var_0);
    return arg_0.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    let var_0 = true;
    var var_1 = Struct_1(arg_0, false, arg_1.c, vec2<i32>(933i, ((50177i ^ arg_0.x) ^ _wgslsmith_clamp_i32(arg_1.d.x, arg_1.a.x, u_input.b)) << (4294967295u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c)) + _wgslsmith_f_op_f32(ceil(-1084f))));
    let var_3 = ~_wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.a.x, 30093u, 35733u) << (u_input.a % vec4<u32>(32u))) << (~vec4<u32>(40051u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), u_input.a);
    var_1 = Struct_1(~var_1.a, !select(any(select(vec4<bool>(true, var_1.b, var_1.b, var_1.b), vec4<bool>(true, false, var_1.b, var_1.b), vec4<bool>(var_1.b, arg_1.b, true, true))), false, u_input.b == (var_1.a.x | var_1.a.x)), -1000f, var_1.d);
    return any(vec2<bool>(((var_3.x & 4294967295u) > ~var_3.x) && (!arg_1.b || arg_1.b), -2147483647i > _wgslsmith_mult_i32(arg_0.x, arg_0.x ^ arg_1.a.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.a.x;
    let var_1 = vec4<u32>(25106u, ~(~(~(~69198u))), reverseBits(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~u_input.a.wxy)), 31404u);
    var_0 = var_1.x;
    let var_2 = 1000f;
    var_0 = 3971u;
    return Struct_1(vec3<i32>(-1i) * -vec3<i32>(1i, i32(-1i) * -31906i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.b))), func_5(func_4(Struct_1(vec3<i32>(u_input.b, u_input.b, -1i), true, var_2, vec2<i32>(u_input.b, 2147483647i)), func_3(false, Struct_1(vec3<i32>(u_input.b, 1i, u_input.b), true, var_2, vec2<i32>(u_input.b, u_input.b)))) & vec3<i32>(~u_input.b, 1i ^ u_input.b, ~(-13875i)), Struct_1(vec3<i32>(_wgslsmith_mult_i32(u_input.b, 2147483647i), u_input.b, u_input.b), !any(vec3<bool>(false, false, false)), var_2, max(max(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), select(vec2<i32>(0i, -1i), vec2<i32>(36658i, 1i), false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-621f, var_2)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2))), _wgslsmith_f_op_f32(-var_2))), (_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(-1i, -238i), -vec2<i32>(-16745i, u_input.b)) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(53437u, 20324u), u_input.a.xz | vec2<u32>(1u, var_1.x), var_1.xw << (vec2<u32>(28070u, var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ -select(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), true), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 0i)), true));
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    var_0 = true;
    let var_1 = func_2();
    var var_2 = ~reverseBits(select(vec4<i32>(u_input.b, u_input.b & var_1.a.x, -30798i, ~(-1i)), -(vec4<i32>(-1i, var_1.d.x, var_1.d.x, u_input.b) >> (u_input.a % vec4<u32>(32u))), !select(vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(false, var_1.b, false, false), vec4<bool>(var_1.b, var_1.b, true, true))));
    var var_3 = !select(select(select(!vec2<bool>(false, var_1.b), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, true), var_1.b), true), select(!vec2<bool>(var_1.b, var_1.b), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, var_1.b), var_1.b), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), func_2().b), select(!select(vec2<bool>(false, true), vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, false)), vec2<bool>(any(vec4<bool>(false, var_1.b, true, var_1.b)), !var_1.b), ~72847u < (u_input.a.x >> (1u % 32u))), true);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1();
    var_0 = Struct_1(vec3<i32>(u_input.b, _wgslsmith_sub_i32(~abs(var_1.a.x), reverseBits(1i)), u_input.b), u_input.b < _wgslsmith_div_i32(~_wgslsmith_add_i32(var_0.d.x, u_input.b), u_input.b & 0i), _wgslsmith_f_op_f32(361f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.c, -1000f, var_1.b)), _wgslsmith_f_op_f32(exp2(var_0.c)))))), func_4(func_2(), u_input.a.yy).zy);
    var var_2 = u_input.a.x;
    var_2 = 0u << (_wgslsmith_mod_u32(func_3(u_input.b == -1i, var_1).x, _wgslsmith_div_u32(u_input.a.x, 0u)) % 32u);
    let var_3 = var_1;
    var var_4 = 978f;
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - -249f))))), -2023f, 628f);
    var_2 = _wgslsmith_dot_vec2_u32(~max(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.a.x), u_input.a.yw, _wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.a.wx, u_input.a.xy)), u_input.a.yx >> (u_input.a.wx % vec2<u32>(32u))), vec2<u32>(u_input.a.x, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(164f, -8591i, -185f, -170f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(599f, _wgslsmith_f_op_f32(-var_0.c)), 674f)));
}

