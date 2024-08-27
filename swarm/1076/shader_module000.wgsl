struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    var var_0 = Struct_3(~(~(~abs(vec3<u32>(0u, u_input.b, 4294967295u)))), u_input.a, ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0, 97145u, 76837u), select(vec3<u32>(u_input.b, arg_0, u_input.b), vec3<u32>(69372u, arg_0, 4294967295u), vec3<bool>(true, true, false))), vec3<u32>(arg_1, 1u, 4294967295u) & vec3<u32>(0u, 0u, arg_1)));
    let var_1 = Struct_3(firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 69432u), 3921u, min(arg_0, 1u)) & ~(~vec3<u32>(0u, 0u, 0u))), 0i, reverseBits(select(vec3<u32>(954u, var_0.c.x, ~u_input.b), var_0.c, vec3<bool>(all(vec4<bool>(false, true, false, true)), all(vec4<bool>(true, true, true, true)), true))));
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(select(var_1.c.x, _wgslsmith_mod_u32(1u, 4294967295u), true), 4294967295u), var_0.c.x, arg_0);
    let var_3 = var_1;
    let var_4 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(abs(var_2.zz), ~var_1.c.yz), _wgslsmith_mod_vec2_u32(~var_1.a.yz, vec2<u32>(_wgslsmith_div_u32(51488u, 4018u) | countOneBits(u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.x, 68082u, 4294967295u, var_3.c.x), vec4<u32>(u_input.b, 44021u, u_input.b, arg_0)))));
    return var_3.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<i32>(abs(-2147483647i), (i32(-1i) * -(~u_input.a)) ^ u_input.a, _wgslsmith_add_i32(arg_1.b, -(2147483647i & u_input.a)), -2147483647i);
    var var_1 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, arg_3.x), ~arg_3.x)), _wgslsmith_div_vec2_u32(arg_1.a.zz, ~(~vec2<u32>(1u, 0u)))), 493f, arg_2);
    var_1 = Struct_2(var_1.a, -422f, 2306f);
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-927f))))));
    var var_3 = Struct_4(func_3(1u, arg_1.c.x), select(!vec4<bool>(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x && arg_0.x, true, arg_0.x), vec4<bool>(!(-826f > arg_2), true, any(select(vec2<bool>(false, arg_0.x), vec2<bool>(false, true), arg_0)), select(arg_0.x || arg_0.x, !arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, any(select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(true, arg_0.x, false, arg_0.x), true)), true, select(!arg_0.x, any(vec3<bool>(arg_0.x, false, false)), false))), arg_1);
    return Struct_1(54782u, ~arg_3);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~vec2<u32>(0u, _wgslsmith_mult_u32(~u_input.b | u_input.b, 0u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(abs(-222f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, -754f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-697f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -555f, var_1.x, var_1.x)))));
    let var_3 = true && select(!(true && all(vec3<bool>(false, true, true))), true, true);
    var var_4 = Struct_4(-reverseBits(-13243i), vec4<bool>(true, !(!var_3), arg_1.a < _wgslsmith_clamp_u32(var_0.x, arg_1.a, abs(arg_0.a)), select(!(!var_3), true, true)), Struct_3(vec3<u32>(4294967295u, arg_1.b.x, ~(~1u)), min(-43365i ^ (-2147483647i >> (var_0.x % 32u)), u_input.a), abs(~vec3<u32>(u_input.b, 15890u, 63743u))));
    return func_2(vec2<bool>(all(var_4.b.ww), var_3), Struct_3(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(25110u, 1u, arg_1.b.x), abs(vec3<u32>(1u, 39093u, arg_0.a))), var_4.c.c.x | var_0.x, countOneBits(_wgslsmith_div_u32(var_4.c.c.x, arg_0.b.x))), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_4.c.b, -70495i), vec3<i32>(-64664i, u_input.a, 27i))), var_4.c.a << (vec3<u32>(var_4.c.c.x | 22922u, ~0u, firstLeadingBit(25109u)) % vec3<u32>(32u))), var_2.x, ~vec2<u32>(u_input.b | (35832u << (0u % 32u)), func_2(var_4.b.xy, var_4.c, _wgslsmith_f_op_f32(var_1.x * -1079f), vec2<u32>(4294967295u, var_0.x)).a));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = Struct_2(func_4(func_2(vec2<bool>(arg_0 > arg_0, true), Struct_3(vec3<u32>(1u, u_input.b, u_input.b), -2147483647i, ~vec3<u32>(u_input.b, 0u, 4294967295u)), 1f, vec2<u32>(1u, ~arg_0)), Struct_1(_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(9558u, 1u)), ~vec2<u32>(4294967295u, arg_0))), 1000f, _wgslsmith_div_f32(514f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1489f, 1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-928f - -401f))), true))));
    var_0 = Struct_2(func_4(Struct_1(var_0.a.a, ~(~vec2<u32>(var_0.a.b.x, 18776u))), func_4(func_4(func_2(vec2<bool>(false, true), Struct_3(vec3<u32>(27519u, 18021u, u_input.b), 0i, vec3<u32>(10708u, var_0.a.b.x, var_0.a.b.x)), -1425f, vec2<u32>(4294967295u, 32176u)), func_2(vec2<bool>(true, false), Struct_3(vec3<u32>(u_input.b, 1u, 13184u), u_input.a, vec3<u32>(u_input.b, 16298u, 4294967295u)), -1212f, var_0.a.b)), func_4(var_0.a, var_0.a))), 2050f, _wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + var_0.c) + _wgslsmith_f_op_f32(-var_0.b)), var_0.b)))));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.c)), vec2<f32>(var_0.b, -366f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 1000f) - vec2<f32>(var_0.c, -665f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-142f, var_0.b), vec2<f32>(591f, -2189f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, -1447f) + vec2<f32>(1137f, 1647f))), vec2<f32>(_wgslsmith_f_op_f32(var_0.b + 378f), _wgslsmith_f_op_f32(max(var_0.c, 763f))), vec2<bool>(true, true))))));
    let var_3 = Struct_1(2379u, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~(var_0.a.b | vec2<u32>(4294967295u, u_input.b)), var_0.a.b), ~(~vec2<u32>(var_0.a.b.x, arg_0))));
    return u_input.a > ((i32(-1i) * -u_input.a) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-29878i, firstTrailingBit(u_input.a), _wgslsmith_mult_i32(u_input.a, -2147483647i)), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), vec3<i32>(0i, -7309i, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec3<bool>(u_input.a > u_input.a, false, u_input.b >= 0u), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), vec3<bool>(true, false, true), select(false, true, all(vec3<bool>(false, false, true)))), vec3<bool>(func_1(min(u_input.b, u_input.b)) & any(vec4<bool>(true, true, false, true)), !(!all(vec3<bool>(false, true, true))), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), countOneBits(19447u) <= _wgslsmith_clamp_u32(7055u, u_input.b, u_input.b)));
    var var_1 = func_2(select(vec2<bool>(true, true), var_0.zy, var_0.yx), Struct_3(countOneBits(vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 23391u), vec2<u32>(59834u, 1u)), u_input.b)), -u_input.a, ~((vec3<u32>(u_input.b, 0u, u_input.b) & vec3<u32>(25143u, 0u, u_input.b)) << (reverseBits(vec3<u32>(u_input.b, 55281u, 29357u)) % vec3<u32>(32u)))), 1f, _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), func_2(var_0.xz, Struct_3(vec3<u32>(37710u, 1u, 0u), -2147483647i, vec3<u32>(u_input.b, u_input.b, 18323u)), _wgslsmith_f_op_f32(min(-568f, -1000f)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(28468u, u_input.b))).b), vec2<u32>(u_input.b, u_input.b), abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 90410u), vec2<u32>(u_input.b, 39302u)))));
    let var_2 = Struct_4(u_input.a, select(vec4<bool>(all(var_0.yx), any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, true, var_0.x), var_0.x)), false, any(vec3<bool>(var_0.x, var_0.x, var_0.x))), vec4<bool>(select(false, false, true) | true, all(var_0.xy), func_1(func_2(vec2<bool>(false, var_0.x), Struct_3(vec3<u32>(var_1.b.x, var_1.b.x, u_input.b), -7381i, vec3<u32>(u_input.b, 1u, u_input.b)), -1000f, vec2<u32>(u_input.b, u_input.b)).a), select(true, var_0.x, true)), true), Struct_3(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.b, 1u)), vec3<u32>(u_input.b, 30815u, var_1.b.x)) & _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22620u, 4294967295u, 4294967295u), vec3<u32>(38799u, u_input.b, 4294967295u)), vec3<u32>(1u, 1u, 70618u)), u_input.a, ~reverseBits(~vec3<u32>(u_input.b, u_input.b, var_1.b.x))));
    var_1 = Struct_1(4294967295u, select(var_1.b, firstLeadingBit(~vec2<u32>(1u, 4294967295u)), !var_0.xz));
    var_1 = func_4(func_2(select(!var_2.b.xz, vec2<bool>(any(var_2.b.xz), true), select(select(vec2<bool>(true, false), var_0.zx, vec2<bool>(false, true)), !var_2.b.yw, vec2<bool>(var_0.x, var_0.x))), var_2.c, 1f, max(vec2<u32>(var_2.c.c.x, ~0u), ~(~var_2.c.c.zx))), Struct_1(max(firstTrailingBit(_wgslsmith_sub_u32(34376u, var_1.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 35021u, 89504u), vec3<u32>(0u, 1u, 337u) >> (var_2.c.a % vec3<u32>(32u)))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(66540u, u_input.b), var_2.c.a.yy), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.c.c.x, 4294967295u), var_1.b)), vec2<u32>(var_2.c.a.x, 0u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 412f, 1206f)))));
    var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x + var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x))), var_3.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.x, 1361f, -599f), vec3<f32>(var_3.x, 309f, 801f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -1200f, var_3.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(350f, var_3.x, -1189f), vec3<f32>(var_3.x, var_3.x, 1313f), true))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, 721f) + vec3<f32>(-1579f, 1791f, var_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1504f, -1622f, -142f)))))));
    let var_4 = Struct_2(Struct_1(~((var_1.b.x & 0u) | _wgslsmith_add_u32(var_1.a, u_input.b)), var_1.b), var_3.x, _wgslsmith_div_f32(var_3.x, 1f));
    var_1 = func_2(var_2.b.xy, var_2.c, _wgslsmith_div_f32(var_4.c, var_3.x), vec2<u32>(firstLeadingBit(var_4.a.b.x ^ var_4.a.a) << (0u % 32u), _wgslsmith_dot_vec2_u32(var_4.a.b, func_4(Struct_1(91671u, var_2.c.c.xy), Struct_1(4294967295u, var_2.c.c.yz)).b & var_4.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(113f - -743f), -2005f), -591f, _wgslsmith_f_op_f32(floor(var_3.x)))));
}

