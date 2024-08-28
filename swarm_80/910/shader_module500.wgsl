struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> bool {
    let var_0 = countOneBits(min(vec3<i32>(select(~u_input.b, 1i, select(true, false, false)), -u_input.b, -_wgslsmith_mod_i32(-3578i, arg_0.x)), -max(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(u_input.b, 0i, 2147483647i))));
    var var_1 = Struct_2(true, true != !(!any(vec2<bool>(true, true))), Struct_1(abs(var_0), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 6363u), vec3<u32>(u_input.a.x, 0u, 4294967295u)) ^ u_input.a.x, _wgslsmith_sub_u32(1u, arg_1.x), 1u), ~(~(~u_input.a.x)), select(!select(global1[_wgslsmith_index_u32(arg_1.x, 4u)], vec4<bool>(false, true, true, true), global1[_wgslsmith_index_u32(4294967295u, 4u)]), select(vec4<bool>(true, true, true, true), select(global1[_wgslsmith_index_u32(0u, 4u)], vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(arg_1.x, 4u)])), vec4<bool>(true, false, true, true))), Struct_1(vec3<i32>(reverseBits(~var_0.x), _wgslsmith_clamp_i32(u_input.b, ~u_input.b, _wgslsmith_clamp_i32(arg_0.x, var_0.x, 36097i)), min(select(1179i, 0i, true), u_input.b)), vec3<u32>(27905u, ~(~arg_1.x), arg_1.x), 1u, vec4<bool>(false, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), vec3<u32>(_wgslsmith_div_u32(max(reverseBits(4294967295u), _wgslsmith_clamp_u32(14748u, arg_1.x, arg_1.x)), ~(~0u)), _wgslsmith_div_u32(~3237u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 65569u), u_input.a))), _wgslsmith_div_u32(~4294967295u, arg_1.x)));
    let var_2 = Struct_1(select(var_0, vec3<i32>(arg_0.x, -45453i, 0i), all(global1[_wgslsmith_index_u32(min(arg_1.x, u_input.a.x) >> (~88560u % 32u), 4u)])), select(vec3<u32>(~arg_1.x, ~(~0u), ~_wgslsmith_mult_u32(1u, var_1.e.x)), abs(~vec3<u32>(u_input.a.x, var_1.c.c, 4294967295u)) & var_1.e, arg_1.x >= arg_1.x), firstTrailingBit(_wgslsmith_clamp_u32(4899u, _wgslsmith_dot_vec2_u32(arg_1, var_1.e.xx), max(u_input.a.x & arg_1.x, _wgslsmith_sub_u32(45900u, 32352u)))), select(!(!(!vec4<bool>(true, true, var_1.d.d.x, true))), select(vec4<bool>(true | var_1.c.d.x, var_1.c.d.x, false, true), select(var_1.d.d, vec4<bool>(var_1.a, var_1.d.d.x, var_1.b, var_1.a), var_1.b), 0i > _wgslsmith_sub_i32(1i, var_1.d.a.x)), var_0.x >= _wgslsmith_div_i32(min(var_1.d.a.x, var_0.x), var_0.x ^ 10216i)));
    global1 = array<vec4<bool>, 4>();
    var_1 = Struct_2(true & select(false, !(var_2.d.x && false), var_2.d.x), var_2.d.x, Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(var_1.c.a.x), 1i, ~2147483647i), -var_0), var_1.c.b, var_1.d.c, global1[_wgslsmith_index_u32(var_1.d.c, 4u)]), var_2, ~var_1.d.b);
    return var_2.d.x && var_2.d.x;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = !vec3<bool>(true, !(!arg_0.d.x), false);
    let var_1 = true;
    let var_2 = Struct_2(false, !(u_input.b > 28819i), Struct_1(arg_0.a, _wgslsmith_div_vec3_u32(arg_0.b, reverseBits(min(vec3<u32>(arg_0.c, 32317u, 32567u), vec3<u32>(6135u, 22237u, u_input.a.x)))), abs(21434u), select(vec4<bool>(var_0.x, false && var_1, func_3(arg_0.a.xz, vec2<u32>(4294967295u, 0u), vec4<f32>(1000f, 1000f, -1364f, -881f)), false), arg_0.d, select(global1[_wgslsmith_index_u32(13004u, 4u)], vec4<bool>(false, false, arg_0.d.x, true), false & var_1))), Struct_1(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, 951i, 39757i) ^ _wgslsmith_mod_vec3_i32(arg_0.a, arg_0.a), vec3<i32>(arg_0.a.x, ~2147483647i, 25522i)), ~(arg_0.b & vec3<u32>(u_input.a.x, 22036u, u_input.a.x)), ~select(_wgslsmith_mod_u32(18850u, 70603u), arg_0.c, select(var_0.x, false, var_0.x)), select(arg_0.d, vec4<bool>(!var_1, all(global1[_wgslsmith_index_u32(1u, 4u)]), false, false), true)), _wgslsmith_sub_vec3_u32(arg_0.b, arg_0.b ^ arg_0.b));
    var var_3 = global0[_wgslsmith_index_u32(~u_input.a.x, 27u)];
    var_3 = global0[_wgslsmith_index_u32(u_input.a.x << (80455u % 32u), 27u)];
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(362f, -1094f, -1026f) * vec3<f32>(-260f, 129f, -243f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, 1878f, 2202f))))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_1, 27>();
    var var_0 = func_2(Struct_1(vec3<i32>(u_input.b, 2147483647i, u_input.b >> (u_input.a.x % 32u)) << (abs(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(min(vec3<u32>(29101u, u_input.a.x, 12300u), vec3<u32>(0u, u_input.a.x, 1u)), max(vec3<u32>(72067u, 44909u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u) >> (vec4<u32>(1u, 25897u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(1u | u_input.a.x, reverseBits(1u), u_input.a.x, ~33882u)), !vec4<bool>(any(vec2<bool>(false, false)), true, any(vec3<bool>(true, false, false)), u_input.b != -2147483647i)));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f - 942f) + 1000f), _wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))), arg_0.www)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    global0 = array<Struct_1, 27>();
    return Struct_1(reverseBits(vec3<i32>(~1i, var_1.a.x, u_input.b)), vec3<u32>(32912u, _wgslsmith_div_u32(~(~6114u), ~(~var_1.c)), reverseBits(~(~15269u))), 1u, select(select(var_1.d, select(!vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x), !var_1.d, false), global1[_wgslsmith_index_u32(~(u_input.a.x >> (var_1.c % 32u)), 4u)]), select(global1[_wgslsmith_index_u32(1u, 4u)], var_1.d, !(var_1.a.x <= -2147483647i)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-1i);
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2367f, -581f, 1124f, -1098f))))));
    var var_2 = !select(select(!var_1.d.yyz, select(vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x), !var_1.d.xxz, !vec3<bool>(true, false, var_1.d.x)), true), vec3<bool>(true, true, true), !(!select(var_1.d.zxw, var_1.d.zwz, var_1.d.yyy)));
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))).d.xz;
    var var_4 = u_input.b;
    let var_5 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-var_1.a.x, 0i, var_0), vec3<i32>(var_0, 1i, 1i) & -vec3<i32>(var_1.a.x, 15733i, 0i), -vec3<i32>(_wgslsmith_add_i32(-1i, -13542i), 2147483647i | var_1.a.x, u_input.b)), vec3<u32>(var_1.c, u_input.a.x, u_input.a.x & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 4294967295u, 113562u), var_1.b), 50511u)), 45422u, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(32169u, 40199u), vec2<u32>(var_1.b.x, u_input.a.x), ~var_1.b.zx), ~(~u_input.a)), 4u)]);
    global1 = array<vec4<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.xz);
}

