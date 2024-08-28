struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true));

var<private> global1: array<Struct_5, 5>;

var<private> global2: vec2<f32> = vec2<f32>(-870f, 783f);

var<private> global3: array<Struct_3, 4>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> i32 {
    return u_input.a;
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = func_3(global2.x);
    var_0 = ~(~abs(~(-2147483647i)));
    let var_1 = u_input.b;
    var var_2 = Struct_3(select(_wgslsmith_mult_vec2_i32(min(select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(0i, u_input.a), false), ~vec2<i32>(u_input.a, 2147483647i)), -vec2<i32>(u_input.a, u_input.a)), min(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-48638i, 4756i), vec2<i32>(u_input.a, 1i), false), vec2<i32>(u_input.a, u_input.a)), ~(-vec2<i32>(u_input.a, u_input.a))), true), _wgslsmith_f_op_f32(max(2145f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, -900f)))), ~(~abs(vec3<u32>(0u, 4294967295u, 39117u) ^ arg_0.b.a)), _wgslsmith_div_vec2_i32(countOneBits(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-34740i, u_input.a), vec2<i32>(u_input.a, u_input.a)))), vec2<i32>(u_input.a, 1i)));
    global0 = array<vec4<bool>, 10>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, arg_0.c, false)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    let var_0 = any(vec3<bool>(true, true, true));
    let var_1 = ~(~arg_0.a);
    let var_2 = !select(global0[_wgslsmith_index_u32(~var_1.x, 10u)], vec4<bool>(var_0, true, false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_0), vec3<bool>(true, var_0, false)))), global0[_wgslsmith_index_u32(var_1.x, 10u)]);
    global3 = array<Struct_3, 4>();
    let var_3 = _wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_1.d.x & arg_2.d.x, 1i), -u_input.a)), u_input.a);
    return false;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_5 {
    global0 = array<vec4<bool>, 10>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1248f, _wgslsmith_f_op_f32(f32(-1f) * -453f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(712f, global2.x)));
    let var_0 = 1270f > global2.x;
    var var_1 = func_4(Struct_1(vec3<u32>(~0u >> (min(arg_0, 0u) % 32u), ~0u, _wgslsmith_mult_u32(~65558u, arg_1.x ^ 4294967295u)), min(arg_0, ~32243u | ~arg_1.x)), global3[_wgslsmith_index_u32(4294967295u, 4u)], Struct_3(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(54485i, u_input.a)) ^ vec2<i32>(-38693i, u_input.a), reverseBits(select(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.a, -4400i), false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_2(arg_0, Struct_1(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), 4294967295u), 1000f))))), ~(~vec3<u32>(1u, arg_1.x, 519u) | vec3<u32>(arg_1.x, arg_1.x, 25112u)), vec2<i32>(u_input.a, u_input.a)));
    let var_2 = vec2<i32>(-2147483647i, 36736i);
    return Struct_5(_wgslsmith_clamp_vec2_i32(var_2, ~(-vec2<i32>(38686i, 22998i)), vec2<i32>(var_2.x, _wgslsmith_clamp_i32(8575i, i32(-1i) * -29301i, var_2.x & -49769i))), Struct_3(vec2<i32>(-14116i, 35424i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) * 985f)), ~vec3<u32>(u_input.b & 11768u, u_input.b, 43050u), vec2<i32>(abs(_wgslsmith_div_i32(u_input.a, var_2.x)), ~var_2.x & u_input.a)), global3[_wgslsmith_index_u32(104265u, 4u)], 40620i, Struct_4(Struct_1(~(vec3<u32>(99700u, arg_0, arg_0) >> (vec3<u32>(123936u, arg_0, u_input.b) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0, 1u, u_input.b), vec3<u32>(0u, arg_0, 1u)), ~vec3<u32>(arg_0, 65823u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | !(true & (all(vec2<bool>(true, false)) || any(vec2<bool>(false, true))));
    var var_1 = global3[_wgslsmith_index_u32((u_input.b ^ u_input.b) >> (0u % 32u), 4u)];
    let var_2 = vec3<u32>(var_1.c.x, _wgslsmith_div_u32(~(~u_input.b), countOneBits(var_1.c.x)), ~18313u) | vec3<u32>(~(~(~1u)), 1u, ~102335u);
    var var_3 = func_1(2632u, vec2<u32>(1u, 1u));
    var var_4 = global3[_wgslsmith_index_u32(firstLeadingBit(~countOneBits(u_input.b ^ ~var_3.e.a.a.x)), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(-888f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.b, _wgslsmith_f_op_f32(-var_4.b), var_4.b) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.b, 230f, var_1.b), vec3<f32>(1231f, -297f, var_3.c.b)))))))), abs(vec4<u32>(4294967295u, 46000u, min(firstLeadingBit(var_1.c.x), var_4.c.x), 60682u)), ~vec4<u32>(14159u, ~var_4.c.x, ~u_input.b, _wgslsmith_mult_u32(var_3.e.a.b, 4294967295u)) ^ vec4<u32>(u_input.b, (4294967295u & u_input.b) >> (~var_4.c.x % 32u), _wgslsmith_clamp_u32(select(1u, 69620u, true), var_2.x, ~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3.c.c.x), vec2<u32>(1u, 1u) << (var_3.e.a.a.xz % vec2<u32>(32u)))));
}

