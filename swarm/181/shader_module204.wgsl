struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

var<private> global1: array<vec3<bool>, 23>;

var<private> global2: bool;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = abs(-(select(global3.a, abs(vec3<i32>(-2147483647i, -3520i, -24281i)), true) << (reverseBits(vec3<u32>(57719u, u_input.a, 5092u)) % vec3<u32>(32u))));
    global3 = Struct_2(vec3<i32>(reverseBits(_wgslsmith_mult_i32(var_0.x, -3335i)), 0i, 10016i), arg_0.x, true && !global3.c);
    let var_1 = _wgslsmith_add_i32(var_0.x, -1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global3.b, arg_0.x, -1000f))))) - vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, global3.b)) - arg_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_div_f32(-822f, 1048f), _wgslsmith_f_op_f32(-arg_0.x)));
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(26822i, 1i, 1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_1, var_0.x), -1i), _wgslsmith_mod_i32(~var_0.x, var_0.x))), vec4<i32>(global3.a.x, _wgslsmith_div_i32(var_0.x, 2147483647i), var_1, 10352i));
    return global0[_wgslsmith_index_u32(u_input.a, 15u)];
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_3(Struct_1((1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 49048u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u))) | 0u, _wgslsmith_sub_u32(1u, select(~u_input.a, _wgslsmith_mod_u32(u_input.a, 126636u), !arg_1))));
    var var_1 = 1u;
    let var_2 = -1691f;
    global2 = all(func_3(vec2<f32>(614f, 754f)));
    var_1 = ~_wgslsmith_add_u32(max(~(var_0.a.a ^ var_0.a.b), 4294967295u), 48399u);
    return Struct_3(var_0.a);
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = global3.b;
    return select(vec4<bool>(false, true, true, all(vec4<bool>(false, global3.c, global3.c, false)) & ((arg_0.a.a | arg_0.a.a) <= ~4294967295u)), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.a.a > (13171u << (1u % 32u)), true, global3.c, all(vec4<bool>(global3.c, global3.c, true, false))), !select(!vec4<bool>(true, global3.c, false, true), !vec4<bool>(true, global3.c, global3.c, true), vec4<bool>(global3.c, global3.c, false, global3.c)), vec4<bool>(global3.c, false, true, all(select(vec2<bool>(true, global3.c), vec2<bool>(global3.c, true), global0[_wgslsmith_index_u32(4294967295u, 15u)])))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = func_2(select(!(!vec2<bool>(false, global3.c)), !(!vec2<bool>(arg_0.x, arg_0.x)), global3.c), func_4(func_2(select(global0[_wgslsmith_index_u32(arg_1.x, 15u)], !global0[_wgslsmith_index_u32(arg_1.x, 15u)], vec2<bool>(global3.c, false)), any(select(vec3<bool>(true, true, global3.c), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(global3.c, arg_0.x, arg_0.x))))).x);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1230f)), 285f)), global3.b) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1455f, global3.b, global3.b), vec3<f32>(-2407f, global3.b, 854f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global3.b, 1000f)) * vec3<f32>(global3.b, global3.b, global3.b)))));
    let var_2 = func_4(func_2(global0[_wgslsmith_index_u32(u_input.a, 15u)], any(!vec4<bool>(arg_0.x, arg_0.x, global3.c, arg_0.x)))).xxy;
    var var_3 = Struct_2(reverseBits(global3.a), 1163f, true);
    let var_4 = ~(~min(var_0.a.b, _wgslsmith_add_u32(var_0.a.b, 0u))) == var_0.a.b;
    return func_2(var_2.zy, true).a;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = Struct_1(~u_input.a, ~1u);
    var var_1 = func_5(!select(vec4<bool>(true, true, true, true), select(!vec4<bool>(arg_0, false, false, true), select(vec4<bool>(false, arg_0, global3.c, arg_0), vec4<bool>(true, true, true, true), vec4<bool>(arg_0, arg_0, global3.c, true)), true), func_4(func_2(vec2<bool>(global3.c, false), global3.c))), firstTrailingBit(vec4<u32>(var_0.b, max(max(var_0.a, 4294967295u), ~1u), reverseBits(var_0.b), 56140u)), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(-1i, -1i, 1i), ~reverseBits(global3.a.x)));
    global2 = arg_0;
    global0 = array<vec2<bool>, 15>();
    var var_2 = firstTrailingBit(reverseBits(abs(countOneBits(firstLeadingBit(vec2<u32>(77338u, 14195u))))));
    return select(0i, 1i, true);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -((~vec4<i32>(2147483647i, 1i, arg_0.a.x, 37882i) << (vec4<u32>(u_input.a | 30759u, ~0u, 1u, ~u_input.a) % vec4<u32>(32u))) ^ select(vec4<i32>(global3.a.x, 45882i, global3.a.x, global3.a.x) ^ ~vec4<i32>(-1i, -2147483647i, 26523i, arg_0.a.x), -(vec4<i32>(2147483647i, 5969i, global3.a.x, global3.a.x) | vec4<i32>(-1i, 2147483647i, -1i, 1i)), global3.c));
    let var_1 = true;
    let var_2 = !vec4<bool>(all(!vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c)), global3.c, !(!global3.c) || any(vec3<bool>(global3.c, true, arg_0.c)), ((global3.b < 1038f) && false) && func_4(func_2(global0[_wgslsmith_index_u32(u_input.a, 15u)], var_1)).x);
    let var_3 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b, _wgslsmith_f_op_f32(arg_0.b + 186f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-249f, arg_0.b), vec2<f32>(-1775f, global3.b), global0[_wgslsmith_index_u32(1u, 15u)]))))))).x;
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, 534f)), vec3<f32>(arg_0.b, arg_0.b, 687f)))))))));
    return Struct_1(abs(~(~u_input.a)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    let var_1 = func_6(Struct_2(_wgslsmith_add_vec3_i32(global3.a ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -1i, global3.a.x), vec3<i32>(10054i, -2147483647i, global3.a.x)), vec3<i32>(_wgslsmith_mult_i32(20487i, 1i), 21283i, func_1(false))), -889f, false));
    let var_2 = Struct_2(vec3<i32>(2147483647i, 0i ^ firstTrailingBit(global3.a.x), firstTrailingBit(global3.a.x)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(30662u, var_1.b, u_input.a) | vec3<u32>(4294967295u, var_1.a, 31567u), ~vec3<u32>(var_1.a, u_input.a, var_0)) % vec3<u32>(32u)), global3.b, _wgslsmith_mod_i32(-global3.a.x << (~var_0 % 32u), _wgslsmith_sub_i32(firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(66948i, -17213i, global3.a.x), global3.a))) == ~countOneBits(~12700i));
    let var_3 = ~global3.a.x;
    var var_4 = Struct_2(-firstTrailingBit(countOneBits(-vec3<i32>(var_3, -36269i, global3.a.x))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b))))), true);
    var var_5 = vec3<u32>(0u, (var_1.b | _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_1.a, u_input.a, u_input.a), ~1u)) & (countOneBits(31067u) >> (max(_wgslsmith_mod_u32(var_1.a, u_input.a), ~4768u) % 32u)), reverseBits(_wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(u_input.a, var_0)), ~(22608u & var_0))));
    var var_6 = firstTrailingBit(firstLeadingBit(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(18560u, var_1.b, 1u), vec3<u32>(0u, 1u, var_1.b)) != _wgslsmith_mod_u32(67658u, var_0))));
    global3 = Struct_2(abs(min(_wgslsmith_add_vec3_i32(global3.a, vec3<i32>(20269i, 34756i, global3.a.x)), ~select(var_4.a, vec3<i32>(var_2.a.x, -36252i, 1i), true))), -172f, !select(true, all(!vec4<bool>(var_4.c, false, var_4.c, global3.c)), var_4.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, var_1.b, countOneBits(var_2.a), var_5.x, vec4<u32>(0u, 62548u, 22192u, 1u));
}

