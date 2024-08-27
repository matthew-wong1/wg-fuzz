struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(31196i, -1i, -52280i, -81649i);

var<private> global1: array<i32, 7>;

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(5618u, 37604u), vec2<u32>(4294967295u, 1u));

var<private> global3: Struct_2 = Struct_2(Struct_1(2508f, vec3<i32>(75970i, i32(-2147483648), -9721i)), 4294967295u, i32(-2147483648), Struct_1(1403f, vec3<i32>(0i, -16147i, -3803i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    global0 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(~firstTrailingBit(2147483647i), 17918i, arg_0.x, global3.d.b.x), vec4<i32>(global0.x, _wgslsmith_div_i32(~u_input.b.x, ~u_input.b.x), -1i, ~(i32(-1i) * -2147483647i))));
    global1 = array<i32, 7>();
    var var_0 = global3.a;
    var var_1 = u_input.c;
    global1 = array<i32, 7>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -353f) + _wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-172f))))), -257f);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.a, global3.a.a))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.a, 109f))), all(vec2<bool>(true, true))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(527f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -379f)))) + _wgslsmith_f_op_vec2_f32(func_3(~select(vec2<i32>(arg_1.x, arg_2.b.x), arg_1.xw, vec2<bool>(false, false))))), vec2<u32>(arg_0, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(21451u, 5517u), vec2<u32>(u_input.c, 1u)), abs(vec2<u32>(0u, global3.b)) >> (_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(20002u, 2u)], vec2<u32>(45904u, u_input.c), global2[_wgslsmith_index_u32(4294967295u, 2u)]) % vec2<u32>(32u)))), _wgslsmith_div_vec4_i32(vec4<i32>(-22056i, arg_1.x, _wgslsmith_mult_i32(global0.x, 9762i), -1i), arg_1) << (vec4<u32>(firstTrailingBit(arg_0), ~19786u, 1u, ~select(u_input.a, global3.b, false)) % vec4<u32>(32u)), global3.a, Struct_2(arg_2, u_input.c, global1[_wgslsmith_index_u32(reverseBits(u_input.c) >> (reverseBits(max(u_input.a, 2143u)) % 32u), 7u)], Struct_1(_wgslsmith_f_op_f32(-arg_2.a), ~vec3<i32>(1i, -1i, global3.d.b.x))));
    var var_2 = (global3.a.b.x >> (0u % 32u)) << (4294967295u % 32u);
    global1 = array<i32, 7>();
    let var_3 = global3.d;
    return select(!select(vec2<bool>(all(vec2<bool>(true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec3<bool>(true, true, true))), vec2<bool>(true, true), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true & any(vec2<bool>(false, true)))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), func_2(1u, vec4<i32>(60282i, 26949i, 0i, global3.c), Struct_1(-1000f, vec3<i32>(u_input.b.x, arg_0, -1i))), true), vec2<bool>(func_2(global3.b, vec4<i32>(global0.x, global1[_wgslsmith_index_u32(37052u, 7u)], 1i, global3.c), global3.a).x, false), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)), select(vec2<bool>(true, all(vec2<bool>(true, false))), select(func_2(4294967295u, vec4<i32>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], 0i, 12485i), Struct_1(global3.a.a, global0.ywx)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), global3.d.a < global3.d.a))));
    let var_1 = Struct_3(vec2<f32>(-323f, -704f), firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(global2[_wgslsmith_index_u32(u_input.a << (4294967295u % 32u), 2u)], vec2<u32>(40935u, u_input.c)), ~(~global2[_wgslsmith_index_u32(44154u, 2u)]))), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(arg_0, -32754i, u_input.b.x, u_input.b.x) << (firstTrailingBit(vec4<u32>(4294967295u, 0u, 0u, global3.b)) % vec4<u32>(32u))), max(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, global0.x, arg_0, 2147483647i), vec4<i32>(global0.x, -2673i, global1[_wgslsmith_index_u32(0u, 7u)], global0.x)), vec4<i32>(global1[_wgslsmith_index_u32(56449u, 7u)], -17485i, global1[_wgslsmith_index_u32(u_input.c, 7u)], global3.d.b.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-23030i, global1[_wgslsmith_index_u32(u_input.c, 7u)], 30739i, -1i), vec4<i32>(global1[_wgslsmith_index_u32(17403u, 7u)], arg_0, 1i, global1[_wgslsmith_index_u32(0u, 7u)])), vec4<i32>(global3.d.b.x, global1[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x, global1[_wgslsmith_index_u32(1u, 7u)]) >> (vec4<u32>(0u, 0u, 48805u, 1u) % vec4<u32>(32u))))), global3.a, Struct_2(Struct_1(global3.a.a, global0.yxx >> (vec3<u32>(0u, u_input.c, 1u) % vec3<u32>(32u))), _wgslsmith_mod_u32(global3.b, ~_wgslsmith_clamp_u32(u_input.c, 35365u, u_input.a)), -5487i, global3.a));
    let var_2 = 5240u;
    var var_3 = 39470u;
    var var_4 = vec3<bool>(!(!var_0.x), !((var_1.e.d.a > var_1.a.x) || !(false & var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1691f)), _wgslsmith_f_op_f32(global3.d.a * global3.d.a))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(-global3.d.a), true)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-267f, global3.d.a) * vec2<f32>(var_1.d.a, var_1.a.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1264f)), _wgslsmith_div_f32(var_1.d.a, 178f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-580f, global3.d.a))))), vec2<u32>(min(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(53554u, 41298u, var_1.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_2, u_input.a), vec3<u32>(0u, 4294967295u, var_2))), select(39757u, firstTrailingBit(var_2), var_4.x)), var_2), var_1.c, Struct_1(var_1.a.x, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, 2147483647i) & vec3<i32>(var_1.e.d.b.x, 0i, -1i), vec3<i32>(arg_0, var_1.e.d.b.x, 37038i)), vec3<i32>(_wgslsmith_sub_i32(global0.x, arg_0), firstLeadingBit(6359i), u_input.b.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1352f))), max(vec3<i32>(0i, global3.a.b.x, arg_0), ~global0.wyz)), 1u, -(firstTrailingBit(-1i) | arg_0), global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~u_input.b.x);
    global0 = abs(var_0.c);
    var var_1 = !(!(!any(vec2<bool>(false, false))) | false);
    global2 = array<vec2<u32>, 2>();
    global2 = array<vec2<u32>, 2>();
    var var_2 = _wgslsmith_dot_vec3_i32(global3.a.b, ~global0.zxz);
    var var_3 = vec2<bool>(!func_2(~var_0.b.x, max(var_0.c, var_0.c), var_0.e.a).x | (false && any(vec2<bool>(true, false))), select(true, false, !(false & func_2(4294967295u, var_0.c, var_0.e.a).x)));
    var_3 = vec2<bool>(var_3.x, true);
    global1 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.d.a, var_0.a.x, -1032f, 354f))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.a, var_0.e.a.a, var_0.e.d.a, 440f), _wgslsmith_f_op_vec4_f32(vec4<f32>(101f, 406f, -549f, 339f) + vec4<f32>(-767f, var_0.e.d.a, global3.a.a, -886f))), vec4<bool>(var_3.x, func_2(38249u, vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(global3.b, 7u)], -2147483647i, u_input.b.x), Struct_1(global3.d.a, global0.xyy)).x, all(vec3<bool>(false, var_3.x, true)), var_3.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.e.d.a, var_0.e.d.a, global3.a.a, global3.d.a)))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.e.a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-589f, var_0.e.d.a) * global3.d.a), var_3.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.a, var_0.d.a) - vec2<f32>(1000f, var_0.e.a.a)) - var_0.a), var_0.a, !func_2(4294967295u, vec4<i32>(-2403i, -22760i, -2147483647i, 2147483647i), Struct_1(-369f, var_0.c.zxy))))), var_0.d.a, vec4<f32>(global3.d.a, -2443f, 732f, _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_i32(1i, -5685i)).a.x * var_0.d.a)));
}

