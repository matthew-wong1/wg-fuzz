struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 4>;

var<private> global2: u32 = 0u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1702f * 1f), -710f)) - _wgslsmith_f_op_f32(f32(-1f) * -396f));
    return select(vec4<bool>((true && any(vec4<bool>(false, true, true, false))) || true, true, true, !select(true, any(vec4<bool>(true, true, false, true)), false)), vec4<bool>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-792f, -900f, true))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(944f * -316f)), false, (true | any(vec4<bool>(true, false, true, false))) && true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(358f * -1238f), _wgslsmith_f_op_f32(f32(-1f) * -336f))) == _wgslsmith_f_op_f32(floor(775f))), select(_wgslsmith_add_u32(9723u, u_input.a ^ 1u), _wgslsmith_mod_u32(u_input.a | 1u, ~u_input.a), !any(vec3<bool>(true, false, true))) < ~(~_wgslsmith_mult_u32(0u, u_input.a)));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_1(20739u);
    let var_1 = Struct_3(Struct_2(abs(var_0.a), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true)), func_3(), vec4<bool>(true, true, true, true)), vec3<bool>(any(vec2<bool>(false, true)), true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f), 734f)), u_input.a, u_input.a, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(34329u & var_0.a, 1u, var_0.a), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 9652u, 9695u, u_input.a), vec4<u32>(var_0.a, var_0.a, var_0.a, u_input.a)), var_0.a, ~var_0.a))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)));
    var var_2 = vec2<bool>(!var_1.a.b.x, true);
    var_2 = vec2<bool>(true, true);
    return -_wgslsmith_mult_i32(~0i, _wgslsmith_add_i32(0i, abs(29715i))) & firstTrailingBit(max(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 26404i, -2147483647i), vec3<i32>(21412i, 1i, -20430i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, 39056i, 16915i), 1i)));
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = firstTrailingBit(-_wgslsmith_div_i32(0i, 27562i) & _wgslsmith_sub_i32(arg_0, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, arg_0, 0i), ~vec3<i32>(-1i, arg_0, arg_0))));
    let var_1 = vec4<u32>(~(max(~4294967295u, 56091u) | select(u_input.a ^ u_input.a, ~u_input.a, true)), min(0u, ~_wgslsmith_mult_u32(u_input.a, ~1u)), u_input.a, 25328u);
    var_0 = firstTrailingBit(arg_0);
    var var_2 = Struct_4(all(vec3<bool>(true, true, true)) & true, -29724i, global1[_wgslsmith_index_u32(37353u, 4u)], any(vec4<bool>(true, true, true, false)), arg_0);
    global1 = array<Struct_2, 4>();
    return Struct_4(!(!var_2.a && any(vec2<bool>(var_2.d, var_2.c.b.x))), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.d, var_2.c.d, _wgslsmith_f_op_f32(var_2.c.d * -1260f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1466f, 413f), vec3<f32>(1000f, -1986f, 107f)))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 51915u), countOneBits(countOneBits(~u_input.a))), 4u)], !var_2.c.c.x, 7063i);
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> bool {
    global2 = arg_1.c.a;
    var var_0 = Struct_3(func_1(_wgslsmith_add_i32(~arg_1.b << (~4294967295u % 32u), _wgslsmith_clamp_i32(-arg_1.e, _wgslsmith_clamp_i32(2147483647i, -1i, -9133i), firstLeadingBit(arg_1.b)))).c, ~(~(64212u ^ ~arg_1.c.a)), 4294967295u, Struct_1(firstTrailingBit(u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-272f + 1083f), -1140f, true)), var_0.a.d)));
    var var_2 = true;
    var var_3 = countOneBits(vec4<u32>(_wgslsmith_mod_u32(~(u_input.a ^ 4294967295u), ~arg_1.c.a), ~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(63849u, 0u)), ~_wgslsmith_mod_u32(arg_1.c.a, 0u), ~max(var_0.c ^ var_0.d.a, abs(29475u))));
    return all(vec3<bool>(!any(func_3().yxy), false, all(vec4<bool>(!var_0.a.c.x, false, all(vec3<bool>(arg_1.a, false, false)), !var_0.a.b.x))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<i32> {
    var var_0 = !(!arg_2.yyx);
    global1 = array<Struct_2, 4>();
    var_0 = func_3().wwy;
    var_0 = arg_2.xwz;
    global1 = array<Struct_2, 4>();
    return vec3<i32>(2147483647i, 27398i, countOneBits(i32(-1i) * -4935i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_5(true || func_4(true, func_1(2147483647i)), Struct_1(4294967295u), vec4<bool>(_wgslsmith_f_op_f32(sign(-315f)) <= _wgslsmith_f_op_f32(1770f + -1291f), all(vec3<bool>(false, false, true)), true, true));
    global0 = 1f;
    var var_1 = vec3<bool>(all(vec4<bool>(true, true, true, true)), false, !(!(abs(73830u) >= u_input.a)));
    let var_2 = Struct_4(true, var_0.x, Struct_2(~select(4294967295u, ~1u, 1u <= u_input.a), !vec4<bool>(true, var_1.x, !var_1.x, !var_1.x), func_1(-(4333i >> (u_input.a % 32u))).c.c, func_1(firstTrailingBit(var_0.x) & 1i).c.d), !(!var_1.x), ~(~var_0.x));
    var var_3 = select(var_2.c.b, func_3(), vec4<bool>(false, func_4(var_2.c.c.x & true, Struct_4(var_2.d, -23564i, Struct_2(0u, vec4<bool>(var_1.x, true, true, var_1.x), vec3<bool>(true, true, false), var_2.c.d), false, var_2.e)) & var_2.a, false, all(func_1(0i).c.c.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a, var_2.c.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1090f, var_2.c.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-334f, var_2.c.d)), _wgslsmith_f_op_f32(ceil(var_2.c.d))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2254f), _wgslsmith_f_op_f32(var_2.c.d - 851f), var_2.d))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.d, 1330f, -802f, 1059f)))));
}

