struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 62000u), vec2<u32>(4294967295u, 57096u), vec2<u32>(1u, 0u), vec2<u32>(12160u, 1u), vec2<u32>(1u, 20316u), vec2<u32>(1u, 4294967295u), vec2<u32>(118475u, 1u), vec2<u32>(1u, 22224u), vec2<u32>(0u, 59360u), vec2<u32>(0u, 40445u), vec2<u32>(1u, 4294967295u), vec2<u32>(75923u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 30556u), vec2<u32>(1u, 0u));

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<i32, 24> = array<i32, 24>(-1i, i32(-2147483648), 11541i, -1i, 2054i, i32(-2147483648), 0i, 25899i, 20057i, 1i, 46956i, 175i, -5931i, -28956i, i32(-2147483648), i32(-2147483648), -1i, 1i, -32111i, -62913i, 22740i, 20060i, -33198i, -1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(!arg_0.a, _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_2.c.x, arg_0.b), arg_2.b), arg_0.c.x), vec3<u32>(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c.x, arg_0.b, 26213u)), firstLeadingBit(vec3<u32>(arg_2.c.x, 0u, 1u))), (~arg_2.b ^ _wgslsmith_mod_u32(arg_2.c.x, 51167u)) ^ 0u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0.b, u_input.c.x), 17514u, arg_2.b) >> (reverseBits(~53204u) % 32u)));
    var var_1 = !select(select(select(select(vec3<bool>(arg_0.a, global0[_wgslsmith_index_u32(25832u, 18u)], false), vec3<bool>(arg_2.a, arg_2.a, false), arg_2.a), select(vec3<bool>(arg_2.a, arg_0.a, arg_0.a), vec3<bool>(true, true, var_0.a), var_0.a), !global0[_wgslsmith_index_u32(arg_0.c.x, 18u)]), vec3<bool>(true, true, true), !select(vec3<bool>(arg_0.a, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.c.x, 18u)], true), vec3<bool>(true, var_0.a, false))), vec3<bool>(any(select(vec2<bool>(var_0.a, arg_2.a), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]))), arg_1.x > _wgslsmith_f_op_f32(arg_1.x + arg_1.x), global0[_wgslsmith_index_u32(var_0.c.x, 18u)]), select(select(select(vec3<bool>(arg_0.a, true, true), vec3<bool>(var_0.a, arg_2.a, true), true), select(vec3<bool>(arg_0.a, false, var_0.a), vec3<bool>(arg_2.a, true, false), true), select(vec3<bool>(arg_0.a, arg_2.a, arg_0.a), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], true, false), vec3<bool>(false, arg_0.a, true))), select(select(vec3<bool>(arg_0.a, true, arg_2.a), vec3<bool>(arg_0.a, false, global0[_wgslsmith_index_u32(80429u, 18u)]), true), !vec3<bool>(false, global0[_wgslsmith_index_u32(30201u, 18u)], arg_0.a), select(true, arg_0.a, arg_2.a)), true));
    var var_2 = vec4<i32>(-36783i, _wgslsmith_dot_vec4_i32(select(countOneBits(~vec4<i32>(1i, global3[_wgslsmith_index_u32(u_input.c.x, 24u)], global3[_wgslsmith_index_u32(arg_0.b, 24u)], 0i)), -_wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(7796u, 24u)], global3[_wgslsmith_index_u32(var_0.b, 24u)], global3[_wgslsmith_index_u32(arg_0.b, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]), vec4<i32>(0i, global3[_wgslsmith_index_u32(arg_0.b, 24u)], 0i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])), u_input.a.x <= 1u), vec4<i32>(global3[_wgslsmith_index_u32(var_0.c.x, 24u)], global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(39549u, 24u)], ~global3[_wgslsmith_index_u32(u_input.b, 24u)] << (_wgslsmith_sub_u32(u_input.b, 7381u) % 32u))), -(~global3[_wgslsmith_index_u32(4294967295u, 24u)]), global3[_wgslsmith_index_u32(reverseBits(~var_0.c.x), 24u)]);
    var_2 = ~_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.b, 24u)] & -2147483647i, reverseBits(global3[_wgslsmith_index_u32(var_0.c.x, 24u)]), -23305i), select(~vec4<i32>(-24814i, 52417i, global3[_wgslsmith_index_u32(9941u, 24u)], -18643i), ~vec4<i32>(var_2.x, global3[_wgslsmith_index_u32(arg_2.c.x, 24u)], -1i, global3[_wgslsmith_index_u32(1u, 24u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], var_0.a, true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 18u)], false, arg_0.a, true), vec4<bool>(true, var_0.a, global0[_wgslsmith_index_u32(84269u, 18u)], var_1.x))) & vec4<i32>(1i, min(-1i, -18386i), -2147483647i, abs(0i)));
    var_1 = select(select(vec3<bool>(arg_0.a, any(!vec3<bool>(false, true, var_1.x)), true), select(vec3<bool>(!var_1.x, true, false), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 18u)], arg_0.a, arg_0.a), vec3<bool>(true, true, true), arg_2.a), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 18u)], true))), all(!var_1.xx) && true), select(vec3<bool>(arg_2.a, any(vec4<bool>(arg_2.a, false, global0[_wgslsmith_index_u32(u_input.c.x, 18u)], arg_0.a)), var_0.a), !select(vec3<bool>(false, var_0.a, var_1.x), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_0.b, 18u)]), arg_0.a), true & var_1.x), true);
    return select(abs(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_2.c.x, arg_2.c.x) << (vec2<u32>(3844u, 29133u) % vec2<u32>(32u))), 1u ^ arg_2.c.x)), vec3<u32>(4294967295u, 48878u, ~arg_2.b), select(select(!vec3<bool>(false, var_0.a, var_1.x), select(select(vec3<bool>(false, var_1.x, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.b, 18u)], var_1.x, false), vec3<bool>(arg_0.a, true, false)), vec3<bool>(false, false, arg_2.a), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 18u)], arg_0.a)), !vec3<bool>(arg_0.a, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 18u)]), vec3<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.b, 18u)], false, false)), !var_0.a, true || arg_2.a)), select(select(select(vec3<bool>(true, true, arg_0.a), vec3<bool>(true, var_0.a, true), vec3<bool>(var_1.x, true, var_0.a)), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 18u)], false, true), vec3<bool>(var_1.x, arg_0.a, false), global0[_wgslsmith_index_u32(64555u, 18u)]), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0.c.x, 18u)])), vec3<bool>(true, !arg_0.a, true), arg_2.a)));
}

fn func_2() -> vec2<bool> {
    global0 = array<bool, 18>();
    var var_0 = ~max(~vec3<u32>(4294967295u, ~u_input.b, ~u_input.b), _wgslsmith_clamp_vec3_u32(u_input.a & vec3<u32>(83808u, 44599u, u_input.a.x), ~max(u_input.c.zyz, vec3<u32>(u_input.a.x, u_input.b, u_input.b)), func_3(Struct_1(false, 4294967295u, u_input.c.wyw), vec2<f32>(-1353f, -1443f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.a.x, 8925u, 1u, 1u)), 15u)])));
    var var_1 = 1041f;
    let var_2 = vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 18u)], true);
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1303f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f + 462f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1826f * -892f) - 294f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(265f, _wgslsmith_f_op_f32(step(250f, _wgslsmith_f_op_f32(max(1000f, 216f)))), (true && global0[_wgslsmith_index_u32(u_input.b, 18u)]) || true)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-303f)))))));
    return !select(var_2.xy, select(select(var_2.zy, vec2<bool>(var_2.x, false), true), vec2<bool>(all(var_2), global0[_wgslsmith_index_u32(0u, 18u)]), !all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], true, false))), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, var_0.x), 18u)] != true, _wgslsmith_add_i32(-1i, global3[_wgslsmith_index_u32(u_input.b, 24u)]) > 1i));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> f32 {
    global1 = array<vec2<u32>, 16>();
    var var_0 = !vec3<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], true), global0[_wgslsmith_index_u32(40919u, 18u)]), func_2())), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(72681u, u_input.c.x), 18u)] & false, any(!select(vec2<bool>(false, true), vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 18u)])));
    var var_1 = countOneBits(vec2<u32>(firstTrailingBit(u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(60065u, 4294967295u, u_input.a.x, u_input.b), vec4<u32>(u_input.b, u_input.a.x, 81336u, 4294967295u) & vec4<u32>(1u, 162u, 33206u, u_input.a.x))));
    var var_2 = Struct_1(true, ~var_1.x, vec3<u32>(8018u, select(34250u, var_1.x, !global0[_wgslsmith_index_u32(u_input.b, 18u)]), max(u_input.c.x, _wgslsmith_mod_u32(max(2488u, var_1.x), ~u_input.c.x))));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~arg_1, 0i & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, -39634i), vec3<i32>(arg_0, 36156i, 3488i)))), 0i);
    return 1130f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1384f - -402f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(0i, 28005i, -269f)) + _wgslsmith_f_op_f32(sign(387f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(904f, _wgslsmith_f_op_f32(661f - -1847f)))))), _wgslsmith_f_op_f32(206f - -1357f));
    var var_1 = select(vec3<bool>(all(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(u_input.b, 18u)], all(vec3<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(46265u, 18u)], false)), global3[_wgslsmith_index_u32(4294967295u, 24u)] < 2147483647i, global0[_wgslsmith_index_u32(~1460u, 18u)]))), vec3<bool>(_wgslsmith_mult_i32(select(global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(7806u, 24u)], true), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 24u)]) == -8252i, any(vec2<bool>(true, true)), select(true, func_2().x, true)), vec3<bool>(true, global0[_wgslsmith_index_u32(~u_input.b & _wgslsmith_mult_u32(u_input.a.x, u_input.b), 18u)] != true, !(4294967295u >= u_input.a.x) & !(!global0[_wgslsmith_index_u32(0u, 18u)])));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(select(0u ^ _wgslsmith_mult_u32(u_input.b, 1u), 53099u & ~u_input.a.x, true), ~min(4294967295u, u_input.c.x)), 18u)];
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(303f, var_0.x, -1382f, -1778f), vec4<f32>(var_0.x, var_0.x, 2197f, -547f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, var_0.x, -664f, -514f)))), vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_div_f32(-2138f, var_0.x)), var_0.x == _wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2311f, var_0.x, -249f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, 958f, var_0.x))))));
    var var_3 = select(vec3<bool>(true != (u_input.c.x > ~u_input.a.x), global0[_wgslsmith_index_u32(u_input.b, 18u)], true), !(!vec3<bool>(59889i > global3[_wgslsmith_index_u32(84269u, 24u)], all(vec2<bool>(true, global0[_wgslsmith_index_u32(1137u, 18u)])), global0[_wgslsmith_index_u32(12170u << (u_input.b % 32u), 18u)])), all(!var_1.zx));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 0u >> (u_input.b % 32u)), 0u), select(~u_input.a.x, ~u_input.b, var_1.x) << (~(~u_input.c.x) % 32u), ~(~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], vec2<u32>(u_input.b, 73824u))), abs(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(35783u, 1u, u_input.c.x, u_input.b))))), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(0u, 24u)], 2147483647i), global3[_wgslsmith_index_u32(~u_input.a.x, 24u)]) & (countOneBits(-7854i) >> ((var_4.b << (1u % 32u)) % 32u)), global3[_wgslsmith_index_u32(max(~var_4.b, ~1u), 24u)], -global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 24u)], _wgslsmith_sub_i32(~global3[_wgslsmith_index_u32(u_input.b, 24u)], 0i) & global3[_wgslsmith_index_u32(u_input.a.x, 24u)]), _wgslsmith_f_op_f32(floor(-405f)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(select(global3[_wgslsmith_index_u32(92410u, 24u)], global3[_wgslsmith_index_u32(32564u, 24u)], var_1.x), abs(global3[_wgslsmith_index_u32(var_4.b, 24u)]))), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])), ~vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 32541i)) << (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x << (0u % 32u), var_4.b & u_input.b, func_3(Struct_1(var_3.x, u_input.c.x, vec3<u32>(4294967295u, 2779u, u_input.b)), vec2<f32>(var_0.x, -220f), global2[_wgslsmith_index_u32(var_4.c.x, 15u)]).x), 16u)] % vec2<u32>(32u))), 40528u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(-657f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(var_0.yy, var_0.ww)))))));
}

