struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: f32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_2;
    let var_1 = select(countOneBits(arg_1.d), min(select(vec4<u32>(~0u, min(36246u, arg_1.d.x), ~u_input.a.x, 4294967295u ^ u_input.a.x), ~arg_1.d, true), arg_1.d), select(!vec4<bool>(any(vec3<bool>(false, var_0.a.x, false)), all(vec4<bool>(arg_1.a.x, false, arg_2.a.x, arg_2.a.x)), arg_1.e.x <= u_input.b, any(vec3<bool>(var_0.a.x, arg_2.a.x, true))), !vec4<bool>(arg_1.a.x || false, false, arg_1.b.x == arg_1.b.x, all(vec3<bool>(false, arg_2.a.x, arg_2.a.x))), !var_0.a.x));
    var var_2 = Struct_2(vec2<bool>(true, true));
    let var_3 = -arg_1.e;
    var_0 = Struct_2(var_2.a);
    return vec2<bool>(var_2.a.x, !(true | all(!vec3<bool>(var_0.a.x, var_2.a.x, true))));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> f32 {
    var var_0 = vec3<bool>(true, false, true);
    let var_1 = Struct_2(func_3(10897i, Struct_1(arg_1.c.xy, vec2<f32>(_wgslsmith_f_op_f32(-807f + arg_0), arg_0), ~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b, u_input.b), vec2<i32>(-1i, arg_1.b)), ~reverseBits(vec4<u32>(u_input.a.x, arg_2, u_input.a.x, 31022u)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a, 33931i, arg_1.b), vec3<i32>(u_input.b, -18080i, arg_1.a) | vec3<i32>(u_input.b, u_input.c, arg_1.d))), Struct_2(arg_1.c.xx), _wgslsmith_add_i32(~(-u_input.b), -45720i)));
    var var_2 = vec3<u32>(u_input.a.x, ~reverseBits(u_input.a.x), arg_2 ^ 23126u);
    var_2 = ~(~u_input.a);
    var var_3 = -abs(~vec2<i32>(u_input.c, ~u_input.b));
    return -1692f;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = select(select(select(vec4<bool>(any(arg_3.c), arg_0.d == arg_0.b, true, false), !select(vec4<bool>(true, true, arg_1.a.x, true), vec4<bool>(false, false, true, arg_3.c.x), vec4<bool>(true, true, false, arg_0.c.x)), any(select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_0.c.x, false, false, true), arg_0.c.x))), !(!vec4<bool>(arg_0.c.x, false, false, arg_3.c.x)), (1i >= arg_0.d) & false), !vec4<bool>(arg_1.a.x, !any(vec4<bool>(arg_1.a.x, false, true, arg_1.a.x)), !(true & arg_0.c.x), all(arg_0.c)), !(!vec4<bool>(!arg_0.c.x, u_input.a.x < u_input.a.x, !arg_3.c.x, all(vec4<bool>(true, arg_3.c.x, arg_1.a.x, true)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(567f))), arg_3, 22737u))), arg_2, arg_2);
    var var_2 = Struct_2(!arg_0.c.yz);
    let var_3 = Struct_1(vec2<bool>(true | arg_0.c.x, arg_3.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.yz, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, -1660f), var_1.yx)))), -_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b, -32158i), ~vec2<i32>(10235i, 34493i)) << (u_input.a.yz % vec2<u32>(32u)), _wgslsmith_sub_vec4_u32(~max(~vec4<u32>(2081u, u_input.a.x, 89488u, 6936u), vec4<u32>(u_input.a.x, 15106u, u_input.a.x, u_input.a.x)), ~abs(vec4<u32>(29279u, u_input.a.x, 4294967295u, 62706u))), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(11836i, arg_3.a, u_input.b), vec3<i32>(20069i, u_input.c, 1i))) ^ -vec3<i32>(0i, ~u_input.b, -u_input.c));
    var_2 = arg_1;
    return Struct_1(vec2<bool>(arg_0.d <= 2147483647i, select(11985u < var_3.d.x, !(541f != arg_2), false)), _wgslsmith_f_op_vec2_f32(-var_1.zz), var_3.e.xy, vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(firstTrailingBit(4294967295u), 1u), ~_wgslsmith_div_u32(~var_3.d.x, 85538u), 0u), _wgslsmith_sub_vec3_i32(~var_3.e, vec3<i32>(max(arg_3.a >> (var_3.d.x % 32u), min(arg_3.a, var_3.e.x)), -1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_3.e.x, arg_0.d, 62520i), -5522i))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = ~50108u;
    let var_1 = true;
    var var_2 = func_4(Struct_3(2147483647i, ~_wgslsmith_mult_i32(-21272i, u_input.c), vec3<bool>(true | var_1, var_1, var_1), min(-_wgslsmith_clamp_i32(2147483647i, u_input.b, 58495i), u_input.b | ~u_input.b)), Struct_2(select(!select(vec2<bool>(var_1, true), vec2<bool>(false, true), vec2<bool>(var_1, var_1)), !(!vec2<bool>(var_1, var_1)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-768f, -1265f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-966f + _wgslsmith_div_f32(844f, -1097f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(807f)), _wgslsmith_f_op_f32(func_2(-710f, Struct_3(u_input.b, u_input.c, vec3<bool>(var_1, var_1, true), 0i), var_0))))), Struct_3(u_input.c, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(u_input.c, -1i, u_input.c)), max(select(vec3<i32>(u_input.b, u_input.b, 36388i), vec3<i32>(u_input.c, u_input.c, u_input.b), vec3<bool>(true, false, var_1)), min(vec3<i32>(1i, u_input.b, -42255i), vec3<i32>(1i, u_input.b, u_input.b)))), !select(!vec3<bool>(var_1, var_1, false), !vec3<bool>(false, true, var_1), 1u < arg_0.x), -max(~(-15425i), 1i)));
    let var_3 = u_input.a.x;
    var var_4 = -(~var_2.e);
    return Struct_2(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~_wgslsmith_div_i32(abs(u_input.c), -2147483647i), -2147483647i), min(-_wgslsmith_mod_i32(u_input.b, u_input.c & u_input.c), -1i));
    var var_1 = func_1(~(~vec4<u32>(u_input.a.x, u_input.a.x, 45953u, 26956u) ^ ~vec4<u32>(78422u, 43811u, 4294967295u, 62725u)) ^ ~_wgslsmith_mod_vec4_u32(~vec4<u32>(75033u, 22406u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, 1u, 4294967295u)));
    var var_2 = var_1.a.x;
    var var_3 = Struct_3(~var_0, var_0, select(!vec3<bool>(func_3(var_0, Struct_1(vec2<bool>(var_1.a.x, true), vec2<f32>(-701f, 1698f), vec2<i32>(-1i, -23557i), vec4<u32>(27754u, u_input.a.x, 1u, u_input.a.x), vec3<i32>(-21223i, 45638i, -40822i)), Struct_2(vec2<bool>(var_1.a.x, false)), u_input.b).x, var_1.a.x, true && var_1.a.x), vec3<bool>((1i >> (u_input.a.x % 32u)) >= 6444i, var_1.a.x, var_1.a.x), true), ~_wgslsmith_add_i32(2299i, ~abs(var_0)));
    var var_4 = u_input.a.x <= func_4(Struct_3(u_input.c, countOneBits(min(u_input.b, u_input.b)), var_3.c, ~firstLeadingBit(0i)), Struct_2(vec2<bool>(false, !var_3.c.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1403f))), Struct_3(var_0, -abs(-21372i), var_3.c, var_3.a)).d.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 47892u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 33180u, u_input.a.x, u_input.a.x)), abs(u_input.a.x), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(47257u, _wgslsmith_add_u32(0u, u_input.a.x)))), _wgslsmith_clamp_i32(var_3.d, -22972i, -915i | var_0) >> (u_input.a.x % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1471f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(1118f, Struct_3(u_input.b, var_3.d, vec3<bool>(var_3.c.x, var_1.a.x, true), u_input.b), 0u))))), _wgslsmith_f_op_f32(-2292f + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1291f, -1016f), _wgslsmith_f_op_f32(select(1770f, 780f, var_1.a.x)), all(var_1.a)))))));
}

