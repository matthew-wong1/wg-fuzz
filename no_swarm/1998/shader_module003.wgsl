struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: vec2<u32> = vec2<u32>(37149u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(1i, _wgslsmith_mod_vec3_u32(vec3<u32>(abs(4294967295u), 1u | global1.x, ~7269u), ~vec3<u32>(126087u, 11872u, arg_2) & (u_input.a | vec3<u32>(u_input.b, 0u, 46320u))), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.x, 31u)] - global0[_wgslsmith_index_u32(arg_0.a.c, 31u)])) == global0[_wgslsmith_index_u32(~(~global1.x), 31u)], _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.c.x, arg_0.b >> (global1.x % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-17582i, arg_0.b, -14380i), ~vec3<i32>(-82839i, -29866i, arg_0.b)))), ~(~1i), min(reverseBits(-arg_0.c), arg_0.c));
    global1 = ~u_input.a.yz;
    global1 = vec2<u32>(10227u, 0u);
    global1 = arg_0.a.b.yz;
    var_0 = arg_0;
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = arg_2;
    var var_1 = abs(max(arg_0.b, select(~vec3<u32>(arg_2.a.c, 0u, 60181u), firstLeadingBit(vec3<u32>(4294967295u, 1u, 85636u)), vec3<bool>(arg_2.a.d, arg_0.d, false)) ^ vec3<u32>(func_2(arg_2, vec2<bool>(false, var_0.a.d), 32207u, vec3<bool>(var_0.a.d, arg_0.d, arg_2.a.d)), 0u, 71051u)));
    var var_2 = arg_2;
    var var_3 = !select(!select(!vec2<bool>(true, var_0.a.d), select(vec2<bool>(true, false), vec2<bool>(var_0.a.d, var_0.a.d), var_0.a.d), !arg_0.d), select(select(select(vec2<bool>(arg_2.a.d, false), vec2<bool>(var_0.a.d, true), var_2.a.d), select(vec2<bool>(var_2.a.d, arg_0.d), vec2<bool>(var_0.a.d, var_2.a.d), vec2<bool>(false, true)), !vec2<bool>(arg_2.a.d, true)), select(select(vec2<bool>(true, true), vec2<bool>(arg_2.a.d, arg_2.a.d), vec2<bool>(true, false)), select(vec2<bool>(false, var_0.a.d), vec2<bool>(var_0.a.d, true), false), arg_2.a.d), arg_2.a.d), arg_0.d);
    var_2 = Struct_2(Struct_1(28948i, vec3<u32>(~(~var_0.a.c), max(var_1.x, ~4294967295u), 0u), global1.x, true, ~arg_2.c.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.b >> (u_input.d.x % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, arg_2.a.e, var_2.b), ~vec3<i32>(13315i, arg_1, arg_0.e))), arg_0.a ^ -1i), ~abs(-var_2.c));
    return _wgslsmith_add_vec2_i32(select(var_0.c, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -44316i, 55334i), vec3<i32>(arg_1, 0i, arg_1)), 9284i), !(!vec2<bool>(var_2.a.d, true))) ^ ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_0.a, -8166i), vec3<i32>(-2147483647i, arg_1, arg_0.a)), min(-2147483647i, -2147483647i)), abs(arg_2.c));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(arg_0.a, 63426i, Struct_2(Struct_1(arg_0.b, vec3<u32>(arg_0.a.b.x, 0u, global1.x), global1.x, arg_0.a.d, arg_0.b), -30009i, vec2<i32>(arg_0.a.a, 1i))).x, _wgslsmith_sub_i32(select(1i, arg_0.a.e, arg_0.a.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, arg_0.a.a, -26813i), vec4<i32>(1884i, 14726i, -2147483647i, arg_0.a.e))), -60393i, func_3(arg_0.a, arg_0.a.e >> (33743u % 32u), Struct_2(arg_0.a, arg_0.b, vec2<i32>(-1i, 31998i))).x), firstTrailingBit(vec4<i32>(arg_0.a.a, 2147483647i, arg_0.a.a, arg_0.b) >> ((vec4<u32>(89334u, 0u, 4294967295u, global1.x) | vec4<u32>(19016u, u_input.d.x, u_input.a.x, 78014u)) % vec4<u32>(32u)))), vec3<u32>(global1.x, _wgslsmith_dot_vec2_u32(arg_0.a.b.zy, ~vec2<u32>(1u, 1u)), global1.x), u_input.b, true, _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(-10379i, arg_0.c.x)));
    var var_1 = Struct_1(arg_0.a.a, var_0.b << (var_0.b % vec3<u32>(32u)), select(52473u, abs(var_0.b.x), (_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(40961u, global1.x, global1.x)) != u_input.a.x) | arg_0.a.d), all(select(vec3<bool>(true, all(vec4<bool>(true, arg_0.a.d, var_0.d, true)), any(vec2<bool>(arg_0.a.d, true))), select(select(vec3<bool>(var_0.d, false, false), vec3<bool>(var_0.d, arg_0.a.d, arg_0.a.d), vec3<bool>(true, arg_0.a.d, var_0.d)), select(vec3<bool>(true, arg_0.a.d, true), vec3<bool>(false, arg_0.a.d, var_0.d), vec3<bool>(true, arg_0.a.d, arg_0.a.d)), vec3<bool>(arg_0.a.d, var_0.d, var_0.d)), var_0.d)), var_0.a);
    var var_2 = u_input.b;
    var_1 = Struct_1(arg_0.c.x, select(~(~arg_0.a.b ^ var_0.b), firstTrailingBit(vec3<u32>(15874u ^ var_0.c, arg_0.a.b.x, _wgslsmith_sub_u32(global1.x, var_0.c))), all(select(vec3<bool>(arg_0.a.d, arg_0.a.d, arg_0.a.d), vec3<bool>(true, true, true), true))), _wgslsmith_sub_u32(var_0.c, 1u), true | var_1.d, -13437i);
    let var_3 = 30348i;
    return _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.e, var_0.a, -55115i) >> (vec3<u32>(6422u, var_0.c, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.e, var_0.e, var_1.e), vec3<i32>(-1i, var_1.e, -1i), vec3<i32>(-24818i, -1i, var_0.e)), vec3<i32>(var_0.a, arg_0.b, 40519i)) >> (vec3<u32>(firstLeadingBit(u_input.b), var_1.b.x, ~1u) % vec3<u32>(32u))), vec3<i32>(countOneBits(~(-2112i)) | var_3, -_wgslsmith_add_i32(reverseBits(arg_0.c.x), var_3), ~arg_0.b));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<f32, 31>();
    let var_0 = 20240i;
    var var_1 = _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstLeadingBit(~26624u), u_input.b, arg_0), ~func_2(Struct_2(Struct_1(-1069i, u_input.a, 1u, false, var_0), 37917i, vec2<i32>(0i, var_0)), vec2<bool>(true, true), arg_0, vec3<bool>(false, false, true))), 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(~func_2(Struct_2(Struct_1(var_0, u_input.a, global1.x, false, 0i), 29007i, vec2<i32>(var_0, -2147483647i)), vec2<bool>(true, false), 0u, vec3<bool>(true, true, false)), 31u)]) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.x, 31u)] + _wgslsmith_f_op_f32(ceil(-2039f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(7016u, 31u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1625f) + _wgslsmith_f_op_f32(f32(-1f) * -1068f)), global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.d.x), 31u)])), _wgslsmith_f_op_f32(abs(-258f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))) + 1128f);
    return Struct_2(Struct_1(_wgslsmith_add_i32(var_0, _wgslsmith_div_i32(_wgslsmith_add_i32(var_0, 1i), min(var_0, var_0))), vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(25807u, arg_0)), ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 1u), ~4294967295u, true, -1i), func_4(Struct_2(Struct_1(firstLeadingBit(var_0), u_input.d, reverseBits(0u), true, _wgslsmith_mult_i32(var_0, 0i)), var_0, ~func_3(Struct_1(19700i, u_input.d, 13122u, false, 2011i), var_0, Struct_2(Struct_1(2147483647i, vec3<u32>(1u, 1u, 1u), 19523u, false, -2147483647i), -17983i, vec2<i32>(32436i, var_0)))), var_2.x), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 29016i), vec2<i32>(var_0, var_0)), min(var_0, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    var var_0 = func_1(~global1.x);
    global1 = _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(u_input.d.x), u_input.a.x), firstTrailingBit(firstTrailingBit(max(select(u_input.d.xy, vec2<u32>(0u, var_0.a.c), vec2<bool>(var_0.a.d, false)), u_input.d.xx))));
    var var_1 = Struct_3(Struct_2(Struct_1(func_4(func_1(1u), -784f), select(vec3<u32>(global1.x, 9587u, global1.x), u_input.d, !var_0.a.d), countOneBits(select(global1.x, 4294967295u, var_0.a.d)), !all(vec3<bool>(false, var_0.a.d, false)), _wgslsmith_sub_i32(2147483647i, var_0.b) | _wgslsmith_mult_i32(var_0.a.e, var_0.a.a)), _wgslsmith_mult_i32(var_0.b, ~var_0.b), abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 7029i, var_0.b, -1i), vec4<i32>(var_0.c.x, 61742i, var_0.c.x, 1i)), -var_0.c.x))), func_1(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, u_input.a.x), vec3<u32>(var_0.a.b.x, u_input.d.x, 47651u)), ~var_0.a.c)));
    let var_2 = ~countOneBits(4294967295u);
    var_1 = Struct_3(func_1(0u >> (1u % 32u)), func_1(global1.x));
    global1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2, 0u, 0u, 4294967295u) & vec4<u32>(global1.x, global1.x, 4294967295u, 37113u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 57903u, 0u, u_input.a.x), vec4<u32>(1u, 4294967295u, 0u, u_input.c))), vec4<u32>(~1u, ~var_2, 15821u ^ global1.x, 26099u)), _wgslsmith_add_u32(~(~var_1.b.a.b.x), ~var_1.b.a.b.x));
    var var_3 = Struct_2(func_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_0.a.c, 5163u, 4294967295u)) ^ (vec4<u32>(var_1.b.a.b.x, global1.x, global1.x, u_input.b) & vec4<u32>(4294967295u, var_0.a.b.x, u_input.b, 4294967295u)), select(~vec4<u32>(7055u, var_2, global1.x, var_1.a.a.c), ~vec4<u32>(22867u, 19331u, var_2, 4294967295u), func_1(1u).a.d))).a, 30955i, max(_wgslsmith_sub_vec2_i32(vec2<i32>(select(var_0.c.x, var_0.c.x, false), _wgslsmith_div_i32(-2147483647i, var_0.c.x)), firstLeadingBit(_wgslsmith_clamp_vec2_i32(var_0.c, vec2<i32>(-17598i, var_1.a.c.x), vec2<i32>(40491i, 1i)))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.c.x), var_1.a.c), 23325i)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(var_0.a.b.x, 31u)]), vec2<f32>(1116f, -265f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-809f, -1042f))))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], 201f)))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-131f, global0[_wgslsmith_index_u32(var_2, 31u)])))), vec2<f32>(1f, 1f), !(!select(vec2<bool>(true, var_1.b.a.d), vec2<bool>(var_3.a.d, true), vec2<bool>(var_1.b.a.d, var_0.a.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~(19630u << (u_input.b % 32u)), ~var_2, 12796u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a.c, 6685u, var_0.a.b.x, 1u), vec4<u32>(var_1.a.a.c, u_input.d.x, 4294967295u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2, var_0.a.b.x, var_2, 4294967295u), vec4<u32>(22490u, 48029u, 54874u, var_3.a.c)))), vec4<u32>(~(~36552u), 46680u, ~77666u, max(var_0.a.c, 1u)), !func_1(0u).a.d), ~(~firstTrailingBit(var_3.a.b)), _wgslsmith_dot_vec3_u32(var_0.a.b, vec3<u32>(~(~98233u), ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_0.a.c, 4294967295u, var_3.a.b.x)), ~(~var_1.a.a.b.x))), var_0.b);
}

