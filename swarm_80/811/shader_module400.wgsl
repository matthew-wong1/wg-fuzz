struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(i32(-2147483648), vec4<u32>(17615u, 15307u, 43233u, 952u)), Struct_1(i32(-2147483648), vec4<u32>(7500u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(6692i, vec4<u32>(0u, 43655u, 47521u, 27571u)), Struct_1(1i, vec4<u32>(55704u, 4294967295u, 4294967295u, 33616u)), Struct_1(-1i, vec4<u32>(42457u, 3387u, 80442u, 62167u)), Struct_1(17982i, vec4<u32>(0u, 4384u, 74283u, 0u)), Struct_1(-1i, vec4<u32>(1u, 26860u, 4294967295u, 0u)), Struct_1(27006i, vec4<u32>(31606u, 124025u, 1u, 44234u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn func_3() -> vec3<u32> {
    let var_0 = !any(vec2<bool>(true, _wgslsmith_clamp_i32(u_input.a, 48685i, u_input.a) >= 2147483647i));
    let var_1 = Struct_3(Struct_2(~(~(~vec2<i32>(0i, u_input.a))), global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(36124u, 0u))), 8u)]), vec2<bool>(true, any(vec4<bool>(!var_0, !var_0, var_0, true))), Struct_2(abs(-(~vec2<i32>(-12668i, -2147483647i))), global1[_wgslsmith_index_u32(u_input.b, 8u)]), Struct_2(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 166i, -2147483647i, 57276i), vec4<i32>(u_input.a, u_input.a, -47573i, 2147483647i)), 28417i)), global1[_wgslsmith_index_u32(u_input.b, 8u)]));
    var var_2 = u_input.a ^ select(var_1.c.b.a, ~1i, all(!(!var_1.b)));
    var var_3 = vec3<bool>(var_0, any(!vec4<bool>(true, var_0, var_1.b.x, true)), true);
    var_2 = u_input.a;
    return select(min(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(10684u, 1u), _wgslsmith_sub_u32(38534u, 0u)), u_input.b, ~0u), firstLeadingBit(~max(vec3<u32>(u_input.b, u_input.b, 16875u), var_1.d.b.b.ywz))), ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, 1u, 28686u)) ^ var_1.c.b.b.zww, vec3<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 5u)], var_1.c.b.b.yy), var_1.a.b.b.x & u_input.b, ~4294967295u)), vec3<bool>(!(u_input.a <= (u_input.a | u_input.a)), var_1.b.x, any(vec3<bool>(true, var_1.a.b.b.x < u_input.b, !var_1.b.x))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), reverseBits(vec3<u32>(12123u, u_input.b, 42011u))), vec3<u32>(u_input.b, u_input.b, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 49198u, 4294967295u), vec4<u32>(u_input.b, 1u, 35720u, 1u)), 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 8126u), func_3()), vec3<u32>(countOneBits(4294967295u), ~4294967295u, u_input.b)));
    global1 = array<Struct_1, 8>();
    var_0 = ~_wgslsmith_sub_vec3_u32(min(vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.b), 109338u ^ var_0.x, ~u_input.b), vec3<u32>(u_input.b, var_0.x, _wgslsmith_add_u32(0u, var_0.x))), vec3<u32>(~4294967295u, 11222u, countOneBits(4294967295u)) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(4294967295u, u_input.b, u_input.b)));
    let var_1 = vec4<u32>(27935u, 1u, 0u, 48023u);
    let var_2 = _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)));
    return global1[_wgslsmith_index_u32(4294967295u, 8u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_3(Struct_2(min(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a) >> (global0[_wgslsmith_index_u32(u_input.b, 5u)] % vec2<u32>(32u)), arg_0.zw >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), -arg_0.zx), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, 773f, -1624f)))), select(!vec2<bool>(select(false, true, false), true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, u_input.a <= -5266i)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), Struct_2(abs(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(20879i, arg_0.x), vec2<i32>(arg_0.x, u_input.a)), arg_0.xz)), global1[_wgslsmith_index_u32(~min(34072u, ~u_input.b), 8u)]), Struct_2(vec2<i32>(0i, func_2(vec3<f32>(242f, -1000f, 523f)).a), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1156f, 667f, 174f) - _wgslsmith_div_vec3_f32(vec3<f32>(-349f, -1133f, -260f), vec3<f32>(1000f, -896f, 1251f))))));
    var var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2172f + 690f) * _wgslsmith_div_f32(771f, 213f)))), 1f, -793f));
    let var_2 = vec4<bool>(!((var_0.b.x || var_0.b.x) && (arg_2.x <= var_1.b.x)) && !var_0.b.x, !(!var_0.b.x), true, false);
    global1 = array<Struct_1, 8>();
    var var_3 = var_0.d;
    return 1107f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-393f, _wgslsmith_f_op_f32(1489f * -987f), _wgslsmith_f_op_f32(func_1(vec4<i32>(36655i, u_input.a, -78986i, -58742i), Struct_1(u_input.a, vec4<u32>(0u, 58481u, 4294967295u, u_input.b)), vec3<u32>(u_input.b, u_input.b, 83445u))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(411f, 889f, 317f)))))));
    global0 = array<vec2<u32>, 5>();
    var var_1 = global1[_wgslsmith_index_u32(17949u, 8u)];
    let var_2 = true;
    let var_3 = select(vec3<bool>((~u_input.b >> (29439u % 32u)) != ~(~0u), all(select(!vec2<bool>(var_2, true), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, false), vec2<bool>(false, true)), true)), all(!vec3<bool>(var_2, var_2, var_2)) & true), select(vec3<bool>(false, false & (var_2 & var_2), true), select(select(vec3<bool>(var_2, true, var_2), select(vec3<bool>(true, false, var_2), vec3<bool>(var_2, false, true), var_2), vec3<bool>(var_2, var_2, false)), !vec3<bool>(var_2, true, false), var_2), true), select(!(!select(vec3<bool>(var_2, false, false), vec3<bool>(var_2, var_2, var_2), vec3<bool>(false, var_2, var_2))), vec3<bool>(!(!var_2), any(!vec3<bool>(var_2, var_2, var_2)), _wgslsmith_f_op_f32(-570f - var_0.x) >= _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), true));
    global1 = array<Struct_1, 8>();
    global0 = array<vec2<u32>, 5>();
    var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -333f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + -861f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) + 209f))), _wgslsmith_f_op_f32(-677f - _wgslsmith_f_op_f32(-var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-3262i, u_input.a, u_input.a) ^ vec3<i32>(firstLeadingBit(var_1.a ^ var_1.a), ~_wgslsmith_div_i32(1i, 51268i), min(-52900i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-15178i, var_1.a)))), select(vec4<i32>(1i, var_1.a, 1i, -var_1.a) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.b, 1u), u_input.b, u_input.b, ~var_1.b.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-3049i, 0i, var_1.a, var_1.a)) >> (~vec4<u32>(41766u, u_input.b, u_input.b, 71555u) % vec4<u32>(32u)), ~(vec4<i32>(-32004i, var_1.a, u_input.a, u_input.a) | vec4<i32>(-2147483647i, 31044i, 13923i, u_input.a))), true), _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(-var_0)), -13262i);
}

